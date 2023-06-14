#include <iostream>
using namespace std;

struct node
{
    int data;
    node *left;
    node *right;
};
int count = 0;

node *createNode(int item)
{
    node *newNode = new node;
    newNode->data = item;
    newNode->left = newNode->right = nullptr;
    return newNode;
}

void insert(node **tree, node *item)
{
    if (!(*tree))
    {
        *tree = item;
        return;
    }
    if (item->data < (*tree)->data)
    {
        insert(&(*tree)->left, item);
    }
    else if (item->data > (*tree)->data)
    {
        insert(&(*tree)->right, item);
    }
}

void inorder(node *tree)
{
    if (tree)
    {
        inorder(tree->left);
        cout << tree->data << " ";
        inorder(tree->right);
    }
}

void inorderEven(node *tree)
{
    if (tree)
    {
        inorderEven(tree->left);
        if (tree->data % 2 == 0)
        {
            cout << tree->data << " ";
            count++;
        }
        inorderEven(tree->right);
    }
}

int main()
{
    node *root = nullptr;

    insert(&root, createNode(5));
    insert(&root, createNode(3));
    insert(&root, createNode(7));
    insert(&root, createNode(2));
    insert(&root, createNode(4));
    insert(&root, createNode(6));
    insert(&root, createNode(8));

    cout << "Inorder Traversal:";
    inorder(root);
    cout << endl;

    cout << "Even numbers in the BST: ";
    inorderEven(root);
    cout << endl;
    cout << "Total " << count << " even Numbers." << endl;
    return 0;
}