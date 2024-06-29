import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/screens/booking/model/ground_slot_model.dart';
import 'package:sport_app/screens/booking/slot_widget.dart';

class AvailableSlotsComponent extends StatefulWidget {
  final List<GroundSlotData>? selectedSlots;
  final List<GroundSlotData> availableSlots;
  final Function(List<GroundSlotData> selectedSlots) onChanged;
  final bool? isProvider;
  final bool is24HourFormat;
  final DateTime? selectedDate;
  final List<GroundSlotData>? groundSlotData;

  const AvailableSlotsComponent({
    this.selectedSlots,
    this.groundSlotData,
    required this.availableSlots,
    required this.onChanged,
    this.isProvider = true,
    this.is24HourFormat = false,
    this.selectedDate,
    super.key,
  });

  @override
  _AvailableSlotsComponentState createState() =>
      _AvailableSlotsComponentState();
}

class _AvailableSlotsComponentState extends State<AvailableSlotsComponent> {
  List<GroundSlotData> localSelectedSlot = [];

  DateTime currentTime = DateTime.now();

  int selectedIndex = -1;

  @override
  void initState() {
    super.initState();
    afterBuildCreated(() {
      init();
    });
  }

  void init() async {
    if (widget.selectedSlots.validate().isNotEmpty) {
      localSelectedSlot = widget.selectedSlots.validate();
      widget.onChanged.call(localSelectedSlot);
    }
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedWrap(
      spacing: 16,
      runSpacing: 16,
      itemCount: widget.availableSlots.length,
      itemBuilder: (_, index) {
        bool isNotAvailable = false;
        GroundSlotData value = widget.availableSlots[index];

        if (widget.selectedDate != null) {
          DateTime finalDate = DateTime(
            widget.selectedDate!.year,
            widget.selectedDate!.month,
            widget.selectedDate!.day,
            widget.selectedDate!.hour,
            widget.selectedDate!.minute,
          );

          DateTime now = DateTime(
            currentTime.year,
            currentTime.month,
            currentTime.day,
            value.startTime.validate().substring(0, 2).toInt(),
            value.startTime.validate().substring(3, 5).toInt(),
          ).subtract(1.minutes);

          // if (widget.selectedDate!.isToday &&
          //     finalDate.millisecondsSinceEpoch > now.millisecondsSinceEpoch) {
          //   return Offstage();
          // }
          isNotAvailable = (widget.selectedDate!.isToday &&
                  finalDate.millisecondsSinceEpoch >
                      now.millisecondsSinceEpoch ||
              widget.availableSlots[index].availableSlots! <= 0);
        }

        if (widget.selectedSlots.validate().isNotEmpty) {
          if (widget.selectedSlots.validate().first == value) {
            selectedIndex = index;
          }
        }
        bool isSelected = selectedIndex == index;
        bool isAvailable = widget.availableSlots.contains(value);

        return SlotWidget(
          isAvailable: isAvailable,
          totalCount: value.totalSlots.toString(),
          isSelected: isSelected,
          isNotAvailable: isNotAvailable,
          is24HourFormat: widget.is24HourFormat,
          slotCount: value.availableSlots.toString(),
          value: value.startTime.validate(),
          onTap: () {
            if (isAvailable && !isNotAvailable) {
              if (isSelected) {
                selectedIndex = -1;
                widget.onChanged.call([]);
              } else {
                selectedIndex = index;
                widget.onChanged.call([value]);
              }
              setState(() {});
            } else {
              toast("Slot is not available");
            }
          },
        );
      },
    );
  }
}
