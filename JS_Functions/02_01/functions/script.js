var calc = {
  status: 'Awesome',
  plus: function (a,b) {
    return (
      console.log(this),
      console.log(a+b),
      console.log(arguments),
      console.log(this.status)
    )
  }
}

// called as method
calc.plus(2,2);
