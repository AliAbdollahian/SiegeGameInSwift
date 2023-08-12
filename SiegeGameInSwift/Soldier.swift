//
//  Soldier.swift
//  SiegeGameInSwift
//
//  Created by Ali on 2023-08-12.
//

public class Soldier {
    fileprivate var name : String
    fileprivate var department : String
    fileprivate var age : Int
    fileprivate var armor : Int
    fileprivate var health : Int
    fileprivate var primaryGun : Int
    fileprivate var secondaryGun : Int
    public static let PRIMARY_GUN_RELOAD_TIME = 10
    public static let MAX_PRIMARY_AMMO = 51
    public static let MIN_HEALTH = 0
    
    init() {   /* Is there any shorter way to write this like "this" in java ? */
        self.name = "recruit"
        self.department = "FBI SWAT"
        self.age = 33
        self.armor = 20
        self.health = 75
        self.primaryGun = 12
        self.secondaryGun = 8
    }
    
    init(name: String, department: String, age: Int, armor: Int, health: Int, primaryGun: Int, secondaryGun: Int) {
        self.name = name
        self.department = department
        self.age = age
        self.armor = armor
        self.health = health
        self.primaryGun = primaryGun
        self.secondaryGun = secondaryGun
    }
    
    
    public func attacked(damagedRecieved : Int) -> Void {}
    public func attack()
        -> Int {return 0}
    public func takeCover()
        -> Double {return 0}
    
    public func printDescription() {
        if armor < 0{
            armor = 0
        }
        if health < 0{
            health = 0
        }
        print("\n{name: \(name) \narmor: \(armor)\nhealth(HP): \(health)}")
    }
    
    
    internal func attackedOnArmor(damageReceived : Int){
        print ("Soldier \(name) receives \(damageReceived) of damage and tries to block with armor.")
        if armor > 0{
            if armor < damageReceived{
                armor -= damageReceived
                print ("Soldier \(name) has their armor depleted completely.")
                health -= (armor * -1)
                if health > 0 {
                    print ("Soldier \(name) has their health points depleted to \(health)")
                }else{
                    print("Soldier \(name) has their health points depleted completely.")
                }
            }else{
                armor -= damageReceived
                print("Soldier \(name) has their armor depleted to \(armor)")
            }
        }else{
            print("Soldier \(name) has no armor left; hit points going to HP")
            health -= damageReceived
            if health > 0{
                print("Soldier \(name) survives the attack with \(health) health remaining!")
            }else{
                print("Soldier \(name) does not survive the attack. All health points depleted.")
            }
        }
    }
    
    
    internal func attackOnHP(damageReceived : Int){
        health -= damageReceived
        if health > 0{
            print("Soldier \(name) survives the attack with \(health) health remaining!")
        }else{
            print("Soldier \(name) does not survive the attack. All health points depleted.")
        }
    }
    
    //Implementing read and write properties 
    var Name : String{
        get{return name }
        set{name = newValue}
    }
    var Department : String{
        get{return department}
        set{department = newValue}
    }
    var Age : Int{
        get{return age }
        set{age = newValue}
    }
    var Armor : Int{
        get{return armor }
        set{armor = newValue}
    }
    var Health : Int{
        get{return health }
        set{health = newValue}
    }
    var PrimaryGun : Int{
        get{return primaryGun }
        set{primaryGun = newValue}
    }
    var SecondaryGun : Int{
        get(return secondaryGun)
        set{secondaryGun = newValue}
    }
    
//    //Getters
//    var getName : String{
//        return name
//    }
//    var getDepartment : String{
//        return department
//    }
//    var getAge : Int{
//        return age
//    }
//    var getArmor : Int{
//        return armor
//    }
//    var getHealth : Int{
//        return health
//    }
//    var getPrimaryGun : Int{
//        return primaryGun
//    }
//    var getSecondaryGun : Int{
//        return secondaryGun
//    }
}
