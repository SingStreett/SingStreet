package com.ssafy.singstreet.user.controller;

import com.ssafy.singstreet.user.Exception.UserNotFoundException;
import com.ssafy.singstreet.user.db.entity.User;
import com.ssafy.singstreet.user.model.UserRegistDTO;
import com.ssafy.singstreet.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import javax.mail.*;


import java.util.HashMap;

@RestController
public class UserController {
    private final UserService userService;
    private static HashMap<String, String> VerifyCode=new HashMap<>();
    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/auth/email/{email}")
    @ResponseBody
    public ResponseEntity<String> EmailCheck(
            @PathVariable("email") String email
            ) {

        // Check for email duplication
        if (userService.isEmailDuplicated(email)) {
            return ResponseEntity.badRequest().body("이메일이 중복되었습니다.");
        }
        String code=userService.SetRandomCode();
        VerifyCode.put(email, code);
        // Recipient's email address
        String subject = "인증번호 전송";
        String body = "당신의 인증번호는 "+code+"입니다";

        try {
            userService.sendEmail(email, subject, body);
            System.out.println("어 메일 전송했어");
        } catch (MessagingException e) {
            System.err.println("그것도 못하냐 허접아" + e.getMessage());
        }

        return ResponseEntity.ok("이메일 확인코드가 발송되었습니다.");
    }

    @GetMapping("/auth/email/auth/{authCode}/{email}")
    @ResponseBody
    public ResponseEntity<String> EmailVerify(
            @PathVariable String authCode,
            @PathVariable String email
            ) {

        // Check for email duplication
        if (!VerifyCode.get(email).equals(authCode)) {
            return ResponseEntity.badRequest().body("인증번호가 맞지 않습니다.");
        }
        VerifyCode.remove(email);
        return ResponseEntity.ok("인증번호가 확인되었습니다.");
    }

    @GetMapping("/auth/nickname/{nickname}")
    @ResponseBody
    public ResponseEntity<String> nicknameCheck(
            @PathVariable String nickname
    ){
        if(userService.isNicknameDuplicated(nickname)){
            return ResponseEntity.badRequest().body("닉네임이 중복되었습니다");
        }
        return  ResponseEntity.ok("닉네임이 사용가능합니다");
    }


   @PostMapping("/auth/password")
   public ResponseEntity<String> sendTemporaryPassword(@RequestBody String email) throws UserNotFoundException {
        userService.temporaryPassword(email);
        return ResponseEntity.ok("메시지가 발송되었습니다.");
   }
    @PostMapping("/user")
    public ResponseEntity<String> CreateUser(@RequestBody UserRegistDTO registrationDTO) {
        try {
            User registeredUser = userService.registerUser(registrationDTO);
            return ResponseEntity.ok(registeredUser.getNickname()+"님 환영합니다");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("유저 등록 에러남 ㅅㄱ");
        }
    }

   @PutMapping("/user")
   public ResponseEntity<String> updateUser(@RequestParam Integer user_id,
                                            @RequestParam String newNickname,
                                            @RequestParam String newUserImg,
                                            @RequestParam String newGender,
                                            @RequestParam String newPassword) {
       try {
           User updatedUser = userService.updateUser(user_id, newNickname, newUserImg, newGender, newPassword);
           return ResponseEntity.ok("User with ID " + user_id + " updated successfully.");
       } catch (UserNotFoundException e) {
           return ResponseEntity.notFound().build();
       } catch (Exception e) {
           return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error updating user.");
       }
   }
   @GetMapping("/user/{user_id}")
   @ResponseBody
   public ResponseEntity<User> GetUser(@PathVariable("user_id") int userId) throws UserNotFoundException {
        User result=userService.getUser(userId);
        return ResponseEntity.ok(result);
   }

    @PutMapping("/user/leave")
    public ResponseEntity<String> softDeleteUser(@RequestParam("user_id") Integer userId) {
        try {
            userService.softDeleteUser(userId);
            return ResponseEntity.ok("유저 ID " + userId + "가 삭제되었습니다");
        } catch (UserNotFoundException e) {
            return ResponseEntity.notFound().build();
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("삭제가 실패했네요");
        }
    }

}