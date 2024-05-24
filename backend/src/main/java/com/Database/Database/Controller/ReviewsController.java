package com.Database.Database.Controller;

import com.Database.Database.Models.Reviews;
import com.Database.Database.Models.Users;
import com.Database.Database.Services.ReviewsService;
import com.Database.Database.Services.UsersService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/reviews")
@RequiredArgsConstructor
@Slf4j
public class ReviewsController {
    private final ReviewsService reviewsService;
    private final UsersService usersService;

    @GetMapping("/all")
    @ResponseBody
    public List<Reviews> getAllReviews() {
        return reviewsService.getAllReviews();
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> deleteReview(@PathVariable Integer id) {
        boolean isDeleted = reviewsService.deleteReviewById(id);
        if (isDeleted) {
            return ResponseEntity.ok().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @GetMapping("/usersWithReviews")
    public ResponseEntity<List<Users>> getUsersWithReviews() {
        List<Users> usersWithReviews = usersService.getUsersWithReviews();
        if (usersWithReviews.isEmpty()) {
            return ResponseEntity.noContent().build();
        }
        return ResponseEntity.ok(usersWithReviews);
    }

    @PutMapping("/update")
    public ResponseEntity<Reviews> updateReview(@RequestBody Reviews review) {
        boolean updated = reviewsService.updateReview(review);
        if (updated) {
            return ResponseEntity.ok(review);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping("/insert")
    public ResponseEntity<Void> insertReview(@RequestBody Reviews review) {
        reviewsService.insertReview(review);
        return ResponseEntity.ok().build();
    }
}
