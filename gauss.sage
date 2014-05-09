class GaussianRational:
    def __init__(self, x, y):
        self.x = QQ(x)
        self.y = QQ(y)
    def __repr__(self):
        return "%s + %s*i"%(self.x,self.y)
    def __add__(self, right):
        """Add together two numbers. (add a docstring)"""
        return GaussianRational(self.x+right.x, self.y+right.y)
    def __sub__(self, right):
        return GaussianRational(self.x-right.x, self.y-right.y)
    def multiply(self, right):
        """
        This function returns the multiply of two given Gaussian Rational numbers
        
        EXAMPLE::
    sage: c = GaussianRational(-3/9,2/7)
    sage: d = GaussianRational(2/9, -3/10)
    sage: c.multiply(d)
        103/630*I - 8/315
        """
        return GaussianRational(self.a + right.a - self.b * right.b, (self.b * right.a + self.a * right.b))
    def __crazy__(self, crazy):
        return 'I'm crazy'
    def __crazy1__(self, crazy):
        return 'I'm crazy too'

