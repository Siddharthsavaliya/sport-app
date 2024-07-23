package com.example.sport_app

import android.content.Intent
import com.google.gson.Gson
import datamodels.PWEStaticDataModel
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import org.json.JSONObject


class MainActivity: FlutterActivity() {
    private static final String CHANNEL = "easebuzz";
    MethodChannel.Result channel_result;
    private boolean start_payment = true;

    @override
    protected fun onCreate(@Nullable Bundle savedInstanceState){
        super.onCreate(savedInstanceState);
        start_payment = true;

        new MethodChannel(getFlutterEngine().getDartExecutor().getBinaryMessenger(), CHANNEL).setMethodCallHandler(
              new MethodChannel.MethodCallHandler() {
                  @Override
                  public void onMethodCall(MethodCall call, MethodChannel.Result result) {
                      channel_result = result;
                      if (call.method.equals("payWithEasebuzz")) {
                          if (start_payment) {
                              start_payment = false;
                              startPayment(call.arguments);
                          }
                      }
                  }
              }
          );
    }

    private void startPayment(Object arguments) {
        try {
            Gson gson = new Gson();
            JSONObject parameters = new JSONObject(gson.toJson(arguments));
            Intent intentProceed = new Intent(getActivity(),PWECouponsActivity.class);
            intentProceed.setFlags(Intent.FLAG_ACTIVITY_REORDER_TO_FRONT);
            Iterator<?> keys = parameters.keys();
            while(keys.hasNext() ) {
                String value = "";
                String key = (String) keys.next();
                value = parameters.optString(key);
                if (key.equals("amount")){
                    Double amount = new Double(parameters.optString("amount"));
                    intentProceed.putExtra(key,amount);
                } else {
                    intentProceed.putExtra(key,value);
                }
            }
            startActivityForResult(intentProceed,PWEStaticDataModel.PWE_REQUEST_CODE );
        }catch (Exception e) {
            start_payment=true;
            Map<String, Object> error_map = new HashMap<>();
            Map<String, Object> error_desc_map = new HashMap<>();
            String error_desc = "exception occured:"+e.getMessage();
            error_desc_map.put("error","Exception");
            error_desc_map.put("error_msg",error_desc);
            error_map.put("result",PWEStaticDataModel.TXN_FAILED_CODE);
            error_map.put("payment_response",error_desc_map);
            channel_result.success(error_map);
        }
    }
    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        if (data != null) {
            if (requestCode == PWEStaticDataModel.PWE_REQUEST_CODE) {
                start_payment = true
                val response = JSONObject()
                val error_map: MutableMap<String, Any?> = HashMap()
                if (data != null) {
                    val result = data.getStringExtra("result")
                    val payment_response = data.getStringExtra("payment_response")
                    try {
                        val obj = JSONObject(payment_response)
                        response.put("result", result)
                        response.put("payment_response", obj)
                        channel_result.success(JsonConverter.convertToMap(response))
                    } catch (e: Exception) {
                        val error_desc_map: MutableMap<String, Any?> = HashMap()
                        error_desc_map["error"] = result
                        error_desc_map["error_msg"] = payment_response
                        error_map["result"] = result
                        error_map["payment_response"] = error_desc_map
                        channel_result.success(error_map)
                    }
                } else {
                    val error_desc_map: MutableMap<String, Any> = HashMap()
                    val error_desc = "Empty payment response"
                    error_desc_map["error"] = "Empty error"
                    error_desc_map["error_msg"] = error_desc
                    error_map["result"] = "payment_failed"
                    error_map["payment_response"] = error_desc_map
                    channel_result.success(error_map)
                }
            } else {
                super.onActivityResult(requestCode, resultCode, data)
            }
        }
    }
}
