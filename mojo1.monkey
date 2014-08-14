
Import mojo

Class MyGame Extends App

	Field tile:Image

	Method OnCreate()
		
		SetUpdateRate(60)
		tile = LoadImage("tile.png")
		Print("Tile Width: " + tile.Width())
		Print("Tile Height: " + tile.Height())
		
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

Function Main()
	
	New MyGame()
	
End

