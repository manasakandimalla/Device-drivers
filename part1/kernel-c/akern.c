// A simple c-program that takes 5 integers as a command line input and performs their sum,product and prints into the kernelring buffer

#include <linux/init.h>
#include <linux/module.h>
#include <linux/moduleparam.h>

int param_var[5] = {0,0,0,0,0};

module_param_array(param_var,int,NULL,S_IRUSR | S_IWUSR);

static int func_init(void)
{
	printk(KERN_ALERT "TEST : sum = %d \n",param_var[0]+param_var[1]+param_var[2]+param_var[3]+param_var[4]);
	printk(KERN_ALERT "TEST : product = %d \n",param_var[0]*param_var[1]*param_var[2]*param_var[3]*param_var[4]);
	//printk(KERN_ALERT "TEST : minimum = %d \n",param_var[0]);
	//printk(KERN_ALERT "TEST : maximum = %d \n",param_var[4]);
	return 0;
}

static void func_exit(void)
{
	printk(KERN_ALERT "TEST : Leaving...\n");
}

module_init(func_init);
module_exit(func_exit);