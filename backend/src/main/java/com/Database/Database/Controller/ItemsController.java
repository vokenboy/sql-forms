package com.Database.Database.Controller;

import com.Database.Database.Models.Guitars;
import com.Database.Database.Models.Items;
import com.Database.Database.Models.Reviews;
import com.Database.Database.Services.ItemsService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import java.util.List;

@Controller
@RequestMapping("/items")
@RequiredArgsConstructor
@Slf4j
public class ItemsController {
    private final ItemsService itemsService;

    @GetMapping("/all")
    @ResponseBody
    public List<Items> getAllItems() {
        return itemsService.getAllItems();
    }

    @PutMapping("/update")
    public ResponseEntity<Items> updateItem(@RequestBody Items item) {
        boolean updated = itemsService.updateItem(item);
        if (updated) {
            return ResponseEntity.ok(item);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> deleteItemById(@PathVariable Integer id) {
        boolean deleted = itemsService.deleteItemById(id);
        if (deleted) {
            return ResponseEntity.ok().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping("/insert")
    public ResponseEntity<Void> insertItem(@RequestBody Items item) {
        itemsService.insertItem(item);
        return ResponseEntity.ok().build();
    }
}
