package com.Database.Database.Repositories;

import com.Database.Database.Models.Users;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface UsersRepository {
    @Select("SELECT * FROM users")
    List<Users> findAll();
    @Select("SELECT u.id_User, u.username, u.password, u.name, u.lastName, u.address, u.city, u.zip, u.phoneNumber, " +
            "r.id_Review, r.title AS reviewTitle, r.description, r.createdAt, r.rating, r.fk_Userid_User " +
            "FROM users u " +
            "JOIN reviews r ON u.id_User = r.fk_Userid_User " +
            "WHERE r.title IS NOT NULL AND r.title != ''")
    @Results({
            @Result(property = "id_User", column = "id_User"),
            @Result(property = "username", column = "username"),
            @Result(property = "password", column = "password"),
            @Result(property = "name", column = "name"),
            @Result(property = "lastName", column = "lastName"),
            @Result(property = "address", column = "address"),
            @Result(property = "city", column = "city"),
            @Result(property = "zip", column = "zip"),
            @Result(property = "phoneNumber", column = "phoneNumber"),
            @Result(property = "review.id_Review", column = "id_Review"),
            @Result(property = "review.title", column = "reviewTitle"),
            @Result(property = "review.description", column = "description"),
            @Result(property = "review.createdAt", column = "createdAt"),
            @Result(property = "review.rating", column = "rating"),
            @Result(property = "review.fk_Userid_User", column = "fk_Userid_User")
    })
    List<Users> findUsersWithReviews();

    @Update("UPDATE users SET Username = #{Username}, Password = #{Password}, Name = #{Name}, " +
            "LastName = #{LastName}, Address = #{Address}, City = #{City}, Zip = #{Zip}, " +
            "PhoneNumber = #{PhoneNumber} WHERE id_User = #{id_User}")
    int updateUser(Users user);

    @Insert("INSERT INTO users (Username, Password, Name, LastName, Address, City, Zip, PhoneNumber) " +
                "VALUES (#{Username}, #{Password}, #{Name}, #{LastName}, #{Address}, #{City}, #{Zip}, #{PhoneNumber})")
    void insertUser(Users user);

    @Delete("DELETE FROM users WHERE id_User = #{id_User}")
    int deleteUserById(Integer id);

    @Select("SELECT Username FROM users")
    List<String> getAllUsernames();

    @Select("SELECT id_User FROM users WHERE Username = #{name}")
    int getUserById(String name);
}
