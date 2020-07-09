Basic:
#include"tinyxml2.h"
using namespace tinyxml2;

Read:
XMLDocument doc;
doc.LoadFile(char*);
XMLElement* a = doc.FirstChildElement("Name");
XMLElement* aa = doc.FirstChildElement("Name")->FirstChildElement("Name2");
XMLElement* aaa = doc.FirstChildElement("Name")->NextSiblingElement();
cout << a->FirstAttribute()->Next()->Value();
