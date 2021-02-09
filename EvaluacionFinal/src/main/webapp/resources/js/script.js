
//validaciones para crearCapacitacion.jsp
$(document).ready(function(){

    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg !== value;
       }, "Value must not equal arg.")
 
    
    $('#capForm').validate({
        rules: {
           
            idcapacitacion: {
                required: true,
                digits: true,
                maxlength: 9,
                min: 1
            },                
                       
            capfecha: "required",
            
            caphora: "required",

            caplugar:  {
                required: true,
                minlength: 1,
                maxlength: 	50
            },

            capduracion:  {
                required: true,
                digits: true,
                maxlength: 3,
                min: 1
			},

            cliente_rutcliente: {
                required: true,
                digits: true,
                maxlength: 9,
                min: 1
            }, 
                                            
           
        },

        messages: {
            idcap: {
                required: "Este es un campo obligatorio.",
                digits: "Este campo solo acepta dígitos.",
                maxlength: "Excede numero máximo de dígitos."
            },

            capfecha: {
                required: "Este es un campo obligatorio."
            },    
            
            caphora: {
                required: "Este es un campo obligatorio."
            },    
           
            caplugar:  {
                required: "Este es un campo obligatorio.",
                minlength: "Este es un campo obligatorio.",
                maxlength: "Excede numero máximo de caracteres."
            },

            capduracion:  {
                required: "Este es un campo obligatorio.",
                digits: "Este campo solo acepta dígitos.",
                maxlength: "Excede numero máximo de dígitos."
            },


            caprutcliente: {
                required: "Este es un campo obligatorio.",
                digits: "Este campo solo acepta dígitos.",
                maxlength: "Excede numero máximo de dígitos."
            },   
            

        }

    });
    
});


$(document).ready(function(){

    //validacion para formulario editar cliente
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg !== value;
       }, "Value must not equal arg.")

    $('#cliForm').validate({
        rules: {
            run: {
                required: true,
                rut: true,
            },
            nombre: "required",
            apellido: "required",
            telefono: {
                required: true,
                maxlength: 9
            },
            afp: "required",
            sissalud: {
                valueNotEquals: "default"
            },
            direc: "required",
            comuna: "required",
            edad: {
                required: true,
                maxlength: 2
            },
        },
        messages: {
            run: {
                required: "Este es un campo obligatorio.",
                maxlength: "Excede numero máximo de caracteres."
            },
            nombre: "Este es un campo obligatorio.",
            apellido: "Este es un campo obligatorio.",
            telefono: {
                required: "Este es un campo obligatorio.",
                maxlength: "Excede numero máximo de caracteres."
            },
            afp: "Este es un campo obligatorio.",
            sissalud: {
                valueNotEquals: "Seleccione una opción"
            },
            direc: "Este es un campo obligatorio.",
            comuna: "Este es un campo obligatorio.",
            edad: {
                required: "Este es un campo obligatorio.",
                maxlength: "Excede numero máximo de caracteres."
            },
        }
    });
});

//validacion formulario editar profesional
$(document).ready(function(){
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg !== value;
       }, "Value must not equal arg.")

    $('#proForm').validate({
        rules: {
            run: {
                required: true,
                rut: true,
               
            },
            nombre: "required",
            apellido: "required",
            telefono: {
                required: true,
                maxlength: 9
            },
            titulo: "required",
            proyecto: "required",
              
        },
        messages: {
            run: {
                required: "Este es un campo obligatorio.",
                rut: "El numero ingresado no corresponde a un rut real",
            },
            nombre: "Este es un campo obligatorio.",
            apellido: "Este es un campo obligatorio.",
            telefono: {
                required: "Este es un campo obligatorio.",
                maxlength: "Excede numero máximo de caracteres."
            },
            titulo: "Este es un campo obligatorio.",
            proyecto: "Este es un campo obligatorio.",
        }
    });
});

//validacion formulario Contacto
$(document).ready(function(){
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg !== value;
       }, "Value must not equal arg.")

    $('#contForm').validate({
        rules: {
            
            nombre: "required",
            email: "requiered",
            telefono: {
                required: true,
                maxlength: 9
            },
            mensage: "requiered", 
        },
        messages: {
            
            nombre: "Este es un campo obligatorio.",
            email: "Este es un campo obligatorio.",
            telefono: {
                required: "Este es un campo obligatorio.",
                maxlength: "Excede numero máximo de caracteres."
            },
            mesage: "Este es un campo obligatorio.",
        }
    });
});

//validacion formulario listarVisitas.jsp
$(document).ready(function(){
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg !== value;
       }, "Value must not equal arg.")

    $('#visForm').validate({
        rules: {
            
            txtidvisita: "required",
            txtvisfecha: "requiered",
            txtMonto: {
                required: true,
                maxlength: 12
            },
            txtvislugar: "requiered", 
            txtviscomentarios: "requiered", 
            txtrutcliente: "requiered", 
        },
        messages: {
            
            txtidvisita: "Este es un campo obligatorio.",
            txtvisfecha: "Este es un campo obligatorio.",
            txtMonto: {
                required: "Este es un campo obligatorio.",
                maxlength: "Excede numero máximo de caracteres."
            },
            txtvislugar: "Este es un campo obligatorio.", 
            txtviscomentarios: "Este es un campo obligatorio.", 
            txtrutcliente: "Este es un campo obligatorio.",
        }
    });
});

//validaciones para crearUsuario.jsp
$(document).ready(function(){

    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg !== value;
       }, "Value must not equal arg.")
 
    
    $('#usrForm').validate({
        rules: {
           
            usnombre: {
                required: true,
                minlength: 1,
                maxlength: 	50
            },                
                       
            usapellido: {
                required: true,
                minlength: 1,
                maxlength: 	50
            },      
            
            usfecha: "required",

            usrun:  {
                required: true,
                digits: true,
                maxlength: 9,
                min: 1
            },

            tipousuario:  {
                valueNotEquals: "required",
            },                                                 
           
        },

        messages: {
            usnombre: {
                required: "Este es un campo obligatorio.",
                minlength: "Este es un campo obligatorio.",
                maxlength: "Excede numero máximo de caracteres."
            },

            usapellido: {
                required: "Este es un campo obligatorio.",
                minlength: "Este es un campo obligatorio.",
                maxlength: "Excede numero máximo de caracteres."
            },    
            
            usfecha: {
                required: "Este es un campo obligatorio."
            },    
           
            usrun:  {
                required: "Este es un campo obligatorio.",
                digits: "Este campo solo acepta dígitos.",
                maxlength: "Excede numero máximo de dígitos."
            },

            tipousuario:  {
                valueNotEquals: "Este es un campo obligatorio.",
            },
            
        }	

    });
    
});

//validacion formulario editarAdministrativo.jsp
$(document).ready(function(){
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg !== value;
       }, "Value must not equal arg.")

    $('#admForm').validate({
        rules: {
            txtrutadministrativo: {
                required: true,
                rut: true,
               
            },
            txtadmnombres: "required",
            txtadmapellidos: "required",
            email: "required",
            Area: "required",
              
        },
        messages: {
            run: {
                required: "Este es un campo obligatorio.",
                rut: "El numero ingresado no corresponde a un rut real",
            },
            nombre: "Este es un campo obligatorio.",
            apellido: "Este es un campo obligatorio.",         
            email: "Este es un campo obligatorio.",
            Area: "Este es un campo obligatorio.",
        }
    });
});
