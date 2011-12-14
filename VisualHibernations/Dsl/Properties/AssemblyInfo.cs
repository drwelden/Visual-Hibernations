#region Using directives

using System;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Runtime.ConstrainedExecution;

#endregion

//
// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
//
[assembly: AssemblyTitle(@"")]
[assembly: AssemblyDescription(@"")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany(@"Dustin Welden")]
[assembly: AssemblyProduct(@"VisualHibernations")]
[assembly: AssemblyCopyright("")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]
[assembly: System.Resources.NeutralResourcesLanguage("en")]

//
// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Revision and Build Numbers 
// by using the '*' as shown below:

[assembly: AssemblyVersion(@"1.0.0.0")]
[assembly: ComVisible(false)]
[assembly: CLSCompliant(true)]
[assembly: ReliabilityContract(Consistency.MayCorruptProcess, Cer.None)]

//
// Make the Dsl project internally visible to the DslPackage assembly
//
[assembly: InternalsVisibleTo(@"VisualHibernations.DslPackage, PublicKey=0024000004800000940000000602000000240000525341310004000001000100C964B6F574B64A85009B7962C31431757AAE6CCF593DC93245EA080D36F1A931831360A4D3C73CA0720FF88FFFC94B81221A15B92CD011DFDD59C0E6DFA7AC6F4B740540A9ED338E5AFF1D9BEF01C3A6AE4637886DE3B021A3118CD4288942DE61067370C607A31DACDD8A02856B4EE21611B38E113EDBC8B5049E33539165B5")]