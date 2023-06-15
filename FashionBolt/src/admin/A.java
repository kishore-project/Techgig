package admin;


public class A {
	int a;
	{
		a=44;
	}
	A()
	{
		a=100;
	}
	A(int a)
	{
		a=1974;
	}
	public void m1()
	{
		a=98;
	}
	public int m2(int x,int y)
	{
		a=908;
		return a;
	}
	
public static void main(String []args)
{
A d=new A();
System.out.println(d.a);
d.m1();
A d2=new A(1);
d.a=d2.a;
A d3=new A();
int a=d3.a+1;

System.out.println(a);
d3.a=a;
System.out.println(d3.a);
d2.a=d3.m2(11,12);
System.out.println(d2.a);
d3.a=d2.a+d3.m2(13, 13);
System.out.println(d3.a);

}
}
