
Import mojo

Class MyGame Extends App

	Field tile:Image
	
	Global currentScene:Int[][][]

	Method OnCreate()
		
		SetUpdateRate(60)
		tile = LoadImage("tile.png")
		currentScene = GenerateScene(9)
		currentScene[0][0][0] = 1
		
	End
	
	Method OnUpdate()
		
		
		
	End
	
	Method OnRender()
		
		Cls(255, 255, 255)
		
		For Local i = 0 Until 10
		
			DrawImage(tile, 50 + (tile.Width()-2) * i, 50)
		
		End
		
		For Local i = 0 Until 9
		
			DrawImage(tile, 50 + tile.Width()/2-1 + (tile.Width()-2) * i, 58)
		
		End
		
	End
	
	Method OnLoading()
		
		
		
	End

	Method OnSuspend()
		
		
		
	End
	
	Method OnResume()
		
		
		
	End

End

Function DrawScene:Void(scene:Int[][][])
	For Local i = 0 Until scene.Size()
		For Local j = 0 To i
		
			
		
			For Local k = 0 Until scene.Size()
				' Render each tile in stack
				If scene[i][j][k] == 0 ' Can not have floating tiles
					Exit
				End
			End
		End 
	End
End

Function GenerateScene:Int[][][](size:Int)
	Local scene:Int[size][][]
	For Local i = 0 Until size
		scene[i] = New Int[size][]
		For Local j = 0 Until size
			scene[i][j] = New Int[size]
			For Local k = 0 Until size
				scene[i][j][k] = 0
			End
		End
	End
End

Function Main()
	
	New MyGame()
	
End

