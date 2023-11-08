defmodule ElixirSchool do
end

# Atoms can be used to reference modules from Erlang libraries:
# :crypto.strong_rand_bytes 3

# The ||, && and ! operators support any types as parameters, but and, or and not need the first parameter to be a boolean

# An important feature of Elixir is that any two types can be compared; this is particularly useful in sorting.
# number < atom < reference < function < port < pid < tuple < map < list < bitstring

# Arity is a core part of speaking about Elixir (and Erlang) code. It is the number of arguments a given function takes
# (two, in this case). Arity and the given name are combined with a slash.

# Tuples are similar to lists, but are stored contiguously in memory. This makes accessing their length fast but modification
# expensive; the new tuple must be copied entirely to memory.

# The three characteristics of keyword lists highlight their importance:
# - Keys are atoms.
# - Keys are ordered.
# - Keys do not have to be unique.

# Maps: Unlike keyword lists, they allow keys of any type and are un-ordered

# Module attributes are most commonly used as constants in Elixir.
# There are reserved attributes in Elixir. The three most common are:
# - moduledoc — Documents the current module.
# - doc — Documentation for functions and macros.
# - behaviour — Use an OTP or user-defined behaviour.

# A struct must be defined within a module, which it takes its name from. It is common for a struct to be the only thing
# defined within a module.

# If there’s a conflict between two aliases or we just wish to alias to a different name entirely, we can use the :as
# option:
# alias Sayings.Greetings, as: Hi

# Our dependency list is comprised of tuples with two required values and one optional: the package name as an atom, the
# version string, and optional options.
# def deps do
#   [
#     {:phoenix, "~> 1.1 or ~> 1.2"},
#     {:phoenix_html, "~> 2.3"},
#     {:cowboy, "~> 1.0", only: [:dev, :test]},
#     {:slime, "~> 0.14"}
#   ]
# end

# Once we’ve defined our dependencies there is one final step: fetching them:
# mix deps.get

# To check if a parameter is a string, we use <... when is_binary(parameter) do>

# ------------------------------------------------

# A process is an isolated entity where code execution happens
# You can understand what a process is as just a block of memory where you’re going to store data and manipulate it. A process is a built-in memory with the following parts:
# - Stack: To keep local variables.
# - Heap: To keep larger structures.
# - Mailbox: Store messages sent from other processes.
# - Process Control Block: Keeps track of the state of the process.

# We could define the process lifecycle for now as:
# 1. Process creation
# 2. Code execution
# 3. Process termination

# The receive statement helps us to process the messages stored in the mailbox. You can send messages using the send
# statement, but the process will only store them in the mailbox. To start to process them, you should implement the receive
# statement, this will put the process into a mode that waits for sent messages to arrive.
