package com.Database.Database.Entities;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ItemsEntity {
    private Integer id_Item;
    private String ItemName;
    private String Description;
    private Integer fk_Accessoryid_Accessory;
    private Integer fk_Watchlistid_Watchlist;
    private Integer fk_Guitarid_Guitar;
    private Integer fk_Reviewid_Review;
}
