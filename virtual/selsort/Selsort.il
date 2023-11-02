default void SelectionSort (int32[] arr)  cil managed 
    {
        // Method begins at RVA 0x20b8
	// Code size 57 (0x39)
	.maxstack 4				// There are only four local in use at the same time in the function.
							// That is i, least, tmp, j in that order. All are ints, as seen below. 
	.locals init (
		int32	V_0,
		int32	V_1,
		int32	V_2,
		int32	V_3)
	IL_0000:  ldc.i4.0 			// push 0 to the stack
	IL_0001:  stloc.0 			// assign 0 to i, the 0'th local var
	IL_0002:  br.s IL_0032		// goto IL_0032

	IL_0004:  ldloc.0 			// load i,
	IL_0005:  stloc.1 			// store i in least, the 1'st local var
	IL_0006:  ldloc.0 			// load i
	IL_0007:  ldc.i4.1 			// push 1 to the stack
	IL_0008:  add 				// add the top two elements together
	IL_0009:  stloc.3 			// store the top of the stack, in j, the 3'rd var
	IL_000a:  br.s IL_001a		// goto IL_001a

	IL_000c:  ldarg.0 			// load the 0'th element in the function parameters, the full int array
	IL_000d:  ldloc.3 			// load j
	IL_000e:  ldelem.i4 		// get the j'th element from the array arr
	IL_000f:  ldarg.0 			// load the int array
	IL_0010:  ldloc.1 			// load least
	IL_0011:  ldelem.i4 		// get the least'th element from the array arr
	IL_0012:  bge.s IL_0016		// jump to IL_0016, iff (arr[j] >= arr[least]). This is the inverse of the operation found in code.

	IL_0014:  ldloc.3 			// load j
	IL_0015:  stloc.1 			// set least to j
	IL_0016:  ldloc.3 			// load j
	IL_0017:  ldc.i4.1 			// push 1, to the stack
	IL_0018:  add 				// add j and 1
	IL_0019:  stloc.3 			// update j to the top of the stack
	IL_001a:  ldloc.3 			// load j
	IL_001b:  ldarg.0 			// load arr
	IL_001c:  ldlen 			// put length of arr, on the stack
	IL_001d:  conv.i4 			// convert the length to stack
	IL_001e:  blt.s IL_000c		// jump to IL_000c iff (j < arr.length)

	IL_0020:  ldarg.0 			// get arr
	IL_0021:  ldloc.0 			// get i
	IL_0022:  ldelem.i4 		// get arr[i]
	IL_0023:  stloc.2 			// store the top of the stack in tmp, the 2'nd var
	IL_0024:  ldarg.0 			// get arr
	IL_0025:  ldloc.0 			// get i
	IL_0026:  ldarg.0 			// get arr
	IL_0027:  ldloc.1 			// get least
	IL_0028:  ldelem.i4 		// get arr[least]
	IL_0029:  stelem.i4 		// set arr[i] to arr[least]
	IL_002a:  ldarg.0 			// get arr
	IL_002b:  ldloc.1 			// get least
	IL_002c:  ldloc.2 			// get tmp
	IL_002d:  stelem.i4 		// set arr[least] = tmp
	IL_002e:  ldloc.0 			// get i
	IL_002f:  ldc.i4.1 			// push 1 to the stack
	IL_0030:  add 				// add i and 1
	IL_0031:  stloc.0 			// store the result to i
	IL_0032:  ldloc.0 			// get i
	IL_0033:  ldarg.0 			// get arr
	IL_0034:  ldlen 			// push the length of arr to the stack
	IL_0035:  conv.i4 			// convert to int
	IL_0036:  blt.s IL_0004		// jump to IL_0004, iff (i < arr.length)

	IL_0038:  ret 				// return
    } // end of method Selsort::SelectionSort


