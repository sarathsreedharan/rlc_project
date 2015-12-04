begin_version
3
end_version
begin_metric
1
end_metric
14
begin_variable
var0
-1
10
Atom at(cup, a)
Atom at(cup, b)
Atom at(cup, c)
Atom at(cup, d)
Atom at(cup, e)
Atom at(cup, f)
Atom at(cup, g)
Atom at(cup, init)
Atom holding(cup)
Atom in(cup, mug)
end_variable
begin_variable
var1
-1
11
Atom at(icecube, a)
Atom at(icecube, b)
Atom at(icecube, c)
Atom at(icecube, d)
Atom at(icecube, e)
Atom at(icecube, f)
Atom at(icecube, g)
Atom at(icecube, init)
Atom holding(icecube)
Atom in(icecube, cup)
Atom in(icecube, mug)
end_variable
begin_variable
var2
-1
10
Atom at(mug, a)
Atom at(mug, b)
Atom at(mug, c)
Atom at(mug, d)
Atom at(mug, e)
Atom at(mug, f)
Atom at(mug, g)
Atom at(mug, init)
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
Atom free(c)
NegatedAtom free(c)
end_variable
begin_variable
var6
-1
2
Atom free(d)
NegatedAtom free(d)
end_variable
begin_variable
var7
-1
2
Atom free(e)
NegatedAtom free(e)
end_variable
begin_variable
var8
-1
2
Atom free(f)
NegatedAtom free(f)
end_variable
begin_variable
var9
-1
2
Atom free(g)
NegatedAtom free(g)
end_variable
begin_variable
var10
-1
2
Atom free(init)
NegatedAtom free(init)
end_variable
begin_variable
var11
-1
27
Atom handat(a)
Atom handat(b)
Atom handat(c)
Atom handat(d)
Atom handat(e)
Atom handat(f)
Atom handat(g)
Atom handat(h)
Atom handat(i)
Atom handat(init)
Atom handat(j)
Atom handat(k)
Atom handat(l)
Atom handat(m)
Atom handat(n)
Atom handat(o)
Atom handat(p)
Atom handat(q)
Atom handat(r)
Atom handat(s)
Atom handat(t)
Atom handat(u)
Atom handat(v)
Atom handat(w)
Atom handat(x)
Atom handat(y)
Atom handat(z)
end_variable
begin_variable
var12
-1
2
Atom handsfree()
NegatedAtom handsfree()
end_variable
begin_variable
var13
-1
2
Atom in(water, cup)
Atom in(water, mug)
end_variable
17
begin_mutex_group
9
0 0
0 1
0 2
0 3
0 4
0 5
0 6
0 7
0 8
end_mutex_group
begin_mutex_group
10
0 0
0 1
0 2
0 3
0 4
0 5
0 6
0 7
0 8
0 9
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
4
0 4
1 4
2 4
7 0
end_mutex_group
begin_mutex_group
4
0 5
1 5
2 5
8 0
end_mutex_group
begin_mutex_group
4
0 6
1 6
2 6
9 0
end_mutex_group
begin_mutex_group
4
0 7
1 7
2 7
10 0
end_mutex_group
begin_mutex_group
9
1 0
1 1
1 2
1 3
1 4
1 5
1 6
1 7
1 8
end_mutex_group
begin_mutex_group
11
1 0
1 1
1 2
1 3
1 4
1 5
1 6
1 7
1 8
1 9
1 10
end_mutex_group
begin_mutex_group
9
2 0
2 1
2 2
2 3
2 4
2 5
2 6
2 7
2 8
end_mutex_group
begin_mutex_group
10
2 0
2 1
2 2
2 3
2 4
2 5
2 6
2 7
2 8
2 9
end_mutex_group
begin_mutex_group
27
11 0
11 1
11 2
11 3
11 4
11 5
11 6
11 7
11 8
11 9
11 10
11 11
11 12
11 13
11 14
11 15
11 16
11 17
11 18
11 19
11 20
11 21
11 22
11 23
11 24
11 25
11 26
end_mutex_group
begin_mutex_group
4
0 8
1 8
2 8
12 0
end_mutex_group
begin_mutex_group
2
13 0
13 1
end_mutex_group
begin_state
2
5
7
0
0
1
0
0
1
0
1
9
0
0
end_state
begin_goal
2
0 1
1 3
end_goal
1422
begin_operator
drop cup mug a
2
2 0
11 0
2
0 0 8 9
0 12 -1 0
1
end_operator
begin_operator
drop cup mug b
2
2 1
11 1
2
0 0 8 9
0 12 -1 0
1
end_operator
begin_operator
drop cup mug c
2
2 2
11 2
2
0 0 8 9
0 12 -1 0
1
end_operator
begin_operator
drop cup mug d
2
2 3
11 3
2
0 0 8 9
0 12 -1 0
1
end_operator
begin_operator
drop cup mug e
2
2 4
11 4
2
0 0 8 9
0 12 -1 0
1
end_operator
begin_operator
drop cup mug f
2
2 5
11 5
2
0 0 8 9
0 12 -1 0
1
end_operator
begin_operator
drop cup mug g
2
2 6
11 6
2
0 0 8 9
0 12 -1 0
1
end_operator
begin_operator
drop cup mug init
2
2 7
11 9
2
0 0 8 9
0 12 -1 0
1
end_operator
begin_operator
drop icecube cup a
2
0 0
11 0
2
0 1 8 9
0 12 -1 0
1
end_operator
begin_operator
drop icecube cup b
2
0 1
11 1
2
0 1 8 9
0 12 -1 0
1
end_operator
begin_operator
drop icecube cup c
2
0 2
11 2
2
0 1 8 9
0 12 -1 0
1
end_operator
begin_operator
drop icecube cup d
2
0 3
11 3
2
0 1 8 9
0 12 -1 0
1
end_operator
begin_operator
drop icecube cup e
2
0 4
11 4
2
0 1 8 9
0 12 -1 0
1
end_operator
begin_operator
drop icecube cup f
2
0 5
11 5
2
0 1 8 9
0 12 -1 0
1
end_operator
begin_operator
drop icecube cup g
2
0 6
11 6
2
0 1 8 9
0 12 -1 0
1
end_operator
begin_operator
drop icecube cup init
2
0 7
11 9
2
0 1 8 9
0 12 -1 0
1
end_operator
begin_operator
drop icecube mug a
2
2 0
11 0
2
0 1 8 10
0 12 -1 0
1
end_operator
begin_operator
drop icecube mug b
2
2 1
11 1
2
0 1 8 10
0 12 -1 0
1
end_operator
begin_operator
drop icecube mug c
2
2 2
11 2
2
0 1 8 10
0 12 -1 0
1
end_operator
begin_operator
drop icecube mug d
2
2 3
11 3
2
0 1 8 10
0 12 -1 0
1
end_operator
begin_operator
drop icecube mug e
2
2 4
11 4
2
0 1 8 10
0 12 -1 0
1
end_operator
begin_operator
drop icecube mug f
2
2 5
11 5
2
0 1 8 10
0 12 -1 0
1
end_operator
begin_operator
drop icecube mug g
2
2 6
11 6
2
0 1 8 10
0 12 -1 0
1
end_operator
begin_operator
drop icecube mug init
2
2 7
11 9
2
0 1 8 10
0 12 -1 0
1
end_operator
begin_operator
drop mug cup a
2
0 0
11 0
2
0 2 8 9
0 12 -1 0
1
end_operator
begin_operator
drop mug cup b
2
0 1
11 1
2
0 2 8 9
0 12 -1 0
1
end_operator
begin_operator
drop mug cup c
2
0 2
11 2
2
0 2 8 9
0 12 -1 0
1
end_operator
begin_operator
drop mug cup d
2
0 3
11 3
2
0 2 8 9
0 12 -1 0
1
end_operator
begin_operator
drop mug cup e
2
0 4
11 4
2
0 2 8 9
0 12 -1 0
1
end_operator
begin_operator
drop mug cup f
2
0 5
11 5
2
0 2 8 9
0 12 -1 0
1
end_operator
begin_operator
drop mug cup g
2
0 6
11 6
2
0 2 8 9
0 12 -1 0
1
end_operator
begin_operator
drop mug cup init
2
0 7
11 9
2
0 2 8 9
0 12 -1 0
1
end_operator
begin_operator
moveandgrasp cup a a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup a b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup a c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup a d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup a e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup a f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup a g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup a init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup b a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup b b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup b c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup b d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup b e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup b f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup b g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup b init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup c a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup c b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup c c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup c d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup c e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup c f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup c g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup c init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup d a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup d b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup d c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup d d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup d e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup d f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup d g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup d init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup e a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup e b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup e c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup e d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup e e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup e f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup e g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup e init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup f a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup f b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup f c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup f d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup f e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup f f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup f g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup f init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup g a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup g b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup g c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup g d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup g e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup g f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup g g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup g init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup h a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup h b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup h c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup h d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup h e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup h f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup h g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup h init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup i a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup i b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup i c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup i d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup i e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup i f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup i g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup i init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup init a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup init b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup init c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup init d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup init e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup init f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup init g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup init init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup j a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup j b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup j c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup j d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup j e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup j f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup j g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup j init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup k a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup k b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup k c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup k d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup k e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup k f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup k g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup k init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup l a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup l b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup l c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup l d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup l e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup l f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup l g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup l init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup m a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup m b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup m c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup m d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup m e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup m f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup m g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup m init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup n a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup n b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup n c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup n d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup n e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup n f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup n g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup n init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup o a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup o b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup o c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup o d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup o e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup o f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup o g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup o init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup p a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup p b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup p c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup p d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup p e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup p f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup p g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup p init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup q a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup q b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup q c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup q d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup q e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup q f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup q g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup q init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup r a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup r b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup r c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup r d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup r e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup r f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup r g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup r init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup s a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup s b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup s c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup s d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup s e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup s f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup s g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup s init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup t a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup t b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup t c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup t d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup t e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup t f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup t g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup t init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup u a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup u b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup u c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup u d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup u e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup u f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup u g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup u init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup v a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup v b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup v c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup v d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup v e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup v f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup v g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup v init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup w a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup w b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup w c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup w d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup w e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup w f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup w g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup w init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup x a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup x b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup x c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup x d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup x e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup x f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup x g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup x init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup y a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup y b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup y c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup y d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup y e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup y f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup y g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup y init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup z a
0
4
0 0 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup z b
0
4
0 0 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup z c
0
4
0 0 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup z d
0
4
0 0 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup z e
0
4
0 0 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup z f
0
4
0 0 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup z g
0
4
0 0 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp cup z init
1
11 9
3
0 0 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube a a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube a b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube a c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube a d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube a e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube a f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube a g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube a init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube b a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube b b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube b c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube b d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube b e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube b f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube b g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube b init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube c a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube c b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube c c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube c d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube c e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube c f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube c g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube c init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube d a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube d b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube d c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube d d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube d e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube d f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube d g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube d init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube e a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube e b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube e c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube e d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube e e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube e f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube e g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube e init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube f a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube f b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube f c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube f d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube f e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube f f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube f g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube f init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube g a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube g b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube g c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube g d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube g e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube g f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube g g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube g init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube h a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube h b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube h c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube h d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube h e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube h f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube h g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube h init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube i a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube i b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube i c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube i d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube i e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube i f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube i g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube i init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube init a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube init b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube init c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube init d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube init e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube init f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube init g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube init init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube j a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube j b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube j c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube j d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube j e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube j f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube j g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube j init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube k a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube k b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube k c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube k d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube k e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube k f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube k g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube k init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube l a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube l b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube l c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube l d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube l e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube l f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube l g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube l init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube m a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube m b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube m c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube m d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube m e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube m f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube m g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube m init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube n a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube n b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube n c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube n d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube n e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube n f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube n g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube n init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube o a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube o b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube o c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube o d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube o e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube o f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube o g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube o init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube p a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube p b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube p c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube p d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube p e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube p f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube p g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube p init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube q a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube q b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube q c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube q d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube q e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube q f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube q g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube q init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube r a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube r b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube r c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube r d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube r e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube r f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube r g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube r init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube s a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube s b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube s c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube s d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube s e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube s f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube s g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube s init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube t a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube t b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube t c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube t d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube t e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube t f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube t g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube t init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube u a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube u b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube u c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube u d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube u e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube u f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube u g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube u init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube v a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube v b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube v c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube v d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube v e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube v f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube v g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube v init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube w a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube w b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube w c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube w d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube w e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube w f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube w g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube w init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube x a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube x b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube x c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube x d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube x e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube x f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube x g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube x init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube y a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube y b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube y c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube y d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube y e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube y f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube y g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube y init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube z a
0
4
0 1 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube z b
0
4
0 1 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube z c
0
4
0 1 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube z d
0
4
0 1 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube z e
0
4
0 1 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube z f
0
4
0 1 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube z g
0
4
0 1 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp icecube z init
1
11 9
3
0 1 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug a a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug a b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug a c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug a d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug a e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug a f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug a g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug a init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug b a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug b b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug b c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug b d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug b e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug b f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug b g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug b init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug c a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug c b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug c c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug c d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug c e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug c f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug c g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug c init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug d a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug d b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug d c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug d d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug d e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug d f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug d g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug d init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug e a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug e b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug e c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug e d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug e e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug e f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug e g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug e init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug f a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug f b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug f c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug f d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug f e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug f f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug f g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug f init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug g a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug g b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug g c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug g d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug g e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug g f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug g g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug g init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug h a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug h b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug h c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug h d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug h e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug h f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug h g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug h init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug i a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug i b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug i c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug i d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug i e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug i f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug i g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug i init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug init a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug init b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug init c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug init d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug init e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug init f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug init g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug init init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug j a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug j b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug j c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug j d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug j e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug j f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug j g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug j init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug k a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug k b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug k c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug k d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug k e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug k f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug k g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug k init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug l a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug l b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug l c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug l d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug l e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug l f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug l g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug l init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug m a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug m b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug m c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug m d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug m e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug m f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug m g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug m init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug n a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug n b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug n c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug n d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug n e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug n f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug n g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug n init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug o a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug o b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug o c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug o d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug o e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug o f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug o g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug o init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug p a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug p b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug p c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug p d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug p e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug p f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug p g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug p init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug q a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug q b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug q c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug q d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug q e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug q f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug q g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug q init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug r a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug r b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug r c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug r d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug r e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug r f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug r g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug r init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug s a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug s b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug s c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug s d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug s e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug s f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug s g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug s init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug t a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug t b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug t c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug t d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug t e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug t f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug t g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug t init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug u a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug u b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug u c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug u d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug u e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug u f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug u g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug u init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug v a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug v b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug v c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug v d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug v e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug v f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug v g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug v init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug w a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug w b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug w c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug w d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug w e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug w f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug w g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug w init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug x a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug x b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug x c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug x d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug x e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug x f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug x g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug x init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug y a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug y b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug y c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug y d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug y e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug y f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug y g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug y init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug z a
0
4
0 2 0 8
0 3 -1 0
0 11 9 0
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug z b
0
4
0 2 1 8
0 4 -1 0
0 11 9 1
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug z c
0
4
0 2 2 8
0 5 -1 0
0 11 9 2
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug z d
0
4
0 2 3 8
0 6 -1 0
0 11 9 3
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug z e
0
4
0 2 4 8
0 7 -1 0
0 11 9 4
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug z f
0
4
0 2 5 8
0 8 -1 0
0 11 9 5
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug z g
0
4
0 2 6 8
0 9 -1 0
0 11 9 6
0 12 0 1
1
end_operator
begin_operator
moveandgrasp mug z init
1
11 9
3
0 2 7 8
0 10 -1 0
0 12 0 1
1
end_operator
begin_operator
moveandplace cup init a
0
4
0 0 8 0
0 3 0 1
0 11 9 0
0 12 -1 0
1
end_operator
begin_operator
moveandplace cup init b
0
4
0 0 8 1
0 4 0 1
0 11 9 1
0 12 -1 0
1
end_operator
begin_operator
moveandplace cup init c
0
4
0 0 8 2
0 5 0 1
0 11 9 2
0 12 -1 0
1
end_operator
begin_operator
moveandplace cup init d
0
4
0 0 8 3
0 6 0 1
0 11 9 3
0 12 -1 0
1
end_operator
begin_operator
moveandplace cup init e
0
4
0 0 8 4
0 7 0 1
0 11 9 4
0 12 -1 0
1
end_operator
begin_operator
moveandplace cup init f
0
4
0 0 8 5
0 8 0 1
0 11 9 5
0 12 -1 0
1
end_operator
begin_operator
moveandplace cup init g
0
4
0 0 8 6
0 9 0 1
0 11 9 6
0 12 -1 0
1
end_operator
begin_operator
moveandplace cup init init
1
11 9
3
0 0 8 7
0 10 0 1
0 12 -1 0
1
end_operator
begin_operator
moveandplace icecube init a
0
4
0 1 8 0
0 3 0 1
0 11 9 0
0 12 -1 0
1
end_operator
begin_operator
moveandplace icecube init b
0
4
0 1 8 1
0 4 0 1
0 11 9 1
0 12 -1 0
1
end_operator
begin_operator
moveandplace icecube init c
0
4
0 1 8 2
0 5 0 1
0 11 9 2
0 12 -1 0
1
end_operator
begin_operator
moveandplace icecube init d
0
4
0 1 8 3
0 6 0 1
0 11 9 3
0 12 -1 0
1
end_operator
begin_operator
moveandplace icecube init e
0
4
0 1 8 4
0 7 0 1
0 11 9 4
0 12 -1 0
1
end_operator
begin_operator
moveandplace icecube init f
0
4
0 1 8 5
0 8 0 1
0 11 9 5
0 12 -1 0
1
end_operator
begin_operator
moveandplace icecube init g
0
4
0 1 8 6
0 9 0 1
0 11 9 6
0 12 -1 0
1
end_operator
begin_operator
moveandplace icecube init init
1
11 9
3
0 1 8 7
0 10 0 1
0 12 -1 0
1
end_operator
begin_operator
moveandplace mug init a
0
4
0 2 8 0
0 3 0 1
0 11 9 0
0 12 -1 0
1
end_operator
begin_operator
moveandplace mug init b
0
4
0 2 8 1
0 4 0 1
0 11 9 1
0 12 -1 0
1
end_operator
begin_operator
moveandplace mug init c
0
4
0 2 8 2
0 5 0 1
0 11 9 2
0 12 -1 0
1
end_operator
begin_operator
moveandplace mug init d
0
4
0 2 8 3
0 6 0 1
0 11 9 3
0 12 -1 0
1
end_operator
begin_operator
moveandplace mug init e
0
4
0 2 8 4
0 7 0 1
0 11 9 4
0 12 -1 0
1
end_operator
begin_operator
moveandplace mug init f
0
4
0 2 8 5
0 8 0 1
0 11 9 5
0 12 -1 0
1
end_operator
begin_operator
moveandplace mug init g
0
4
0 2 8 6
0 9 0 1
0 11 9 6
0 12 -1 0
1
end_operator
begin_operator
moveandplace mug init init
1
11 9
3
0 2 8 7
0 10 0 1
0 12 -1 0
1
end_operator
begin_operator
pour water cup mug a
3
0 8
2 0
11 0
1
0 13 0 1
1
end_operator
begin_operator
pour water cup mug b
3
0 8
2 1
11 1
1
0 13 0 1
1
end_operator
begin_operator
pour water cup mug c
3
0 8
2 2
11 2
1
0 13 0 1
1
end_operator
begin_operator
pour water cup mug d
3
0 8
2 3
11 3
1
0 13 0 1
1
end_operator
begin_operator
pour water cup mug e
3
0 8
2 4
11 4
1
0 13 0 1
1
end_operator
begin_operator
pour water cup mug f
3
0 8
2 5
11 5
1
0 13 0 1
1
end_operator
begin_operator
pour water cup mug g
3
0 8
2 6
11 6
1
0 13 0 1
1
end_operator
begin_operator
pour water cup mug init
3
0 8
2 7
11 9
1
0 13 0 1
1
end_operator
begin_operator
pour water mug cup a
3
0 0
2 8
11 0
1
0 13 1 0
1
end_operator
begin_operator
pour water mug cup b
3
0 1
2 8
11 1
1
0 13 1 0
1
end_operator
begin_operator
pour water mug cup c
3
0 2
2 8
11 2
1
0 13 1 0
1
end_operator
begin_operator
pour water mug cup d
3
0 3
2 8
11 3
1
0 13 1 0
1
end_operator
begin_operator
pour water mug cup e
3
0 4
2 8
11 4
1
0 13 1 0
1
end_operator
begin_operator
pour water mug cup f
3
0 5
2 8
11 5
1
0 13 1 0
1
end_operator
begin_operator
pour water mug cup g
3
0 6
2 8
11 6
1
0 13 1 0
1
end_operator
begin_operator
pour water mug cup init
3
0 7
2 8
11 9
1
0 13 1 0
1
end_operator
begin_operator
return a b
0
1
0 11 0 1
1
end_operator
begin_operator
return a c
0
1
0 11 0 2
1
end_operator
begin_operator
return a d
0
1
0 11 0 3
1
end_operator
begin_operator
return a e
0
1
0 11 0 4
1
end_operator
begin_operator
return a f
0
1
0 11 0 5
1
end_operator
begin_operator
return a g
0
1
0 11 0 6
1
end_operator
begin_operator
return a h
0
1
0 11 0 7
1
end_operator
begin_operator
return a i
0
1
0 11 0 8
1
end_operator
begin_operator
return a init
0
1
0 11 0 9
1
end_operator
begin_operator
return a j
0
1
0 11 0 10
1
end_operator
begin_operator
return a k
0
1
0 11 0 11
1
end_operator
begin_operator
return a l
0
1
0 11 0 12
1
end_operator
begin_operator
return a m
0
1
0 11 0 13
1
end_operator
begin_operator
return a n
0
1
0 11 0 14
1
end_operator
begin_operator
return a o
0
1
0 11 0 15
1
end_operator
begin_operator
return a p
0
1
0 11 0 16
1
end_operator
begin_operator
return a q
0
1
0 11 0 17
1
end_operator
begin_operator
return a r
0
1
0 11 0 18
1
end_operator
begin_operator
return a s
0
1
0 11 0 19
1
end_operator
begin_operator
return a t
0
1
0 11 0 20
1
end_operator
begin_operator
return a u
0
1
0 11 0 21
1
end_operator
begin_operator
return a v
0
1
0 11 0 22
1
end_operator
begin_operator
return a w
0
1
0 11 0 23
1
end_operator
begin_operator
return a x
0
1
0 11 0 24
1
end_operator
begin_operator
return a y
0
1
0 11 0 25
1
end_operator
begin_operator
return a z
0
1
0 11 0 26
1
end_operator
begin_operator
return b a
0
1
0 11 1 0
1
end_operator
begin_operator
return b c
0
1
0 11 1 2
1
end_operator
begin_operator
return b d
0
1
0 11 1 3
1
end_operator
begin_operator
return b e
0
1
0 11 1 4
1
end_operator
begin_operator
return b f
0
1
0 11 1 5
1
end_operator
begin_operator
return b g
0
1
0 11 1 6
1
end_operator
begin_operator
return b h
0
1
0 11 1 7
1
end_operator
begin_operator
return b i
0
1
0 11 1 8
1
end_operator
begin_operator
return b init
0
1
0 11 1 9
1
end_operator
begin_operator
return b j
0
1
0 11 1 10
1
end_operator
begin_operator
return b k
0
1
0 11 1 11
1
end_operator
begin_operator
return b l
0
1
0 11 1 12
1
end_operator
begin_operator
return b m
0
1
0 11 1 13
1
end_operator
begin_operator
return b n
0
1
0 11 1 14
1
end_operator
begin_operator
return b o
0
1
0 11 1 15
1
end_operator
begin_operator
return b p
0
1
0 11 1 16
1
end_operator
begin_operator
return b q
0
1
0 11 1 17
1
end_operator
begin_operator
return b r
0
1
0 11 1 18
1
end_operator
begin_operator
return b s
0
1
0 11 1 19
1
end_operator
begin_operator
return b t
0
1
0 11 1 20
1
end_operator
begin_operator
return b u
0
1
0 11 1 21
1
end_operator
begin_operator
return b v
0
1
0 11 1 22
1
end_operator
begin_operator
return b w
0
1
0 11 1 23
1
end_operator
begin_operator
return b x
0
1
0 11 1 24
1
end_operator
begin_operator
return b y
0
1
0 11 1 25
1
end_operator
begin_operator
return b z
0
1
0 11 1 26
1
end_operator
begin_operator
return c a
0
1
0 11 2 0
1
end_operator
begin_operator
return c b
0
1
0 11 2 1
1
end_operator
begin_operator
return c d
0
1
0 11 2 3
1
end_operator
begin_operator
return c e
0
1
0 11 2 4
1
end_operator
begin_operator
return c f
0
1
0 11 2 5
1
end_operator
begin_operator
return c g
0
1
0 11 2 6
1
end_operator
begin_operator
return c h
0
1
0 11 2 7
1
end_operator
begin_operator
return c i
0
1
0 11 2 8
1
end_operator
begin_operator
return c init
0
1
0 11 2 9
1
end_operator
begin_operator
return c j
0
1
0 11 2 10
1
end_operator
begin_operator
return c k
0
1
0 11 2 11
1
end_operator
begin_operator
return c l
0
1
0 11 2 12
1
end_operator
begin_operator
return c m
0
1
0 11 2 13
1
end_operator
begin_operator
return c n
0
1
0 11 2 14
1
end_operator
begin_operator
return c o
0
1
0 11 2 15
1
end_operator
begin_operator
return c p
0
1
0 11 2 16
1
end_operator
begin_operator
return c q
0
1
0 11 2 17
1
end_operator
begin_operator
return c r
0
1
0 11 2 18
1
end_operator
begin_operator
return c s
0
1
0 11 2 19
1
end_operator
begin_operator
return c t
0
1
0 11 2 20
1
end_operator
begin_operator
return c u
0
1
0 11 2 21
1
end_operator
begin_operator
return c v
0
1
0 11 2 22
1
end_operator
begin_operator
return c w
0
1
0 11 2 23
1
end_operator
begin_operator
return c x
0
1
0 11 2 24
1
end_operator
begin_operator
return c y
0
1
0 11 2 25
1
end_operator
begin_operator
return c z
0
1
0 11 2 26
1
end_operator
begin_operator
return d a
0
1
0 11 3 0
1
end_operator
begin_operator
return d b
0
1
0 11 3 1
1
end_operator
begin_operator
return d c
0
1
0 11 3 2
1
end_operator
begin_operator
return d e
0
1
0 11 3 4
1
end_operator
begin_operator
return d f
0
1
0 11 3 5
1
end_operator
begin_operator
return d g
0
1
0 11 3 6
1
end_operator
begin_operator
return d h
0
1
0 11 3 7
1
end_operator
begin_operator
return d i
0
1
0 11 3 8
1
end_operator
begin_operator
return d init
0
1
0 11 3 9
1
end_operator
begin_operator
return d j
0
1
0 11 3 10
1
end_operator
begin_operator
return d k
0
1
0 11 3 11
1
end_operator
begin_operator
return d l
0
1
0 11 3 12
1
end_operator
begin_operator
return d m
0
1
0 11 3 13
1
end_operator
begin_operator
return d n
0
1
0 11 3 14
1
end_operator
begin_operator
return d o
0
1
0 11 3 15
1
end_operator
begin_operator
return d p
0
1
0 11 3 16
1
end_operator
begin_operator
return d q
0
1
0 11 3 17
1
end_operator
begin_operator
return d r
0
1
0 11 3 18
1
end_operator
begin_operator
return d s
0
1
0 11 3 19
1
end_operator
begin_operator
return d t
0
1
0 11 3 20
1
end_operator
begin_operator
return d u
0
1
0 11 3 21
1
end_operator
begin_operator
return d v
0
1
0 11 3 22
1
end_operator
begin_operator
return d w
0
1
0 11 3 23
1
end_operator
begin_operator
return d x
0
1
0 11 3 24
1
end_operator
begin_operator
return d y
0
1
0 11 3 25
1
end_operator
begin_operator
return d z
0
1
0 11 3 26
1
end_operator
begin_operator
return e a
0
1
0 11 4 0
1
end_operator
begin_operator
return e b
0
1
0 11 4 1
1
end_operator
begin_operator
return e c
0
1
0 11 4 2
1
end_operator
begin_operator
return e d
0
1
0 11 4 3
1
end_operator
begin_operator
return e f
0
1
0 11 4 5
1
end_operator
begin_operator
return e g
0
1
0 11 4 6
1
end_operator
begin_operator
return e h
0
1
0 11 4 7
1
end_operator
begin_operator
return e i
0
1
0 11 4 8
1
end_operator
begin_operator
return e init
0
1
0 11 4 9
1
end_operator
begin_operator
return e j
0
1
0 11 4 10
1
end_operator
begin_operator
return e k
0
1
0 11 4 11
1
end_operator
begin_operator
return e l
0
1
0 11 4 12
1
end_operator
begin_operator
return e m
0
1
0 11 4 13
1
end_operator
begin_operator
return e n
0
1
0 11 4 14
1
end_operator
begin_operator
return e o
0
1
0 11 4 15
1
end_operator
begin_operator
return e p
0
1
0 11 4 16
1
end_operator
begin_operator
return e q
0
1
0 11 4 17
1
end_operator
begin_operator
return e r
0
1
0 11 4 18
1
end_operator
begin_operator
return e s
0
1
0 11 4 19
1
end_operator
begin_operator
return e t
0
1
0 11 4 20
1
end_operator
begin_operator
return e u
0
1
0 11 4 21
1
end_operator
begin_operator
return e v
0
1
0 11 4 22
1
end_operator
begin_operator
return e w
0
1
0 11 4 23
1
end_operator
begin_operator
return e x
0
1
0 11 4 24
1
end_operator
begin_operator
return e y
0
1
0 11 4 25
1
end_operator
begin_operator
return e z
0
1
0 11 4 26
1
end_operator
begin_operator
return f a
0
1
0 11 5 0
1
end_operator
begin_operator
return f b
0
1
0 11 5 1
1
end_operator
begin_operator
return f c
0
1
0 11 5 2
1
end_operator
begin_operator
return f d
0
1
0 11 5 3
1
end_operator
begin_operator
return f e
0
1
0 11 5 4
1
end_operator
begin_operator
return f g
0
1
0 11 5 6
1
end_operator
begin_operator
return f h
0
1
0 11 5 7
1
end_operator
begin_operator
return f i
0
1
0 11 5 8
1
end_operator
begin_operator
return f init
0
1
0 11 5 9
1
end_operator
begin_operator
return f j
0
1
0 11 5 10
1
end_operator
begin_operator
return f k
0
1
0 11 5 11
1
end_operator
begin_operator
return f l
0
1
0 11 5 12
1
end_operator
begin_operator
return f m
0
1
0 11 5 13
1
end_operator
begin_operator
return f n
0
1
0 11 5 14
1
end_operator
begin_operator
return f o
0
1
0 11 5 15
1
end_operator
begin_operator
return f p
0
1
0 11 5 16
1
end_operator
begin_operator
return f q
0
1
0 11 5 17
1
end_operator
begin_operator
return f r
0
1
0 11 5 18
1
end_operator
begin_operator
return f s
0
1
0 11 5 19
1
end_operator
begin_operator
return f t
0
1
0 11 5 20
1
end_operator
begin_operator
return f u
0
1
0 11 5 21
1
end_operator
begin_operator
return f v
0
1
0 11 5 22
1
end_operator
begin_operator
return f w
0
1
0 11 5 23
1
end_operator
begin_operator
return f x
0
1
0 11 5 24
1
end_operator
begin_operator
return f y
0
1
0 11 5 25
1
end_operator
begin_operator
return f z
0
1
0 11 5 26
1
end_operator
begin_operator
return g a
0
1
0 11 6 0
1
end_operator
begin_operator
return g b
0
1
0 11 6 1
1
end_operator
begin_operator
return g c
0
1
0 11 6 2
1
end_operator
begin_operator
return g d
0
1
0 11 6 3
1
end_operator
begin_operator
return g e
0
1
0 11 6 4
1
end_operator
begin_operator
return g f
0
1
0 11 6 5
1
end_operator
begin_operator
return g h
0
1
0 11 6 7
1
end_operator
begin_operator
return g i
0
1
0 11 6 8
1
end_operator
begin_operator
return g init
0
1
0 11 6 9
1
end_operator
begin_operator
return g j
0
1
0 11 6 10
1
end_operator
begin_operator
return g k
0
1
0 11 6 11
1
end_operator
begin_operator
return g l
0
1
0 11 6 12
1
end_operator
begin_operator
return g m
0
1
0 11 6 13
1
end_operator
begin_operator
return g n
0
1
0 11 6 14
1
end_operator
begin_operator
return g o
0
1
0 11 6 15
1
end_operator
begin_operator
return g p
0
1
0 11 6 16
1
end_operator
begin_operator
return g q
0
1
0 11 6 17
1
end_operator
begin_operator
return g r
0
1
0 11 6 18
1
end_operator
begin_operator
return g s
0
1
0 11 6 19
1
end_operator
begin_operator
return g t
0
1
0 11 6 20
1
end_operator
begin_operator
return g u
0
1
0 11 6 21
1
end_operator
begin_operator
return g v
0
1
0 11 6 22
1
end_operator
begin_operator
return g w
0
1
0 11 6 23
1
end_operator
begin_operator
return g x
0
1
0 11 6 24
1
end_operator
begin_operator
return g y
0
1
0 11 6 25
1
end_operator
begin_operator
return g z
0
1
0 11 6 26
1
end_operator
begin_operator
return h a
0
1
0 11 7 0
1
end_operator
begin_operator
return h b
0
1
0 11 7 1
1
end_operator
begin_operator
return h c
0
1
0 11 7 2
1
end_operator
begin_operator
return h d
0
1
0 11 7 3
1
end_operator
begin_operator
return h e
0
1
0 11 7 4
1
end_operator
begin_operator
return h f
0
1
0 11 7 5
1
end_operator
begin_operator
return h g
0
1
0 11 7 6
1
end_operator
begin_operator
return h i
0
1
0 11 7 8
1
end_operator
begin_operator
return h init
0
1
0 11 7 9
1
end_operator
begin_operator
return h j
0
1
0 11 7 10
1
end_operator
begin_operator
return h k
0
1
0 11 7 11
1
end_operator
begin_operator
return h l
0
1
0 11 7 12
1
end_operator
begin_operator
return h m
0
1
0 11 7 13
1
end_operator
begin_operator
return h n
0
1
0 11 7 14
1
end_operator
begin_operator
return h o
0
1
0 11 7 15
1
end_operator
begin_operator
return h p
0
1
0 11 7 16
1
end_operator
begin_operator
return h q
0
1
0 11 7 17
1
end_operator
begin_operator
return h r
0
1
0 11 7 18
1
end_operator
begin_operator
return h s
0
1
0 11 7 19
1
end_operator
begin_operator
return h t
0
1
0 11 7 20
1
end_operator
begin_operator
return h u
0
1
0 11 7 21
1
end_operator
begin_operator
return h v
0
1
0 11 7 22
1
end_operator
begin_operator
return h w
0
1
0 11 7 23
1
end_operator
begin_operator
return h x
0
1
0 11 7 24
1
end_operator
begin_operator
return h y
0
1
0 11 7 25
1
end_operator
begin_operator
return h z
0
1
0 11 7 26
1
end_operator
begin_operator
return i a
0
1
0 11 8 0
1
end_operator
begin_operator
return i b
0
1
0 11 8 1
1
end_operator
begin_operator
return i c
0
1
0 11 8 2
1
end_operator
begin_operator
return i d
0
1
0 11 8 3
1
end_operator
begin_operator
return i e
0
1
0 11 8 4
1
end_operator
begin_operator
return i f
0
1
0 11 8 5
1
end_operator
begin_operator
return i g
0
1
0 11 8 6
1
end_operator
begin_operator
return i h
0
1
0 11 8 7
1
end_operator
begin_operator
return i init
0
1
0 11 8 9
1
end_operator
begin_operator
return i j
0
1
0 11 8 10
1
end_operator
begin_operator
return i k
0
1
0 11 8 11
1
end_operator
begin_operator
return i l
0
1
0 11 8 12
1
end_operator
begin_operator
return i m
0
1
0 11 8 13
1
end_operator
begin_operator
return i n
0
1
0 11 8 14
1
end_operator
begin_operator
return i o
0
1
0 11 8 15
1
end_operator
begin_operator
return i p
0
1
0 11 8 16
1
end_operator
begin_operator
return i q
0
1
0 11 8 17
1
end_operator
begin_operator
return i r
0
1
0 11 8 18
1
end_operator
begin_operator
return i s
0
1
0 11 8 19
1
end_operator
begin_operator
return i t
0
1
0 11 8 20
1
end_operator
begin_operator
return i u
0
1
0 11 8 21
1
end_operator
begin_operator
return i v
0
1
0 11 8 22
1
end_operator
begin_operator
return i w
0
1
0 11 8 23
1
end_operator
begin_operator
return i x
0
1
0 11 8 24
1
end_operator
begin_operator
return i y
0
1
0 11 8 25
1
end_operator
begin_operator
return i z
0
1
0 11 8 26
1
end_operator
begin_operator
return init a
0
1
0 11 9 0
1
end_operator
begin_operator
return init b
0
1
0 11 9 1
1
end_operator
begin_operator
return init c
0
1
0 11 9 2
1
end_operator
begin_operator
return init d
0
1
0 11 9 3
1
end_operator
begin_operator
return init e
0
1
0 11 9 4
1
end_operator
begin_operator
return init f
0
1
0 11 9 5
1
end_operator
begin_operator
return init g
0
1
0 11 9 6
1
end_operator
begin_operator
return init h
0
1
0 11 9 7
1
end_operator
begin_operator
return init i
0
1
0 11 9 8
1
end_operator
begin_operator
return init j
0
1
0 11 9 10
1
end_operator
begin_operator
return init k
0
1
0 11 9 11
1
end_operator
begin_operator
return init l
0
1
0 11 9 12
1
end_operator
begin_operator
return init m
0
1
0 11 9 13
1
end_operator
begin_operator
return init n
0
1
0 11 9 14
1
end_operator
begin_operator
return init o
0
1
0 11 9 15
1
end_operator
begin_operator
return init p
0
1
0 11 9 16
1
end_operator
begin_operator
return init q
0
1
0 11 9 17
1
end_operator
begin_operator
return init r
0
1
0 11 9 18
1
end_operator
begin_operator
return init s
0
1
0 11 9 19
1
end_operator
begin_operator
return init t
0
1
0 11 9 20
1
end_operator
begin_operator
return init u
0
1
0 11 9 21
1
end_operator
begin_operator
return init v
0
1
0 11 9 22
1
end_operator
begin_operator
return init w
0
1
0 11 9 23
1
end_operator
begin_operator
return init x
0
1
0 11 9 24
1
end_operator
begin_operator
return init y
0
1
0 11 9 25
1
end_operator
begin_operator
return init z
0
1
0 11 9 26
1
end_operator
begin_operator
return j a
0
1
0 11 10 0
1
end_operator
begin_operator
return j b
0
1
0 11 10 1
1
end_operator
begin_operator
return j c
0
1
0 11 10 2
1
end_operator
begin_operator
return j d
0
1
0 11 10 3
1
end_operator
begin_operator
return j e
0
1
0 11 10 4
1
end_operator
begin_operator
return j f
0
1
0 11 10 5
1
end_operator
begin_operator
return j g
0
1
0 11 10 6
1
end_operator
begin_operator
return j h
0
1
0 11 10 7
1
end_operator
begin_operator
return j i
0
1
0 11 10 8
1
end_operator
begin_operator
return j init
0
1
0 11 10 9
1
end_operator
begin_operator
return j k
0
1
0 11 10 11
1
end_operator
begin_operator
return j l
0
1
0 11 10 12
1
end_operator
begin_operator
return j m
0
1
0 11 10 13
1
end_operator
begin_operator
return j n
0
1
0 11 10 14
1
end_operator
begin_operator
return j o
0
1
0 11 10 15
1
end_operator
begin_operator
return j p
0
1
0 11 10 16
1
end_operator
begin_operator
return j q
0
1
0 11 10 17
1
end_operator
begin_operator
return j r
0
1
0 11 10 18
1
end_operator
begin_operator
return j s
0
1
0 11 10 19
1
end_operator
begin_operator
return j t
0
1
0 11 10 20
1
end_operator
begin_operator
return j u
0
1
0 11 10 21
1
end_operator
begin_operator
return j v
0
1
0 11 10 22
1
end_operator
begin_operator
return j w
0
1
0 11 10 23
1
end_operator
begin_operator
return j x
0
1
0 11 10 24
1
end_operator
begin_operator
return j y
0
1
0 11 10 25
1
end_operator
begin_operator
return j z
0
1
0 11 10 26
1
end_operator
begin_operator
return k a
0
1
0 11 11 0
1
end_operator
begin_operator
return k b
0
1
0 11 11 1
1
end_operator
begin_operator
return k c
0
1
0 11 11 2
1
end_operator
begin_operator
return k d
0
1
0 11 11 3
1
end_operator
begin_operator
return k e
0
1
0 11 11 4
1
end_operator
begin_operator
return k f
0
1
0 11 11 5
1
end_operator
begin_operator
return k g
0
1
0 11 11 6
1
end_operator
begin_operator
return k h
0
1
0 11 11 7
1
end_operator
begin_operator
return k i
0
1
0 11 11 8
1
end_operator
begin_operator
return k init
0
1
0 11 11 9
1
end_operator
begin_operator
return k j
0
1
0 11 11 10
1
end_operator
begin_operator
return k l
0
1
0 11 11 12
1
end_operator
begin_operator
return k m
0
1
0 11 11 13
1
end_operator
begin_operator
return k n
0
1
0 11 11 14
1
end_operator
begin_operator
return k o
0
1
0 11 11 15
1
end_operator
begin_operator
return k p
0
1
0 11 11 16
1
end_operator
begin_operator
return k q
0
1
0 11 11 17
1
end_operator
begin_operator
return k r
0
1
0 11 11 18
1
end_operator
begin_operator
return k s
0
1
0 11 11 19
1
end_operator
begin_operator
return k t
0
1
0 11 11 20
1
end_operator
begin_operator
return k u
0
1
0 11 11 21
1
end_operator
begin_operator
return k v
0
1
0 11 11 22
1
end_operator
begin_operator
return k w
0
1
0 11 11 23
1
end_operator
begin_operator
return k x
0
1
0 11 11 24
1
end_operator
begin_operator
return k y
0
1
0 11 11 25
1
end_operator
begin_operator
return k z
0
1
0 11 11 26
1
end_operator
begin_operator
return l a
0
1
0 11 12 0
1
end_operator
begin_operator
return l b
0
1
0 11 12 1
1
end_operator
begin_operator
return l c
0
1
0 11 12 2
1
end_operator
begin_operator
return l d
0
1
0 11 12 3
1
end_operator
begin_operator
return l e
0
1
0 11 12 4
1
end_operator
begin_operator
return l f
0
1
0 11 12 5
1
end_operator
begin_operator
return l g
0
1
0 11 12 6
1
end_operator
begin_operator
return l h
0
1
0 11 12 7
1
end_operator
begin_operator
return l i
0
1
0 11 12 8
1
end_operator
begin_operator
return l init
0
1
0 11 12 9
1
end_operator
begin_operator
return l j
0
1
0 11 12 10
1
end_operator
begin_operator
return l k
0
1
0 11 12 11
1
end_operator
begin_operator
return l m
0
1
0 11 12 13
1
end_operator
begin_operator
return l n
0
1
0 11 12 14
1
end_operator
begin_operator
return l o
0
1
0 11 12 15
1
end_operator
begin_operator
return l p
0
1
0 11 12 16
1
end_operator
begin_operator
return l q
0
1
0 11 12 17
1
end_operator
begin_operator
return l r
0
1
0 11 12 18
1
end_operator
begin_operator
return l s
0
1
0 11 12 19
1
end_operator
begin_operator
return l t
0
1
0 11 12 20
1
end_operator
begin_operator
return l u
0
1
0 11 12 21
1
end_operator
begin_operator
return l v
0
1
0 11 12 22
1
end_operator
begin_operator
return l w
0
1
0 11 12 23
1
end_operator
begin_operator
return l x
0
1
0 11 12 24
1
end_operator
begin_operator
return l y
0
1
0 11 12 25
1
end_operator
begin_operator
return l z
0
1
0 11 12 26
1
end_operator
begin_operator
return m a
0
1
0 11 13 0
1
end_operator
begin_operator
return m b
0
1
0 11 13 1
1
end_operator
begin_operator
return m c
0
1
0 11 13 2
1
end_operator
begin_operator
return m d
0
1
0 11 13 3
1
end_operator
begin_operator
return m e
0
1
0 11 13 4
1
end_operator
begin_operator
return m f
0
1
0 11 13 5
1
end_operator
begin_operator
return m g
0
1
0 11 13 6
1
end_operator
begin_operator
return m h
0
1
0 11 13 7
1
end_operator
begin_operator
return m i
0
1
0 11 13 8
1
end_operator
begin_operator
return m init
0
1
0 11 13 9
1
end_operator
begin_operator
return m j
0
1
0 11 13 10
1
end_operator
begin_operator
return m k
0
1
0 11 13 11
1
end_operator
begin_operator
return m l
0
1
0 11 13 12
1
end_operator
begin_operator
return m n
0
1
0 11 13 14
1
end_operator
begin_operator
return m o
0
1
0 11 13 15
1
end_operator
begin_operator
return m p
0
1
0 11 13 16
1
end_operator
begin_operator
return m q
0
1
0 11 13 17
1
end_operator
begin_operator
return m r
0
1
0 11 13 18
1
end_operator
begin_operator
return m s
0
1
0 11 13 19
1
end_operator
begin_operator
return m t
0
1
0 11 13 20
1
end_operator
begin_operator
return m u
0
1
0 11 13 21
1
end_operator
begin_operator
return m v
0
1
0 11 13 22
1
end_operator
begin_operator
return m w
0
1
0 11 13 23
1
end_operator
begin_operator
return m x
0
1
0 11 13 24
1
end_operator
begin_operator
return m y
0
1
0 11 13 25
1
end_operator
begin_operator
return m z
0
1
0 11 13 26
1
end_operator
begin_operator
return n a
0
1
0 11 14 0
1
end_operator
begin_operator
return n b
0
1
0 11 14 1
1
end_operator
begin_operator
return n c
0
1
0 11 14 2
1
end_operator
begin_operator
return n d
0
1
0 11 14 3
1
end_operator
begin_operator
return n e
0
1
0 11 14 4
1
end_operator
begin_operator
return n f
0
1
0 11 14 5
1
end_operator
begin_operator
return n g
0
1
0 11 14 6
1
end_operator
begin_operator
return n h
0
1
0 11 14 7
1
end_operator
begin_operator
return n i
0
1
0 11 14 8
1
end_operator
begin_operator
return n init
0
1
0 11 14 9
1
end_operator
begin_operator
return n j
0
1
0 11 14 10
1
end_operator
begin_operator
return n k
0
1
0 11 14 11
1
end_operator
begin_operator
return n l
0
1
0 11 14 12
1
end_operator
begin_operator
return n m
0
1
0 11 14 13
1
end_operator
begin_operator
return n o
0
1
0 11 14 15
1
end_operator
begin_operator
return n p
0
1
0 11 14 16
1
end_operator
begin_operator
return n q
0
1
0 11 14 17
1
end_operator
begin_operator
return n r
0
1
0 11 14 18
1
end_operator
begin_operator
return n s
0
1
0 11 14 19
1
end_operator
begin_operator
return n t
0
1
0 11 14 20
1
end_operator
begin_operator
return n u
0
1
0 11 14 21
1
end_operator
begin_operator
return n v
0
1
0 11 14 22
1
end_operator
begin_operator
return n w
0
1
0 11 14 23
1
end_operator
begin_operator
return n x
0
1
0 11 14 24
1
end_operator
begin_operator
return n y
0
1
0 11 14 25
1
end_operator
begin_operator
return n z
0
1
0 11 14 26
1
end_operator
begin_operator
return o a
0
1
0 11 15 0
1
end_operator
begin_operator
return o b
0
1
0 11 15 1
1
end_operator
begin_operator
return o c
0
1
0 11 15 2
1
end_operator
begin_operator
return o d
0
1
0 11 15 3
1
end_operator
begin_operator
return o e
0
1
0 11 15 4
1
end_operator
begin_operator
return o f
0
1
0 11 15 5
1
end_operator
begin_operator
return o g
0
1
0 11 15 6
1
end_operator
begin_operator
return o h
0
1
0 11 15 7
1
end_operator
begin_operator
return o i
0
1
0 11 15 8
1
end_operator
begin_operator
return o init
0
1
0 11 15 9
1
end_operator
begin_operator
return o j
0
1
0 11 15 10
1
end_operator
begin_operator
return o k
0
1
0 11 15 11
1
end_operator
begin_operator
return o l
0
1
0 11 15 12
1
end_operator
begin_operator
return o m
0
1
0 11 15 13
1
end_operator
begin_operator
return o n
0
1
0 11 15 14
1
end_operator
begin_operator
return o p
0
1
0 11 15 16
1
end_operator
begin_operator
return o q
0
1
0 11 15 17
1
end_operator
begin_operator
return o r
0
1
0 11 15 18
1
end_operator
begin_operator
return o s
0
1
0 11 15 19
1
end_operator
begin_operator
return o t
0
1
0 11 15 20
1
end_operator
begin_operator
return o u
0
1
0 11 15 21
1
end_operator
begin_operator
return o v
0
1
0 11 15 22
1
end_operator
begin_operator
return o w
0
1
0 11 15 23
1
end_operator
begin_operator
return o x
0
1
0 11 15 24
1
end_operator
begin_operator
return o y
0
1
0 11 15 25
1
end_operator
begin_operator
return o z
0
1
0 11 15 26
1
end_operator
begin_operator
return p a
0
1
0 11 16 0
1
end_operator
begin_operator
return p b
0
1
0 11 16 1
1
end_operator
begin_operator
return p c
0
1
0 11 16 2
1
end_operator
begin_operator
return p d
0
1
0 11 16 3
1
end_operator
begin_operator
return p e
0
1
0 11 16 4
1
end_operator
begin_operator
return p f
0
1
0 11 16 5
1
end_operator
begin_operator
return p g
0
1
0 11 16 6
1
end_operator
begin_operator
return p h
0
1
0 11 16 7
1
end_operator
begin_operator
return p i
0
1
0 11 16 8
1
end_operator
begin_operator
return p init
0
1
0 11 16 9
1
end_operator
begin_operator
return p j
0
1
0 11 16 10
1
end_operator
begin_operator
return p k
0
1
0 11 16 11
1
end_operator
begin_operator
return p l
0
1
0 11 16 12
1
end_operator
begin_operator
return p m
0
1
0 11 16 13
1
end_operator
begin_operator
return p n
0
1
0 11 16 14
1
end_operator
begin_operator
return p o
0
1
0 11 16 15
1
end_operator
begin_operator
return p q
0
1
0 11 16 17
1
end_operator
begin_operator
return p r
0
1
0 11 16 18
1
end_operator
begin_operator
return p s
0
1
0 11 16 19
1
end_operator
begin_operator
return p t
0
1
0 11 16 20
1
end_operator
begin_operator
return p u
0
1
0 11 16 21
1
end_operator
begin_operator
return p v
0
1
0 11 16 22
1
end_operator
begin_operator
return p w
0
1
0 11 16 23
1
end_operator
begin_operator
return p x
0
1
0 11 16 24
1
end_operator
begin_operator
return p y
0
1
0 11 16 25
1
end_operator
begin_operator
return p z
0
1
0 11 16 26
1
end_operator
begin_operator
return q a
0
1
0 11 17 0
1
end_operator
begin_operator
return q b
0
1
0 11 17 1
1
end_operator
begin_operator
return q c
0
1
0 11 17 2
1
end_operator
begin_operator
return q d
0
1
0 11 17 3
1
end_operator
begin_operator
return q e
0
1
0 11 17 4
1
end_operator
begin_operator
return q f
0
1
0 11 17 5
1
end_operator
begin_operator
return q g
0
1
0 11 17 6
1
end_operator
begin_operator
return q h
0
1
0 11 17 7
1
end_operator
begin_operator
return q i
0
1
0 11 17 8
1
end_operator
begin_operator
return q init
0
1
0 11 17 9
1
end_operator
begin_operator
return q j
0
1
0 11 17 10
1
end_operator
begin_operator
return q k
0
1
0 11 17 11
1
end_operator
begin_operator
return q l
0
1
0 11 17 12
1
end_operator
begin_operator
return q m
0
1
0 11 17 13
1
end_operator
begin_operator
return q n
0
1
0 11 17 14
1
end_operator
begin_operator
return q o
0
1
0 11 17 15
1
end_operator
begin_operator
return q p
0
1
0 11 17 16
1
end_operator
begin_operator
return q r
0
1
0 11 17 18
1
end_operator
begin_operator
return q s
0
1
0 11 17 19
1
end_operator
begin_operator
return q t
0
1
0 11 17 20
1
end_operator
begin_operator
return q u
0
1
0 11 17 21
1
end_operator
begin_operator
return q v
0
1
0 11 17 22
1
end_operator
begin_operator
return q w
0
1
0 11 17 23
1
end_operator
begin_operator
return q x
0
1
0 11 17 24
1
end_operator
begin_operator
return q y
0
1
0 11 17 25
1
end_operator
begin_operator
return q z
0
1
0 11 17 26
1
end_operator
begin_operator
return r a
0
1
0 11 18 0
1
end_operator
begin_operator
return r b
0
1
0 11 18 1
1
end_operator
begin_operator
return r c
0
1
0 11 18 2
1
end_operator
begin_operator
return r d
0
1
0 11 18 3
1
end_operator
begin_operator
return r e
0
1
0 11 18 4
1
end_operator
begin_operator
return r f
0
1
0 11 18 5
1
end_operator
begin_operator
return r g
0
1
0 11 18 6
1
end_operator
begin_operator
return r h
0
1
0 11 18 7
1
end_operator
begin_operator
return r i
0
1
0 11 18 8
1
end_operator
begin_operator
return r init
0
1
0 11 18 9
1
end_operator
begin_operator
return r j
0
1
0 11 18 10
1
end_operator
begin_operator
return r k
0
1
0 11 18 11
1
end_operator
begin_operator
return r l
0
1
0 11 18 12
1
end_operator
begin_operator
return r m
0
1
0 11 18 13
1
end_operator
begin_operator
return r n
0
1
0 11 18 14
1
end_operator
begin_operator
return r o
0
1
0 11 18 15
1
end_operator
begin_operator
return r p
0
1
0 11 18 16
1
end_operator
begin_operator
return r q
0
1
0 11 18 17
1
end_operator
begin_operator
return r s
0
1
0 11 18 19
1
end_operator
begin_operator
return r t
0
1
0 11 18 20
1
end_operator
begin_operator
return r u
0
1
0 11 18 21
1
end_operator
begin_operator
return r v
0
1
0 11 18 22
1
end_operator
begin_operator
return r w
0
1
0 11 18 23
1
end_operator
begin_operator
return r x
0
1
0 11 18 24
1
end_operator
begin_operator
return r y
0
1
0 11 18 25
1
end_operator
begin_operator
return r z
0
1
0 11 18 26
1
end_operator
begin_operator
return s a
0
1
0 11 19 0
1
end_operator
begin_operator
return s b
0
1
0 11 19 1
1
end_operator
begin_operator
return s c
0
1
0 11 19 2
1
end_operator
begin_operator
return s d
0
1
0 11 19 3
1
end_operator
begin_operator
return s e
0
1
0 11 19 4
1
end_operator
begin_operator
return s f
0
1
0 11 19 5
1
end_operator
begin_operator
return s g
0
1
0 11 19 6
1
end_operator
begin_operator
return s h
0
1
0 11 19 7
1
end_operator
begin_operator
return s i
0
1
0 11 19 8
1
end_operator
begin_operator
return s init
0
1
0 11 19 9
1
end_operator
begin_operator
return s j
0
1
0 11 19 10
1
end_operator
begin_operator
return s k
0
1
0 11 19 11
1
end_operator
begin_operator
return s l
0
1
0 11 19 12
1
end_operator
begin_operator
return s m
0
1
0 11 19 13
1
end_operator
begin_operator
return s n
0
1
0 11 19 14
1
end_operator
begin_operator
return s o
0
1
0 11 19 15
1
end_operator
begin_operator
return s p
0
1
0 11 19 16
1
end_operator
begin_operator
return s q
0
1
0 11 19 17
1
end_operator
begin_operator
return s r
0
1
0 11 19 18
1
end_operator
begin_operator
return s t
0
1
0 11 19 20
1
end_operator
begin_operator
return s u
0
1
0 11 19 21
1
end_operator
begin_operator
return s v
0
1
0 11 19 22
1
end_operator
begin_operator
return s w
0
1
0 11 19 23
1
end_operator
begin_operator
return s x
0
1
0 11 19 24
1
end_operator
begin_operator
return s y
0
1
0 11 19 25
1
end_operator
begin_operator
return s z
0
1
0 11 19 26
1
end_operator
begin_operator
return t a
0
1
0 11 20 0
1
end_operator
begin_operator
return t b
0
1
0 11 20 1
1
end_operator
begin_operator
return t c
0
1
0 11 20 2
1
end_operator
begin_operator
return t d
0
1
0 11 20 3
1
end_operator
begin_operator
return t e
0
1
0 11 20 4
1
end_operator
begin_operator
return t f
0
1
0 11 20 5
1
end_operator
begin_operator
return t g
0
1
0 11 20 6
1
end_operator
begin_operator
return t h
0
1
0 11 20 7
1
end_operator
begin_operator
return t i
0
1
0 11 20 8
1
end_operator
begin_operator
return t init
0
1
0 11 20 9
1
end_operator
begin_operator
return t j
0
1
0 11 20 10
1
end_operator
begin_operator
return t k
0
1
0 11 20 11
1
end_operator
begin_operator
return t l
0
1
0 11 20 12
1
end_operator
begin_operator
return t m
0
1
0 11 20 13
1
end_operator
begin_operator
return t n
0
1
0 11 20 14
1
end_operator
begin_operator
return t o
0
1
0 11 20 15
1
end_operator
begin_operator
return t p
0
1
0 11 20 16
1
end_operator
begin_operator
return t q
0
1
0 11 20 17
1
end_operator
begin_operator
return t r
0
1
0 11 20 18
1
end_operator
begin_operator
return t s
0
1
0 11 20 19
1
end_operator
begin_operator
return t u
0
1
0 11 20 21
1
end_operator
begin_operator
return t v
0
1
0 11 20 22
1
end_operator
begin_operator
return t w
0
1
0 11 20 23
1
end_operator
begin_operator
return t x
0
1
0 11 20 24
1
end_operator
begin_operator
return t y
0
1
0 11 20 25
1
end_operator
begin_operator
return t z
0
1
0 11 20 26
1
end_operator
begin_operator
return u a
0
1
0 11 21 0
1
end_operator
begin_operator
return u b
0
1
0 11 21 1
1
end_operator
begin_operator
return u c
0
1
0 11 21 2
1
end_operator
begin_operator
return u d
0
1
0 11 21 3
1
end_operator
begin_operator
return u e
0
1
0 11 21 4
1
end_operator
begin_operator
return u f
0
1
0 11 21 5
1
end_operator
begin_operator
return u g
0
1
0 11 21 6
1
end_operator
begin_operator
return u h
0
1
0 11 21 7
1
end_operator
begin_operator
return u i
0
1
0 11 21 8
1
end_operator
begin_operator
return u init
0
1
0 11 21 9
1
end_operator
begin_operator
return u j
0
1
0 11 21 10
1
end_operator
begin_operator
return u k
0
1
0 11 21 11
1
end_operator
begin_operator
return u l
0
1
0 11 21 12
1
end_operator
begin_operator
return u m
0
1
0 11 21 13
1
end_operator
begin_operator
return u n
0
1
0 11 21 14
1
end_operator
begin_operator
return u o
0
1
0 11 21 15
1
end_operator
begin_operator
return u p
0
1
0 11 21 16
1
end_operator
begin_operator
return u q
0
1
0 11 21 17
1
end_operator
begin_operator
return u r
0
1
0 11 21 18
1
end_operator
begin_operator
return u s
0
1
0 11 21 19
1
end_operator
begin_operator
return u t
0
1
0 11 21 20
1
end_operator
begin_operator
return u v
0
1
0 11 21 22
1
end_operator
begin_operator
return u w
0
1
0 11 21 23
1
end_operator
begin_operator
return u x
0
1
0 11 21 24
1
end_operator
begin_operator
return u y
0
1
0 11 21 25
1
end_operator
begin_operator
return u z
0
1
0 11 21 26
1
end_operator
begin_operator
return v a
0
1
0 11 22 0
1
end_operator
begin_operator
return v b
0
1
0 11 22 1
1
end_operator
begin_operator
return v c
0
1
0 11 22 2
1
end_operator
begin_operator
return v d
0
1
0 11 22 3
1
end_operator
begin_operator
return v e
0
1
0 11 22 4
1
end_operator
begin_operator
return v f
0
1
0 11 22 5
1
end_operator
begin_operator
return v g
0
1
0 11 22 6
1
end_operator
begin_operator
return v h
0
1
0 11 22 7
1
end_operator
begin_operator
return v i
0
1
0 11 22 8
1
end_operator
begin_operator
return v init
0
1
0 11 22 9
1
end_operator
begin_operator
return v j
0
1
0 11 22 10
1
end_operator
begin_operator
return v k
0
1
0 11 22 11
1
end_operator
begin_operator
return v l
0
1
0 11 22 12
1
end_operator
begin_operator
return v m
0
1
0 11 22 13
1
end_operator
begin_operator
return v n
0
1
0 11 22 14
1
end_operator
begin_operator
return v o
0
1
0 11 22 15
1
end_operator
begin_operator
return v p
0
1
0 11 22 16
1
end_operator
begin_operator
return v q
0
1
0 11 22 17
1
end_operator
begin_operator
return v r
0
1
0 11 22 18
1
end_operator
begin_operator
return v s
0
1
0 11 22 19
1
end_operator
begin_operator
return v t
0
1
0 11 22 20
1
end_operator
begin_operator
return v u
0
1
0 11 22 21
1
end_operator
begin_operator
return v w
0
1
0 11 22 23
1
end_operator
begin_operator
return v x
0
1
0 11 22 24
1
end_operator
begin_operator
return v y
0
1
0 11 22 25
1
end_operator
begin_operator
return v z
0
1
0 11 22 26
1
end_operator
begin_operator
return w a
0
1
0 11 23 0
1
end_operator
begin_operator
return w b
0
1
0 11 23 1
1
end_operator
begin_operator
return w c
0
1
0 11 23 2
1
end_operator
begin_operator
return w d
0
1
0 11 23 3
1
end_operator
begin_operator
return w e
0
1
0 11 23 4
1
end_operator
begin_operator
return w f
0
1
0 11 23 5
1
end_operator
begin_operator
return w g
0
1
0 11 23 6
1
end_operator
begin_operator
return w h
0
1
0 11 23 7
1
end_operator
begin_operator
return w i
0
1
0 11 23 8
1
end_operator
begin_operator
return w init
0
1
0 11 23 9
1
end_operator
begin_operator
return w j
0
1
0 11 23 10
1
end_operator
begin_operator
return w k
0
1
0 11 23 11
1
end_operator
begin_operator
return w l
0
1
0 11 23 12
1
end_operator
begin_operator
return w m
0
1
0 11 23 13
1
end_operator
begin_operator
return w n
0
1
0 11 23 14
1
end_operator
begin_operator
return w o
0
1
0 11 23 15
1
end_operator
begin_operator
return w p
0
1
0 11 23 16
1
end_operator
begin_operator
return w q
0
1
0 11 23 17
1
end_operator
begin_operator
return w r
0
1
0 11 23 18
1
end_operator
begin_operator
return w s
0
1
0 11 23 19
1
end_operator
begin_operator
return w t
0
1
0 11 23 20
1
end_operator
begin_operator
return w u
0
1
0 11 23 21
1
end_operator
begin_operator
return w v
0
1
0 11 23 22
1
end_operator
begin_operator
return w x
0
1
0 11 23 24
1
end_operator
begin_operator
return w y
0
1
0 11 23 25
1
end_operator
begin_operator
return w z
0
1
0 11 23 26
1
end_operator
begin_operator
return x a
0
1
0 11 24 0
1
end_operator
begin_operator
return x b
0
1
0 11 24 1
1
end_operator
begin_operator
return x c
0
1
0 11 24 2
1
end_operator
begin_operator
return x d
0
1
0 11 24 3
1
end_operator
begin_operator
return x e
0
1
0 11 24 4
1
end_operator
begin_operator
return x f
0
1
0 11 24 5
1
end_operator
begin_operator
return x g
0
1
0 11 24 6
1
end_operator
begin_operator
return x h
0
1
0 11 24 7
1
end_operator
begin_operator
return x i
0
1
0 11 24 8
1
end_operator
begin_operator
return x init
0
1
0 11 24 9
1
end_operator
begin_operator
return x j
0
1
0 11 24 10
1
end_operator
begin_operator
return x k
0
1
0 11 24 11
1
end_operator
begin_operator
return x l
0
1
0 11 24 12
1
end_operator
begin_operator
return x m
0
1
0 11 24 13
1
end_operator
begin_operator
return x n
0
1
0 11 24 14
1
end_operator
begin_operator
return x o
0
1
0 11 24 15
1
end_operator
begin_operator
return x p
0
1
0 11 24 16
1
end_operator
begin_operator
return x q
0
1
0 11 24 17
1
end_operator
begin_operator
return x r
0
1
0 11 24 18
1
end_operator
begin_operator
return x s
0
1
0 11 24 19
1
end_operator
begin_operator
return x t
0
1
0 11 24 20
1
end_operator
begin_operator
return x u
0
1
0 11 24 21
1
end_operator
begin_operator
return x v
0
1
0 11 24 22
1
end_operator
begin_operator
return x w
0
1
0 11 24 23
1
end_operator
begin_operator
return x y
0
1
0 11 24 25
1
end_operator
begin_operator
return x z
0
1
0 11 24 26
1
end_operator
begin_operator
return y a
0
1
0 11 25 0
1
end_operator
begin_operator
return y b
0
1
0 11 25 1
1
end_operator
begin_operator
return y c
0
1
0 11 25 2
1
end_operator
begin_operator
return y d
0
1
0 11 25 3
1
end_operator
begin_operator
return y e
0
1
0 11 25 4
1
end_operator
begin_operator
return y f
0
1
0 11 25 5
1
end_operator
begin_operator
return y g
0
1
0 11 25 6
1
end_operator
begin_operator
return y h
0
1
0 11 25 7
1
end_operator
begin_operator
return y i
0
1
0 11 25 8
1
end_operator
begin_operator
return y init
0
1
0 11 25 9
1
end_operator
begin_operator
return y j
0
1
0 11 25 10
1
end_operator
begin_operator
return y k
0
1
0 11 25 11
1
end_operator
begin_operator
return y l
0
1
0 11 25 12
1
end_operator
begin_operator
return y m
0
1
0 11 25 13
1
end_operator
begin_operator
return y n
0
1
0 11 25 14
1
end_operator
begin_operator
return y o
0
1
0 11 25 15
1
end_operator
begin_operator
return y p
0
1
0 11 25 16
1
end_operator
begin_operator
return y q
0
1
0 11 25 17
1
end_operator
begin_operator
return y r
0
1
0 11 25 18
1
end_operator
begin_operator
return y s
0
1
0 11 25 19
1
end_operator
begin_operator
return y t
0
1
0 11 25 20
1
end_operator
begin_operator
return y u
0
1
0 11 25 21
1
end_operator
begin_operator
return y v
0
1
0 11 25 22
1
end_operator
begin_operator
return y w
0
1
0 11 25 23
1
end_operator
begin_operator
return y x
0
1
0 11 25 24
1
end_operator
begin_operator
return y z
0
1
0 11 25 26
1
end_operator
begin_operator
return z a
0
1
0 11 26 0
1
end_operator
begin_operator
return z b
0
1
0 11 26 1
1
end_operator
begin_operator
return z c
0
1
0 11 26 2
1
end_operator
begin_operator
return z d
0
1
0 11 26 3
1
end_operator
begin_operator
return z e
0
1
0 11 26 4
1
end_operator
begin_operator
return z f
0
1
0 11 26 5
1
end_operator
begin_operator
return z g
0
1
0 11 26 6
1
end_operator
begin_operator
return z h
0
1
0 11 26 7
1
end_operator
begin_operator
return z i
0
1
0 11 26 8
1
end_operator
begin_operator
return z init
0
1
0 11 26 9
1
end_operator
begin_operator
return z j
0
1
0 11 26 10
1
end_operator
begin_operator
return z k
0
1
0 11 26 11
1
end_operator
begin_operator
return z l
0
1
0 11 26 12
1
end_operator
begin_operator
return z m
0
1
0 11 26 13
1
end_operator
begin_operator
return z n
0
1
0 11 26 14
1
end_operator
begin_operator
return z o
0
1
0 11 26 15
1
end_operator
begin_operator
return z p
0
1
0 11 26 16
1
end_operator
begin_operator
return z q
0
1
0 11 26 17
1
end_operator
begin_operator
return z r
0
1
0 11 26 18
1
end_operator
begin_operator
return z s
0
1
0 11 26 19
1
end_operator
begin_operator
return z t
0
1
0 11 26 20
1
end_operator
begin_operator
return z u
0
1
0 11 26 21
1
end_operator
begin_operator
return z v
0
1
0 11 26 22
1
end_operator
begin_operator
return z w
0
1
0 11 26 23
1
end_operator
begin_operator
return z x
0
1
0 11 26 24
1
end_operator
begin_operator
return z y
0
1
0 11 26 25
1
end_operator
0
