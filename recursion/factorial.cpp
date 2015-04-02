// passing  n dimentional arrays and objects as a function parameter


program{

	put( factorial(10) );

};


int factorial(int n)
{
	if(n == 1) then
	{
		return (1);
	}
	else
	{
	};
	
	put(n);
	return (n + factorial(n - 1));
};


