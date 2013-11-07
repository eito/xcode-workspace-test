#include <iostream>

class foo {
public:
    foo();
    foo(int count);
    ~foo() {};
    
    int get_count();
    void set_count(int count);
    
    void increment();
    void decrement();
    
    std::string to_string();
private:
    int m_count;
    
};