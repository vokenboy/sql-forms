package com.Database.Database.Entities;

import com.Database.Database.Models.Reviews;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UsersEntity {
    private Integer id_User;
    private String Username;
    private String Password;
    private String Name;
    private String LastName;
    private String Address;
    private String City;
    private Integer Zip;
    private Integer PhoneNumber;
}