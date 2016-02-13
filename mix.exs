defmodule FastCompare.Mixfile do
    use Mix.Project

    def project do
        [app: :fast_compare,
        version: "0.0.1",
        compilers: [:make, :elixir, :app],
        aliases: aliases
        ]
    end

    defp aliases do
        [clean: ["clean.make"]]
    end
end

defmodule Mix.Tasks.Compile.Make do

    def run(_) do
        {result, _error_code} = System.cmd("make", [], stderr_to_stdout: true)
        Mix.shell.info result

        :ok
    end
end

defmodule Mix.Tasks.Clean.Make do

    def run(_) do
        {result, _error_code} = System.cmd("make", ["clean"], stderr_to_stdout: true)
        Mix.shell.info result
        
        :ok
    end
end
