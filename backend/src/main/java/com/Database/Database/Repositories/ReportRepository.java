package com.Database.Database.Repositories;

import com.Database.Database.Models.Items;
import com.Database.Database.Models.WholeReview;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface ReportRepository {

    @Select("SELECT reviews.id_Review, reviews.Rating, reviews.Description, reviews.CreatedAt, reviews.Title, " +
            "users.username AS Username, COUNT(items.Description) AS ItemsDescriptionCount, " +
            "COALESCE(SUM(guitars.Price), 0) AS TotalPrice " +
            "FROM reviews " +
            "LEFT JOIN items ON reviews.id_Review = items.fk_Reviewid_Review " +
            "LEFT JOIN guitars ON items.fk_Guitarid_Guitar = guitars.id_Guitar " +
            "LEFT JOIN users ON reviews.fk_Userid_User = users.id_User " +
            "GROUP BY reviews.id_Review, users.username")
    List<WholeReview> getWholeReview();

    @Select("SELECT items.id_Item, items.ItemName, items.Description AS ItemDescription, items.fk_Accessoryid_Accessory, " +
            "items.fk_Watchlistid_Watchlist, items.fk_Guitarid_Guitar, items.fk_Reviewid_Review, " +
            "guitars.Model AS GuitarModel, guitars.Price AS GuitarPrice " +
            "FROM items " +
            "LEFT JOIN guitars ON items.fk_Guitarid_Guitar = guitars.id_Guitar " +
            "WHERE items.fk_Reviewid_Review = #{id_Review}")
    List<Items> getItemsByReviewId(@Param("id_Review") Integer id_Review);

    @Select("SELECT COUNT(items.Description) FROM items")
    int getTotalDescriptionCount();
}
