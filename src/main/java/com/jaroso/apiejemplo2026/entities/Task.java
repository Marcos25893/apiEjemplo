package com.jaroso.apiejemplo2026.entities;

import jakarta.persistence.*;
import lombok.*;
import java.time.LocalDate;

@Entity(name = "tasks")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class Task {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) //AutoIncrement
    private Long id;

    @Column(nullable = false, unique = true) //No puede ser null
    private String title;
    private String description;

    @Column(name = "finish_date", nullable = false)
    private LocalDate finishDate;

}
