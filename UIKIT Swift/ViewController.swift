//
//  ViewController.swift
//  UIKIT Swift
//
//  Created by Usuário Convidado on 15/04/19.
//  Copyright © 2019 Guilherme BIgois. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var meuSegmento: UISegmentedControl!
    @IBOutlet weak var lblAno: UILabel!
    @IBOutlet weak var lblKm: UILabel!
    @IBOutlet weak var lblRota: UILabel!
    @IBOutlet weak var meuStepper: UIStepper!
    
    @IBAction func valueChanged(_ sender: Any) {
        switch (meuSegmento.selectedSegmentIndex) {
            case 0:
                print("Você clicou em \(meuSegmento.titleForSegment(at: meuSegmento.selectedSegmentIndex)!)");
            break;
            case 1:
                print("Você clicou em \(meuSegmento.titleForSegment(at: meuSegmento.selectedSegmentIndex)!)");
            break;
            case 2:
                print("Você clicou em \(meuSegmento.titleForSegment(at: meuSegmento.selectedSegmentIndex)!)");
            break;
            default:
                print("Selecione algo...");
            break;
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: Any) {
        lblAno.text = String(Int(meuStepper.value));
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        lblKm.text = String(Int(sender.value));
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        print(sender.isOn);
    }
    
    
    @IBAction func informarRota(_ sender: UIButton) {
        let alerta:UIAlertController =
            UIAlertController(
                title: "Forma para receber sua rota",
                message: "Faça sua escolha",
                preferredStyle: UIAlertController.Style.actionSheet
            );
        
        alerta.addAction(
            UIAlertAction(
                title: "SMS",
                style: UIAlertAction.Style.default,
                handler: {
                    (action) in
                    self.lblRota.text = action.title;
                }
            )
        );
        
        alerta.addAction(
            UIAlertAction(
                title: "E-mail",
                style: UIAlertAction.Style.default,
                handler: {
                    (action) in
                    self.lblRota.text = action.title;
                }
            )
        );
        
        alerta.addAction(
            UIAlertAction(
                title: "Cancelar",
                style: UIAlertAction.Style.cancel,
                handler: nil
            )
        );
        
        present(alerta, animated: true, completion: nil);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblAno.text = "1980";
        lblKm.text  = "500";
    }

}

