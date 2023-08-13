//
//  Defender.swift
//  SiegeGameInSwift
//
//  Created by Ali Abdollahian on 2023-08-05.
//  Inspired by SiegeGame from SYSC2004 course
//  Instructor: Dr. Rami Sabouni
//  Version number: 1.0.0

import Foundation
public class Defender : Attacker{
    fileprivate var armor2 : Int
    fileprivate var defenderSpecial : Int
    fileprivate var specialDefendName : String
    private var specialCount : Int
    
    public static let COVER_PERCENTAGE_Defender = 0.65
    public static let ARMOR_DEFENSE_PERCENTAGE_Defender = 0.7
    public static let SPECIAL_Defender = 0.8
    public static let PRIMARY_ATTACK_PERCENTAGE_Defender = 0.4
    
    
    override init() {
        armor2 = 15
        defenderSpecial = 30
        specialDefendName = "boost health"
        specialCount = 1
        super.init()
        Name = "Defender recruit"
    }
    
    public override func attacked(damagedRecieved : Int){
        var attackedOnArmor = Double.random(in: 0...1)
        if attackedOnArmor < Defender.ARMOR_DEFENSE_PERCENTAGE_Defender{
            super.attackedOnArmor(damageReceived: damagedRecieved)
        }else{
            super.attackOnHP(damageReceived: damagedRecieved)
        }
    }
    
    /* If the Defender has an armor2 value that is > 0, this is targeted
     Else, the attackedOnArmor from its superclass Soldier is called
     (super.attackedOnArmor())
     If damagedRecieved is > armor2, armor2 is depleted completely and
     rest of the damage is directed to super.attackedOnArmor(damageLeft) */
    override func attackedOnArmor(damageReceived: Int) {
        if armor2 > 0{
            print("Defender \(super.Name) defends with second armor of withstand ability points of \(armor2)")
            armor2 -= damageReceived
            var remainingArmor2 = armor2
            if remainingArmor2 < 0{
                print("Defender \(super.Name) has their second armor completely depleted. Damage will be dealt to default armor and health points")
                var damageLeft = remainingArmor2 * -1
                super.attackedOnArmor(damageReceived: damageLeft)
            }
        }else{
            super.attackedOnArmor(damageReceived: damageReceived)
        }
    }
    
    public override func attack() -> Int {
        print("Defender \(super.Name) decides to attack!")
        var primaryAttackPercentage = Double.random(in: 0...1)
        if primaryAttackPercentage >= Defender.SPECIAL_Defender && specialCount > 0{
            print("Defender \(super.Name) uses their special ability \(specialDefendName) to heal \(defenderSpecial) added to life-points. No shots fired.")
            specialCount -= 1
            super.Health += defenderSpecial
            printDescription()
            return 0
        }
        if primaryAttackPercentage <= Defender.PRIMARY_ATTACK_PERCENTAGE_Defender {
            print("Defender \(super.Name) uses their primary gun to deal \(super.PrimaryGun) damage!")
            return super.PrimaryGun
        }else{
            print("Defender \(super.Name) uses their secondary gun to deal \(super.SecondaryGun) damage!")
            return super.SecondaryGun
        }
    }
    public override func takeCover() -> Double {
        print("Defender \(super.Name) decides to take cover from the compponent's next attack")
        print("Defender \(super.Name) enters defense mode to block 65% of the opponents's next attack")
        return Defender.COVER_PERCENTAGE_Defender
    }
    
    //Implementing read and write properties
    var DefenderSpecial : Int{
        get{return defenderSpecial}
        set{defenderSpecial = newValue}
    }
    var SpecialDefendName : String{
        get{return specialDefendName}
        set{specialDefendName = newValue}
    }
    override var SpecialCount : Int{
        get{return specialCount}
    }
}
