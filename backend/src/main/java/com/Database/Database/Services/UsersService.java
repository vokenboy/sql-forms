package com.Database.Database.Services;

import com.Database.Database.Models.Users;
import com.Database.Database.Repositories.ItemsRepository;
import com.Database.Database.Repositories.UsersRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UsersService {
    private final UsersRepository usersRepository;

    public List<Users> getAllUsers() {
        return usersRepository.findAll();
    }
    public List<Users> getUsersWithReviews() {
        return usersRepository.findUsersWithReviews();
    }
    public boolean updateUser(Users user) {
        int result = usersRepository.updateUser(user);
        return result == 1;
    }
    public void insertUser(Users user) {
        usersRepository.insertUser(user);
    }

    public boolean deleteUserById(Integer id) {
        int result = usersRepository.deleteUserById(id);
        return result == 1;
    }

    public List<String> getAllUsernames() {
        return usersRepository.getAllUsernames();
    }

    public int getIdByUsername(String name) {
        return usersRepository.getUserById(name);
    }
}