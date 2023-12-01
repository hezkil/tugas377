import std.stdio;
import std.conv;
import std.array;

void main()
{
    string path = "../input";
    string[] lines = File(path).byLineCopy().array;
    ulong T = to!int(lines[0]);
    ulong[] outputList;

    foreach (string line; lines[1..$])
    {
        ulong sumOfDigit = 0;

        foreach (char digit; line)
        {
            sumOfDigit += to!ulong(digit.to!string);
        }
        ulong eachData = (10 - (sumOfDigit % 10)) % 10;
        ulong output = to!ulong(line ~ to!string(eachData));
        outputList ~= output;
    }
    foreach (output; outputList)
    {
        writef("%s ", output);
    }
    writeln();
}
