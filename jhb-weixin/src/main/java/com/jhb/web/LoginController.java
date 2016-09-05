package com.jhb.web;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;
import com.jhb.service.TestService;

/**
 * 测试
 * 
 * @author xinglong
 *
 */
@Controller
public class LoginController {
    private static Logger logger = LoggerFactory.getLogger(LoginController.class);

    @Autowired
    private TestService testService;

    @Autowired
    private Producer captchaProducer;

    // 获取验证错误信息
    public String getErrors(BindingResult result) {
        String errors = "";
        List<ObjectError> objErrors = result.getAllErrors();
        for (ObjectError oerror : objErrors) {
            errors += oerror.getDefaultMessage() + "\n";
        }
        return errors;
    }

    /**
     * 用户登录
     * 
     * @param userEmail
     * @param userPass
     * @return
     */
    @ResponseBody
    @RequestMapping("/login")
    public JSONObject login(HttpServletRequest request) {
        logger.info("调用服务login");
        JSONObject jsonObj = new JSONObject();
        
        return jsonObj;
    }

    /**
     * 获取验证码
     * 
     * @param request
     * @param response
     * @return
     * @throws IOException
     */
    @RequestMapping("/captchaimage")
    public String captchaimage(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setDateHeader("Expires", 0);

        // Set standard HTTP/1.1 no-cache headers.

        response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        // Set IE extended HTTP/1.1 no-cache headers (use addHeader).

        response.addHeader("Cache-Control", "post-check=0, pre-check=0");
        // Set standard HTTP/1.0 no-cache header.

        response.setHeader("Pragma", "no-cache");
        // return a jpeg

        response.setContentType("image/jpeg");
        // create the text for the image

        String capText = captchaProducer.createText();
        // store the text in the session

        request.getSession().setAttribute(Constants.KAPTCHA_SESSION_KEY, capText);
        // create the image with the text

        BufferedImage bi = captchaProducer.createImage(capText);
        ServletOutputStream out = response.getOutputStream();
        // write the data out

        ImageIO.write(bi, "jpg", out);
        try {
            out.flush();
        } finally {
            out.close();
        }
        return null;

    }

    /**
     * 验证验证码是否正确
     * @param verifyCode
     * @param request
     * @return
     */
    @RequestMapping(value = "checkVerificationCode")
    @ResponseBody
    public boolean checkVerificationCode(@RequestParam("verifyCode") String verifyCode, HttpServletRequest request) {
        String kaptchaExpected =
                (String) request.getSession().getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
        String kaptchaReceived = verifyCode;
        if (kaptchaReceived == null || !kaptchaReceived.equalsIgnoreCase(kaptchaExpected)) {
            return false;
        }
        return true;
    }

    /**
     * 用户登出
     * 
     * @return
     */
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request) {
        logger.info("调用服务logout");
        HttpSession session = request.getSession();
        session.setAttribute("userName", null);
        session.setAttribute("isLogin", false);
        return "app/index";
    }

}
