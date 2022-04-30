#include <iostream>

class Frame {
 public:
  Frame() {}

  void print() { std::cout << "class output" << std::endl; }

  ~Frame() { std::cout << "Destroy class" << std::endl; }
};

int main() {
  {
    std::unique_ptr<Frame> frame;
    frame->print();
  }

  std::cout << "Hello, World!" << std::endl;
  return 0;
}
