// ------------------------------------------------------------------
// Tokenizer Pattern in C++
//
// An algorithmn which splits a string (const char* ) into tokens. 
// No dynamic memory allocation is performed. 
// ------------------------------------------------------------------
#include <iostream>
#include <cctype>
#include <iterator>

// The actual Token struct.
struct Token
{
    const char *start;
    size_t length;
};

// An Interface to the Tokenizer. This is essentially an iterator.
class ITokenizer
{
public:
    // Returns the next available Token
    virtual Token NextToken() = 0;

    /// Returns true when a "Next" Token is available.
    virtual bool HasNextToken() const = 0;
};

// This Tokenizer detects white-spaces and newlines and ignores them.
// Everything in between is returned as a token.
class SimpleTokenizer : public ITokenizer
{
public:
    SimpleTokenizer(const char *input) : current(input) {}

    Token NextToken() override
    {
        if (!HasNextToken())
        {
            return {nullptr, 0};
        }

        const char *start = current;
        while (*current != '\0' && !std::isspace(*current))
        {
            current++;
        }

        Token token{start, static_cast<size_t>(current - start)};
        while (*current != '\0' && std::isspace(*current))
        {
            current++;
        }

        return token;
    }

    bool HasNextToken() const override
    {
        return *current != '\0';
    }

private:
    const char *current;
};

int main()
{
    const char *input = "Hello, this is a simple tokenizer that recognizes tokens, whitespaces, and newlines.";

    SimpleTokenizer tokenizer(input);
    while (tokenizer.HasNextToken())
    {
        auto token = tokenizer.NextToken();
        std::cout.write(token.start, token.length) << std::endl;
    }

    return 0;
}