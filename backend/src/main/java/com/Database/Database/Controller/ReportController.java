package com.Database.Database.Controller;

import com.Database.Database.Models.Items;
import com.Database.Database.Models.WholeReview;
import com.Database.Database.Services.ReportService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/report")
@RequiredArgsConstructor
@Slf4j
public class ReportController {
    private final ReportService reportService;

    @GetMapping("/getWholeReviews")
    public List<WholeReview> getWholeReviews() {
        return reportService.getWholeReviews();
    }

    @GetMapping("/items")
    public ResponseEntity<List<Items>> getItems(@RequestParam Integer id_Review) {
        List<Items> items = reportService.getItemsByReviewId(id_Review);
        return ResponseEntity.ok(items);
    }

    @GetMapping("/total-description-count")
    public ResponseEntity<Integer> getTotalDescriptionCount() {
        int totalDescriptionCount = reportService.getTotalDescriptionCount();
        return ResponseEntity.ok(totalDescriptionCount);
    }
}
