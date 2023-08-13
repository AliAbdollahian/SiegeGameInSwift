//
//  Caveira.swift
//  SiegeGameInSwift
//
//  Created by Ali Abdollahian on 2023-08-05.
//  Inspired by SiegeGame from SYSC2004 course
//  Instructor: Dr. Rami Sabouni
//  Version number: 1.0.0

import Foundation

public class Caveira : Defender{
    override init() {
        super.init()
        Name = "Caveira"
        Department = "GHOST-EYES"
        PrimaryGun = 25
        SecondaryGun = 13
        Health = 125
        Armor = 25
    }
}
