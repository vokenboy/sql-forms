package com.Database.Database.Models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.Date;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class Reviews {
    private Integer id_Review;
    private Integer Rating;
    private String Description;
    private Date CreatedAt;
    private Integer fk_Userid_User; // reikia
    private String Title;
}
