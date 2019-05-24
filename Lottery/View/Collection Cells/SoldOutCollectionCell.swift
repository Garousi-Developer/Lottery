import UIKit

class SoldOutCollectionCell: CollectionCell {
    @IBOutlet weak var soldOutLabel: Label!
    @IBOutlet weak var pictureImageView: ImageView!
    @IBOutlet weak var productLabel: Label!
    @IBOutlet weak var drawDateLabel: Label!
    @IBOutlet weak var winChanceLabel: Label!
    @IBOutlet weak var prizeLabel: Label!
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        maskCell()
    }
}

extension SoldOutCollectionCell {
    private func maskCell() {
        let path = UIBezierPath()
        path.move(to: CGPoint(
            x: 0,
            y: 16
        ))
        path.addArc(
            withCenter: CGPoint(
                x: 16,
                y: 16
            ),
            radius: 16,
            startAngle: 180.degrees,
            endAngle: 270.degrees,
            clockwise: true
        )
        path.addArc(
            withCenter: CGPoint(
                x: 16 + scale * 33,
                y: 0
            ),
            radius: scale * 33,
            startAngle: 180.degrees,
            endAngle: 0.degrees,
            clockwise: false
        )
        path.addLine(to: CGPoint(
            x: bounds.width - 16,
            y: 0
        ))
        path.addArc(
            withCenter: CGPoint(
                x: bounds.width - 16,
                y: 16
            ),
            radius: 16,
            startAngle: 270.degrees,
            endAngle: 360.degrees,
            clockwise: true
        )
        path.addLine(to: CGPoint(
            x: bounds.width,
            y: bounds.height - 16
        ))
        path.addArc(
            withCenter: CGPoint(
                x: bounds.width - 16,
                y: bounds.height - 16
            ),
            radius: 16,
            startAngle: 0.degrees,
            endAngle: 90.degrees,
            clockwise: true
        )
        path.addLine(to: CGPoint(
            x: 16,
            y: bounds.height
        ))
        path.addArc(
            withCenter: CGPoint(
                x: 16,
                y: bounds.height - 16
            ),
            radius: 16,
            startAngle: 90.degrees,
            endAngle: 180.degrees,
            clockwise: true
        )
        path.close()
        
        let shapeLayer = ShapeLayer()
        shapeLayer.frame = layer.bounds
        shapeLayer.path = path.cgPath
        shapeLayer.fillColor = colors(.white).cgColor
        
        layer.insertSublayer(shapeLayer, at: 0)
    }
}
