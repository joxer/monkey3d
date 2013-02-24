# -*- coding: utf-8 -*-
require 'java'

if File.dirname(__FILE__) =~ /jar!/
  Dir.entries(((File.expand_path File.dirname(__FILE__))+"/lib/j3m/").gsub(/(file:|\/game.jar!)+/,"")).grep(/jar/).each { |jar|
    require ((File.expand_path File.dirname(__FILE__))+"/lib/j3m/").gsub(/(file:|\/game.jar!)+/,"")+jar
  }
  
else  
  Dir.entries((File.expand_path File.dirname(__FILE__))+"/../lib/j3m/").grep(/jar/).each { |jar|
    require (File.expand_path File.dirname(__FILE__))+"/../lib/j3m/"+jar
  }
end
require 'monkey'
puts $:
puts __FILE__
Monkey::Sample::SampleBox.new.start

=begin
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

class Hello < SimpleApplication

  class Action
    include ActionListener
    
    def initialize(ob)
      @obj = ob
    end
    def onAction(a,b,c)
      @obj.rotate(2*c,0,0);
    end
  end


  def simpleInitApp
    @rotate = 2
    b = Box.new(Vector3f::ZERO,1,1,1)
    @geo = Geometry.new("box",b)
    mat = Material.new(assetManager,"Common/MatDefs/Misc/Unshaded.j3md")    
    mat.setColor("Color",ColorRGBA::Blue)
    @geo.setMaterial(mat)
    rootNode.attachChild(@geo)
    @action = Action.new(@geo)
    initKeys

    
  end

  def simpleUpdate(tpf)
    @geo.rotate(0,@rotate*tpf,0)
  end

private
  def initKeys
    inputManager.addMapping("Pause",KeyTrigger.new(KeyInput::KEY_P))
    inputManager.addListener(@action,["Pause"].to_java(:string))
  end

end

hello = Hello.new

settings = AppSettings.new true
settings.setResolution(640,480)
hello.setShowSettings(false);    
hello.setSettings(settings)

hello.start

=end
