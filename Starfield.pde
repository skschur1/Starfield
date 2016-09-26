//your code here
void setup()
{
	size(400,400);
}
void draw()
{
	//your code here
}
class NormalParticle
{
	int size, pColor;
	double pX, pY, pAngle, pSpeed;
	NormalParticle(int s, int c, double x, double y, double angle, double speed)
	{
		size = s;
		pColor = c;
		pX = x;
		pY = y;
		pAngle = angle;
		pSpeed = speed;
	}
	void show()
	{
		fill(pColor);
		ellipse(pX, pY, size, size);
	}
	void move()
	{

	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

