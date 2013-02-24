module Monkey
  
  module Sample

    import com.jme3.app.SimpleApplication;
    import com.jme3.material.Material;
    import com.jme3.math.Vector3f;
    import com.jme3.scene.Geometry;
    import com.jme3.scene.shape.Box;
    import com.jme3.math.ColorRGBA;
    import com.jme3.input.KeyInput;
    import com.jme3.input.MouseInput;
    import com.jme3.input.controls.ActionListener;
    import com.jme3.input.controls.AnalogListener;
    import com.jme3.input.controls.KeyTrigger;
    import com.jme3.input.controls.MouseButtonTrigger;
    import com.jme3.system.AppSettings

    class SampleBox < SimpleApplication
      
      def initialize
      end

      def simpleInitApp
        b = Box.new(Vector3f::ZERO,1,1,1)
        @geo = Geometry.new("box",b)
        mat = Material.new(assetManager,"Common/MatDefs/Misc/Unshaded.j3md")    
        mat.setColor("Color",ColorRGBA::Blue)
        @geo.setMaterial(mat)
        rootNode.attachChild(@geo)
      end
    end
  end
end
