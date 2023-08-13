//
//  Ace.swift
//  SiegeGameInSwift
//
//  Created by Ali Abdollahian on 2023-08-05.
//  Inspired by SiegeGame from SYSC2004 course 
//  Instructor: Dr. Rami Sabouni
//  Version number: 1.0.0

import Foundation

public class Ace : Attacker{
    override init() {
        super.init()
        Name = "Ace"
        Department = "NIGHT-HAVEN"
        PrimaryGun = 35
        SecondaryGun = 20
        Health = 110
        Armor = 20
        SpecialAttackName = "Ace Charge"
        AttackerSpecial = 45
    }
}
