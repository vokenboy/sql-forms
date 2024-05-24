package com.Database.Database.Models;

import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class Users {
    private Integer id_User; // reikia tik sito
    private String Username;
    private String Password;
    private String Name;
    private String LastName;
    private String Address;
    private String City;
    private Integer Zip;
    private Integer PhoneNumber;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "review_id", referencedColumnName = "id")
    private Reviews review;
}