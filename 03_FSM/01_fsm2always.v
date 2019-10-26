
//M�quina de estados usando dos always  ( 1 combinacional y 1 secuencial )

module my_fsm2always(clk,reset,inA,inB,OutA,OutB);

input clk,reset,inA,inB;
output OutA,OutB;

reg OutA=0,OutB=0;
reg[1:0] estado_actual=0,estado_siguiente=0;

parameter E0=0,E1=1,E2=2,E3=3;   // 4 estados posibles

//*********************************  Parte 1  ****************************************************************
//Parte combinacional formada por procedimiento  "always @( entradas y estado_actual )" **********************
// En un �nico always de tipo combinacional, a�adimos "las salidas" y el "c�lculo del siguiente estado" ******
//************************************************************************************************************

always @(inA or inB or estado_actual)

begin
    
	//Valores por defecto *************************************************************************
	estado_siguiente='bx;  // asigno valores por defecto, se puede a�adir aqu� o como un default
	OutA=0;
	OutB=0;
	//********************************************************************************************
	
	case(estado_actual)
	
		E0:begin
		    // aqu� a�adimos las salidas tambi�n en un �nico always, en esta l�nea
			// no se a�ade porque la salida no cambia del valor por defecto inicial
			case ({inA,inB})      // c�lculo del siguiente estado
				0:estado_siguiente=E0;
				1:estado_siguiente=E3;
				2:estado_siguiente=E1;
				default:estado_siguiente=E0;
			endcase
		   end
		   
		E1:begin
		    OutB=1;  //a�ado el valor de la salida que cambia de su valor por defecto
			case ({inA,inB})
				0:estado_siguiente=E1;
				1:estado_siguiente=E2;
				2:estado_siguiente=E0;
				default:estado_siguiente=E1;
			endcase
		   end
		   
		E2:begin
		    OutA=1;  //a�ado el valor de la salida que cambia de su valor por defecto
			case ({inA,inB})
				0:estado_siguiente=E2;
				1:estado_siguiente=E1;
				2:estado_siguiente=E3;
				default:estado_siguiente=E2;
			endcase
		   end
		   
		E3:begin
		    {OutA,OutB}=3; //a�ado el valor de la salida que cambia de su valor por defecto
			case ({inA,inB})
				0:estado_siguiente=E3;
				1:estado_siguiente=E0;
				2:estado_siguiente=E2;
				default:estado_siguiente=E3;
			endcase
		   end
		   
		//default:estado_siguiente='bx;  // Esto nos previene de errores, ya que en un proceso de simulaci�n,
		// si se nos ha olvidado codificar alguno de los estados, cuando pasemos por el estado no codificado
		// nos aperecer� que el estado siguiente ser� XX y  sabremos donde no hemos codificado el estado siguiente
		
	endcase
end



// ************************** Parte 2 *****************************************************
// Parte secuencial, el estado_actual capturar� el nuevo estado (estado_siguiente) ********
// ****************************************************************************************

always @(posedge clk or posedge reset)
begin
  if(reset) estado_actual<=E0;
  else estado_actual <= estado_siguiente;
end



endmodule






