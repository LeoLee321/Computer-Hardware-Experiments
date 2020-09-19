library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.MATH_REAL.ALL;

package fft16_pkg is

type complex is 
    record
        r : real;
        i : real;
    end record;

type comp_array is array (0 to 15) of complex;
type comp_array2D is array (0 to 255) of complex;

type comp_arrayW4 is array (0 to 1) of complex;
type comp_arrayW8 is array (0 to 3) of complex;
type comp_arrayW16 is array (0 to 7) of complex;

function add (n1,n2 : complex) return complex;
function sub (n1,n2 : complex) return complex;
function mult (n1,n2 : complex) return complex;

end fft16_pkg; 

package body fft16_pkg is 

--addition of complex numbers
function add (n1,n2 : complex) return complex is

variable sum : complex;

begin 
sum.r:=n1.r + n2.r;
sum.i:=n1.i + n2.i;
return sum;
end add;

--subtraction of complex numbers.
function sub (n1,n2 : complex) return complex is

variable diff : complex;

begin 
diff.r:=n1.r - n2.r;
diff.i:=n1.i - n2.i;
return diff;
end sub;

--multiplication of complex numbers.
function mult (n1,n2 : complex) return complex is

variable prod : complex;

begin 
prod.r:=(n1.r * n2.r) - (n1.i * n2.i);
prod.i:=(n1.r * n2.i) + (n1.i * n2.r);
return prod;
end mult;

end fft16_pkg; 