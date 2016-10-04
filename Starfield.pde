Particle [] bob;
void setup()
{
	size(600,600);
	bob  = new Particle[1000];
	for ( int i = 0; i < bob.length; i++)
	{
		if (i%5 == 0)
			bob[i] = new JumboParticle();
		else if (i%51 == 0)
		{
			bob[i] = new OddballParticle();	
		}
		else
		{
			bob[i] = new NormalParticle();	
		}
	}
}
void draw()
{
	background(0);
	for (int i = 0; i < bob.length; i++)
	{
		bob[i].move();
		bob[i].show();
	}
}
interface Particle
{
	public void move();
	public void show();
}
class NormalParticle implements Particle
{
	int size;
	double pX, pY, pAngle, pSpeed;
	NormalParticle()
	{
		size = 2;
		pX = 300;
		pY = 300;
		pAngle = Math.PI * 2 * Math.random();
		pSpeed = Math.random()*1/2;
	}
	 public void show()
	{
		fill(color((int)(Math.random() * 155) + 100));
		ellipse((float)pX, (float)pY, size, size);
	}
	 public void move()
	{
		pX = pX + Math.sin(pAngle) * pSpeed;
		pY = pY + Math.cos(pAngle) * pSpeed;
	}
}
class OddballParticle implements Particle //uses an interface
{
	int size, oColor;
	double oAngle, oSpeed, oX, oY;
	OddballParticle()
	{
		size = 10;
		oColor = color(141, 84, 20);
		oAngle = Math.PI * 2 * Math.random();
		oSpeed = Math.random() * 1/2;
		oX = 300;
		oY = 300;
	}
	void show()
	{
		fill(oColor);
		triangle((float)oX, (float)oY, (float)(oX + size),(float)(oY + size), (float)(oX - size),(float)(oY - size));
	}
	void move()
	{
		oX = oX + Math.sin(oAngle) * oSpeed;
		oY = oY + Math.cos(oAngle) * oSpeed;
	}
}
class JumboParticle extends NormalParticle //uses inheritance
{
	JumboParticle()
	{
		size = 5;
	}
}

