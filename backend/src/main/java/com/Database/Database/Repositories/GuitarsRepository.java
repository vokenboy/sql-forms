package com.Database.Database.Repositories;

import com.Database.Database.Entities.GuitarsEntity;
import com.Database.Database.Models.Guitars;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface GuitarsRepository {
    @Select("SELECT * FROM guitars")
    List<Guitars> getAllGuitars();

    @Delete("DELETE FROM guitars WHERE id_guitar = #{id}")
    int deleteGuitarById(Integer id);

    @Update("UPDATE guitars SET price = #{Price}, model = #{Model}, material = #{Material}, " +
            "year = #{Year}, brand = #{Brand}, guitarType = #{GuitarType} WHERE id_guitar = #{id_Guitar}")
    int updateGuitar(Guitars guitar);

    @Insert("INSERT INTO guitars (price, model, material, year, brand, guitarType) VALUES (#{price}, #{model}, #{material}, #{year}, #{brand}, #{guitarType})")
    void insertGuitar(Guitars guitar);

}
