Particle [] satelites;
void setup()
{
	size(600,600);
	satelites  = new Particle[1000];
	for ( int i = 0; i < satelites.length; i++)
	{
		if (i%5 == 0)
		{
			satelites[i] = new JumboParticle();
		}
		else if (i%51== 0)
		{
			satelites[i] = new OddballParticle();	
		}
		else
		{
			satelites[i] = new NormalParticle();	
		}
	}
}
void draw()
{
	background(0);
	for (int i = 0; i < satelites.length; i++)
	{
		satelites[i].move();
		satelites[i].show();
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
	double oAngle, oSpeed, oX, oY;
	OddballParticle()
	{
		oAngle = Math.PI * 2 * Math.random();
		oSpeed = Math.random() * 1/2;
		oX = 300;
		oY = 300;
	}
	public void show()
	{
		fill(255,0,0);
		triangle((float)oX,(float)oY,(float) oX - 3,(float) oY + 6, (float) oX + 3, (float) oY + 6);
	}
	public void move()
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

