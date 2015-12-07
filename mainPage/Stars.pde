void _createStars()
{
  fill(0);
  
  ellipse(100, 50, _starSize, _starSize );
  ellipse(400, 10, _starSize, _starSize );
  ellipse(600, 30, _starSize, _starSize );
  ellipse(1800, 50, _starSize+ 3, _starSize + 3 );
  ellipse(400, 10, _starSize, _starSize );
  ellipse(600, 30, _starSize, _starSize );

  if(_starSize < 5)
  {
   growth = 0;
  }
  else if(_starSize > 10)
  {
    growth = 1;
  }
   if(growth == 0)
   {
     _starSize += 0.1;
   }
   if(growth == 1)
   {
    _starSize -= 0.1; 
   }
  
}
