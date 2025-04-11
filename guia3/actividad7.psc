Proceso apagar
    Definir cantidad, precio, subtotal, total, cantidad_productos Como Real;
    total <- 0;
    cantidad_productos <- 0;
    Escribir "Ingrese la cantidad del producto (ingrese 0 para terminar):";
    Leer cantidad;
    Mientras cantidad <> 0 Hacer
        Escribir "Ingrese el precio unitario:";
        Leer precio;
        subtotal <- cantidad * precio;
        total <- total + subtotal;
        cantidad_productos <- cantidad_productos + cantidad;
        Escribir "Subtotal del producto: ", subtotal;
        Escribir "Ingrese la cantidad del próximo producto (0 para terminar):";
        Leer cantidad;
    FinMientras
    Escribir "Cantidad total de productos: ", cantidad_productos;
    Escribir "Total a pagar: $", total;
FinProceso