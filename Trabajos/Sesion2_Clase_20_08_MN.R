#---- SESION 2 ----
##---- DEFINICION DE CONSTANTES ----
e = exp(1);
x = 0.0034
e <- exp(1)
x <- 0.034;
x0 = e^(2*x)

##---- TRABAJO EN CLASE (Ejemplo de Discriminante) ----
a_eq <- 1; # Usamos a_eq para no confundir con el lado 'a' del triángulo
b_eq <- 3;
c_eq <- 8;
# El cálculo original de 'raiz' tenía un error (a*a*c en lugar de 4*a*c para un discriminante cuadrático)
# Asumiendo que 'raiz' es solo un valor para experimentar con abs y cat.
raiz <- b_eq^2 - a_eq * a_eq * c_eq; # Esto NO es un discriminante de ecuación cuadrática
disc <- abs(raiz); # El nombre 'disc' aquí podría ser confuso dado el contexto
texto <-"El valor de la expresión b^2 - a^2*c es :"; # Ajuste de texto para claridad
cat(texto, raiz, "\n"); # Agregamos salto de línea

disc_val <- raiz; # Usamos un nombre de variable más claro
abs_disc <- abs(raiz);

###----Cat, Paste, Paste0----
paste("La expresión evaluada con paste es:", disc_val)
paste0("La expresión evaluada con paste0 es:", disc_val)

x0 <-1;
x1 <-x0-pi*x0+1;
print(x1);
x1_2<-x1^2;
x1_3<-x1^3;
texto1<-"El valor de";
texto2<-" al cuadrado es:";
paste(texto1, x1, texto2, x1_2);

ls();
rm(list=ls()); # Limpiamos el ambiente para el siguiente bloque, si es necesario
ls();

x0 <-1;
x1 <-x0-pi*x0+1;
cat("X0 es ", x0, "X1 es ", x1, "\n"); # Agregamos salto de línea
cat("X0 es ", x0, "\n", "X1 es ", x1, "\n");


### ---- Funciones Trigonométricas y Parámetros del Triángulo ----

# Lados del triángulo
lado_a <- 4;
lado_b <- 5;
lado_c <- sqrt(41); # Si es un triángulo rectángulo con a y b como catetos, c sería la hipotenusa

# Ángulos del triángulo (en grados)
# r es el ángulo recto (90 grados)
angulo_r_deg <- 90;
angulo_B_deg <- 51.34;
angulo_A_deg <- 38.66; # Cambié Alafa a angulo_A_deg para consistencia

# Convertir ángulos a radianes para funciones trigonométricas de R
angulo_r_rad <- angulo_r_deg * pi / 180;
angulo_B_rad <- angulo_B_deg * pi / 180;
angulo_A_rad <- angulo_A_deg * pi / 180;

cat("\n--- Análisis del Triángulo ---\n")

# 1. Calcular el tercer ángulo si dos son conocidos
# Suponiendo que angulo_r_deg es el ángulo recto (90 grados)
angulo_C_calculado_deg <- 180 - angulo_A_deg - angulo_B_deg;

cat("Ángulo A (dado):", angulo_A_deg, "grados\n")
cat("Ángulo B (dado):", angulo_B_deg, "grados\n")
cat("Ángulo C (calculado, si A y B son los otros):", angulo_C_calculado_deg, "grados\n")

# Verificar si la suma de los ángulos dados es 180 (para cualquier triángulo)
suma_angulos_dados <- angulo_A_deg + angulo_B_deg + angulo_r_deg; # r como el tercer ángulo

cat("Suma de los 3 ángulos (A, B, R):", suma_angulos_dados, "grados\n")

if (abs(suma_angulos_dados - 180) < 0.01) { # Pequeña tolerancia para errores de punto flotante
  cat("Los ángulos sumados dan aproximadamente 180 grados. Triángulo válido por ángulos.\n")
} else {
  cat("Los ángulos NO suman 180 grados. ¡Hay un problema con los ángulos o no es un triángulo!\n")
}

# 2. Verificar Teorema de Pitágoras si es un triángulo rectángulo
cat("\n--- Verificación de Teorema de Pitágoras (si es Rectángulo) ---\n")
if (abs(lado_a^2 + lado_b^2 - lado_c^2) < 0.01) {
  cat("El Teorema de Pitágoras se cumple (a^2 + b^2 = c^2). Es un triángulo rectángulo.\n")
  cat("Catetos:", lado_a, "y", lado_b, ", Hipotenusa:", lado_c, "\n")
} else {
  cat("El Teorema de Pitágoras NO se cumple con los lados dados. No es un triángulo rectángulo o los lados no corresponden.\n")
  cat("a^2 + b^2 =", lado_a^2 + lado_b^2, ", c^2 =", lado_c^2, "\n")
}

# 3. Calcular lados/ángulos usando funciones trigonométricas (para triángulo rectángulo)
cat("\n--- Cálculos Trigonométricos para Triángulo Rectángulo ---\n")
# Usando los ángulos A y B dados y un lado, podemos calcular los otros.
# Si lado_a es el opuesto a angulo_A_deg y lado_b el adyacente, y lado_c la hipotenusa.
# sin(A) = opuesto / hipotenusa  => hipotenusa = opuesto / sin(A)
# cos(A) = adyacente / hipotenusa => hipotenusa = adyacente / cos(A)

hipotenusa_calculada_sinA <- lado_a / sin(angulo_A_rad)
hipotenusa_calculada_cosB <- lado_a / cos(angulo_B_rad) # Asumiendo B es el otro ángulo agudo

cat("Lado a:", lado_a, "\n")
cat("Lado b:", lado_b, "\n")
cat("Lado c (hipotenusa):", lado_c, "\n")

cat("Hipotenusa calculada con lado a y sin(A):", hipotenusa_calculada_sinA, "\n")
cat("Hipotenusa calculada con lado a y cos(B):", hipotenusa_calculada_cosB, "\n")

