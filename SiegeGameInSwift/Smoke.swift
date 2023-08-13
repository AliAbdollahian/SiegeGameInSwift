//
//  Smoke.swift
//  SiegeGameInSwift
//
//  Created by Ali Abdollahian on 2023-08-05.
//  Inspired by SiegeGame from SYSC2004 course
//  Instructor: Dr. Rami Sabouni
//  Version number: 1.0.0

import Foundation

public class Smoke : Defender{
    override init() {
        super.init()
        Name = "Smoke"
        Department = "NIGHT-HAVEN"
        PrimaryGun = 28
        SecondaryGun = 15
        Health = 130
        Armor = 30
    }
}
