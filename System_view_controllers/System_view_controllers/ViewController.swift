//
//  ViewController.swift
//  System_view_controllers
//
//  Created by Thrishalini on 11/01/23.
//

import UIKit
import SafariServices
class ViewController:
    UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate
{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBOutlet weak var Image_View: UIImageView!
    
    @IBAction func shareButtonTapped(_ sender: UIButton) {
        
        guard let image = Image_View.image else { return }
                let activityController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView = sender
        present(activityController, animated: true , completion: nil)
    }
    
    @IBAction func safariButtonTapped(_ sender: UIButton) {
        if let url = URL(string: "http://www.apple.com"){
            let safariViewController = SFSafariViewController(url:url)
            present(safariViewController,animated: true,completion: nil)
        }
    }
    @IBAction func cameraButtonTapped(_ sender: UIButton) {
        
        func imagePickerController(_ picker: UIImagePickerController,
           didFinishPickingMediaWithInfo info:
           [UIImagePickerController.InfoKey : Any]) {
            guard let selectedImage = info[.originalImage] as?
               UIImage else { return }
            
            Image_View.image = selectedImage
            dismiss(animated: true, completion: nil)
        }
//       imagePickerController(<#T##picker: UIImagePickerController##UIImagePickerController#>, didFinishPickingMediaWithInfo: <#T##[UIImagePickerController.InfoKey : Any]#>)
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        
         let alertController = UIAlertController(
            title:"Choose Image Source",
            message: nil,
            preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(
                title: "Cancel",
                style: .cancel,
                handler: nil)
        
        alertController.addAction(cancelAction)
       
        
        if(UIImagePickerController.isSourceTypeAvailable(.camera)){
            let cameraAction = UIAlertAction(
                title: "Camera",
                style: .default,
                handler:{
                    action in imagePicker.sourceType = .camera
                    self.present(imagePicker, animated: true, completion: nil)
                }
            )
            
            alertController.addAction(cameraAction)
            
        }
        
        if (UIImagePickerController.isSourceTypeAvailable(.photoLibrary)){
            let photoLibraryAction = UIAlertAction(
                title: "Photo Library",
                style: .default,
                handler:{action in
                    imagePicker.sourceType = .photoLibrary
                    self.present(imagePicker, animated: true, completion: nil)
     }
            )
            alertController.addAction(photoLibraryAction)
        }
       
      
        
            
           
            
            alertController.popoverPresentationController?.sourceView = sender
        
            present(alertController, animated: true, completion: nil)
       
        
    }
    
 
    @IBAction func emailButtonTapped(_ sender: UIButton) {
        
    }
    
    
}

