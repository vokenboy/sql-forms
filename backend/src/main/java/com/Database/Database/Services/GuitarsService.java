package com.Database.Database.Services;

import com.Database.Database.Models.Guitars;
import com.Database.Database.Repositories.GuitarsRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class GuitarsService {
    private final GuitarsRepository guitarsRepository;
    public List<Guitars> getAllGuitars() {
        return guitarsRepository.getAllGuitars();
    }

    public boolean deleteGuitarById(Integer id) {
        int result = guitarsRepository.deleteGuitarById(id);
        return result == 1;
    }

    public boolean updateGuitar(Guitars guitar) {
        int result = guitarsRepository.updateGuitar(guitar);
        return result == 1;
    }

    public Guitars insertGuitar(Guitars guitar) {
        guitarsRepository.insertGuitar(guitar);
        return guitar;
    }

}
