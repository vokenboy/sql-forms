package com.Database.Database.Entities;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.Date;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ReviewsEntity {
    private Integer id_Review;
    private Integer Rating;
    private String Description;
    private Date CreatedAt;
    private Integer fk_Userid_User;
    private String Title;
}
