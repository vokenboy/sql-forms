package com.Database.Database.Services;

import com.Database.Database.Models.Items;
import com.Database.Database.Models.WholeReview;
import com.Database.Database.Repositories.ReportRepository;
import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class ReportService {

    private final ReportRepository reportRepository;

    public List<WholeReview> getWholeReviews() {
        List<WholeReview> reviews = reportRepository.getWholeReview();
        for (WholeReview review : reviews) {
            List<Items> items = reportRepository.getItemsByReviewId(review.getId_Review());
            review.setItems(items);
        }
        return reviews;
    }

    public List<Items> getItemsByReviewId(Integer id_Review) {
        return reportRepository.getItemsByReviewId(id_Review);
    }

    public int getTotalDescriptionCount() {
        return reportRepository.getTotalDescriptionCount();
    }
}
