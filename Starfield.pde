Particle[] star;
void setup()
{
	size(400,400);
	star=new Particle[300];
	
	for(int i=0;i<star.length;i++){
		star[i]=new NormalParticle();
	}
		star[0]=new JumboParticle();
		star[1]=new OddballParticle();
	
}
void draw()
{
	background(0);
	for(int i=0;i<star.length;i++){
		star[i].move();
		star[i].show();
		star[i].reset();
		
	}
}
class NormalParticle implements Particle
{
	double ang,dDir,dSpeed,dX,dY,size;
	int r,g,b;
	NormalParticle(){
		ang=(Math.random()*2)*PI;
		dDir=2*Math.PI*Math.random();
		dSpeed=Math.random()*10;
		dX=200;
		dY=200;
		size=(int)(Math.random()*4+1);
		r=(int)(Math.random()*255);
		g=(int)(Math.random()*255);
		b=(int)(Math.random()*255);
	}
	public void move(){
		dX=dX+Math.cos(ang);
		dY=dY+Math.sin(ang);
	}
	public void show(){
		fill(r,g,b);
		ellipse((float)dX,(float)dY,(float)size,(float)size);
	}
	public void reset(){
		if(dX>500 || dX<0 || dY>500 || dY<0){
		dSpeed=Math.random()*10;
		dX=200;
		dY=200;
		ang=(Math.random()*2)*PI;	
			}
	}
}
interface Particle
{
	public void move();
	public void show();
	public void reset();
}
class OddballParticle implements Particle
{
	double ang,dDir,dSpeed,dX,dY,size;
	int r,g,b;
	OddballParticle(){
		ang=(Math.random()*2)*PI;
		
		dDir=2*Math.PI*Math.random();
		dSpeed=Math.random()*50;
		dX=200;
		dY=200;
		size=(int)(Math.random()*15+10);
		r=(int)(Math.random()*255);
		g=(int)(Math.random()*255);
		b=(int)(Math.random()*255);
	}
	
	public void show(){
		fill(r,g,b);
		ellipse((float)dX,(float)dY,(float)size,(float)size);

	}
	public void move(){
		dX=dX+Math.cos(ang);
		dY=dY+Math.sin(ang);
		
	}
	public void reset(){
		if(dX>500 || dX<0 || dY>500 || dY<0){
		dSpeed=Math.random()*10;
		dX=200;
		dY=200;
		ang=(Math.random()*2)*PI;
	}
	}
}
class JumboParticle extends NormalParticle

{
	double oX,oY;
JumboParticle(){
		ang=(Math.random()*2)*PI;
		dDir=2*Math.PI*Math.random();
		dSpeed=Math.random()*10;
		oX=200;
		oY=200;
		size=(int)(Math.random()*100+20);
		r=(int)(Math.random()*255);
		g=(int)(Math.random()*255);
		b=(int)(Math.random()*255);
	}
	public void move(){
		oX=oX+Math.cos(ang);
		oY=oY+Math.sin(ang);
	}
	public void show(){
		fill(r,g,b);
		ellipse((float)oX,(float)oY,(float)size,(float)size);
	}
	public void reset(){
		if(oX>500 || oX<0 || oY>500 || oY<0){
		dSpeed=Math.random()*10;
		oX=200;
		oY=200;
		ang=(Math.random()*2)*PI;
		size=(int)(Math.random()*50+10);
	}
	}
}
