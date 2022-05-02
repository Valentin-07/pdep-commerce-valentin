type Producto = (String,Float)
nombreDelProducto :: Producto -> String
nombreDelProducto producto = fst producto


precioTotal::(Num a)=>a->a->a->a->a
precioTotal precioUnitario cantidadProducto descuento costoDeEnvio = (aplicarDescuento precioUnitario descuento) * cantidadProducto + (aplicarCostoDeEnvio precioUnitario costoDeEnvio) 

productoDeElite:: Producto -> Bool
productoDeElite unProducto = (productoDeLujo.nombreDelProducto) unProducto && (productoCodiciado.nombreDelProducto) unProducto && (not.productoCorriente.nombreDelProducto) unProducto

aplicarDescuento:: (Num a)=> a->a->a
aplicarDescuento precioProducto descuento = precioProducto - descuento

type Entrega = (String,Float)

diaDeEntega :: Entrega -> String
diaDeEntega (dia,_) = dia

diasSencillos:: String -> Bool
diasSencillos dia = even.length $dia

entregaSencilla:: Entrega -> Bool 
entregaSencilla entrega = diasSencillos.diaDeEntega $entrega

descodiciarProducto:: String->String
descodiciarProducto nombreProducto = take 10 nombreProducto

productoDeLujo:: String->Bool
productoDeLujo nombreProducto = elem 'x' nombreProducto || elem 'z' nombreProducto || elem 'X' nombreProducto || elem 'Z' nombreProducto

aplicarCostoDeEnvio:: (Num a)=> a->a->a
aplicarCostoDeEnvio precioProducto envio = precioProducto + envio 

productoCodiciado:: String->Bool
productoCodiciado nombreProducto = (length nombreProducto) > 10

esVocal :: Char -> Bool
esVocal caracter = elem caracter "aeiouAEIOU"

productoCorriente:: String->Bool
productoCorriente nombreProducto = esVocal.head $nombreProducto

productoXL:: Producto -> Producto
productoXL (nombreProducto,precio) = (nombreProducto ++ "XL",precio)

versionBarata:: String -> String
versionBarata nombreProducto = reverse.descodiciarProducto $nombreProducto