begin_version
3
end_version
begin_metric
1
end_metric
10
begin_variable
var0
-1
6
Atom at(cup, a)
Atom at(cup, b)
Atom at(cup, init)
Atom at(cup, plate)
Atom holding(cup)
Atom in(cup, mug)
end_variable
begin_variable
var1
-1
7
Atom at(icecube, a)
Atom at(icecube, b)
Atom at(icecube, init)
Atom at(icecube, plate)
Atom holding(icecube)
Atom in(icecube, cup)
Atom in(icecube, mug)
end_variable
begin_variable
var2
-1
6
Atom at(mug, a)
Atom at(mug, b)
Atom at(mug, init)
Atom at(mug, plate)
Atom holding(mug)
Atom in(mug, cup)
end_variable
begin_variable
var3
-1
2
Atom free(a)
NegatedAtom free(a)
end_variable
begin_variable
var4
-1
2
Atom free(b)
NegatedAtom free(b)
end_variable
begin_variable
var5
-1
2
Atom free(init)
NegatedAtom free(init)
end_variable
begin_variable
var6
-1
2
Atom free(plate)
NegatedAtom free(plate)
end_variable
begin_variable
var7
-1
4
Atom handat(a)
Atom handat(b)
Atom handat(init)
Atom handat(plate)
end_variable
begin_variable
var8
-1
2
Atom handsfree()
NegatedAtom handsfree()
end_variable
begin_variable
var9
-1
2
Atom in(water, cup)
Atom in(water, mug)
end_variable
13
begin_mutex_group
5
0 0
0 1
0 2
0 3
0 4
end_mutex_group
begin_mutex_group
6
0 0
0 1
0 2
0 3
0 4
0 5
end_mutex_group
begin_mutex_group
4
0 0
1 0
2 0
3 0
end_mutex_group
begin_mutex_group
4
0 1
1 1
2 1
4 0
end_mutex_group
begin_mutex_group
4
0 2
1 2
2 2
5 0
end_mutex_group
begin_mutex_group
4
0 3
1 3
2 3
6 0
end_mutex_group
begin_mutex_group
5
1 0
1 1
1 2
1 3
1 4
end_mutex_group
begin_mutex_group
7
1 0
1 1
1 2
1 3
1 4
1 5
1 6
end_mutex_group
begin_mutex_group
5
2 0
2 1
2 2
2 3
2 4
end_mutex_group
begin_mutex_group
6
2 0
2 1
2 2
2 3
2 4
2 5
end_mutex_group
begin_mutex_group
4
7 0
7 1
7 2
7 3
end_mutex_group
begin_mutex_group
4
0 4
1 4
2 4
8 0
end_mutex_group
begin_mutex_group
2
9 0
9 1
end_mutex_group
begin_state
1
0
2
1
1
1
0
2
0
0
end_state
begin_goal
2
1 6
9 1
end_goal
60
begin_operator
drop cup mug a
2
2 0
7 0
2
0 0 4 5
0 8 -1 0
1
end_operator
begin_operator
drop cup mug b
2
2 1
7 1
2
0 0 4 5
0 8 -1 0
1
end_operator
begin_operator
drop cup mug init
2
2 2
7 2
2
0 0 4 5
0 8 -1 0
1
end_operator
begin_operator
drop cup mug plate
2
2 3
7 3
2
0 0 4 5
0 8 -1 0
1
end_operator
begin_operator
drop icecube cup a
2
0 0
7 0
2
0 1 4 5
0 8 -1 0
1
end_operator
begin_operator
drop icecube cup b
2
0 1
7 1
2
0 1 4 5
0 8 -1 0
1
end_operator
begin_operator
drop icecube cup init
2
0 2
7 2
2
0 1 4 5
0 8 -1 0
1
end_operator
begin_operator
drop icecube cup plate
2
0 3
7 3
2
0 1 4 5
0 8 -1 0
1
end_operator
begin_operator
drop icecube mug a
2
2 0
7 0
2
0 1 4 6
0 8 -1 0
1
end_operator
begin_operator
drop icecube mug b
2
2 1
7 1
2
0 1 4 6
0 8 -1 0
1
end_operator
begin_operator
drop icecube mug init
2
2 2
7 2
2
0 1 4 6
0 8 -1 0
1
end_operator
begin_operator
drop icecube mug plate
2
2 3
7 3
2
0 1 4 6
0 8 -1 0
1
end_operator
begin_operator
drop mug cup a
2
0 0
7 0
2
0 2 4 5
0 8 -1 0
1
end_operator
begin_operator
drop mug cup b
2
0 1
7 1
2
0 2 4 5
0 8 -1 0
1
end_operator
begin_operator
drop mug cup init
2
0 2
7 2
2
0 2 4 5
0 8 -1 0
1
end_operator
begin_operator
drop mug cup plate
2
0 3
7 3
2
0 2 4 5
0 8 -1 0
1
end_operator
begin_operator
moveandgrasp cup init a
0
4
0 0 0 4
0 3 -1 0
0 7 2 0
0 8 0 1
1
end_operator
begin_operator
moveandgrasp cup init b
0
4
0 0 1 4
0 4 -1 0
0 7 2 1
0 8 0 1
1
end_operator
begin_operator
moveandgrasp cup init init
1
7 2
3
0 0 2 4
0 5 -1 0
0 8 0 1
1
end_operator
begin_operator
moveandgrasp cup init plate
0
4
0 0 3 4
0 6 -1 0
0 7 2 3
0 8 0 1
1
end_operator
begin_operator
moveandgrasp icecube init a
0
4
0 1 0 4
0 3 -1 0
0 7 2 0
0 8 0 1
1
end_operator
begin_operator
moveandgrasp icecube init b
0
4
0 1 1 4
0 4 -1 0
0 7 2 1
0 8 0 1
1
end_operator
begin_operator
moveandgrasp icecube init init
1
7 2
3
0 1 2 4
0 5 -1 0
0 8 0 1
1
end_operator
begin_operator
moveandgrasp icecube init plate
0
4
0 1 3 4
0 6 -1 0
0 7 2 3
0 8 0 1
1
end_operator
begin_operator
moveandgrasp mug init a
0
4
0 2 0 4
0 3 -1 0
0 7 2 0
0 8 0 1
1
end_operator
begin_operator
moveandgrasp mug init b
0
4
0 2 1 4
0 4 -1 0
0 7 2 1
0 8 0 1
1
end_operator
begin_operator
moveandgrasp mug init init
1
7 2
3
0 2 2 4
0 5 -1 0
0 8 0 1
1
end_operator
begin_operator
moveandgrasp mug init plate
0
4
0 2 3 4
0 6 -1 0
0 7 2 3
0 8 0 1
1
end_operator
begin_operator
moveandplace cup init a
0
4
0 0 4 0
0 3 0 1
0 7 2 0
0 8 -1 0
1
end_operator
begin_operator
moveandplace cup init b
0
4
0 0 4 1
0 4 0 1
0 7 2 1
0 8 -1 0
1
end_operator
begin_operator
moveandplace cup init init
1
7 2
3
0 0 4 2
0 5 0 1
0 8 -1 0
1
end_operator
begin_operator
moveandplace cup init plate
0
4
0 0 4 3
0 6 0 1
0 7 2 3
0 8 -1 0
1
end_operator
begin_operator
moveandplace icecube init a
0
4
0 1 4 0
0 3 0 1
0 7 2 0
0 8 -1 0
1
end_operator
begin_operator
moveandplace icecube init b
0
4
0 1 4 1
0 4 0 1
0 7 2 1
0 8 -1 0
1
end_operator
begin_operator
moveandplace icecube init init
1
7 2
3
0 1 4 2
0 5 0 1
0 8 -1 0
1
end_operator
begin_operator
moveandplace icecube init plate
0
4
0 1 4 3
0 6 0 1
0 7 2 3
0 8 -1 0
1
end_operator
begin_operator
moveandplace mug init a
0
4
0 2 4 0
0 3 0 1
0 7 2 0
0 8 -1 0
1
end_operator
begin_operator
moveandplace mug init b
0
4
0 2 4 1
0 4 0 1
0 7 2 1
0 8 -1 0
1
end_operator
begin_operator
moveandplace mug init init
1
7 2
3
0 2 4 2
0 5 0 1
0 8 -1 0
1
end_operator
begin_operator
moveandplace mug init plate
0
4
0 2 4 3
0 6 0 1
0 7 2 3
0 8 -1 0
1
end_operator
begin_operator
pour water cup mug a
3
0 4
2 0
7 0
1
0 9 0 1
1
end_operator
begin_operator
pour water cup mug b
3
0 4
2 1
7 1
1
0 9 0 1
1
end_operator
begin_operator
pour water cup mug init
3
0 4
2 2
7 2
1
0 9 0 1
1
end_operator
begin_operator
pour water cup mug plate
3
0 4
2 3
7 3
1
0 9 0 1
1
end_operator
begin_operator
pour water mug cup a
3
0 0
2 4
7 0
1
0 9 1 0
1
end_operator
begin_operator
pour water mug cup b
3
0 1
2 4
7 1
1
0 9 1 0
1
end_operator
begin_operator
pour water mug cup init
3
0 2
2 4
7 2
1
0 9 1 0
1
end_operator
begin_operator
pour water mug cup plate
3
0 3
2 4
7 3
1
0 9 1 0
1
end_operator
begin_operator
return a b
0
1
0 7 0 1
1
end_operator
begin_operator
return a init
0
1
0 7 0 2
1
end_operator
begin_operator
return a plate
0
1
0 7 0 3
1
end_operator
begin_operator
return b a
0
1
0 7 1 0
1
end_operator
begin_operator
return b init
0
1
0 7 1 2
1
end_operator
begin_operator
return b plate
0
1
0 7 1 3
1
end_operator
begin_operator
return init a
0
1
0 7 2 0
1
end_operator
begin_operator
return init b
0
1
0 7 2 1
1
end_operator
begin_operator
return init plate
0
1
0 7 2 3
1
end_operator
begin_operator
return plate a
0
1
0 7 3 0
1
end_operator
begin_operator
return plate b
0
1
0 7 3 1
1
end_operator
begin_operator
return plate init
0
1
0 7 3 2
1
end_operator
0
