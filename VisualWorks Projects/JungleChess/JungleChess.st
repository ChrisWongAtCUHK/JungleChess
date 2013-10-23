<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.8 of 2011年3月30日 on 2012年3月15日 at 下午09時00分41秒</time-stamp>


<component-created>
<name>JungleChess</name> <type>package</type>
</component-created><!-- Package JungleChess* -->


<component-property>
<name>JungleChess</name> <type>package</type>
<property>comment</property> <value>'Jungle Chess or Dou Shou Qi is a traditional Chinese board game with a 9x7 game board. It is a
2-player game where each player has eight chess pieces, each representing a dierent animal. The
goal is to either get into the den of the opponent''s side or capture all of enemy''s pieces.'</value>
</component-property>

<class>
<name>Piece</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>board type owner position movablePositions ediblePieces name </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>Piece</class-id>
<body>A single piece of a player. Usually its subclass should be used.Attributes:	board: Board-- the board which contains this square	ediblePieces[]: Piece-- the collection of pieces of which this piece can capture	movablePositions[]:Point-- the collection of position of which this piece can move to 	name: String-- the name of this piece	owner: Player-- the player who has control over this piece	position: Point-- the position of this piece	type: Integer-- the type of this piece</body>
</comment>

<class>
<name>Square</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>background position piece pieceBrightness </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>Square</class-id>
<body>A single square of board.Attributes:	background: Integer-- which kind of background image	aPiece: Piece—the piece on this instance of Square	position: Point the position of this square</body>
</comment>

<class>
<name>Trap</name>
<environment>Smalltalk</environment>
<super>Square</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>owner </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>Trap</class-id>
<body>Subclass of Square.</body>
</comment>

<class>
<name>Board</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>jungleChess jungleChessWindowModel height width squares pickedPiece selectedSquare </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>Board</class-id>
<body>The whole chess board of jungle chess, inherit from UI.Model.Attributes:	jungleChess:JungleChess-- the JungleChess instance who owns this board	jungleChessWindowModel-- the Application Window whic display the view of this board, as well as other graphic component such as the “New Game” button and the message prompting area	width:Integer-- the width of the board	height:Integer-- the height of the board	squares[]:Square-- information of all squares in the game	selectedSquare:Square-- the square is currently selected</body>
</comment>

<class>
<name>Jaguar</name>
<environment>Smalltalk</environment>
<super>Piece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>Jaguar</class-id>
<body>Subclass of Piece.</body>
</comment>

<class>
<name>SquareView</name>
<environment>Smalltalk</environment>
<super>UI.View</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>applicationImage alphaImages bgImages </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>SquareView</class-id>
<body>The view to show a single square, inherit from UI.View.Attributes:	applicationImage-- the combined image with background and piece	alphaImages[]-- the collection of images of pieces	bgImages[]-- the collection of images of backgrounds</body>
</comment>

<class>
<name>BoardView</name>
<environment>Smalltalk</environment>
<super>UI.CompositeView</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>BoardView</class-id>
<body>The view of the board including a number of squares , inherit from UI.View.</body>
</comment>

<class>
<name>BoardController</name>
<environment>Smalltalk</environment>
<super>UI.Controller</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>BoardController</class-id>
<body>BoardController can invoke its model(Board) method to have action on multiple units(square).At this moment(11 March, 2012), no need to make use of this controller since the instance of SquareController can have action on two squares and this is sufficient. </body>
</comment>

<class>
<name>Elephant</name>
<environment>Smalltalk</environment>
<super>Piece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>Elephant</class-id>
<body>Subclass of Piece.</body>
</comment>

<class>
<name>Cat</name>
<environment>Smalltalk</environment>
<super>Piece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>Cat</class-id>
<body>Subclass of Piece.</body>
</comment>

<class>
<name>JungleChessWindowModel</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>message board jungleChess </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>JungleChessWindowModel</class-id>
<body>The main display area(Application Window) for BoardView by an instance of UI.ArbitraryComponentSpec. It also contains a "New Game" button and message prompting area.Attributes:	message-- ValueHolder is a very simple Model, no more than a value holder with updates.	board: Board-- the instance of Board which is a collection of square.	jungleChess: JungleChessthe-- instance of JungleChess which control the game flow.</body>
</comment>

<class>
<name>Player</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>name pieces </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>Player</class-id>
<body>The player who is playing the game.Attributes:	name: String-- the name of this player	pieces[]: Piece-- the pieces held by a single player</body>
</comment>

<class>
<name>Lion</name>
<environment>Smalltalk</environment>
<super>Piece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>Lion</class-id>
<body>Subclass of Piece. Can jump over a river if there is no rat in the river.</body>
</comment>

<class>
<name>River</name>
<environment>Smalltalk</environment>
<super>Square</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>River</class-id>
<body>Subclass of Square. Can swim in river. Cannot capture an elephant if this rat is in river.</body>
</comment>

<class>
<name>SquareController</name>
<environment>Smalltalk</environment>
<super>UI.Controller</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>SquareController</class-id>
<body>A Controller coordinates a SquareView, its Square, and user actions, inherit from UI.Controller.</body>
</comment>

<class>
<name>JungleChess</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>jungleChessWindowModel board currentPlayer endOfGame players </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>JungleChess</class-id>
<body>The main body of the game.Attributes:	jungleChessWindowModel: JungleChessWindowModel-- the Application Window whic display the view of this board, as well as other graphic component such as the “New Game” button and the message prompting area	board: Board-- contains the playground of jungle chess	currentPlayer: Player-- the current player who should have a move on piece	endOfGame: Boolean-- whether the game is over, if it is true, game ends and no more operation except pressing "New Game" button	players[]: Player-- contains the players objects</body>
</comment>

<class>
<name>Ground</name>
<environment>Smalltalk</environment>
<super>Square</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>Ground</class-id>
<body>Subclass of Square.</body>
</comment>

<class>
<name>Den</name>
<environment>Smalltalk</environment>
<super>Square</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>owner </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>Den</class-id>
<body>Subclass of Square.</body>
</comment>

<class>
<name>Wolf</name>
<environment>Smalltalk</environment>
<super>Piece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>Wolf</class-id>
<body>Subclass of Piece.</body>
</comment>

<class>
<name>Tiger</name>
<environment>Smalltalk</environment>
<super>Piece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>Tiger</class-id>
<body>Subclass of Piece. Can jump over a river if there is no rat in the river.</body>
</comment>

<class>
<name>Rat</name>
<environment>Smalltalk</environment>
<super>Piece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>Rat</class-id>
<body>Subclass of Piece.</body>
</comment>

<class>
<name>Dog</name>
<environment>Smalltalk</environment>
<super>Piece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>Dog</class-id>
<body>Subclass of Piece.</body>
</comment>

<methods>
<class-id>Piece class</class-id> <category>instance creation</category>

<body package="JungleChess" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Piece</class-id> <category>accessing</category>

<body package="JungleChess" selector="name">name	^name.</body>

<body package="JungleChess" selector="owner">owner	^owner.</body>

<body package="JungleChess" selector="setPosition:">setPosition: aPoint	position := aPoint.</body>

<body package="JungleChess" selector="setEdiblePieces:">setEdiblePieces: pieces	ediblePieces := ediblePieces.</body>

<body package="JungleChess" selector="setMovablePositions">setMovablePositions	| point i |	movablePositions := Dictionary new.	i := 1.	"Up"	point := (position x)@((position y) - 1).	i := (self checkMovablePoint: point at: i).	"Down"	point := (position x)@((position y) + 1).	i := (self checkMovablePoint: point at: i).	"Left"	point := ((position x) - 1)@(position y).	i := (self checkMovablePoint: point at: i).	"Right"	point := ((position x) + 1)@(position y).	i := (self checkMovablePoint: point at: i).</body>

<body package="JungleChess" selector="setType:">setType: anInteger	type := anInteger.</body>

<body package="JungleChess" selector="setName:">setName: aName	name := aName.</body>

<body package="JungleChess" selector="board">board	^board.</body>

<body package="JungleChess" selector="ediblePieces">ediblePieces	^ediblePieces.</body>

<body package="JungleChess" selector="position">position	^position.</body>

<body package="JungleChess" selector="movablePositions">movablePositions	^movablePositions.</body>

<body package="JungleChess" selector="setOwner:">setOwner: aPlayer	owner := aPlayer.	aPlayer atPiece: (self type) put:self.</body>

<body package="JungleChess" selector="setBoard:">setBoard: aBoard	board := aBoard.</body>

<body package="JungleChess" selector="checkMovablePoint:at:">checkMovablePoint: aPoint at: anInteger	(aPoint x &lt; 1) | (aPoint x &gt; board width) | (aPoint y &lt; 1) | (aPoint y &gt; board height) ifFalse: [				"Avoid out of bound"		| bgType |		bgType := (board squares atPoint: aPoint) background.		(bgType = 1) &amp; (self owner name ~= 'Red') ifTrue: [											"If it is a red den and the owner of this piece is not Red"			movablePositions at: anInteger put: aPoint.			^(anInteger + 1).		].		(bgType = 2) &amp; (self owner name ~= 'Blue') ifTrue: [											"If it is a blue den and the owner of this piece is not Blue"			movablePositions at: anInteger put: aPoint.			^(anInteger + 1).		].		(bgType = 3) | (bgType = 5) ifTrue: [															"If it is a ground or a trap"			movablePositions at: anInteger put: aPoint.			^(anInteger + 1).		].	].	^anInteger.</body>

<body package="JungleChess" selector="addEdiblePiece:">addEdiblePiece: aPiece"Add a piece at the end"	| i |	i := 1.	[i &lt;= (ediblePieces size)] whileTrue: [			i:= i + 1.	].	ediblePieces at: i  put: aPiece.</body>

<body package="JungleChess" selector="type">type	^type.</body>
</methods>

<methods>
<class-id>Piece</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	type := 0.	name := 'Piece'.	ediblePieces := Dictionary new.	^self</body>
</methods>


<methods>
<class-id>Rat</class-id> <category>accessing</category>

<body package="JungleChess" selector="checkMovablePoint:at:">checkMovablePoint: point at: anInteger	(point x &lt; 1) | (point x &gt; board width) | (point y &lt; 1) | (point y &gt; board height) ifFalse: [				"Avoid out of bound"		| bgType |		bgType := (board squares atPoint: point) background.		(bgType = 1) &amp; (self owner name ~= 'Red') ifTrue: [											"If it is a red den and the owner of this piece is not Red"			movablePositions at: anInteger put: point.			^(anInteger + 1).		].		(bgType = 2) &amp; (self owner name ~= 'Blue') ifTrue: [											"If it is a blue den and the owner of this piece is not Blue"			movablePositions at: anInteger put: point.			^(anInteger + 1).		].		(bgType = 3) | (bgType = 4) | (bgType = 5) ifTrue: [											"If it is a ground, a river or a trap"			movablePositions at: anInteger put: point.			^(anInteger + 1).		].	].	^anInteger.</body>
</methods>

<methods>
<class-id>Rat</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	type := 1.	name := 'Rat'.	ediblePieces at: 1 put: 8;				  at: 2 put: 1.	^self</body>
</methods>


<methods>
<class-id>JungleChessWindowModel class</class-id> <category>interface specs</category>

<body package="JungleChess" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#properties: #(#{UI.PropertyListDictionary} #sizeType #specifiedSize #positionType #positionSystemDefault #openType #advanced ) 			#label: 'Jungle Chess' 			#min: #(#{Core.Point} 420 600 ) 			#max: #(#{Core.Point} 420 600 ) 			#bounds: #(#{Graphics.Rectangle} 430 186 850 786 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 317 569 419 599 ) 					#name: #NewGameButton 					#model: #restart 					#label: 'New Game' 					#defaultable: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 0 569 317 598 ) 					#name: #MessagePromptingArea 					#flags: 40 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setBackgroundColor: #(#{Graphics.ColorValue} 4915 4463 4463 ) ) 					#model: #message 					#isReadOnly: true ) 				#(#{UI.ArbitraryComponentSpec} 					#layout: #(#{Graphics.Rectangle} 0 0 419 568 ) 					#name: #BoardViewHolder 					#component: #view ) ) ) )</body>
</methods>


<methods>
<class-id>JungleChessWindowModel</class-id> <category>aspects</category>

<body package="JungleChess" selector="message">message	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^message isNil		ifTrue:			[message := String new asValue]		ifFalse:			[message]</body>
</methods>

<methods>
<class-id>JungleChessWindowModel</class-id> <category>accessing</category>

<body package="JungleChess" selector="view">view"This method is defined from the GUI painter tool."	^BoardView model: board.</body>

<body package="JungleChess" selector="jungleChess">jungleChess	^jungleChess.</body>

<body package="JungleChess" selector="setBoard:">setBoard: aBoard	board := aBoard.</body>

<body package="JungleChess" selector="setJungleChess:">setJungleChess: aJungleChess	jungleChess := aJungleChess.</body>

<body package="JungleChess" selector="board">board	^board.</body>
</methods>

<methods>
<class-id>JungleChessWindowModel</class-id> <category>actions</category>

<body package="JungleChess" selector="restart">restart	"This stub method was generated by UIDefiner"	self jungleChess restart.	^self</body>
</methods>

<methods>
<class-id>JungleChessWindowModel</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	^self</body>
</methods>


<methods>
<class-id>Dog</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	type := 3.	name := 'Dog'.	ediblePieces at: 1 put: 3;				  at: 2 put: 2;				  at: 3 put: 1.	^self</body>
</methods>


<methods>
<class-id>Player class</class-id> <category>instance creation</category>

<body package="JungleChess" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Player</class-id> <category>accessing</category>

<body package="JungleChess" selector="removePiece:">removePiece: anInteger	pieces removeKey: anInteger.</body>

<body package="JungleChess" selector="setName:">setName: aName	name := aName.</body>

<body package="JungleChess" selector="name">name	^name.</body>

<body package="JungleChess" selector="pieces">pieces	^pieces.</body>

<body package="JungleChess" selector="atPiece:put:">atPiece: anInteger put: aPiece	pieces at: anInteger put: aPiece.</body>

<body package="JungleChess" selector="addPiece:">addPiece: aPiece	pieces at: ((pieces size) + 1) put: aPiece.</body>
</methods>

<methods>
<class-id>Player</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	pieces := Dictionary new.	^self</body>
</methods>


<methods>
<class-id>Board class</class-id> <category>instance creation</category>

<body package="JungleChess" selector="extent:">extent: aPoint    ^super new extent: aPoint.</body>

<body package="JungleChess" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Board</class-id> <category>accessing</category>

<body package="JungleChess" selector="setJungleChessWindowModel:">setJungleChessWindowModel: aJungleChessWindowModel	jungleChessWindowModel := aJungleChessWindowModel.</body>

<body package="JungleChess" selector="pickedPiece">pickedPiece	^pickedPiece.</body>

<body package="JungleChess" selector="setHeight:">setHeight: anInteger    height := anInteger.</body>

<body package="JungleChess" selector="setPickedPiece:">setPickedPiece: aPiece	pickedPiece := aPiece.</body>

<body package="JungleChess" selector="setSquares:">setSquares: aSquareDictionary	squares := aSquareDictionary.</body>

<body package="JungleChess" selector="at:">at: aPoint	^(squares atPoint: aPoint).								"y is row number, x is column number"</body>

<body package="JungleChess" selector="jungleChess">jungleChess	^jungleChess.</body>

<body package="JungleChess" selector="height">height    ^height.</body>

<body package="JungleChess" selector="selectedSquare">selectedSquare	^selectedSquare.</body>

<body package="JungleChess" selector="setSelectedSquare:">setSelectedSquare: aSquare	selectedSquare := aSquare.</body>

<body package="JungleChess" selector="setWidth:">setWidth: anInteger    width := anInteger.</body>

<body package="JungleChess" selector="setJungleChess:">setJungleChess: aJungleChess	jungleChess := aJungleChess.</body>

<body package="JungleChess" selector="squares">squares	^squares.</body>

<body package="JungleChess" selector="jungleChessWindowModel">jungleChessWindowModel	^jungleChessWindowModel.</body>

<body package="JungleChess" selector="width">width    ^width.</body>
</methods>

<methods>
<class-id>Board</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	selectedSquare := nil.	pickedPiece := nil.	^self</body>

<body package="JungleChess" selector="extent:">extent: dimension	"Some segments of code are cited from tuto08.pptx with modification"	|switchBg den1Pos den2Pos x y riverArray trapArray playerBlue playerRed |	super initialize.	width := dimension x.	height := dimension y.	squares := TwoDList columns: width rows: height.	playerBlue := (self jungleChess players at: 1).	playerBlue setName: 'Blue'.	playerRed := (self jungleChess players at: 2).	playerRed setName: 'Red'.	x := 1.	y := 1.	switchBg := Dictionary new.	switchBg at: $A put: [squares atPoint: (x@y) put: (Den new).					    (y = 1) ifTrue:[(squares atPoint: (x@y)) setBackground: 1.									(squares atPoint: (x@y)) setOwner: playerRed.].					    (y = 9) ifTrue:[(squares atPoint: (x@y)) setBackground: 2].									(squares atPoint: (x@y)) setOwner: playerBlue.];		    at: $B put: [squares atPoint: (x@y) put: (Ground new).];		    at: $C put: [squares atPoint: (x@y) put: (River new).];		    at: $D put: [squares atPoint: (x@y) put: (Trap new).].	"Draw Den"	den1Pos := 4@1.	den2Pos := 4@9.	"Draw River"	riverArray := Dictionary new.												"Array := #() does not work"	riverArray at: 1 put: (2@4);			   at: 2 put: (2@5);			   at: 3 put: (2@6);			   at: 4 put: (3@4);			   at: 5 put: (3@5);			   at: 6 put: (3@6);			   at: 7 put: (5@4);			   at: 8 put: (5@5);			   at: 9 put: (5@6);			   at: 10 put: (6@4);			   at: 11 put: (6@5);			   at: 12 put: (6@6).	"Draw Trap"	trapArray := Dictionary new.		trapArray at: 1 put: (3@1);			   at: 2 put: (5@1);			   at: 3 put: (4@2);			   at: 4 put: (4@8);			   at: 5 put: (3@9);			   at: 6 put: (5@9).	"Create a 2D array board"	"For each entry of the board, add a Square at this entry"	y := 1.	[y &lt;= height] whileTrue: [		x := 1.		[x &lt;= width] whileTrue:[			((x@y = den1Pos) | (x@y = den2Pos))ifTrue: [				(switchBg at: $A) value.			].			((x@y = den1Pos) | (x@y = den2Pos) | (riverArray includes: x@y) | (trapArray includes: x@y))ifFalse: [				(switchBg at: $B) value.			].			(riverArray includes: x@y) ifTrue: [					(switchBg at: $C) value.			].			(trapArray includes: x@y) ifTrue: [					(switchBg at: $D) value.						((x@y) = (3@1)) ifTrue: [							(squares atPoint: (x@y)) setOwner: playerRed.						]. 						((x@y) = (5@1)) ifTrue: [							(squares atPoint: (x@y)) setOwner: playerRed.						]. 						((x@y) = (4@2)) ifTrue: [							(squares atPoint: (x@y)) setOwner: playerRed.						]. 						((x@y) = (4@8)) ifTrue: [							(squares atPoint: (x@y)) setOwner: playerBlue.						].						((x@y) = (3@9)) ifTrue: [							(squares atPoint: (x@y)) setOwner: playerBlue.						].						((x@y) = (5@9)) ifTrue: [							(squares atPoint: (x@y)) setOwner: playerBlue.						].			].			"Draw a red cat"			(x@y = (6@2)) ifTrue: [				(squares atPoint: (x@y)) setPiece: (Cat new).				(squares atPoint: (x@y)) piece setOwner: playerRed.			].			"Draw a blue cat"			(x@y = (2@8)) ifTrue: [				(squares atPoint: (x@y)) setPiece: (Cat new).				(squares atPoint: (x@y)) piece setOwner: playerBlue.			].			"Draw a red dog"			(x@y = (2@2)) ifTrue: [				(squares atPoint: (x@y)) setPiece: (Dog new).				(squares atPoint: (x@y)) piece setOwner: playerRed.			].			"Draw a blue dog"			(x@y = (6@8)) ifTrue: [				(squares atPoint: (x@y)) setPiece: (Dog new).				(squares atPoint: (x@y)) piece setOwner: playerBlue.			].			"Draw a red elephant"			(x@y = (7@3)) ifTrue: [				(squares atPoint: (x@y)) setPiece: (Elephant new).				(squares atPoint: (x@y)) piece setOwner: playerRed.			].			"Draw a blue elephant"			(x@y = (1@7)) ifTrue: [				(squares atPoint: (x@y)) setPiece: (Elephant new).				(squares atPoint: (x@y)) piece setOwner: playerBlue.			].			"Draw a red jaguar"			(x@y = (3@3)) ifTrue: [				(squares atPoint: (x@y)) setPiece: (Jaguar new).				(squares atPoint: (x@y)) piece setOwner: playerRed.			].			"Draw a blue jaguar"			(x@y = (5@7)) ifTrue: [				(squares atPoint: (x@y)) setPiece: (Jaguar new).				(squares atPoint: (x@y)) piece setOwner: playerBlue.			].			"Draw a red lion"			(x@y = (1@1)) ifTrue: [				(squares atPoint: (x@y)) setPiece: (Lion new).				(squares atPoint: (x@y)) piece setOwner: playerRed.			].			"Draw a blue lion"			(x@y = (7@9)) ifTrue: [				(squares atPoint: (x@y)) setPiece: (Lion new).				(squares atPoint: (x@y)) piece setOwner: playerBlue.			].			"Draw a red rat"			(x@y = (1@3)) ifTrue: [				(squares atPoint: (x@y)) setPiece: (Rat new).				(squares atPoint: (x@y)) piece setOwner: playerRed.			].			"Draw a blue rat"			(x@y = (7@7)) ifTrue: [				(squares atPoint: (x@y)) setPiece: (Rat new).				(squares atPoint: (x@y)) piece setOwner: playerBlue.			].			"Draw a red tiger"			(x@y = (7@1)) ifTrue: [				(squares atPoint: (x@y)) setPiece: (Tiger new).				(squares atPoint: (x@y)) piece setOwner: playerRed.			].			"Draw a blue tiger"			(x@y = (1@9)) ifTrue: [				(squares atPoint: (x@y)) setPiece: (Tiger new).				(squares atPoint: (x@y)) piece setOwner: playerBlue.			].			"Draw a red wolf"			(x@y = (5@3)) ifTrue: [				(squares atPoint: (x@y)) setPiece: (Wolf new).				(squares atPoint: (x@y)) piece setOwner: playerRed.			].			"Draw a blue wolf"			(x@y = (3@7)) ifTrue: [				(squares atPoint: (x@y)) setPiece: (Wolf new).				(squares atPoint: (x@y)) piece setOwner: playerBlue.			].			(squares atPoint: (x@y)) setPosition: (x@y).			(squares atPoint: (x@y)) piece setPosition: (x@y).			(squares atPoint: (x@y)) piece setBoard: self.			x := x + 1.		].		y := y + 1.	].	self changed.</body>
</methods>


<methods>
<class-id>Square class</class-id> <category>instance creation</category>

<body package="JungleChess" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Square</class-id> <category>accessing</category>

<body package="JungleChess" selector="background">background	^background.</body>

<body package="JungleChess" selector="position">position	^position.</body>

<body package="JungleChess" selector="setBackground:">setBackground: anInteger	background := anInteger.	self changed.</body>

<body package="JungleChess" selector="setPosition:">setPosition: aPoint	position := aPoint.</body>

<body package="JungleChess" selector="pieceBrightness">pieceBrightness	^pieceBrightness.</body>

<body package="JungleChess" selector="setPiece:">setPiece: aPiece	piece := aPiece.	self changed.</body>

<body package="JungleChess" selector="setPieceBrightness:">setPieceBrightness: aBrightness	pieceBrightness := aBrightness.	self changed.</body>

<body package="JungleChess" selector="piece">piece	^piece.</body>
</methods>

<methods>
<class-id>Square</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	background := 1.	piece := Piece new.	pieceBrightness := 1.	^self</body>
</methods>


<methods>
<class-id>Trap</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	background := 5.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>

<body package="JungleChess" selector="owner">owner	^owner.</body>

<body package="JungleChess" selector="setOwner:">setOwner: aPlayer	owner := aPlayer.</body>
</methods>


<methods>
<class-id>SquareView class</class-id> <category>instance creation</category>

<body package="JungleChess" selector="model:">model: aSquare    ^super new model: aSquare.</body>
</methods>


<methods>
<class-id>SquareView</class-id> <category>accessing</category>

<body package="JungleChess" selector="model:">model: aSquare	"Some segments of code are cited from tuto07.pptx with modification"	applicationImage := Image extent: 60@60 depth: 24 palette: FixedPalette rgb8Bit.							"60@60, left is width, right is height"	super model: aSquare.	alphaImages := Dictionary new.	bgImages := Dictionary new.	alphaImages at: 1 put: (ImageReader fromFile: 'Figures\cat1.png') image;				 at: 2 put: (ImageReader fromFile: 'Figures\cat2.png') image;				 at: 3 put: (ImageReader fromFile: 'Figures\dog1.png') image;				 at: 4 put: (ImageReader fromFile: 'Figures\dog2.png') image;				 at: 5 put: (ImageReader fromFile: 'Figures\elephant1.png') image;				 at: 6 put: (ImageReader fromFile: 'Figures\elephant2.png') image;				 at: 7 put: (ImageReader fromFile: 'Figures\jaguar1.png') image;				 at: 8 put: (ImageReader fromFile: 'Figures\jaguar2.png') image;				 at: 9 put: (ImageReader fromFile: 'Figures\lion1.png') image;				 at: 10 put: (ImageReader fromFile: 'Figures\lion2.png') image;				 at: 11 put: (ImageReader fromFile: 'Figures\rat1.png') image;				 at: 12 put: (ImageReader fromFile: 'Figures\rat2.png') image;				 at: 13 put: (ImageReader fromFile: 'Figures\tiger1.png') image;				 at: 14 put: (ImageReader fromFile: 'Figures\tiger2.png') image;				 at: 15 put: (ImageReader fromFile: 'Figures\wolf1.png') image;				 at: 16 put: (ImageReader fromFile: 'Figures\wolf2.png') image.	bgImages at: 1 put: (ImageReader fromFile: 'Figures\den1.png') image;			   at: 2 put: (ImageReader fromFile: 'Figures\den2.png') image;			   at: 3 put: (ImageReader fromFile: 'Figures\ground.png') image;			   at: 4 put: (ImageReader fromFile: 'Figures\river.png') image;			   at: 5 put: (ImageReader fromFile: 'Figures\trap.png') image.    ^self</body>
</methods>

<methods>
<class-id>SquareView</class-id> <category>controller accessing</category>

<body package="JungleChess" selector="defaultControllerClass">defaultControllerClass	^SquareController.</body>
</methods>

<methods>
<class-id>SquareView</class-id> <category>displaying</category>

<body package="JungleChess" selector="displayOn:">displayOn: aGraphicsContext"Display an image with background and piece.""	Cited from:	http://www.cincomsmalltalk.com/userblogs/runarj/blogView?showComments=true&amp;entry=3328177749"	| displayBgImage displayAlphaImage alphaImageIndex |		"Display the background"	displayBgImage := [:postion | (bgImages at: model background) pixelsDo: [:x :y |		applicationImage atPoint: x@y + postion put:			(applicationImage palette indexOfPaintNearest: ((applicationImage valueAtPoint: x@y + postion) 			blendWith: ((bgImages at: model background) valueAtPoint: x@y)			weight: (((((bgImages at: model background) atPoint: x@y) bitShift: -24) / 255)))) ]].	displayBgImage value: 0@0.	"Check if there is a piece(0 is no piece) and display if any"	((model piece type) = 0) ifFalse:[		"Caluate alphaImageIndex base on the piece's owner and type"		alphaImageIndex := 1.													"Debug"		"Red cat"		((model piece type = 2) &amp; (model piece owner name = 'Red')) ifTrue: [			alphaImageIndex := 1.		].		"Blue cat"		((model piece type = 2) &amp; (model piece owner name = 'Blue')) ifTrue: [			alphaImageIndex := 2.		].		"Red dog"		((model piece type = 3) &amp; (model piece owner name = 'Red')) ifTrue: [			alphaImageIndex := 3.		].		"Blue dog"		((model piece type = 3) &amp; (model piece owner name = 'Blue')) ifTrue: [			alphaImageIndex := 4.		].		"Red elephant"		((model piece type = 8) &amp; (model piece owner name = 'Red')) ifTrue: [			alphaImageIndex := 5.		].		"Blue elephant"		((model piece type = 8) &amp; (model piece owner name = 'Blue')) ifTrue: [			alphaImageIndex := 6.		].		"Red jaguar"		((model piece type = 5) &amp; (model piece owner name = 'Red')) ifTrue: [			alphaImageIndex := 7.		].		"Blue jaguar"		((model piece type = 5) &amp; (model piece owner name = 'Blue')) ifTrue: [			alphaImageIndex := 8.		].		"Red lion"		((model piece type = 7) &amp; (model piece owner name = 'Red')) ifTrue: [			alphaImageIndex := 9.		].		"Blue lion"		((model piece type = 7) &amp; (model piece owner name = 'Blue')) ifTrue: [			alphaImageIndex := 10.		].		"Red rat"		((model piece type = 1) &amp; (model piece owner name = 'Red')) ifTrue: [			alphaImageIndex := 11.		].		"Blue rat"		((model piece type = 1) &amp; (model piece owner name = 'Blue')) ifTrue: [			alphaImageIndex := 12.		].		"Red tiger"		((model piece type = 6) &amp; (model piece owner name = 'Red')) ifTrue: [			alphaImageIndex := 13.		].		"Blue tiger"		((model piece type = 6) &amp; (model piece owner name = 'Blue')) ifTrue: [			alphaImageIndex := 14.		].		"Red wolf"		((model piece type = 4) &amp; (model piece owner name = 'Red')) ifTrue: [			alphaImageIndex := 15.		].		"Blue wolf"		((model piece type = 4) &amp; (model piece owner name = 'Blue')) ifTrue: [			alphaImageIndex := 16.		].		displayAlphaImage := [:postion | (alphaImages at: alphaImageIndex) pixelsDo: [:x :y |			applicationImage atPoint: x@y + postion put:				(applicationImage palette indexOfPaintNearest: ((applicationImage valueAtPoint: x@y + postion) 				blendWith: ((alphaImages at: alphaImageIndex) valueAtPoint: x@y)				weight: (((((alphaImages at: alphaImageIndex) atPoint: x@y) bitShift: -24) / 255 * (model pieceBrightness))))) ]].			displayAlphaImage value: 0@0.	].	applicationImage displayOn: aGraphicsContext.</body>
</methods>

<methods>
<class-id>SquareView</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Jaguar</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	type := 5.	name := 'Jaguar'.	ediblePieces at: 1 put: 5;				  at: 2 put: 4;				  at: 3 put: 3;				  at: 4 put: 2;				  at: 5 put: 1.	^self</body>
</methods>


<methods>
<class-id>BoardView</class-id> <category>accessing</category>

<body package="JungleChess" selector="model:">model: aBoard"Create a BoardView with connection to an instance of Board, more importantly add a number of instances of BoundedWrapper to self"	"Some segments of code are cited from tuto08.pptx with modification"	| size |	super model: aBoard.	size := (1 / model width) @ (1 / model height).	1 to: model height do: [:y | 		1 to: model width do: [:x | 			| view wrapper offset |			view := SquareView model: (aBoard at: x @ y).			offset := (x - 1 / model width) @ (y - 1 / model height).			 wrapper := BoundedWrapper on: view in: (offset extent: size).			self addWrapper: wrapper        ].    ].</body>
</methods>

<methods>
<class-id>BoardView</class-id> <category>controller accessing</category>

<body package="JungleChess" selector="defaultControllerClass">defaultControllerClass	^BoardController.</body>
</methods>

<methods>
<class-id>BoardView</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Elephant</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	type := 8.	name := 'Elephant'.	ediblePieces at: 1 put: 8;				  at: 2 put: 7;				  at: 3 put: 6;				  at: 4 put: 5;				  at: 5 put: 4;				  at: 6 put: 3;				  at: 7 put: 2.	^self</body>
</methods>

<methods>
<class-id>Elephant</class-id> <category>accessing</category>

<body package="JungleChess" selector="setMovableSquares">setMovableSquares	movableSquares := Dictionary new.</body>
</methods>


<methods>
<class-id>BoardController</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>

<methods>
<class-id>BoardController</class-id> <category>events</category>

<body package="JungleChess" selector="redButtonPressedEvent:">redButtonPressedEvent: event</body>
</methods>


<methods>
<class-id>JungleChess class</class-id> <category>instance creation</category>

<body package="JungleChess" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>

<body package="JungleChess" selector="startPlay">startPlay	self new startPlay.</body>
</methods>


<methods>
<class-id>JungleChess</class-id> <category>accessing</category>

<body package="JungleChess" selector="jungleChessWindowModel">jungleChessWindowModel	^jungleChessWindowModel.</body>

<body package="JungleChess" selector="addPlayer:">addPlayer: aPlayer"Add a player at the end"	| i |	i := 1.	[i &lt;= (players size)] whileTrue: [			i:= i + 1.	].	players at: i  put: aPlayer.</body>

<body package="JungleChess" selector="setCurrentPlayer:">setCurrentPlayer: aPlayer	currentPlayer := aPlayer.</body>

<body package="JungleChess" selector="setEndOfGame:">setEndOfGame: aBoolean	endOfGame := aBoolean.</body>

<body package="JungleChess" selector="setJungleChessWindowModel:">setJungleChessWindowModel: aJungleChessWindowModel	jungleChessWindowModel := aJungleChessWindowModel.</body>

<body package="JungleChess" selector="currentPlayer">currentPlayer	^currentPlayer.</body>

<body package="JungleChess" selector="players">players	^players.</body>

<body package="JungleChess" selector="endOfGame">endOfGame	^endOfGame.</body>

<body package="JungleChess" selector="setNextPlayer">setNextPlayer	| i |	i := 1.	(endOfGame) ifFalse: [		[i &lt;= (players size)] whileTrue: [			(currentPlayer = (players at: i)) ifTrue: [				i := (i  \\ (players size)) + 1.				currentPlayer := (players at: i).							jungleChessWindowModel message value: currentPlayer name, ' should take the current turn.'.			].		i:= i + 1.		].	] ifTrue: [		Dialog warn: currentPlayer name, ' wins'.		jungleChessWindowModel message value: currentPlayer name, ' has won the game. Please press the New Game button.'.	].</body>
</methods>

<methods>
<class-id>JungleChess</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="restart">restart"Reset piece on every square of the board, as well as the pieces held by each player"	| aPiece x y |	currentPlayer := (players at: 1).												"The player who should have a move first"	endOfGame := false.														"Flay to start the game"	aPiece := (Piece new).	y := 1.	x := 1.	"Clear the board"	[ y &lt;= (board height)] whileTrue: [		x := 1.		[x &lt;= (board width)] whileTrue: [			(board squares atPoint: x@y) setPiece: aPiece.			x := x + 1.		].		y := y + 1.	].	"Remove all pieces"	(((players at: 1) pieces size)  = 0) ifFalse: [		1 to: 8 do: [:i |				(((players at: 1) pieces includesKey: i)) ifTrue: [					(players at: 1) removePiece: i.				].		].	].	(((players at: 2) pieces size)  = 0) ifFalse: [		1 to: 8 do: [:i |				(((players at: 2) pieces includesKey: i)) ifTrue: [					(players at: 2) removePiece: i.				].		].	].	"Draw a red cat"	aPiece := (Cat new).	aPiece setPosition: 6@2.	aPiece setOwner: (players at: 2).	aPiece setBoard: board.	(board squares atPoint: 6@2) setPiece: aPiece.	"Draw a blue cat"	aPiece := (Cat new).	aPiece setPosition: 2@8.	aPiece setOwner: (players at: 1).	aPiece setBoard: board.	(board squares atPoint: 2@8) setPiece: aPiece.	"Draw a red dog"	aPiece := (Dog new).	aPiece setPosition: 2@2.	aPiece setOwner: (players at: 2).	aPiece setBoard: board.	(board squares atPoint: 2@2) setPiece: aPiece.	"Draw a blue dog"	aPiece := (Dog new).	aPiece setPosition: 6@8.	aPiece setOwner: (players at: 1).	aPiece setBoard: board.	(board squares atPoint: 6@8) setPiece: aPiece.	"Draw a red elephant"	aPiece := (Elephant new).	aPiece setPosition: 7@3.	aPiece setOwner: (players at: 2).	aPiece setBoard: board.	(board squares atPoint: 7@3) setPiece: aPiece.	"Draw a blue elephant"	aPiece := (Elephant new).	aPiece setPosition: 1@7.	aPiece setOwner: (players at: 1).	aPiece setBoard: board.	(board squares atPoint: 1@7) setPiece: aPiece.	"Draw a red jaguar"	aPiece := (Jaguar new).	aPiece setPosition: 3@3.	aPiece setOwner: (players at: 2).	aPiece setBoard: board.	(board squares atPoint: 3@3) setPiece: aPiece.	"Draw a blue jaguar"	aPiece := (Jaguar new).	aPiece setPosition: 5@7.	aPiece setOwner: (players at: 1).	aPiece setBoard: board.	(board squares atPoint: 5@7) setPiece: aPiece.	"Draw a red lion"	aPiece := (Lion new).	aPiece setPosition: 1@1.	aPiece setOwner: (players at: 2).	aPiece setBoard: board.	(board squares atPoint: 1@1) setPiece: aPiece.	"Draw a blue lion"	aPiece := (Lion new).	aPiece setPosition: 7@9.	aPiece setOwner: (players at: 1).	aPiece setBoard: board.	(board squares atPoint: 7@9) setPiece: aPiece.	"Draw a red rat"	aPiece := (Rat new).	aPiece setPosition: 1@3.	aPiece setOwner: (players at: 2).	aPiece setBoard: board.	(board squares atPoint: 1@3) setPiece: aPiece.	"Draw a blue rat"	aPiece := (Rat new).	aPiece setPosition: 7@7.	aPiece setOwner: (players at: 1).	aPiece setBoard: board.	(board squares atPoint: 7@7) setPiece: aPiece.	"Draw a red tiger"	aPiece := (Tiger new).	aPiece setPosition: 7@1.	aPiece setOwner: (players at: 2).	aPiece setBoard: board.	(board squares atPoint: 7@1) setPiece: aPiece.	"Draw a blue tiger"	aPiece := (Tiger new).	aPiece setPosition: 1@9.	aPiece setOwner: (players at: 1).	aPiece setBoard: board.	(board squares atPoint: 1@9) setPiece: aPiece.	"Draw a red wolf"	aPiece := (Wolf new).	aPiece setPosition: 5@3.	aPiece setOwner: (players at: 2).	aPiece setBoard: board.	(board squares atPoint: 5@3) setPiece: aPiece.	"Draw a blue wolf"	aPiece := (Wolf new).	aPiece setPosition: 3@7.	aPiece setOwner: (players at: 1).	aPiece setBoard: board.	(board squares atPoint: 3@7) setPiece: aPiece.		"Reset the inputfield message"	jungleChessWindowModel message value: currentPlayer name, ' should take the current turn.'.</body>

<body package="JungleChess" selector="startPlay">startPlay	JungleChessWindowModel openOn: jungleChessWindowModel withSpec: #windowSpec.</body>

<body package="JungleChess" selector="initialize">initialize	| playerBlue playerRed |	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	"Initialize players"	players := Dictionary new.	playerBlue := Player new.	playerBlue setName: 'Blue'.	self addPlayer: playerBlue.	playerRed := Player new.	playerRed setName: 'Red'.	self addPlayer: playerRed.	currentPlayer := (players at: 1).		endOfGame := false.	"Make relation with Board"	board := Board new.	board setJungleChess: self.	board := board extent: 7@9.	"Make relation with Application Model"	jungleChessWindowModel := JungleChessWindowModel new.	jungleChessWindowModel setJungleChess: self.	jungleChessWindowModel setBoard: board.	board setJungleChessWindowModel: jungleChessWindowModel.	jungleChessWindowModel message value: currentPlayer name, ' should take the current turn.'.	^self</body>
</methods>


<methods>
<class-id>Wolf</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	type := 4.	name := 'Wolf'.	ediblePieces at: 1 put: 4;				  at: 2 put: 3;				  at: 3 put: 2;				  at: 4 put: 1.	^self</body>
</methods>


<methods>
<class-id>Cat</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	type := 2.	name := 'Cat'.	ediblePieces at: 1 put: 2;				  at: 2 put: 1.	^self</body>
</methods>


<methods>
<class-id>River</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	background := 4.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Lion</class-id> <category>accessing</category>

<body package="JungleChess" selector="checkMovablePoint:at:to:">checkMovablePoint: point at: anInteger to: dir   "1, 2, 3, 4 represents up, down, left and right"	(point x &lt; 1) | (point x &gt; board width) | (point y &lt; 1) | (point y &gt; board height) ifFalse: [				"Avoid out of bound"		| bgType aPoint |		aPoint := point.		bgType := (board squares atPoint: point) background.		(bgType = 1) &amp; (self owner name ~= 'Red') ifTrue: [												"If it is a red den and the owner of this piece is not Red"			movablePositions at: anInteger put: point.			^(anInteger + 1).		].		(bgType = 2) &amp; (self owner name ~= 'Blue') ifTrue: [											"If it is a blue den and the owner of this piece is not Blue"			movablePositions at: anInteger put: point.			^(anInteger + 1).		].		(bgType = 3) | (bgType = 5) ifTrue: [															"If it is a ground or a trap"			movablePositions at: anInteger put: point.			^(anInteger + 1).		].		(bgType = 4) ifTrue: [																			"If it is a ground or a trap"			(dir = 1) ifTrue: [																			"Up"				[((board squares atPoint: aPoint) piece type = 0) &amp; (bgType = 4)] whileTrue: [			"Check if a rat in the river"					aPoint := (aPoint upBy: 1).					bgType := (board squares atPoint: aPoint) background.									].				(bgType = 3) ifTrue: [																	"Reach a ground"					movablePositions at: anInteger put: aPoint.					^(anInteger + 1).				].			].			(dir = 2) ifTrue: [																			"Down"				[((board squares atPoint: aPoint) piece type = 0) &amp; (bgType = 4)] whileTrue: [			"Check if a rat in the river"					aPoint := (aPoint downBy: 1).					bgType := (board squares atPoint: aPoint) background.									].				(bgType = 3) ifTrue: [																	"Reach a ground"					movablePositions at: anInteger put: aPoint.					^(anInteger + 1).				].			].			(dir = 3) ifTrue: [																			"Left"				[((board squares atPoint: aPoint) piece type = 0) &amp; (bgType = 4)] whileTrue: [			"Check if a rat in the river"					aPoint := (aPoint leftBy: 1).					bgType := (board squares atPoint: aPoint) background.									].				(bgType = 3) ifTrue: [																	"Reach a ground"					movablePositions at: anInteger put: aPoint.					^(anInteger + 1).				].			].			(dir = 4) ifTrue: [																			"Right"				[((board squares atPoint: aPoint) piece type = 0) &amp; (bgType = 4)] whileTrue: [			"Check if a rat in the river"					aPoint := (aPoint rightBy: 1).					bgType := (board squares atPoint: aPoint) background.									].				(bgType = 3) ifTrue: [																	"Reach a ground"					movablePositions at: anInteger put: aPoint.					^(anInteger + 1).				].			].		].	].	^anInteger.</body>

<body package="JungleChess" selector="setMovablePositions">setMovablePositions	| point i |	"Lion can jump over a river"	movablePositions := Dictionary new.	i := 1.	"Up"	point := (position x)@((position y) - 1).	i := (self checkMovablePoint: point at: i to: 1).	"Down"	point := (position x)@((position y) + 1).	i := (self checkMovablePoint: point at: i to: 2).	"Left"	point := ((position x) - 1)@(position y).	i := (self checkMovablePoint: point at: i to: 3).	"Right"	point := ((position x) + 1)@(position y).	i := (self checkMovablePoint: point at: i to: 4).</body>
</methods>

<methods>
<class-id>Lion</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	type := 7.	name := 'Lion'.	ediblePieces at: 1 put: 7;				  at: 2 put: 6;				  at: 3 put: 5;				  at: 4 put: 4;				  at: 5 put: 3;				  at: 6 put: 2;				  at: 7 put: 1.	^self</body>
</methods>


<methods>
<class-id>SquareController</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>

<methods>
<class-id>SquareController</class-id> <category>events</category>

<body package="JungleChess" selector="redButtonPressedEvent:">redButtonPressedEvent: event	"Some segments of code are cited from tuto08.pptx with modification"	| wrapper boardView |	wrapper := self view container.							"Go up to one level which contains SquareView"	boardView := wrapper container.							"Go up to one level which contains BoundedWrapper"			(boardView model pickedPiece = nil) ifTrue: [										"There is no piece has been picked up"		(self model piece type = 0) ifFalse: [											"There is a piece on this square"			((boardView model jungleChessWindowModel jungleChess currentPlayer name) = (self model piece owner name)) ifTrue: [ "It is a valid picking up."				(boardView model jungleChess endOfGame) ifFalse: [					boardView model setPickedPiece: (self model piece).																"Pick up this piece"					self model piece setMovablePositions.					self model setPieceBrightness: 0.214.					boardView model jungleChessWindowModel message value: (boardView model jungleChessWindowModel jungleChess currentPlayer name), '  has picked up a piece of ', (boardView model pickedPiece name),'.'.				].				boardView model setSelectedSquare: (self model).																	"Memorize the square for furture operation"							] ifFalse: [																											"It is an invalid picking up."					boardView model jungleChessWindowModel message value: self model piece owner name,' cannot pick up a piece. It is turn of ', (boardView model jungleChessWindowModel jungleChess currentPlayer name), '.'.			].		].	] ifFalse: [																		"There is a piece has been picked up"		(boardView model pickedPiece movablePositions includes: self model position) ifTrue: [		"It is a valid move"						((self model piece type) = 0) ifFalse: [													"This square has a piece"				(self model piece owner = boardView model pickedPiece owner) ifFalse: [							"Not the same owner, check backgrounds and ediblePieces"					((boardView model selectedSquare background = 4) | (model background = 5)) ifFalse: [																				"Attacking animal is not in river and opponent's animal is not in a trap"						(boardView model pickedPiece ediblePieces includes: model piece type) ifTrue: [					"Can capture"							boardView model selectedSquare setPiece: (Piece new).										"Erase the original piece"							boardView model pickedPiece setPosition: (self model position).								"Update the piece position"							model piece owner removePiece: (self model piece type).										"Remove the capture piece from the player"							boardView model selectedSquare setPieceBrightness: 1.							self model setPiece: (boardView model pickedPiece).											"Draw the image to the target square "							boardView model setPickedPiece: nil.														"Put down the picked piece"							boardView model setPickedPiece: nil.														"Put down the picked piece"							"Blue wins"							(((boardView model jungleChess players at: 2) pieces size) = 0) ifTrue: [								boardView model jungleChess setEndOfGame: true.							].							"Red wins"							(((boardView model jungleChess players at: 1) pieces size) = 0) ifTrue: [								boardView model jungleChess setEndOfGame: true.							].							boardView model jungleChess setNextPlayer.													"The next player turn"						] ifFalse: [							boardView model jungleChessWindowModel message value: boardView model pickedPiece name, ' cannot capture ',  model piece name, '.'.						].						] ifTrue: [						(boardView model selectedSquare background = 4) &amp; (model piece type = 8) ifTrue: [												"Cannot capture elephant"							boardView model jungleChessWindowModel message value: 'A rat in river cannot capture an elephant.'.						].						(boardView model selectedSquare background = 4) &amp; (model piece type = 1) ifTrue: [												"Can capture rat"								boardView model selectedSquare setPiece: (Piece new).																	"Erase the original piece"								boardView model pickedPiece setPosition: (self model position).															"Update the piece position"								model piece owner removePiece: (self model piece type).																	"Remove the captured piece from the player"								boardView model selectedSquare setPieceBrightness: 1.								self model setPiece: (boardView model pickedPiece).																		"Draw the image to the target square "								boardView model setPickedPiece: nil.																					"Put down the picked piece"								"Blue wins"								(((boardView model jungleChess players at: 2) pieces size) = 0) ifTrue: [									boardView model jungleChess setEndOfGame: true.								].								"Red wins"								(((boardView model jungleChess players at: 1) pieces size) = 0) ifTrue: [									boardView model jungleChess setEndOfGame: true.								].								boardView model jungleChess setNextPlayer.																			"The next player turn"						].						(model background = 5) ifTrue: [																									"Target animal is in a trap"							"Animal in the trap and the trap are of same player"							(model piece owner name = model owner name) ifTrue: [								boardView model jungleChessWindowModel message value: 'The target animal is super strong and cannot be captured.'.							].														"Attackting animal and the trap are of same player"							(boardView model pickedPiece owner name = model owner name) ifTrue: [								boardView model selectedSquare setPiece: (Piece new).									"Erase the original piece"								boardView model pickedPiece setPosition: (self model position).							"Update the piece position"								model piece owner removePiece: (self model piece type).									"Remove the captured piece from the player"								boardView model selectedSquare setPieceBrightness: 1.								self model setPiece: (boardView model pickedPiece).										"Draw the image to the target square "								boardView model setPickedPiece: nil.													"Put down the picked piece"								"Blue wins"								(((boardView model jungleChess players at: 2) pieces size) = 0) ifTrue: [									boardView model jungleChess setEndOfGame: true.								].								"Red wins"								(((boardView model jungleChess players at: 1) pieces size) = 0) ifTrue: [									boardView model jungleChess setEndOfGame: true.								].								boardView model jungleChess setNextPlayer.												"The next player turn"							].						].					].									] ifTrue: [																											"Same owner and cannot capture"					boardView model jungleChessWindowModel message value: 'Cannot capture a piece with same player.'.				].			] ifTrue: [																												"This square has no piece"				boardView model selectedSquare setPiece: (Piece new).																"Erase the original piece"				boardView model pickedPiece setPosition: (self model position).														"Update the piece position"				boardView model selectedSquare setPieceBrightness: 1.				self model setPiece: (boardView model pickedPiece).																	"Draw the image to the target square "				boardView model setPickedPiece: nil.													"Put down the picked piece"				(self model background = 1) ifTrue: [					boardView model jungleChess setEndOfGame: true.				].				"Red wins"				(self model background = 2) ifTrue: [					boardView model jungleChess setEndOfGame: true.				].				boardView model jungleChess setNextPlayer.												"The next player turn"				"Blue wins"			].		] ifFalse: [			((self model background = 1) | (self model background = 2) | (self model background = 3) | (self model background = 5)) ifTrue: [				(boardView model selectedSquare position = self model position) ifTrue: [						"Cancel selection"					boardView model selectedSquare setPieceBrightness: 1.					boardView model setPickedPiece: nil.													"Put down the picked piece"					boardView model jungleChessWindowModel message value: 'Cancel selection. ', boardView model jungleChess currentPlayer name,' should pick up a piece again.'.				] ifFalse: [					boardView model jungleChessWindowModel message value: (boardView model pickedPiece name), ' cannot move like this. ', (boardView model jungleChess currentPlayer name), ' should try again.'.				].								] ifFalse: [				(self model background = 4) ifTrue: [															"If want to move in a river"					(boardView model pickedPiece type = 1) ifFalse: [																				"Not a rat"						boardView model jungleChessWindowModel message value: 'Cannot move to a river.'.					] ifTrue: [																					"It is a rat"							(boardView model selectedSquare position = self model position) ifTrue:[																"Cancel selection"								boardView model selectedSquare setPieceBrightness: 1.								boardView model setPickedPiece: nil.													"Put down the picked piece"								boardView model jungleChessWindowModel message value: 'Cancel selection. ', boardView model jungleChess currentPlayer name,' should pick up a piece again.'.							].					].				].			].		].		"boardView controller redButtonPressedEvent: event. "									"If other views are involved, invoke method in boardController"	].</body>
</methods>


<methods>
<class-id>Ground</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	background := 3.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Den</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>

<body package="JungleChess" selector="owner">owner	^owner.</body>

<body package="JungleChess" selector="setOwner:">setOwner: aPlayer	owner := aPlayer.</body>
</methods>


<methods>
<class-id>Tiger</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	type := 6.	name := 'Tiger'.	ediblePieces at: 1 put: 6;				  at: 2 put: 5;				  at: 3 put: 4;				  at: 4 put: 3;				  at: 5 put: 2;				  at: 6 put: 1.	^self</body>

<body package="JungleChess" selector="checkMovablePoint:at:to:">checkMovablePoint: point at: anInteger to: dir   "1, 2, 3, 4 represents up, down, left and right"	(point x &lt; 1) | (point x &gt; board width) | (point y &lt; 1) | (point y &gt; board height) ifFalse: [				"Avoid out of bound"		| bgType aPoint |		aPoint := point.		bgType := (board squares atPoint: point) background.		(bgType = 1) &amp; (self owner name ~= 'Red') ifTrue: [												"If it is a red den and the owner of this piece is not Red"			movablePositions at: anInteger put: point.			^(anInteger + 1).		].		(bgType = 2) &amp; (self owner name ~= 'Blue') ifTrue: [											"If it is a blue den and the owner of this piece is not Blue"			movablePositions at: anInteger put: point.			^(anInteger + 1).		].		(bgType = 3) | (bgType = 5) ifTrue: [															"If it is a ground or a trap"			movablePositions at: anInteger put: point.			^(anInteger + 1).		].		(bgType = 4) ifTrue: [																			"If it is a ground or a trap"			(dir = 1) ifTrue: [																			"Up"				[((board squares atPoint: aPoint) piece type = 0) &amp; (bgType = 4)] whileTrue: [			"Check if a rat in the river"					aPoint := (aPoint upBy: 1).					bgType := (board squares atPoint: aPoint) background.									].				(bgType = 3) ifTrue: [																	"Reach a ground"					movablePositions at: anInteger put: aPoint.					^(anInteger + 1).				].			].			(dir = 2) ifTrue: [																			"Down"				[((board squares atPoint: aPoint) piece type = 0) &amp; (bgType = 4)] whileTrue: [			"Check if a rat in the river"					aPoint := (aPoint downBy: 1).					bgType := (board squares atPoint: aPoint) background.									].				(bgType = 3) ifTrue: [																	"Reach a ground"					movablePositions at: anInteger put: aPoint.					^(anInteger + 1).				].			].			(dir = 3) ifTrue: [																			"Left"				[((board squares atPoint: aPoint) piece type = 0) &amp; (bgType = 4)] whileTrue: [			"Check if a rat in the river"					aPoint := (aPoint leftBy: 1).					bgType := (board squares atPoint: aPoint) background.									].				(bgType = 3) ifTrue: [																	"Reach a ground"					movablePositions at: anInteger put: aPoint.					^(anInteger + 1).				].			].			(dir = 4) ifTrue: [																			"Right"				[((board squares atPoint: aPoint) piece type = 0) &amp; (bgType = 4)] whileTrue: [			"Check if a rat in the river"					aPoint := (aPoint rightBy: 1).					bgType := (board squares atPoint: aPoint) background.									].				(bgType = 3) ifTrue: [																	"Reach a ground"					movablePositions at: anInteger put: aPoint.					^(anInteger + 1).				].			].		].	].	^anInteger.</body>
</methods>

<methods>
<class-id>Tiger</class-id> <category>accessing</category>

<body package="JungleChess" selector="setMovablePositions">setMovablePositions	| point i |	"Tiger can jump over a river"	movablePositions := Dictionary new.	i := 1.	"Up"	point := (position x)@((position y) - 1).	i := (self checkMovablePoint: point at: i to: 1).	"Down"	point := (position x)@((position y) + 1).	i := (self checkMovablePoint: point at: i to: 2).	"Left"	point := ((position x) - 1)@(position y).	i := (self checkMovablePoint: point at: i to: 3).	"Right"	point := ((position x) + 1)@(position y).	i := (self checkMovablePoint: point at: i to: 4).</body>
</methods>



</st-source>
