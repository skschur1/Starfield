NormalParticle bob;
NormalParticle [] jim;
void setup()
{
	size(600,600);
	bob = new NormalParticle();
	jim  = new NormalParticle[500];
	for ( int i = 0; i < 500; i++)
	{
		jim[i] = new NormalParticle();
	}
}
void draw()
{
	background(0);
	for (int i = 0; i < 500; i++)
	{
		jim[i].move();
		jim[i].show();
	}
	bob.move();
	bob.show();

}
class NormalParticle
{
	int size, pColor;
	double pX, pY, pAngle, pSpeed;
	NormalParticle()
	{
		size = 2;
		pColor = color((int)(Math.random() * 155) + 100);
		pX = 300;
		pY = 300;
		pAngle = Math.PI * 2 * Math.random();
		pSpeed = Math.random()*1/2;
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

}
class OddballParticle //uses an interface
{
	int size, oColor;
	double oAngle, oSpeed, oX, oY;
	OddballParticle()
	{
		size = 2;
		oColor = color(141, 84, 20);
		oAngle = Math.PI * 2 * Math.random();
		oSpeed = Math.random() * 1/2;
		oX = 300;
		oY = 300;
	}
	void show()
	{
		/*
		beginShape();
			vertex((int)oX + (size * 2), (int)oY);
			vetex((int)(oX + (size * 1)), (int)(oY + ( size * 1)));
			vertex((int)oX, (int)(oY + (size * 2)));
			vertex((int)(oX - (size * 3)), (int)(oY + ( size * 3)));
			vertex((int)(oX - (size * 2)), (int)oY);
			vertex((int)(oX - (size*2)), (int)(oY - (size*2)));
			vertex((int)oX,(int)(oY - (size*2)));
			vertex((int)(oX + (size * 2)), (int)oY);
		endShape();
		*/
	}
	void move()
	{

	}
	void grow()
	{

	}
}
class JumboParticle //uses inheritance
{
	//your code here
}

