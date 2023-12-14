/*
File: node.h
Copyright (c) 2023 김기정

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

#include "library_code.h"
#include <gtest/gtest-param-test.h>
#include <gtest/gtest.h>

int arr[13] = {50, 40, 30, 60, 70, 45, 25, 27, 55, 57, 51, 75, 67};
int erases[12]{50, 51, 55, 57, 60, 67, 40, 45, 70, 27, 30, 75};
class AVLTreeTest : public testing::Test {
public:
  void SetUp() override {
    for (int i = 0; i < 13; i++) {
      avl.root_ = avl.insert_node(avl.root_, arr[i]);
    }
    for(int i = 0; i < cnt; i++){
      avl.root_ = avl.EraseNode(avl.root_, erases[i]);
    }
  }
  static int cnt;

protected:
  AVLTree<int> avl;
};

int AVLTreeTest::cnt = 0;

class AVLTreeWithParam
    : public AVLTreeTest,
      public testing::WithParamInterface<std::pair<int, int>> {};



INSTANTIATE_TEST_SUITE_P(
    Default, AVLTreeWithParam,
    ::testing::Values(std::make_pair(50, 6), std::make_pair(51, 7),
                      std::make_pair(55, 8), std::make_pair(57, 9),
                      std::make_pair(60, 10), std::make_pair(67, 11),
                      std::make_pair(40, 4), std::make_pair(45, 5),
                      std::make_pair(70, 12), std::make_pair(27, 2),
                      std::make_pair(30, 3), std::make_pair(75, 13)));

TEST_P(AVLTreeWithParam, FindRank) {
  std::pair<int, int> param = GetParam();
  int key = param.first;
  int expected_key = param.second;

  EXPECT_NE(avl.root_, nullptr);
  int rank = avl.FindRank(avl.root_, key);
  EXPECT_EQ(expected_key, rank)
      << "after call of FindRank with a given key: " << key
      << ", a returned rank must have a key: " << expected_key << ". but it was "
      << rank << '\n';
}

int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
