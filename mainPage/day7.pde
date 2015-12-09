void day7(){
  // En skidåkare kör bakom huset och lämnar skidspår.
  if (snowMore == true) {

    for (int i = 0; i < _snow.length; i++)
    {
      _snow[i].circle();
    }
  }
}