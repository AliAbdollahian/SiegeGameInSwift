//
//  Attacker.swift
//  SiegeGameInSwift
//
//  Created by Ali Abdollahian on 2023-08-05.
//  Inspired by SiegeGame from SYSC2004 course
//  Instructor: Dr. Rami Sabouni
//  Version number: 1.0.0

import Foundation
public class Attacker : Soldier{
    
    fileprivate var attackerSpecial : Int
    fileprivate var specialAttackName : String
    private var specialCount : Int
    
    public static let PRIMARY_ATTACK_PERCENTAGE = 0.6
    public static let COVER_PERCENTAGE = 0.5
    public static let ARMOR_DEFENSE_PERCENTAGE = 0.5
    public static let SPECIAL = 0.9
    
    override init() {
        attackerSpecial = 30
        specialAttackName = "special attack"
        specialCount = 1
        super.init()
        Name = "Attacker recruit"
    }
    
    public override func attacked(damagedRecieved: Int) {
        let attackedOnArmor = Double.random(in:0...1)
        if attackedOnArmor < Attacker.ARMOR_DEFENSE_PERCENTAGE{
            super.attackedOnArmor(damageReceived: damagedRecieved)
        }else{
            super.attackOnHP(damageReceived: damagedRecieved)
        }
    }
    
    public override func attack() -> Int {
        print("Attacker \(super.Name) decides to attack!")
        var primaryAttackPercentage = Double.random(in: 0...1)
        if primaryAttackPercentage >= Attacker.SPECIAL && specialCount > 0{
            print("Attacker \(super.Name) uses their special ability \(specialAttackName) to deal \(attackerSpecial) damage! No more special left!")
            specialCount -= 1
            return attackerSpecial
        }
        if primaryAttackPercentage <= Attacker.PRIMARY_ATTACK_PERCENTAGE {
            print("Attacker \(super.Name) uses their primary gun to deal \(super.PrimaryGun) damage!")
            return super.PrimaryGun
        }else{
            print("Attacker \(super.Name) uses their secondary gun to deal \(super.SecondaryGun) damage!")
            return super.SecondaryGun
        }
    }
    
    public override func takeCover() -> Double {
        print("Attacker \(super.Name) decides to take cover from the compponent's next attack")
        print("Attacker \(super.Name) enters defense mode to block 50% of the opponents's next attack")
        return Attacker.COVER_PERCENTAGE
    }
    
    //Implementing read and write properties
    var AttackerSpecial : Int{
        get{return attackerSpecial}
        set{attackerSpecial = newValue}
    }
    var SpecialAttackName : String{
        get{return specialAttackName}
        set{specialAttackName = newValue}
    }
    var SpecialCount : Int{
        get{return specialCount}
    }
}
