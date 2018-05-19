
Header = new Layer
	width: 1024
	height: 177
	image: "images/Header.png"

Slidy_Line = new Layer 
	parent: Header 
	width: 180
	height: 4
	backgroundColor: "black"
	y: Align.bottom()

Home_HS = new Layer 
	parent: Header 
	width: 180
	height: 64
	y: Align.bottom()
	backgroundColor: null 
	
Schedule_HS = new Layer 
	parent: Header 
	width: 180
	height: 64
	y: Align.bottom()
	x: 180
	backgroundColor: null
	
Community_HS = new Layer 
	parent: Header 
	width: 180
	height: 64
	y: Align.bottom()
	x: 180 + 180
	backgroundColor: null
	
Messages_HS = new Layer 
	parent: Header 
	width: 180
	height: 64
	y: Align.bottom()
	x: 360 + 180 
	backgroundColor: null
	
Achievements_HS = new Layer 
	parent: Header 
	width: 180
	height: 64
	y: Align.bottom()
	x: 360 + 360
	backgroundColor: null

Content = new Layer 
	x: 0
	y: Header.height 
	width: Screen.width
	height: Screen.height - Header.height 
	backgroundColor: "white"

Home = new Layer
	width: 1024
	height: 1256
	image: "images/Home.png"
	parent: Content

Schedule = new Layer
	width: 1024
	height: 1306
	image: "images/Schedule.png"
	parent: Content
	x: Screen.width

Achievements = new Layer
	width: 1024
	height: 729
	image: "images/Achievements.png"
	parent: Content
	x: Screen.width

Community = new Layer
	width: 1024
	height: 930
	image: "images/Community.png"
	parent: Content
	x: Screen.width

Messages = new Layer
	width: 1024
	height: 930
	image: "images/Messages.png"
	parent: Content
	x: Screen.width

Home_HS.onClick ->
	Home.bringToFront()
	Home.animate
		properties: 
			x: 0
		time: 0.3 
		curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"
	Slidy_Line.animate
		properties:
			x: Home_HS.x 
		time: 0.3 
		curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"
	Utils.delay 0.3, ->
		#Home.x = Screen.width
		Schedule.x = Screen.width 
		Community.x = Screen.width 
		Messages.x = Screen.width
		Achievements.x = Screen.width
		
Schedule_HS.onClick ->
	Schedule.bringToFront()
	Schedule.animate
		properties: 
			x: 0
		time: 0.3 
		curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"
	Slidy_Line.animate
		properties:
			x: Schedule_HS.x 
		time: 0.3 
		curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"
	Utils.delay 0.3, ->
		Home.x = Screen.width
		#Schedule.x = Screen.width 
		Community.x = Screen.width 
		Messages.x = Screen.width
		Achievements.x = Screen.width

Community_HS.onClick ->
	Community.bringToFront()
	Community.animate
		properties: 
			x: 0
		time: 0.3 
		curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"
	Slidy_Line.animate
		properties:
			x: Community_HS.x 
		time: 0.3 
		curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"
	Utils.delay 0.3, ->
		Home.x = Screen.width
		Schedule.x = Screen.width 
		#Community.x = Screen.width 
		Messages.x = Screen.width
		Achievements.x = Screen.width

Messages_HS.onClick ->
	Messages.bringToFront()
	Messages.animate
		properties: 
			x: 0
		time: 0.3 
		curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"
	Slidy_Line.animate
		properties:
			x: Messages_HS.x 
		time: 0.3 
		curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"
	Utils.delay 0.3, ->
		Home.x = Screen.width
		Schedule.x = Screen.width 
		Community.x = Screen.width 
		#Messages.x = Screen.width
		Achievements.x = Screen.width

Achievements_HS.onClick ->
	Achievements.bringToFront()
	Achievements.animate
		properties: 
			x: 0
		time: 0.3 
		curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"
	Slidy_Line.animate
		properties:
			x: Achievements_HS.x 
		time: 0.3 
		curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"
	Utils.delay 0.3, ->
		Home.x = Screen.width
		Schedule.x = Screen.width 
		Community.x = Screen.width 
		Messages.x = Screen.width
		#Achievements.x = Screen.width
