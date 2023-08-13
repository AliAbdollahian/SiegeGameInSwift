//
//  Kapkan.swift
//  SiegeGameInSwift
//
//  Created by Ali Abdollahian on 2023-08-05.
//  Inspired by SiegeGame from SYSC2004 course
//  Instructor: Dr. Rami Sabouni
//  Version number: 1.0.0

import Foundation

public class Kapkan : Defender{
    override init() {
        super.init()
        Name = "Kapkan"
        Department = "RED-HAMMER"
        PrimaryGun = 23
        SecondaryGun = 13
        Health = 130
        Armor = 30
    }
}
