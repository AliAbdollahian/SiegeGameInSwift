//
//  Ash.swift
//  SiegeGameInSwift
//
//  Created by Ali Abdollahian on 2023-08-05.
//  Inspired by SiegeGame from SYSC2004 course
//  Instructor: Dr. Rami Sabouni
//  Version number: 1.0.0

import Foundation

public class Ash : Attacker{
    override init() {
        super.init()
        Name = "Ash"
        Department = "RED-HAMMER"
        PrimaryGun = 35
        SecondaryGun = 18
        Health = 100
        Armor = 15
        SpecialAttackName = "Explosive rounds"
        AttackerSpecial = 40
    }
}
