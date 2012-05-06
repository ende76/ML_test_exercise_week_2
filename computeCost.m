%!## **
%!## * VARIABLES to be shared across tests
%!## **

%!shared moduleName, eps, SHOULD_DVIVDE_BY_2_M, SHOULD_SUBTRACT_Y
%!	moduleName = "computeCost()";
%!	eps = 1E-6;
%!	SHOULD_DVIVDE_BY_2_M = sprintf("%s: should divide by (2 * m)", moduleName);
%!	SHOULD_SUBTRACT_Y = sprintf("%s: should subtract y from prediction to determine error", moduleName);



%!## **
%!## * UTILITY FUNCTIONS
%!## **


%!## **
%!## * FORMATTEDERROR() throws a preformatted error message to make our errors more visible
%!## * it seems like there's no way to suppress octave's output on a test failure
%!## * so we have to make our error messages very visible to allow the student to see our
%!## * relevant information at a glance
%!## **
%!function formattedError(msg)
%!	error("\nRECOMMENDATION: %s\n ", msg);
%!endfunction

%!## **
%!## * INDELTA() returns true if the expected value is inside a delta-neighborhood of the actual value
%!## **

%!function success = inDelta(actual, expected, delta)
%!	success = abs(actual - expected) < delta;
%!endfunction



%!## **
%!## * DIFFERENTIAL TEST CASES that test against known defects in implementations and can thus ouput
%!## * very specific instructions for the student to check their code
%!## **

%!## **
%!## * student only divided by 2 instead of 2 * m
%!## **

%!test
%!	if (inDelta(computeCost([1, 1; 1, 2; 1, 3], [1; 2; 3], [0; 0]), 7, eps))
%!		formattedError(SHOULD_DVIVDE_BY_2_M);
%!	endif

%!## **
%!## * student only divided by m instead of 2 * m
%!## **

%!test
%!	if (inDelta(computeCost([1, 1; 1, 2; 1, 3], [1; 2; 3], [0; 0]), 14/3, eps))
%!		formattedError(SHOULD_DVIVDE_BY_2_M);
%!	endif

%!## **
%!## * student completely forgot to divide 2 * m
%!## **

%!test
%!	if (inDelta(computeCost([1, 1; 1, 2; 1, 3], [1; 2; 3], [0; 0]), 14, eps))
%!		formattedError(SHOULD_DVIVDE_BY_2_M);
%!	endif

%!## **
%!## * student used X * theta instead of X * theta - y
%!## **

%!test
%!	if (inDelta(computeCost([1, 1; 1, 2; 1, 3], [1; 2; 3], [0; 1]), 7/3, eps))
%!		formattedError(SHOULD_SUBTRACT_Y);
%!	endif



%!## **
%!## * GENERAL PURPOSE TEST CASES that simply test if computeCost() returns correct values for some examples
%!## * usually, test cases should test against a known common defect in the implementation, to be able to
%!## * output a meaningful error message to the student
%!## **

%!assert(inDelta(computeCost( [1,1,3;1,2,3], [5;10], [2;2;1] ), 1.25, eps), "general purpose example 1 fails");
%!assert(inDelta(computeCost( [1,2,3;1,5,3], [4;3], [3;3;2] ), 140.50, eps), "general purpose example 2 fails");