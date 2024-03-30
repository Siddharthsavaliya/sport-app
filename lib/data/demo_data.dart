const String rupee = "\u{20B9}";

List cartItem = [
  {
    "image":
        "https://assets.myntassets.com/w_111,h_148,dpr_2,q_auto,c_limit,fl_progressive/h_148,q_auto,w_111/v1/assets/images/1376577/2022/6/3/ea10ab6c-883e-437a-8780-ed87484393f81654235830793-Roadster-Men-Black--Grey-Checked-Casual-Sustainable-Shirt-42-1.jpg",
    "title": "Roadster",
    "subtitle": "Men Black & Grey Checked Pure Cotton",
    "sold_by": "truenet Commerce",
    "size": "M",
    "qty": "1",
    "discount_amount": "599",
    "actual_amount": "1499",
    "discount_percent": "60% OFF",
  },
  {
    "image":
        "https://assets.myntassets.com/f_webp,dpr_1.5,q_auto,w_400,c_limit,fl_progressive/assets/images/7488102/2019/8/22/8002a744-0dad-4dbb-9481-cf0090134c3b1566454086786-Dennis-Lingo-Men-Pink-Slim-Fit-Solid-Casual-Shirt-9891566454-1.jpg",
    "title": "Roadster",
    "subtitle": "Men Black & Grey Checked Pure Cotton",
    "sold_by": "truenet Commerce",
    "size": "XL",
    "qty": "1",
    "discount_amount": "599",
    "actual_amount": "1499",
    "discount_percent": "60% OFF",
  }
];

Map cartAmount({
  bool? outerBoolSelected,
  List? cartItem,
}) {
  if (outerBoolSelected!) {
    int totalAmount = 0;
    int totalMrp = 0;
    for (int i = 0; i <= cartItem!.length - 1; i++) {
      totalAmount = totalAmount + int.parse(cartItem[i]["discount_amount"]);
      totalMrp = totalMrp + int.parse(cartItem[i]["actual_amount"]);
    }
    return {"totalAmount": totalAmount, "totalMrp": totalMrp};
  } else {
    return {"totalAmount": 0, "totalMrp": 0};
  }
}

String terms =
    "**Terms & Conditions**\n\nThis document is an electronic record in terms of (i) the Information Technology Act, 2000; (ii) the rules framed there under as applicable; and (iii) the amended provisions pertaining to electronic records in various statutes as amended by the Information Technology Act, 2000. This electronic record is generated by a computer system and does not require any physical or digital signatures.\n\nThis Privacy Policy (“Privacy Policy”) is published in accordance with: (i) Section 43A of the Information Technology Act, 2000 and (ii) Regulation 4 of the Information Technology (Reasonable security practices and procedures and sensitive personal information) Rules, 2011 (“SPI Rules”).\n\nPlease read this Privacy Policy carefully to understand how CnM (Chunmun) Stores Pvt. Ltd hereinafter referred to as “Cnm (Chunmun)”, uses and protects the information you provide to Cnm (Chunmun) (application made specifically for the users of the website). This Privacy Policy (the “Privacy Policy”) applies to \"the CnM (Chunmun) website www.chunmun.in.\n\nThis Privacy Policy covers: (i) the type of information collected from the users of the Website including sensitive personal data or information; (ii) the purpose, means and modes of usage of such information; and (iii) how and to whom such information which has been collected will be disclosed. \n\nBy mere use of the website, You shall be contracting with CnM (Chunmun) and these terms and conditions including the policies constitute Your binding obligations, with CnM (Chunmun). \n\n**BY USING THE WEBSITE, YOU AGREE TO THE TERMS AND CONDITIONS OF THIS POLICY. IF YOU DO NOT AGREE WITH THE TERMS AND CONDITIONS OF THIS POLICY, PLEASE DO NOT PROCEED FURTHER TO USE THIS WEBSITE.**\n\n**What information CnM (Chunmun)collects from you CnM ?**\n(Chunmun) may collect two (2) types of information about you: Personal and Non-Personal. \n\n**Personal Information **\n\nPersonal Information refers to information that lets CnM (Chunmun) know the specifics of who you are and which may be used to identify, contact or locate you (e.g. name) CnM (Chunmun) may collect Personal Information when you use the website including, without limitation, setting up account information, filling out surveys, corresponding with CnM (Chunmun) or otherwise volunteering information about yourself.\n\nCnM (Chunmun) collects only such Personal Information that CnM (Chunmun) believes to be relevant and is required to understand you or your interests. CnM (Chunmun) collects your Personal Information in order to record, support, and facilitate your participation in the activities You select, track Your preferences, to provide you with a customized Website experience, to notify You of any updated information and new activities and other related functions offered by CnM (Chunmun), keep you informed about latest content available on the CnM (Chunmun), special offers, and other products and services of CnM (Chunmun), to assist you with customer service or technical support issues, to follow up with you after your visit, to otherwise support your relationship with CnM (Chunmun) or to prevent fraud and unlawful use. \n\n**Non-personal Information **\n\nNon-Personal Information refers to information that, by itself, does not identify you as a specific individual (e.g. demographic information). CnM (Chunmun) may collect Non-Personal Information through any of the methods discussed above as well as automatically through the use of industry-standard technologies described further below. \n\nIn an effort to make our website effective, certain information may be collected each time you visit the Website. \n\nSuch information may be stored in server logs. These encrypted statistics do not identify you personally, but provide us the information regarding your visit to the Website and the type of user who is accessing our Website and certain browsing activities by you. This data may include: IP address of your server from where the Website is being accessed, the type of browser (Internet Explorer, Firefox, Opera, Google Chrome etc.), the operating system of your system and the Website You last visited before visiting our Website. The duration of your stay on our Website is also stored in the session along with the date and time of your access. These data are used by CnM (Chunmun) to understand the use and number of users visiting the Website. Some of the information related to the Website and Your visit to the Website may be shared by the sponsors, investors, advertisers, developers, strategic business partners of CnM (Chunmun), and some associates in order to enhance and grow our business and the Website but we assure that this information will never include any of Your Personal Information. This anonymous information is collected through the use of a pixel tag, which is industry-standard technology used by most major Websites.\n\n**Cookies**\nWhen You use the Website, CnM (Chunmun)'s servers (which may be hosted by a third-party service provider) may collect information indirectly and automatically about Your activities on the Website; for instance by way of cookies. A cookie is a small amount of data that is sent to a user’s browser from a web server and is eventually stored on a user’s computer hard drive. This anonymous information is maintained distinctly and is not linked to the Personal Information You submit to CnM (Chunmun). \n\nWether You want Your web browser to accept cookies or not is up to You. If You haven’t changed Your computer’s settings, most likely Your browser already accepts cookies. If You choose to decline cookies, You may not be able to fully experience all features of the Website. You can also delete Your browser cookies or disable them entirely, but this may significantly impact Your experience with the Website and may make parts of the Website non-functional or inaccessible. We recommend that You leave them turned on. \n\nWe use third-party service providers to serve ads on our behalf across the internet and sometimes on this Website. They may collect anonymous information about Your visits to our Website, and Your interaction with our products and services. No personally identifiable information is collected or used in this process. They do not know the name, phone number, address, email address, or any personally identifying information about the user. \n\nCnM (Chunmun) also uses the log file like other Website servers which is the standard measure. They include internet protocol (IP) addresses, browser type, internet service provider (ISP), referring/exit pages, website type, date/time stamp, and the number of clicks. We use them to analyze trends, administer the site, track a user’s movement and gather broad demographic information for aggregate use. IP addresses, etc. are not linked to personally identifiable information.\n\n\n**What do we do with your information? **\nCnM (Chunmun) uses the information you provide or that we collect to operate, maintain, enhance, and provide all of the features and services found on the CnM (Chunmun) website. CnM (Chunmun)uses all reasonable means and takes all reasonable efforts to protect your information. Additionally, in the event that all resources of the CnM (Chunmun), that is to say, the CnM (Chunmun) , are acquired by another company the personal data required in order to continue to operate CnM (Chunmun)are acquired by the buyer.\n\n**System Administration**\n CnM (Chunmun) may use Non-Personal Information for the purposes of system administration, assisting in diagnosing problems with CnM (Chunmun) servers, monitoring CnM (Chunmun)'s system performance and traffic on the CnM (Chunmun) website and to gather broad demographic information.\n\n**Notices to Registered Users**\n If you have registered for an Account, CnM (Chunmun) may use your Personal Information to send e-mails and SMS regarding your registration, including confirmation to verify the accuracy of any information you have provided. CnM (Chunmun) may also send you e-mails and SMS to verify your identity or to notify you if CnM (Chunmun) believes your use of CnM (Chunmun) website violates any applicable agreement for the use of the CnM (Chunmun) website.\n\n**Promotional E-mails **\nCnM (Chunmun) may use your Personal Information to send you e-mails and SMS periodically listing promotions or events. You have the choice to opt-out of receiving such promotional e-mails by sending an e-mail to info@CnM (Chunmun).in and/or following the instructions in such correspondence or mailing us at info@CnM (Chunmun).in. Once CnM (Chunmun) has processed your opt-out request, CnM (Chunmun) will not send you promotional e-mails and SMS unless you opt back into receiving such communications.CnM (Chunmun) will not send you promotional SMS if you have opted for do not disturb services under applicable statutes.\n\n**Safeguarding your Personal Information**\n **Security Measures**\nCnM (Chunmun) takes appropriate security measures to protect against unauthorized access, alteration, disclosure, or destruction of Personal Information. These include, but are not limited to, internal reviews of:\n\nCnM (Chunmun) 's data collection;\nStorage and processing practices;\nElectronic security measures; and\nPhysical security measures to guard against unauthorized access to systems where CnM (Chunmun) stor\n**Personal Information.**\nAll employees, contractors and agents who access Personal Information are bound by confidentiality obligations and may be subject to discipline, including termination and criminal prosecution for unauthorized use or disclosure of Personal Information.\n\nCnM (Chunmun) does not trade or sell Your Personal Information in any manner, except as specified herein or if express consent is sought from You.\n\n**Personal Information provided by You is used only:**\nCnM (Chunmun) does not trade or sell Your Personal Information in any manner, except as specified herein or if express consent is sought from You.\n\n- To facilitate Your use of the Website;\n- To respond to Your inquiries or fulfill Your requests for information about the various services;\n- To provide You with information about CnM (Chunmun) 's products/services and to send You information, materials, and offers from CnM (Chunmun);\n- To send You important information regarding the Website, changes to CnM (Chunmun) 's terms, conditions, and policies and/or other administrative information;\n- To send You surveys and marketing communications that CnM (Chunmun) believes may be of interest to You;\n- To personalize Your experience on the Website and CnM (Chunmun)'s other Websites by presenting advertising, products and offers tailored to You;\n- To personalize Your experience on the Website and CnM (Chunmun)'s other Websites by presenting advertising, products and offers tailored to You;\n- To help You address Your problems with the Website including addressing any technical problems; for proper administering of the Website;\n- To conduct internal reviews and data analysis for the Website (e.g., to determine the number of visitors to specific pages within the Website);\n- To improve the services, content, and advertising on the Website;\n- To protect the integrity of the Website; and\n- To respond to judicial process and provide information to law enforcement agencies or in connection with an investigation on matters related to public safety, as permitted by law.\n\nYou acknowledge that apart from Your Personal Information if You upload any content on the Website, such content may contain information including Personal Information and the same may be available to the other users of the Website. CnM (Chunmun) will not be liable for the disclosure and dissemination of such Personal Information to third parties.\n\nCnM (Chunmun) may disclose aggregated information about the use of the Website, but it will never contain Personal Information. CnM (Chunmun) does not disclose Personal Information to third parties in the normal course of operations. However, in situations when CnM (Chunmun) is legally obligated to disclose information to the government or other third parties, CnM (Chunmun) will do so. \n\nCnM (Chunmun) implements standard measures to protect against unauthorized access to and unlawful interception of Personal Information. However, no internet site can fully eliminate security risks. \n\n**Disclosure **\nCnM (Chunmun) will use the information only in accordance with the Policy under which the information was collected unless we have received explicit authorization.\n\nCnM (Chunmun) may disclose any information that CnM (Chunmun) may have about You (including Your identity) if CnM (Chunmun) determines that such disclosure is necessary in connection with any investigation or complaint regarding Your use of the Website, or to identify, contact or bring legal action against someone who may be causing injury to or interference with (either intentionally or unintentionally) CnM (Chunmun)'s rights or property, or the rights or property of users of the Website, including CnM (Chunmun)'s customers. CnM (Chunmun) reserves the right at all times to disclose any information that CnM (Chunmun) deems necessary to comply with any applicable law, regulation, legal process or governmental request. CnM (Chunmun) may also disclose Your information when CnM (Chunmun) determines that applicable law requires or permits such disclosure, including exchanging information with other companies and organizations for fraud protection purposes.\n\nYou acknowledge and agree that CnM (Chunmun) may preserve any communication by You with CnM (Chunmun) through the Website or any Service, and may also disclose such data if required to do so by law or if CnM (Chunmun) determines that such preservation or disclosure is reasonably necessary to:\n\n- Comply with legal process; \n- Enforce this Policy;\n- Respond to claims that any such data violates the rights of others; or\n- Protect the rights, property, or personal safety of CnM (Chunmun), its employees, users of, or visitors to, the Website, and the public.\n\n**Personal Use **\nYour use of the materials included on this website is for informational and communication purposes only. You agree you will not distribute, publish, transmit, modify, display or create derivative works from or exploit the contents of this site in any way. You acknowledge the unauthorized use of the contents could cause irreparable harm to CnM (Chunmun) and that in the event of unauthorized use, CnM (Chunmun) shall be entitled to an injunction in addition to any other remedies available at law or in equity.\n\n**Feedback and Submissions **\nYou agree you are and shall remain solely responsible for the contents of any submissions you make, and you will not submit material that is unlawful, defamatory, abusive, or obscene. You agree that you will not submit anything to the Website that will violate any right of any third party, including copyright, trademark, privacy, or other personal or proprietary rights (s).\n\nWhile we appreciate your interest in CnM (Chunmun), we do not want and cannot accept any ideas you consider to be proprietary regarding designs, product technology, or other suggestions you may have developed. Consequently, any material you submit to this website will be deemed a grant of a royalty-free non-exclusive right and license to use, reproduce, modify, display, transmit, adapt, publish, translate, create derivative works from and distribute these materials throughout the universe in any medium and through any methods of distribution, transmission and display whether now known or hereafter devised. In addition, you warrant that all so-called “moral rights” have been waived. \n\n**Changes to CnM (Chunmun)'s Privacy Policy **\nCnM (Chunmun) continually strives to implement new technologies and processes to better protect you, your privacy, and your use of the CnM (Chunmun). As a result, changes to this Privacy Policy may be made by CnM (Chunmun) from time to time. In no event will these changes result in the degradation of any of the security measures designed to protect you from unauthorized disclosure, as such measures are described in this Privacy Policy.\n\n**General**\n By accessing the Website, You have agreed to the set out in this Policy. This Policy should be at all times read along with the Terms of Use of the Website.\n\nUnless stated otherwise, the Policy applies to all information that CnM (Chunmun) has about You and Your account.\n\nBy using this Website and the products, content, and services provided on the Website, You agree and acknowledge that Your Personal Information collected through the Website may be transferred across national boundaries and stored and processed in any country around the world. You also acknowledge that in certain countries or with respect to certain activities, the collection, transfer, storage, and processing of Your information may be undertaken by trusted third-party vendors or agents of CnM (Chunmun) such as credit card processors, web hosting providers, communication services, and web analytic providers, to help facilitate CnM (Chunmun) in providing certain functions.\n\nIf you choose to visit the Website, Your visit and any dispute over privacy are subject to this Policy and the Website’s Terms of Use. In addition to the foregoing, any disputes arising under this Policy shall be governed by the laws of India.\n\n**Contact Information **\nIn accordance with Information Technology Act 2000 and rules made thereunder, the name and contact details of the Grievance Officer who can be contacted with respect to any complaints or concerns including those pertaining to breach of CnM (Chunmun)'s Terms and Conditions, Privacy Policy and other polices or questions are published as under:\nGrievance Officer Name: Pan Singh Mehra\nEmail address: it@chunmun.in\n[10:00 AM to 6:30 PM from Monday to Friday except for Public Holidays]";
