defmodule Subformula do

    @spec is_subformula(any, any) :: []
    def is_subformula(atom, list) when is_atom(atom) do
        list ++ atom
    end

    def is_subformula([unary_connective, atom], list) when is_atom(atom) do
        is_subformula(atom, list ++ [unary_connective, atom])
    end

    def is_subformula([left, binary, right], list) do
        is_subformula(left, list ++ [left, binary, right])
    end
end
