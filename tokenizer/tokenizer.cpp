#include <iostream>
#include <cctype>
#include <iterator>

// SOLID und GRASP Prinzipien
// Interface Segregation Principle
class Tokenizer {
public:
    struct Token {
        const char *start;
        size_t length;
    };

    virtual Token next_token() = 0;
    virtual bool has_next_token() const = 0;
};

// Single Responsibility Principle
class SimpleTokenizer : public Tokenizer {
public:
    SimpleTokenizer(const char *input) : current(input) {}

    Token next_token() override {
        if (!has_next_token()) {
            return {nullptr, 0};
        }

        const char *start = current;
        while (*current != '\0' && !std::isspace(*current)) {
            current++;
        }


	Token token{start, static_cast<size_t>(current - start)};
    while (*current != '\0' && std::isspace(*current)) {
        current++;
    }

    return token;
}

bool has_next_token() const override {
    return *current != '\0';
}

private:
const char *current;
};

// Liskov Substitution Principle und Dependency Inversion Principle
class Lexer {
public:
Lexer(Tokenizer *tokenizer) : tokenizer(tokenizer) {}

javascript

Tokenizer *get_token_iterator() {
    return tokenizer;
}

private:
Tokenizer *tokenizer;
};

int main() {
const char *input = "Hello, this is a simple lexer that recognizes tokens, whitespaces, and newlines.";


SimpleTokenizer tokenizer(input);
Lexer lexer(&tokenizer);

Tokenizer *token_iterator = lexer.get_token_iterator();
while (token_iterator->has_next_token()) {
    Tokenizer::Token token = token_iterator->next_token();
    std::cout.write(token.start, token.length) << std::endl;
}

return 0;

}