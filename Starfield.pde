int myX,myY;
float dX;
float dY;
NormalParticle[] particles;
void setup()
{
	size(400,400);
	particles=new NormalParticle[300];
	for(int nI=0;nI<particles.length;nI++){
		particles[nI]=new NormalParticle();

	}
	particles[1]=new JumboParticle();
}
void draw()
{
	//your code here
}
class NormalParticle
{
	//your code here
}
interface Particle
{
	int dDir=2*Math.PI;
	int dSpeed=Math.random()*10;
	int dX=200;
	int dY=200;
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
	void show(){

	}
}

