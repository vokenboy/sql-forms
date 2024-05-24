package com.Database.Database.Controller;

import com.Database.Database.Models.Guitars;
import com.Database.Database.Models.Users;
import com.Database.Database.Services.UsersService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/users")
@RequiredArgsConstructor
public class UsersController {
    private final UsersService usersService;

    @GetMapping("/all")
    @ResponseBody
    public List<Users> getAllUsers() {
        return usersService.getAllUsers();
    }

    @PutMapping("/update")
    public ResponseEntity<Users> updateUser(@RequestBody Users user) {
        boolean updated = usersService.updateUser(user);
        if (updated) {
            return ResponseEntity.ok(user);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping("/insert")
    public ResponseEntity<Void> insertUser(@RequestBody Users user) {
        usersService.insertUser(user);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> deleteUserById(@PathVariable Integer id) {
        boolean deleted = usersService.deleteUserById(id);
        if (deleted) {
            return ResponseEntity.ok().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @GetMapping("/getAllUsernames")
    public ResponseEntity<List<String>> getAllUsernames() {
        List<String> usernames = usersService.getAllUsernames();
        if (usernames.isEmpty()) {
            return ResponseEntity.noContent().build();
        }
        return ResponseEntity.ok(usernames);
    }

    @GetMapping("/getId/{username}")
    public ResponseEntity<Integer> getIdByUsername(@PathVariable String username) {
        Integer id = usersService.getIdByUsername(username);
        if (id == null) {
            return ResponseEntity.noContent().build();
        }
        return ResponseEntity.ok(id);
    }

}