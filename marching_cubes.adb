--  Marching_Cubes body — case index, classic 256 triangulation table,
--  edge interpolation, asymptotic decider, cell/grid marching, normals
--  and mesh helpers.

pragma Ada_2022;

with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

package body Marching_Cubes
  with SPARK_Mode => Off
is

   -------------------------------------------------------------------------
   -- Internal helpers / tables
   -------------------------------------------------------------------------

   function Sqrt_Safe (X : Real) return Real is
   begin
      if X <= 0.0 then
         return 0.0;
      else
         return Real (Sqrt (Float (X)));
      end if;
   end Sqrt_Safe;
