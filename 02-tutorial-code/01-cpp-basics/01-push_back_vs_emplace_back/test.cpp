#include <iostream>
#include <vector>

class MyClass {
 public:
  int x_;
  int y_;

  MyClass(int x, int y) : x_(x), y_(y) {
    std::cout << "Create class" << std::endl;
  }

  ~MyClass() { std::cout << "Destroy class" << std::endl; }

  // Copy Constructor
  MyClass(const MyClass& my_class) {
    std::cout << "Copy Constructor Called" << std::endl;
    x_ = my_class.x_;
  }

  // Move Constructor
  MyClass(MyClass&& my_class) {
    std::cout << "Move Constructor Called" << std::endl;
    x_ = std::move(my_class.x_);
  }
};

int main() {
  std::vector<MyClass> vec;
  // Reserve space to avoid reallocation
  vec.reserve(2);

  std::cout << "\n--- push_back ---" << std::endl;
  vec.push_back(MyClass(1, 2));

  std::cout << "\n--- emplace_back ---" << std::endl;
  vec.emplace_back(1, 2);

  std::cout << "\n--- Finish ---" << std::endl;
  return 0;
}
