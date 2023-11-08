defmodule Tutorials.Structs.Expense do
  alias Tutorials.Structs.Expense

  defstruct(
    name: "",
    date: nil,
    amount: 0,
    store: ""
  )

  @type t :: %Expense{
          name: String.t(),
          date: Date.t() | nil,
          amount: number(),
          store: String.t()
        }

  @spec sample() :: [t()]
  def sample do
    [
      %Expense{name: "Groceries", date: ~D[2023-10-25], amount: 100, store: "D1"},
      %Expense{name: "Books", date: ~D[2023-11-19], amount: 200, store: "LN"},
      %Expense{name: "Drugs", date: ~D[2023-09-09], amount: 300, store: "Street"},
      %Expense{name: "Computer", date: ~D[2023-08-15], amount: 400, store: "Falabella"}
    ]
  end

  @spec total([t()]) :: number()
  def total(expenses) do
    Enum.reduce(expenses, 0, &(&1.amount + &2))
  end

  @spec sort_by_date([t()]) :: [t()]
  def sort_by_date(expenses) do
    Enum.sort_by(expenses, fn expense -> expense.date end)
  end

  def add_expense(%Expense{} = expense) do
    [expense | sample()]
  end

  def update_amount(name, amount) do
    [item] = sample() |> Enum.filter(fn %{name: expense_name} -> expense_name == name end)
    new_item = %{item | amount: amount}
    [new_item | sample() |> List.delete(item)]
  end

  # -----------------------------------------------------------------------

  @users ["Juan", "Felipe", "Ruben", "Claudia"]

  def authenticate(user) when user in @users, do: {:ok, "authorized"}
  def authenticate(_), do: {:error, "unauthorized"}

  def verify_password(user, _password) when user in @users, do: {:ok, "password verified"}
  def verify_password(_user, _password), do: {:error, "wrong password"}

  def login(user, password) do
    with {:ok, _auth_message} <- authenticate(user),
         {:ok, _password_message} <- verify_password(user, password) do
      {:ok, "#{user} logged in successfully"}
    else
      {:error, error_message} -> {:error, error_message}
      _ -> :unauthorized
    end
  end
end
