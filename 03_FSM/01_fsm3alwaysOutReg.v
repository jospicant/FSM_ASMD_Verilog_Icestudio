

// Máquina fsm formado por 3 bloques always con un un bloque de salida registrado

module my_fsm3alwaysOutReg(clk,reset,inA,inB,OutA,OutB);

input clk,reset,inA,inB;
output OutA,OutB;

reg OutA=0,OutB=0;
reg[1:0] estado_actual=0,estado_siguiente=0;

parameter E0=0,E1=1,E2=2,E3=3;   // 4 estados posibles

//*********************************  Parte 1  ****************************************************************
//Parte combinacional formada por procedimiento  "always @( entradas y estado_actual )" **********************
//************************************************************************************************************

always @(inA or inB or estado_actual)

begin
    //Valores por defecto
	estado_siguiente= 'bx;

	case(estado_actual)
	
		E0:begin
			case ({inA,inB})
				0:estado_siguiente=E0;
				1:estado_siguiente=E3;
				2:estado_siguiente=E1;
				default:estado_siguiente=E0;
			endcase
		   end
		   
		E1:begin
			case ({inA,inB})
				0:estado_siguiente=E1;
				1:estado_siguiente=E2;
				2:estado_siguiente=E0;
				default:estado_siguiente=E1;
			endcase
		   end
		   
		E2:begin
			case ({inA,inB})
				0:estado_siguiente=E2;
				1:estado_siguiente=E1;
				2:estado_siguiente=E3;
				default:estado_siguiente=E2;
			endcase
		   end
		   
		E3:begin
			case ({inA,inB})
				0:estado_siguiente=E3;
				1:estado_siguiente=E0;
				2:estado_siguiente=E2;
				default:estado_siguiente=E3;
			endcase
		   end
		   
		//default:estado_siguiente='bx;        //Valor por defecto
		
	endcase
end



// ************************** Parte 2 *****************************************************
// Parte secuencial, el estado_actual capturará el nuevo estado (estado_siguiente) ********
// ****************************************************************************************

always @(posedge clk or posedge reset)
begin
  if(reset) estado_actual<=E0;
  else estado_actual <= estado_siguiente;
end



// **********************  Parte 3 *****************************************************************
// Parte secuencial  con salidas registradas ( en funcion del estado siguiente)
//**************************************************************************************************

always @(posedge clk or posedge reset)
begin
	if (reset) begin
		{OutA,OutB}=0;
	end
	else
		begin
		{OutA,OutB}=0;  // Valores por defecto
			case(estado_siguiente)             //miramos el estado_siguiente, no el actual
			  //E0:{OutA,OutB}=0;
			  E1:OutB=1;
			  E2:OutA=1;
			  E3:{OutA,OutB}=3;
			  //default: {OutA,OutB}=0;
			endcase
		end 
end

endmodule