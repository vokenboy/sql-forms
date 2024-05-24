package com.Database.Database.Models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class WholeReview {
    private Integer id_Review;
    private Integer Rating;
    private String Description;
    private Date CreatedAt;
    private String Title;
    private String Username;
    private Integer ItemsDescriptionCount;
    private List<Items> Items;
    private Float TotalPrice;
}
