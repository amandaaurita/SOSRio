//
//  ViewController.swift
//  SOSRio
//
//  Created by Amanda Aurita Araujo Fernandes on 5/14/15.
//  Copyright (c) 2015 Amanda Aurita Araujo Fernandes. All rights reserved.
//

import UIKit

class Telephones: UITableViewController {

    
        
    
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
             tableView.tableFooterView = UIView(frame:CGRectZero)
            
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
    
        
        override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 11;
        }
    
        
       override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
            
           var cell :  UITableViewCell? = self.tableView.dequeueReusableCellWithIdentifier("cell") as?  UITableViewCell
        
            
            switch indexPath.row
            {
                
                /* Emergenciais:
                Ambulância 192
                Bombeiros 193
                Defesa Civil 199
                Polícia 190 */
                
                /*Uteis
                
                Delegacia da Mulher 3399-3690
                DETRAN  2460-4042
                Polícia Civil 3399-3217
                Polícia Federal 2291-2142
                Polícia Rodoviária Estadual 3399-4857 / 2625-1530
                Polícia Rodoviária Federal 2471-6111
                Procon 1512
                    */
                
                case 0:
                    cell?.textLabel?.text = "Ambulância"
                    cell?.backgroundColor = UIColor(red: 0.9921, green: 0.2509, blue: 0.2862, alpha: 1)
                    //cell?.textLabel?.text = UIFont(name: "Verdana", size: 30)
                
                case 1:
                    cell?.textLabel?.text = "Bombeiros"
                    cell?.backgroundColor = UIColor(red: 0.9921, green: 0.2509, blue: 0.2862, alpha: 1)
                
                case 2:
                    cell?.textLabel?.text = "Defesa Civil"
                    cell?.backgroundColor = UIColor(red: 0.9921, green: 0.2509, blue: 0.2862, alpha: 1)
                
                case 3:
                    cell?.textLabel?.text = "Polícia"
                    cell?.backgroundColor = UIColor(red: 0.9921, green: 0.2509, blue: 0.2862, alpha: 1)
                
                case 4:
                    cell?.textLabel?.text = "Delegacia da Mulher"
                    cell?.backgroundColor = UIColor(red: 0.9647, green: 0.9450, blue: 0.1254, alpha: 1)
                
                case 5:
                    cell?.textLabel?.text = "DETRAN"
                    cell?.backgroundColor = UIColor(red: 0.9647, green: 0.9450, blue: 0.1254, alpha: 1)

                case 6:
                    cell?.textLabel?.text = "Polícia Civil"
                    cell?.backgroundColor = UIColor(red: 0.9647, green: 0.9450, blue: 0.1254, alpha: 1)

                case 7:
                    cell?.textLabel?.text = "Polícia Federal"
                    cell?.backgroundColor = UIColor(red: 0.9647, green: 0.9450, blue: 0.1254, alpha: 1)

                case 8:
                    cell?.textLabel?.text = "Polícia Rodoviária Estadual"
                    cell?.backgroundColor = UIColor(red: 0.9647, green: 0.9450, blue: 0.1254, alpha: 1)

                
                case 9:
                    cell?.textLabel?.text = "Polícia Rodoviária Federal"
                    cell?.backgroundColor = UIColor(red: 0.9647, green: 0.9450, blue: 0.1254, alpha: 1)

                case 10:
                    cell?.textLabel?.text = "Procon"
                    cell?.backgroundColor = UIColor(red: 0.9647, green: 0.9450, blue: 0.1254, alpha: 1)

                
                default:
                    cell?.textLabel?.text = " "
                    cell?.backgroundColor = UIColor(red: 0.9647, green: 0.9450, blue: 0.1254, alpha: 1)

                
            }
        
        
            
            return cell!;
        }
    
    
    
    func createAlert(cel : String, message: String)
    {
        
        var alert = UIAlertController(title: cel, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        
        let callAction = UIAlertAction(title: "Call", style: UIAlertActionStyle.Default, handler: {
            (action) in
            var url: NSURL = NSURL(string: "tel://+\(cel)")!
            UIApplication.sharedApplication().openURL(url)
            
        })
        
        
        let copyCellAction = UIAlertAction(title: "Copy Number", style: UIAlertActionStyle.Default, handler: {
            (action) in
            UIPasteboard.generalPasteboard().string = cel
        })
        
        let cancelCellAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: {
            (action) in
            self.dismissViewControllerAnimated(false, completion: nil)
        })
        
       
        
        
        
        
        
        alert.addAction(callAction)
        alert.addAction(copyCellAction)
        alert.addAction(cancelCellAction)
        
        self.presentViewController(alert, animated: true, completion: {
            println("Call function started")
        })
        
        
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        /*
        Ambulância 192
        Bombeiros 193
        Defesa Civil 199
        Polícia 190 */
        
        /*Uteis
        
        Delegacia da Mulher 3399-3690
        DETRAN  2460-4042
        Polícia Civil 3399-3217
        Polícia Federal 2291-2142
        Polícia Rodoviária Estadual 3399-4857 / 2625-1530
        Polícia Rodoviária Federal 2471-6111
        Procon 1512
        */

        
        switch indexPath.row
        {
            case 0:
                createAlert("192", message: "Ambulância")
            
            case 1 :
                createAlert("193", message: "Bombeiros")
            
            case 2:
                createAlert("199", message: "Defesa Civil")
            
            case 3:
                createAlert("190", message: "Polícia")
            
            case 4:
                createAlert("213399-3690", message: "Delegacia da Mulher")
            
            case 5:
                createAlert("2124604042", message: "DETRAN")
            
            case 6:
                createAlert("2133993217", message: "Polícia Civil")
            
            case 7:
                createAlert("2122912142", message: "Polícia Federal")
            
            case 8:
                createAlert("2133994857", message: "Polícia Rodoviária Estadual")
            
            case 9:
                createAlert("2124716111", message: "Polícia Rodoviária Federal")
            
            case 10:
                createAlert("1512", message: "Procon")
            
            
            default:
                createAlert("190", message: "Policia")
            
        }
        
            
        
    
        
        
        
        
}


}