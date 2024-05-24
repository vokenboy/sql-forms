package com.Database.Database.Repositories;


import com.Database.Database.Models.Reviews;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Repository
@Mapper
public interface ReviewsRepository {
    @Select("SELECT * FROM reviews")
    List<Reviews> getAllReviews();

    @Delete("DELETE FROM reviews WHERE id_Review = #{id}")
    int deleteReviewById(Integer id);

    @Update("UPDATE reviews SET Rating = #{Rating}, Description = #{Description}, " +
            "CreatedAt = #{CreatedAt}, fk_Userid_User = #{fk_Userid_User}, Title = #{Title} WHERE id_Review = #{id_Review}")
    int updateReview(Reviews review);

    @Update("INSERT INTO reviews (Rating, Description, CreatedAt, fk_Userid_User, Title) VALUES (#{Rating}, #{Description}, #{CreatedAt}, #{fk_Userid_User}, #{Title})")
    void insertReview(Reviews review);

}
