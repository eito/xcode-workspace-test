//
//  foo.m
//  foo
//
//  Created by Eric Ito on 11/6/13.
//  Copyright (c) 2013 Eric Ito. All rights reserved.
//

#include "foo.h"

foo::foo()
{
    m_count = 0;
}

foo::foo(int count)
{
    m_count = count;
}

int foo::get_count()
{
    return m_count;
}

void foo::set_count(int count)
{
    m_count = count;
}

void foo::increment()
{
    m_count++;
}

void foo::decrement()
{
    m_count--;
}

std::string foo::to_string()
{
    return "sss";
}