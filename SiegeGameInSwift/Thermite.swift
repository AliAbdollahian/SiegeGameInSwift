//
//  Thermite.swift
//  SiegeGameInSwift
//
//  Created by Ali Abdollahian on 2023-08-05.
//  Inspired by SiegeGame from SYSC2004 course
//  Instructor: Dr. Rami Sabouni
//  Version number: 1.0.0

import Foundation

public class Thermite : Attacker{
    override init() {
        super.init()
        Name = "Thermite"
        Department = "RED-HAMMER"
        PrimaryGun = 33
        SecondaryGun = 17
        Health = 110
        Armor = 20
        SpecialAttackName = "Hard Breach Charge"
        AttackerSpecial = 40
    }
}
