package com.Database.Database.Models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class Guitars {
    private Integer id_Guitar;
    private Float Price;
    private String Model;
    private String Material;
    private Integer Year;
    private Integer Brand;
    private Integer GuitarType;
}
