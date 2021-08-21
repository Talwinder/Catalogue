Ý
;C:\Micro Services\Catalogue\src\Common\EventBusMQ\Class1.cs
	namespace 	

EventBusMQ
 
{ 
public 

class 
Class1 
{ 
} 
} ¡
OC:\Micro Services\Catalogue\src\Common\EventBusMQ\Events\BasketCheckoutEvent.cs
	namespace 	

EventBusMQ
 
. 
Events 
{ 
public 

class 
BasketCheckoutEvent $
{ 
} 
} Ã
HC:\Micro Services\Catalogue\src\Common\EventBusMQ\IRabbitMQConnection.cs
	namespace 	
EventBusRabbitMQ
 
{ 
public 

	interface 
IRabbitMQConnection (
:) *
IDisposable+ 6
{ 
bool 
IsConnected 
{ 
get 
; 
}  !
bool		 

TryConnect		 
(		 
)		 
;		 
IModel

 
CreateModel

 
(

 
)

 
;

 
} 
} ³
GC:\Micro Services\Catalogue\src\Common\EventBusMQ\RabbitMQConnection.cs
	namespace 	
EventBusRabbitMQ
 
{ 
public 

class 
RabbitMQConnection #
:$ %
IRabbitMQConnection& 9
{		 
private

 
readonly

 
IConnectionFactory

 +
_connectionFactory

, >
;

> ?
private 
IConnection 
_connection '
;' (
private 
bool 
	_disposed 
; 
public 
RabbitMQConnection !
(! "
IConnectionFactory" 4
connectionFactory5 F
)F G
{ 	
_connectionFactory 
=  
connectionFactory! 2
??3 5
throw6 ;
new< ?!
ArgumentNullException@ U
(U V
nameofV \
(\ ]
connectionFactory] n
)n o
)o p
;p q
if 
( 
! 
IsConnected 
) 
{ 

TryConnect 
( 
) 
; 
} 
} 	
public 
bool 
IsConnected 
{ 	
get 
{ 
return 
_connection "
!=# %
null& *
&&+ -
_connection. 9
.9 :
IsOpen: @
&&A C
!D E
	_disposedE N
;N O
} 
} 	
public 
bool 

TryConnect 
( 
)  
{   	
try!! 
{"" 
_connection## 
=## 
_connectionFactory## 0
.##0 1
CreateConnection##1 A
(##A B
)##B C
;##C D
}$$ 
catch%% 
(%% &
BrokerUnreachableException%% -
)%%- .
{&& 
Thread'' 
.'' 
Sleep'' 
('' 
$num'' !
)''! "
;''" #
_connection(( 
=(( 
_connectionFactory(( 0
.((0 1
CreateConnection((1 A
(((A B
)((B C
;((C D
})) 
if++ 
(++ 
IsConnected++ 
)++ 
{,, 
return-- 
true-- 
;-- 
}.. 
else// 
{00 
return11 
false11 
;11 
}22 
}33 	
public66 
IModel66 
CreateModel66 !
(66! "
)66" #
{77 	
if88 
(88 
!88 
IsConnected88 
)88 
{99 
throw:: 
new:: %
InvalidOperationException:: 3
(::3 4
$str::4 J
)::J K
;::K L
};; 
return== 
_connection== 
.== 
CreateModel== *
(==* +
)==+ ,
;==, -
}>> 	
public@@ 
void@@ 
Dispose@@ 
(@@ 
)@@ 
{AA 	
ifBB 
(BB 
	_disposedBB 
)BB 
{CC 
returnDD 
;DD 
}EE 
tryGG 
{HH 
_connectionII 
.II 
DisposeII #
(II# $
)II$ %
;II% &
}JJ 
catchKK 
(KK 
	ExceptionKK 
)KK 
{LL 
throwMM 
;MM 
}NN 
}OO 	
}PP 
}QQ 