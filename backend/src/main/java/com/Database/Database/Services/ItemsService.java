package com.Database.Database.Services;

import com.Database.Database.Entities.GuitarsEntity;
import com.Database.Database.Entities.ItemsEntity;
import com.Database.Database.Models.Guitars;
import com.Database.Database.Models.Items;
import com.Database.Database.Models.Reviews;
import com.Database.Database.Repositories.ItemsRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Slf4j
public class ItemsService {
    private final ItemsRepository itemsRepository;

    public List<Items> getAllItems() {
        return itemsRepository.getAllItems();
    }

    public boolean updateItem(Items item) {
        int result = itemsRepository.updateItem(item);
        return result == 1;
    }

    public boolean deleteItemById(Integer id) {
        int result = itemsRepository.deleteItemById(id);
        return result == 1;
    }

    public Items insertItem(Items item) {
        itemsRepository.insertItem(item);
        return item;
    }
}
