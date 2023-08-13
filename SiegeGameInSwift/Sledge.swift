//
//  Sledge.swift
//  SiegeGameInSwift
//
//  Created by Ali Abdollahian on 2023-08-05.
//  Inspired by SiegeGame from SYSC2004 course
//  Instructor: Dr. Rami Sabouni
//  Version number: 1.0.0

import Foundation

public class Sledge : Attacker{
    override init() {
        super.init()
        Name = "Sledge"
        Department = "RED-HAMMER"
        PrimaryGun = 35
        SecondaryGun = 20
        Health = 125
        Armor = 25
        SpecialAttackName = "Sledge Hammer"
        AttackerSpecial = 45
    }
}
