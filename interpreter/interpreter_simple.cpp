// ------------------------------------------------------------------
// Interpreter in C++
//
// A simple expression interpreter. It can handle the most basic
// artihmetic expressions. Furthermore it correctly handles 
// operator precendence. Usually this is combined with a Tokenizer
// which I haven't done here for the sake of simplicity.
// 
// ------------------------------------------------------------------

#include <iostream>

enum TokenType
{
    kInteger,
    kPlus,
    kMinus,
    kMultiply,
    kDivide,
    kUndefined,
    kEof,
};

// The actual Token struct.
struct Token
{
    TokenType token_type;
    const char *start;
    size_t length;
};

// An Interface to the Tokenizer. This is essentially an iterator.
class ITokenizer
{
public:
    virtual ~ITokenizer(){};

    // Returns the next available Token
    virtual Token NextToken() = 0;

    /// Returns true when a "Next" Token is available.
    virtual bool HasNextToken() const = 0;
};

// A class providing tokens to the interpreter.
class TokenizerStub : public ITokenizer
{
public:
    TokenizerStub(Token input_tokens[], int no_tokens)
    {
        no_tokens_ = no_tokens;
        input_tokens_ = input_tokens;
    }

    // Returns the next available Token
    virtual Token NextToken()
    {
        if (idx_ >= no_tokens_)
        {
            return {kUndefined, "", 0};
        }
        auto res = input_tokens_[idx_];
        idx_++;
        return res;
    }

    /// Returns true when a "Next" Token is available.
    virtual bool HasNextToken() const
    {
        return idx_ < no_tokens_;
    }

private:
    int no_tokens_ = 0;
    int idx_ = 0;
    Token *input_tokens_ = nullptr;
};

class Interpreter
{
public:
    Interpreter(ITokenizer &tokenizer) : tokenizer_(tokenizer)
    {
        current_token_ = tokenizer_.NextToken();
    }

    // For the sake of simplicity just exit the program.
    void error()
    {
        std::cout << "Token sequence doesn't make sense." << std::endl;
        exit(-1);
    }

    // compare the current token type with the passed token type and if they match then "eat" the current token
    // and assign the next token to current_token_, otherwise call error.
    void eat(TokenType token_type)
    {
        if (!tokenizer_.HasNextToken())
        {
            current_token_ = {kEof, "\0", 1};
        }
        else if (current_token_.token_type == token_type)
        {
            current_token_ = tokenizer_.NextToken();
        }
        else
        {
            error();
        }
    }

    // factor : kInteger 
    int factor()
    {
        if (current_token_.token_type == kInteger)
        {
            // this is a little bit hacky .. cast away const to provide strol with the endptr.
            // I dont know a better solution without using methods which raise exceptions.
            char *end_ptr = const_cast<char *>(current_token_.start) + current_token_.length;
            int res = strtol(current_token_.start, &end_ptr, 10);

            eat(kInteger);
            return res;
        }
        else
        {
            error();
        }
        return 0; // remove compiler warning
    }

    // term   : factor ((kMul | kDiv) factor)*
    int term()
    {
        auto result = factor();

        while ((current_token_.token_type == kMultiply) || (current_token_.token_type == kDivide))
        {

            if (current_token_.token_type == kMultiply)
            {
                eat(kMultiply);
                result = result * term();
            }
            else if (current_token_.token_type == kDivide)
            {
                eat(kDivide);
                result = result * term();
            }
        }

        return result;
    }

    // Arithmetic expression parser / interpreter.
    // expr   : term ((kPlus | kMinus) term)*
    // term   : factor ((kMul | kDiv) factor)*
    // factor : kInteger 
    int expr()
    {
        
        auto result = term();
        while ((current_token_.token_type == kPlus) || (current_token_.token_type == kMinus))
        {

            if (current_token_.token_type == kPlus)
            {
                eat(kPlus);
                result = result + term();
            }
            else if (current_token_.token_type == kMinus)
            {
                eat(kMinus);
                result = result - term();
            }
        }

        return result;
    }

private:
    ITokenizer &tokenizer_;
    Token current_token_;
};

// Small helper function to print token stream
void PrintTokens(Token input_tokens[], int no_tokens)
{
    for (int i = 0; i < no_tokens; i++)
    {
        auto token = input_tokens[i];
        std::cout.write(token.start, token.length);
    }
}

// Example 1: 4 + 16 = 20
void Example1()
{
    Token interp_in[] = {
        {kInteger, "4", 1},
        {kPlus, "+", 1},
        {kInteger, "16", 2},
    };
    PrintTokens(interp_in, sizeof(interp_in) / sizeof(Token));
    TokenizerStub tstub(interp_in, sizeof(interp_in) / sizeof(Token));
    Interpreter interpreter(tstub);
    auto res = interpreter.expr();
    std::cout << " = " << res << std::endl;
}

// Example 2: 4 * 3 = 12
void Example2()
{
    Token interp_in[] = {
        {kInteger, "4", 1},
        {kMultiply, "*", 1},
        {kInteger, "3", 1},
    };
    PrintTokens(interp_in, sizeof(interp_in) / sizeof(Token));
    TokenizerStub tstub(interp_in, sizeof(interp_in) / sizeof(Token));
    Interpreter interpreter(tstub);
    auto res = interpreter.expr();
    std::cout << " = " << res << std::endl;
}

// Example 3: 4 + 3*2 = 13 (Operator precendence correct! Multiply comes before addition)
void Example3()
{
    Token interp_in[] = {
        {kInteger, "4", 1},
        {kPlus, "+", 1},
        {kInteger, "3", 1},
        {kMultiply, "*", 1},
        {kInteger, "3", 1},
    };
    PrintTokens(interp_in, sizeof(interp_in) / sizeof(Token));
    TokenizerStub tstub(interp_in, sizeof(interp_in) / sizeof(Token));
    Interpreter interpreter(tstub);
    auto res = interpreter.expr();
    std::cout << " = " << res << std::endl;
}

int main()
{

    Example1();
    Example2();
    Example3();
    return 0;
}