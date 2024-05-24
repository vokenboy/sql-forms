package com.Database.Database.Controller;

import com.Database.Database.Entities.GuitarsEntity;
import com.Database.Database.Models.Guitars;
import com.Database.Database.Services.GuitarsService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.http.ResponseEntity;

import java.util.List;


@Controller
@RequestMapping("/guitars")
@RequiredArgsConstructor
@Slf4j
public class GuitarsController {
    private final GuitarsService guitarsService;

    @GetMapping("/all")
    @ResponseBody
    public List<Guitars> getAllGuitars() {
        return guitarsService.getAllGuitars();
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> deleteGuitarById(@PathVariable Integer id) {
        boolean deleted = guitarsService.deleteGuitarById(id);
        if (deleted) {
            return ResponseEntity.ok().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @PutMapping("/update")
    public ResponseEntity<Guitars> updateGuitar(@RequestBody Guitars guitar) {
        boolean updated = guitarsService.updateGuitar(guitar);
        if (updated) {
            return ResponseEntity.ok(guitar);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping("/insert")
    public ResponseEntity<Void> insertGuitar(@RequestBody Guitars guitar) {
        guitarsService.insertGuitar(guitar);
        return ResponseEntity.ok().build();
    }
}