#include<iostream>

using namespace std;

class ATM
{

private:

	int totalaccounts;
	int *ids;
	int *pins;
	int *amount;

public:

	ATM()
	{
		cout << "enter how many accounts to make";
		cin >> totalaccounts;
		ids = new int[totalaccounts];
		pins = new int[totalaccounts];
		amount = new int[totalaccounts];
		for (int i = 0; i < totalaccounts; i++)
		{
			cout << "enter id :";
			cin >> ids[i];
			cout << "enter pin :";
			cin >> pins[i];
			cout << "now enter amount in this account :";
			cin >> amount[i];

		}

	}
	~ATM()
	{
		delete[] ids;
		delete[] amount;
		delete[] pins;
	}
	void transfermoney()
	{
		int transferamount;
		int id1;
		int id2;
		bool id1check=false;
		bool id2check=false;
		cout << "enter id of accoumoney from which to transfer";
		cin >> id1;
		cout << "enter id in which to transfer amount :";
		cin >> id2;
		cout << "now enter amount to transfer :";
		cin >> transferamount;
		for (int i = 0; i < totalaccounts; i++)
		{
			if (id1 == ids[i])
			{
				if (amount[i] > transferamount)
				{
					for (int j = 0; id2check == false && j < totalaccounts; j++)
					{
						if (ids[j] == id2)
						{
							amount[j] = amount[j] + transferamount;
							amount[i] = amount[i] - transferamount;
							id2check = true;
						}

					}
				}
				else
				{
					cout << "Transferer doen,t have amount to transfer"<<endl;
				}
				id1check = true;
			}
		}
		if (id1check == false)
			cout << "User with first id is not found"<<endl;
		if (id2check==false)
			cout << "User with second id is not found"<<endl;

	}
	void displaybalance()
	{
		int id;
		bool idcheck = false;
		cout << "enter id for which to display amount in account :";
		cin >> id;
		for (int j = 0; idcheck == false && j < totalaccounts; j++)
		{
			if (ids[j] == id)
			{
				cout << "amount in account is :" << amount[j];
				idcheck = true;
			}

		}
		if (idcheck == false)
			cout << "User with id is not found" << endl;


	}
	void depositbalance()
	{
		int id;
		int ammounttoadd;
		bool idcheck = false;
		cout << "enter id for which to add amount in account :";
		cin >> id;
		cout << "enter amount to add :";
		cin >> ammounttoadd;
		for (int j = 0; idcheck == false && j < totalaccounts; j++)
		{
			if (ids[j] == id)
			{
				amount[j]=amount[j]+ammounttoadd;
				idcheck = true;
			}

		}
		if (idcheck == false)
			cout << "User with id is not found" << endl;

	}
	void withdrawcash()
	{
		int id;
		int withdrawamount;
		bool idcheck = false;
		cout << "enter id for which to withdraw amount in account :";
		cin >> id;
		cout << "enter amount to withdraw :";
		cin >> withdrawamount;
		for (int i = 0; i < totalaccounts; i++)
		{
			if (id == ids[i])
			{
				if (amount[i] > withdrawamount)
				{
					amount[i] = amount[i] - withdrawamount;
					cout << "withdraw successful" << endl;
				}
				else
				{
					cout << "You don,t have amount to withdraw from account" << endl;
				}
				idcheck = true;
			}
		}
		if (idcheck == false)
		{
			cout << "Account holder with this id is not found" << endl;
		}

	}


};
void menu()
{
	cout << endl<<"Menu:" << endl;
	cout << "Enter your selection :" << endl;
	cout << "1 ___withdraw cash " << endl;
	cout << "2 ___transfer cash " << endl;
	cout << "3 ___display balacne  " << endl;
	cout << "4 ___deposit cash " << endl;
	cout << "5__Exit"<<endl;
	cout << "Enter your selection :";
}

int main()
{
	int selection=0;

	ATM hbl;
	int select = 0;
	while(select != 5)
	{
		menu();
		cin >> selection;
		if (selection == 1)
		{
			hbl.withdrawcash();
		}
		if (selection == 2)
		{
			hbl.transfermoney();
		}
		if (selection == 3)
		{
			hbl.displaybalance();
		}
		if (selection == 4)
		{
			hbl.depositbalance();
		}
		if (selection > 5||selection<0)
		{
			cout << "invalid command" << endl;
		}
		select = selection;
	}
}