package com.pts.Controller.site;

import com.pts.Service.SmsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SmsController {
    @Autowired
    private SmsService smsService;

    @RequestMapping("/send-sms")
    public void sendSms() {
        smsService.sendSms("+84346732847", "hello");
    }
}
