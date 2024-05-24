package com.Database.Database.Services;

import com.Database.Database.Models.Reviews;
import com.Database.Database.Repositories.ReviewsRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class ReviewsService {
    private final ReviewsRepository reviewsRepository;

    public List<Reviews> getAllReviews() {
        return reviewsRepository.getAllReviews();
    }

    public boolean deleteReviewById(Integer id) {
        try {
            int result = reviewsRepository.deleteReviewById(id);
            return result == 1;
        } catch (DataAccessException ex) {
            log.error("Error deleting review", ex);
            return false;
        }
    }

    public boolean updateReview(Reviews review) {
        int result = reviewsRepository.updateReview(review);
        return result == 1;
    }

    public void insertReview(Reviews review) {
        reviewsRepository.insertReview(review);
    }
}
