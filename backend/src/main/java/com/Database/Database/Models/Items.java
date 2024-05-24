package com.Database.Database.Models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class Items {
    private Integer id_Item;
    private String ItemName;
    private String ItemDescription;
    private Integer fk_Accessoryid_Accessory;
    private Integer fk_Watchlistid_Watchlist;
    private Integer fk_Guitarid_Guitar;
    private Integer fk_Reviewid_Review;
    private String GuitarModel;
    private Float GuitarPrice;
}
