// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 4:0:0:0
}
.assembly legacy library stfldstatic1 {}
.class private auto ansi beforefieldinit stfldstatic1
       extends [mscorlib]System.Object
{
  .field private static int32 fld
  .method private hidebysig static class stfldstatic1 
          f() cil managed
  {
    // Code size       10 (0xa)
    .maxstack  1
    .locals init (class stfldstatic1 V_0)
    IL_0000:  newobj     instance void stfldstatic1::.ctor()
    IL_0005:  stloc.0
    IL_0006:  br.s       IL_0008

    IL_0008:  ldloc.0
    IL_0009:  ret
  } // end of method stfldstatic1::f

  .method public hidebysig static int32  Main() cil managed
  {
    .entrypoint
    // Code size       23 (0x17)
    .maxstack  5
    .locals init (class stfldstatic1 V_0,
             int32 V_1)
    IL_0000:  call       class stfldstatic1 stfldstatic1::f()
    IL_0005:  ldc.i4 100
    IL_0006:  stfld     int32 stfldstatic1::fld
    IL_000b:  
    IL_0010:  ldstr "PASSED"
	call       void [System.Console]System.Console::WriteLine(string)
	ldc.i4.s   100
    IL_0016:  ret
  } // end of method stfldstatic1::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method stfldstatic1::.ctor

}
