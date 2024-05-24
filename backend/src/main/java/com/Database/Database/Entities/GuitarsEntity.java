package com.Database.Database.Entities;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class GuitarsEntity {
    private Integer id_Guitar;
    private Float Price;
    private String Model;
    private String Material;
    private Integer Year;
    private Integer Brand;
    private Integer GuitarType;
}
