//
//  Doc.swift
//  SiegeGameInSwift
//
//  Created by Ali Abdollahian on 2023-08-05.
//  Inspired by SiegeGame from SYSC2004 course
//  Instructor: Dr. Rami Sabouni
//  Version number: 1.0.0

import Foundation

public class Doc : Defender{
    override init() {
        super.init()
        Name = "Doc"
        Department = "WOLF-GUARD"
        PrimaryGun = 30
        SecondaryGun = 23
        Health = 140
        Armor = 35
    }
}
