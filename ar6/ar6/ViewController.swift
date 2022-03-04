//Created by Udit Singh

import UIKit
import ARKit
import SceneKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    func showShape() {
        let node = SCNNode()
        node.geometry = SCNSphere(radius: 0.1)
        node.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "img2.jpeg")
        node.position = SCNVector3(0,0,0)
        node.name = "Sphere"
        let scene = SCNScene()
        
        scene.background.contents = UIImage(named: "img.JPG")
        sceneView.scene = scene
        scene.rootNode.addChildNode(node)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sceneView.delegate = self
        sceneView.showsStatistics = true
        sceneView.debugOptions = [ARSCNDebugOptions .showWorldOrigin, ARSCNDebugOptions .showFeaturePoints]
        showShape()
    }


}

