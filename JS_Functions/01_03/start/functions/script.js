function plus(a,b) {
  return (
  console.log(a+b),
    console.log(this),
    console.log(arguments)
  )
}

// Traditional invocation
plus(1, 2)
