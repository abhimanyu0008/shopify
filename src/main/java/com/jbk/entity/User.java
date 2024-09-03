package com.jbk.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data @AllArgsConstructor @NoArgsConstructor @Setter
@Entity
@Table(name = "UserRegister")
public class User {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, unique = true)
    private String username;

    @Column(nullable = false)
    private String firstName;

    @Column(nullable = false)
    private String lastName;

    @Column(nullable = false)
    private String password;

    @Transient
    private String confirmPassword;

    @Column(nullable = false, unique = true)
    private String email;

    @Column(nullable = false)
    private String phone;

    @Column(nullable = false)
    private String gender;
    
//    @Column(nullable = true)
//    private String resume;

   //yaha se dusra hai
    
//    @Lob
//    @Column(name = "resume", nullable = false)
//    private byte[] resume;
//
//    @Transient
//    private MultipartFile resumeFile;
//
//    @Column(nullable = false)
//    private boolean agreedTerms;
    
}
