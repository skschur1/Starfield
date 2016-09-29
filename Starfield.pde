NormalParticle bob;
void setup()
{
	size(600,600);
	bob = new NormalParticle(2,5,0.15);
}
void draw()
{
	background(0);
	bob.move();
	bob.show();

}
class NormalParticle
{
	int size, pColor;
	double pX, pY, pAngle, pSpeed;
	NormalParticle(int s, double angle, double speed)
	{
		size = s;
		pColor = color((int)(Math.random() * 155) + 100);
		pX = 300;
		pY = 300;
		pAngle = Math.PI * 2 * Math.random();
		pSpeed = speed;
	}
	void show()
	{
		fill(pColor);
		ellipse((float)pX, (float)pY, size, size);
	}
	void move()
	{
		pX = pX + Math.sin(pAngle) * pSpeed;
		pY = pY + Math.cos(pAngle) * pSpeed;
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

