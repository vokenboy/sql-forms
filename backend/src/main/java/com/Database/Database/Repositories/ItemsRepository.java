package com.Database.Database.Repositories;

import com.Database.Database.Entities.GuitarsEntity;
import com.Database.Database.Entities.ItemsEntity;
import com.Database.Database.Models.Items;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface ItemsRepository {
    @Select("SELECT * FROM items")
    List<Items> getAllItems();

    @Update("UPDATE items SET Rating = #{Rating}, Description = #{Description}, " +
            "CreatedAt = #{CreatedAt}, fk_Userid_User = #{fk_Userid_User}, Title = #{Title} WHERE id_Review = #{id_Review}")
    int updateItem(Items item);

    @Delete("DELETE FROM items WHERE id_Review = #{id_Review}")
    int deleteItemById(Integer id);

    @Insert("INSERT INTO items (Rating, Description, CreatedAt, fk_Userid_User, Title) VALUES (#{Rating}, #{Description}, #{CreatedAt}, #{fk_Userid_User}, #{Title})")
    void insertItem(Items item);
}
