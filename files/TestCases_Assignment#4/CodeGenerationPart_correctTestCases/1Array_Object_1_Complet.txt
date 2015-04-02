class AAA{ // 104
	int aaa_i;
	BBB obj_BBB[2][2];
	int aaa_j;
};

class BBB{ //24 bytes
	int bbb;
	int arr[5];


};

program{
	AAA obj [2][2][2]; // 832 bytes
	int result;
	
	for(int i = 0; i <2; i = i+1 )
		for(int j = 0; j < 2; j = j +1)
			for(int m = 0; m < 2; m = m + 1)
			{
				obj[i][j][m].aaa_i = i;
				obj[i][j][m].aaa_j = j;

				for(int k = 0; k <2; k = k+1 )
					for(int l = 0; l < 2; l = l +1)
					{
						obj[i][j][m].obj_BBB[k][l].bbb = k + l + m;
						for(int p = 0; p < 5; p = p +1)
							obj[i][j][m].obj_BBB[k][l].arr[p] = p;;
					
					};; 
		};;;


	put( obj[i-1][j-2][m-2].obj_BBB[k-1][l-1].arr[p -2]  + obj[i-1][j-2][m-2].obj_BBB[k-1][l-1].bbb + obj[i-1][j-2][m-2].aaa_j + obj[i-1][j-2][m-2].aaa_i  );  
	// output is <7>
};