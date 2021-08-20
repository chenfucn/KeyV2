// the point of this file is to be a sort of DSL for constructing keycaps.
// when you create a method chain you are just changing the parameters
// key.scad uses, it doesn't generate anything itself until the end. This
// lets it remain easy to use key.scad like before (except without key profiles)
// without having to rely on this file. Unfortunately that means setting tons of
// special variables, but that's a limitation of SCAD we have to work around

include <./includes.scad>

$font="Arial Rounded MT Bold";
$skin_extrude_shape = true;
$inset_legend_depth = 0.6;
$stem_support_type = "disable";

/*
// left finger plate
translate_u(-1.5,2) dsa_row(3) 1_5u() legend("CAP", size=5) key();
translate_u(0,2) dsa_row(3) legend("1", position=[-1,0], size=5) legend("!", position=[1,-1], size=4) key();
translate_u(1,2) dsa_row(3) legend("2", position=[-1,0], size=5) legend("@", position=[1,-1], size=4) key();
translate_u(2,2) dsa_row(3) legend("3", position=[-1,0], size=5) legend("#", position=[1,-1], size=4) key();
translate_u(3,2) dsa_row(3) legend("4", position=[-1,0], size=5) legend("$", position=[1,-1], size=4) key();
translate_u(4,2) dsa_row(3) legend("5", position=[-1,0], size=5) legend("%", position=[1,-1], size=4) key();

translate_u(-1.5,1) dsa_row(3) 1_5u() legend("ESC/~", size=4)  key();
translate_u(0,1) dsa_row(3) legend("Q", position=[-1,0], size=5) legend("'", position=[1,-1], size = 4)  legend("home", position=[1,1], size=2)  key();
translate_u(1,1) dsa_row(3) legend("W", position=[-1,0], size=5) legend("\"", position=[1,-1], size = 4)  legend("\u00e9", position=[1,1], size=3, font_name="Wingdings")  key();
translate_u(2,1) dsa_row(3) legend("E", position=[-1,0], size=5) legend("\\", position=[1,-1], size = 4)  legend("end", position=[1,1], size=2)  key();
translate_u(3,1) dsa_row(3) legend("R", position=[-1,0], size=5) legend("|", position=[1,-1], size = 4)  legend("\u00CE", position=[1,1], size=3, font_name="Wingdings 3")  key();
translate_u(4,1) dsa_row(3) legend("T", position=[-1,0], size=5) legend("[", position=[1,-1], size = 4) key();

translate_u(-1.5,0) dsa_row(3) 1_5u() legend("\u002a", size=7, font_name="Wingdings 3")  key();
dsa_row(3) legend("A", position=[-1,0], size = 5) legend("%", position=[1,-1], size = 4)  legend("\u00e7", position=[1,1], size=3, font_name="Wingdings")  key();
translate_u(1,0) dsa_row(3) legend("S", position=[-1,0], size = 5) legend("^", position=[1,-1], size = 4)  legend("\u00ea", position=[1,1], size=3, font_name="Wingdings")  key();
translate_u(2,0) dsa_row(3) legend("D", position=[-1,0], size = 5) legend("&", position=[1,-1], size = 4)  legend("\u00e8", position=[1,1], size=3, font_name="Wingdings")  key();
translate_u(3,0) dsa_row(3) legend("F", position=[-1,0], size = 5) legend("*", position=[1,-1], size = 4)  legend("\u00D0", position=[1,1], size=3, font_name="Wingdings 3")  key();
translate_u(4,0) dsa_row(3) legend("G", position=[-1,0], size = 5) legend("{", position=[1,-1], size = 4)  key();

translate_u(-1.5,-1) dsa_row(3) 1_5u() legend("SHIFT", size=4)  key();
//translate_u(0,-1) dsa_row(3) legend("Z", position=[-1,0], size =5) legend("!", position=[1,-1], size = 4)  legend("\u004f", position=[1,1], size=4, font_name="Wingdings 3")  key();
translate_u(1,-1) dsa_row(3) legend("X", position=[-1,0], size =5) legend("@", position=[1,-1], size = 4)  legend("\u0022", position=[1,1], size=4, font_name="Wingdings")  key();
//translate_u(2,-1) dsa_row(3) legend("C", position=[-1,0], size =5) legend("#", position=[1,-1], size = 4)  legend("\u002E", position=[1,1], size=4, font_name="Wingdings 2")  key();
//translate_u(3,-1) dsa_row(3) legend("V", position=[-1,0], size =5) legend("$", position=[1,-1], size = 4)  legend("\u0032", position=[1,1], size=4, font_name="Wingdings 2")  key();
translate_u(4,-1) dsa_row(3) legend("B", position=[-1,0], size =5) legend("(", position=[1,-1], size = 4)  key();

translate_u(0,-2) dsa_row(3) legend("home", size=4) key();
translate_u(1,-2) dsa_row(3) legend("[", position=[-1,0], size=5) legend("{", position=[1,-1], size=4)  key();
translate_u(2,-2) dsa_row(3) legend("]", position=[-1,0], size=5) legend("}", position=[1,-1], size=4)  key();
translate_u(3,-2) dsa_row(3) legend("\\", position=[-1,0], size=5) legend("|", position=[1,-1], size=4) key();
translate_u(4,-2) dsa_row(3) legend("end", size=4) key();

translate_u(0,-3) dsa_row(3) legend("\u00F9", position=[-1,0], size=5, font_name="Wingdings") legend("\u005d", position=[1,-1], size=4, font_name="Wingdings") key();
translate_u(1,-3) dsa_row(3) legend("\u00C3", position=[-1,0], size=5, font_name="Wingdings") legend("\u0095", position=[1,-1], size=4, font_name="Wingdings") key();
translate_u(2,-3) dsa_row(3) legend("\u00D5", size=6, font_name="Wingdings") key();
translate_u(3,-3) dsa_row(3) legend("\u00D6", size=6, font_name="Wingdings") key();
translate_u(4,-3) dsa_row(3) legend("\u0095", size=6, font_name="Wingdings") key();
translate_u(-1,-3) dsa_row(3) legend("\u005d", size=6, font_name="Wingdings") key();
*/

translate_u(0,2) dsa_row(3) legend("6", position=[-1,0], size=5) legend("^", position=[1,-1], size=4) key();
translate_u(1,2) dsa_row(3) legend("7", position=[-1,0], size=5) legend("&", position=[1,-1], size=4) key();
translate_u(2,2) dsa_row(3) legend("8", position=[-1,0], size=5) legend("*", position=[1,-1], size=4) key();
translate_u(3,2) dsa_row(3) legend("9", position=[-1,0], size=5) legend("(", position=[1,-1], size=4) key();
translate_u(4,2) dsa_row(3) legend("0", position=[-1,0], size=5) legend(")", position=[1,-1], size=4) key();
translate_u(5.3,2) dsa_row(3) 1_5u() legend("PrtScn", size=4) key();

translate_u(0,1) dsa_row(3) legend("Y", position=[-1,0], size=5) legend("]", position=[1,-1], size=4) key();
translate_u(1,1) dsa_row(3) legend("U", position=[-1,0], size=5) legend("7", position=[1,-1], size=4) key();
translate_u(2,1) dsa_row(3) legend("I", position=[-1,0], size=5) legend("8", position=[1,-1], size=4) key();
translate_u(3,1) dsa_row(3) legend("O", position=[-1,0], size=5) legend("9", position=[1,-1], size=4) key();
translate_u(4,1) dsa_row(3) legend("P", position=[-1,0], size=5) key();
translate_u(5.3,1) dsa_row(3) 1_5u() legend("\u00D5", size=6, font_name="Wingdings")  key();

dsa_row(3) legend("H", position=[-1,0], size=5) legend("}", position=[1,-1], size=4) key();
translate_u(1,0) dsa_row(3) legend("J", position=[-1,0], size=5) legend("4", position=[1,-1], size=4) key();
translate_u(2,0) dsa_row(3) legend("K", position=[-1,0], size=5) legend("5", position=[1,-1], size=4) key();
translate_u(3,0) dsa_row(3) legend("L", position=[-1,0], size=5) legend("6", position=[1,-1], size=4) key();
translate_u(4,0) dsa_row(3) legend(";:", position=[-1,0], size=5) key();
translate_u(5.3,0) dsa_row(3) 1_5u() legend("\u00C3", size=6, font_name="Wingdings")  key();

translate_u(0,-1) dsa_row(3) legend("N", position=[-1,0], size=5) legend(")", position=[1,-1], size=4) key();
translate_u(1,-1) dsa_row(3) legend("M", position=[-1,0], size=5) legend("1", position=[1,-1], size=4) key();
translate_u(2,-1) dsa_row(3) legend(",<", position=[-1,0], size =5) legend("2", position=[1,-1], size=4) key();
translate_u(3,-1) dsa_row(3) legend(".>", position=[-1,0], size =5) legend("3", position=[1,-1], size=4) key();
translate_u(4,-1) dsa_row(3) legend("/?", position=[-1,0], size =5) key();
translate_u(5.3,-1) dsa_row(3) 1_5u() legend("\u00c3", size=7, font_name="Wingdings 3")  key();

translate_u(0,-2) dsa_row(3) legend("\u0056", position=[-1,0], size=7, font_name="Wingdings 3") legend("\u00b1", position=[1,-1], size=5, font_name="Wingdings") key();
translate_u(1,-2) dsa_row(3) legend("-_", position=[-1,0], size=5) key();
translate_u(2,-2) dsa_row(3) legend("=+", position=[-1,0], size=5) legend("0", position=[1,-1], size=5)  key();
translate_u(3,-2) dsa_row(3) legend("' \"", position=[-1,0], size=5) key();
translate_u(4,-2) dsa_row(3) key(inset=true) {translate([-1,4.5,-2]) scale([0.16,0.16,1]) import("win10_logo.stl");};

