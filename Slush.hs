module Slush where

import Control.Monad.State

data Program
  = Instr Instruction
  | Lit Literal
  | Begin [Program]

data Instruction where
  | Eq
  | And
  | Define
  | Dup
  | Not
  | Or
  | Pop
  | Rand -- Fun thing, decide what type you want when it comes up!
  | Rot  -- Rotate the stack
  | Shove Int
  | StackDepth
  | Swap
  | Yank Int 
  | YankDup Int
  | Append
  | Car
  | Cdr
  | AtomHuh
  | Contains
  | Do

data Stack = 
  { Vals :: [Program] 
  , Inst :: [Instruction]
  }

eval :: State [Program] Literal
