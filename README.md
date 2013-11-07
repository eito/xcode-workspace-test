xcode-workspace-test
====================

test project for working with Xcode workspaces and implicit dependencies

I wanted to see how Xcode's workspaces actually worked. So in this project there is a c++ lib that is consumed by an ObjC lib, which is then consumed by an iOS application.

There are no cross-project references. 

This seems to work ok, but if you change a source file for a dependent project, it will not automatically be rebuilt when building a project up the chain...this seems weird to me. 
