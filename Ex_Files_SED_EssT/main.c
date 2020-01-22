int main(void)
{
	int x[MAX];
	int howMany;

	howMany = getArray(x, MAX, -1);
	printf("Read the following array:\n");
	printArray(x, howMany);
	reverseArray(x, howMany);
	printf("After being reversed:\n");
	printArray(x, howMany);
}
