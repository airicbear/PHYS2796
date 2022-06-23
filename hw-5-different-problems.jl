### A Pluto.jl notebook ###
# v0.18.1

using Markdown
using InteractiveUtils

# ╔═╡ b7d6ac96-9857-11ec-2efd-8b01d4dabf6d
begin
	using Unitful
	using PhysicalConstants.CODATA2018: h, m_e, m_n, c_0, ħ
md"""
# HW 5 Different Problems

Eric Nguyen $\qquad$ TUID: 915786865 $\qquad$ Feb 28, 2022
"""
end

# ╔═╡ 1d8a68b5-f662-4b1c-8049-f6b903c0356e
md"""
### Problem 3

The lowest energy is at ``n = 1``.
Applying the quantization of energy formula,

$E_n = n^2 \frac{h^2}{8 mL^2} \tag{5.3}$

where ``h`` is the Planck constant and ``m`` is the electron mass, we substitute and solve for the width of the well ``L``,

$\begin{align*}
5.6 \text{ eV} &= (1)^2 \frac{h^2}{8mL^2} \\
L &= \sqrt{\frac{h^2}{8m (5.6 \text{ eV})}} = 0.259 \text{ nm}
\end{align*}$

Going back to (5.3) and substituting for ``2L = 0.518 \text{ nm}`` we get

$E_1 = (1)^2 \frac{h^2}{8 m(2L)^2} = \frac{h^2}{8 m(0.518 \text{ nm})^2} = 1.4 \text{ eV}$
"""

# ╔═╡ 3bb188d5-5acb-4d86-9ce9-360aad4ecc44
let
	n = 1
	E1 = 5.6u"eV"
	L = sqrt(n * (h^2 / (8*m_e*E1))) |> u"nm"
	E1 = n^2 * (h^2 / (8m_e*(2L)^2)) |> u"eV"
end

# ╔═╡ cb94f3b6-9f7d-4038-af25-e56a78ed1960
md"""
### Problem 6

The minimum energy is at ``n = 1``.
We apply the quantization of energy using the neutron mass ``m_n`` and get

$E_1 = (1)^2 \frac{h^2}{8m_n(1.2 × 10^{-14} \text{ m})} = 1.4 \text{ MeV}$
"""

# ╔═╡ 16725f16-4e83-4459-a7b7-bd571726f104
let
	n = 1
	L = 1.2e-14u"m"
	E1 = n^2 * (h^2 / (8m_n*L^2)) |> u"MeV"
end

# ╔═╡ 56da2177-ad9e-4ed7-9124-040b79a4e1c0
md"""
### Problem 8

First, we define the wave function

$\psi(x) = \begin{cases}
b(a^2 - x^2) & -a ≤ x ≤ +a \\
0 & \text{otherwise}
\end{cases}$

**(a).**
Using the normalization condition and solving for ``b`` in terms of ``a`` we get

$\begin{align*}
∫_{-a}^{+a} |\psi(x)|^2 \,dx &= 1 \\
b^2 ∫_{-a}^{+a} (a^2 - x^2)^2 \,dx &= 1 \\
b^2 ∫_{-a}^{+a} (a^4 - 2a^2 x^2 + x^4) \,dx &= 1 \\
b^2 \left[a^4 x - \frac{2}{3} a^2 x^3 + \frac{1}{5} x^5\right]_{-a}^{+a} \,dx &= 1 
\end{align*}$

$b^2 \left[\left(a^4 (a) - \frac{2}{3} a^2 (a)^3 + \frac{1}{5} (a)^5\right) - \left(a^4 (-a) - \frac{2}{3} a^2 (-a)^3 + \frac{1}{5} (-a)^5\right)\right] \,dx = 1$

$b^2 \left[a^5 - \frac{2}{3} a^5 + \frac{1}{5} a^5 + a^5 - \frac{2}{3} a^5 + \frac{1}{5} a^5\right] \,dx = 1$

$b^2 \left(\frac{16}{15} a^5\right) = 1 \implies b = \sqrt{\frac{15}{16a^5}}$

**(b).**
The probability that we find the particle in a small region is defined by the Schrödinger recipe

$P(x) \,dx = |\psi(x)|^2 \,dx \tag{5.7}$

Substituting values ``x = +a/2``, ``dx = 0.010a``, and ``b^2 = \frac{15}{16a^5}`` we obtain the following probability:

$\begin{align*}
P(x) \,dx &= (b(a^2 - x^2))^2 \,dx \\
&= b^2 \left(a^2 - \left(\frac{a}{2}\right)^2\right)^2 (0.010a) \\
&= \left(\frac{15}{16a^5}\right) \left(\frac{3a^2}{4}\right)^2 (0.010a) \\
&= 0.005 \qquad\text{ or }\qquad 0.5 \%
\end{align*}$

**(c).**
The probability of finding a particle within an interval ``x=+a/2`` and ``x=a`` can be expressed as an integral,

$\begin{align*}
P(a/2 < X < a) &= b^2 \left[a^4 x - \frac{2}{3}a^2x^3 + \frac{1}{5} x^5\right]_{a/2}^a \\
\end{align*}$

$\begin{align*}
&= b^2 \left[\left(a^4 (a) - \frac{2}{3}a^2(a)^3 + \frac{1}{5} (a)^5\right) - \left(a^4 (a/2) - \frac{2}{3}a^2(a/2)^3 + \frac{1}{5} (a/2)^5\right)\right] \\
&= b^2 \left(a^5 - \frac{2a^5}{3} + \frac{a^5}{5} - \frac{a^5}{2} + \frac{2a^5}{24} - \frac{a^5}{160}\right) \\
&= \frac{53}{480} a^5 b^2 = \left(\frac{53}{480}\right) \left(\frac{15}{16a^5}\right) a^5 = \frac{53}{512} = 0.104
\end{align*}$
"""

# ╔═╡ 85fa3df5-538f-4fb3-9d9f-602bdeb9c45e
md"""
### Problem 14

Let the particle's energy in the ground state be ``E_0 = 1.54 \text{ eV}``.
Applying the quantization of energy for a particle in an infinite well, ``E_n = n^2 E_0``, we find that the particle's energy at the second excited state ``n = 3`` and third excited state ``n = 4`` are respectively,

$\begin{align*}
E_3 &= 3^2 E_0 = 9 (1.54 \text{ eV}) = 13.86 \text{ eV} \\
E_4 &= 4^2 E_0 = 16 (1.54 \text{ eV}) = 24.64 \text{ eV}
\end{align*}$

The energy differences between the ground state and each excited state are then

$\begin{align*}
ΔE_3 &= E_3 - E_0 = 13.86 \text{ eV} - 1.54 \text{ eV} = 12.32 \text{ eV} \\
ΔE_4 &= E_4 - E_0 = 24.64 \text{ eV} - 1.54 \text{ eV} = 23.10 \text{ eV} \\
\end{align*}$
"""

# ╔═╡ 5120f87b-8ffc-4f97-be87-29a831612d0b
let
	E0 = 1.54u"eV"
	E3 = 3^2 * E0 |> u"eV"
	E4 = 4^2 * E0 |> u"eV"
	:ΔE3 => E3 - E0, :ΔE4 => E4 - E0
end

# ╔═╡ 5c27c296-3931-4805-b155-a11748871b8e
md"""
### Problem 26

Let the electron's energy in the ground state be ``E_0 = 1.24 \text{ eV}``.
Applying the quantization of energy for an oscillating particle,

$E_n = \left(n + \frac{1}{2}\right) \hbar \omega_0 \qquad n = 0, 1, 2, … \tag{5.52}$

we substitute the ground state of the energy into (5.52) and then solve for ``\omega_0``,

$1.24 \text{ eV} = \frac{1}{2} \hbar \omega_0 \implies \omega_0 = \frac{2(1.24 \text{ eV})}{\hbar} = 3.77 \text{ PHz}$

we find that the electron's energy at the second excited state ``n = 3`` and fourth excited state ``n = 5`` are respectively,

$\begin{align*}
E_3 &= \left(3 + \frac{1}{2}\right) \hbar \omega_0 = \frac{7}{2} \hbar (3.77 \text{ PHz}) = 8.68 \text{ eV} \\
E_5 &= \left(5 + \frac{1}{2}\right) \hbar \omega_0 = \frac{11}{2} \hbar (3.77 \text{ PHz}) = 13.64 \text{ eV}
\end{align*}$

The energy differences between the ground state and each excited state are then

$\begin{align*}
ΔE_3 &= E_3 - E_0 = 8.68 \text{ eV} - 1.24 \text{ eV} = 7.44 \text{ eV} \\
ΔE_5 &= E_5 - E_0 = 13.64 \text{ eV} - 1.24 \text{ eV} = 12.4 \text{ eV}
\end{align*}$
"""

# ╔═╡ 125501ff-e491-4862-b70d-a8264cde5e2e
let
	E0 = 1.24u"eV"
	ω₀ = 2*E0 / ħ |> u"PHz"
	E3 = (3 + 1/2) * ħ * ω₀ |> u"eV"
	E5 = (5 + 1/2) * ħ * ω₀ |> u"eV"
	:ΔE3 => E3 - E0, :ΔE5 => E5 - E0
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PhysicalConstants = "5ad8b20f-a522-5ce9-bfc9-ddf1d5bda6ab"
Unitful = "1986cc42-f94f-5a68-af5c-568840ba703d"

[compat]
PhysicalConstants = "~0.2.1"
Unitful = "~1.11.0"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.1"
manifest_format = "2.0"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.Calculus]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f641eb0a4f00c343bbc32346e1217b86f3ce9dad"
uuid = "49dc2e85-a5d0-5ad3-a950-438e2897f1b9"
version = "0.5.1"

[[deps.CommonSolve]]
git-tree-sha1 = "68a0743f578349ada8bc911a5cbd5a2ef6ed6d1f"
uuid = "38540f10-b2f7-11e9-35d8-d573e4eb0ff2"
version = "0.2.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.ConstructionBase]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f74e9d5388b8620b4cee35d4c5a618dd4dc547f4"
uuid = "187b0558-2788-49d3-abe0-74a17ed4e7c9"
version = "1.3.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "3d3e902b31198a27340d0bf00d6ac452866021cf"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.9"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.Measurements]]
deps = ["Calculus", "LinearAlgebra", "Printf", "RecipesBase", "Requires"]
git-tree-sha1 = "58390f5617544fb09d27244749484fee0cae6712"
uuid = "eff96d63-e80a-5855-80a2-b1b0885c5ab7"
version = "2.7.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.PhysicalConstants]]
deps = ["Measurements", "Roots", "Unitful"]
git-tree-sha1 = "2bc26b693b5cbc823c54b33ea88a9209d27e2db7"
uuid = "5ad8b20f-a522-5ce9-bfc9-ddf1d5bda6ab"
version = "0.2.1"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.RecipesBase]]
git-tree-sha1 = "6bf3f380ff52ce0832ddd3a2a7b9538ed1bcca7d"
uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
version = "1.2.1"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[deps.Roots]]
deps = ["CommonSolve", "Printf", "Setfield"]
git-tree-sha1 = "0abe7fc220977da88ad86d339335a4517944fea2"
uuid = "f2b01f46-fcfa-551c-844a-d8ac1e96c665"
version = "1.3.14"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Setfield]]
deps = ["ConstructionBase", "Future", "MacroTools", "Requires"]
git-tree-sha1 = "38d88503f695eb0301479bc9b0d4320b378bafe5"
uuid = "efcf1570-3423-57d1-acb7-fd33fddbac46"
version = "0.8.2"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Unitful]]
deps = ["ConstructionBase", "Dates", "LinearAlgebra", "Random"]
git-tree-sha1 = "b649200e887a487468b71821e2644382699f1b0f"
uuid = "1986cc42-f94f-5a68-af5c-568840ba703d"
version = "1.11.0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
"""

# ╔═╡ Cell order:
# ╟─b7d6ac96-9857-11ec-2efd-8b01d4dabf6d
# ╟─1d8a68b5-f662-4b1c-8049-f6b903c0356e
# ╠═3bb188d5-5acb-4d86-9ce9-360aad4ecc44
# ╟─cb94f3b6-9f7d-4038-af25-e56a78ed1960
# ╠═16725f16-4e83-4459-a7b7-bd571726f104
# ╟─56da2177-ad9e-4ed7-9124-040b79a4e1c0
# ╟─85fa3df5-538f-4fb3-9d9f-602bdeb9c45e
# ╠═5120f87b-8ffc-4f97-be87-29a831612d0b
# ╟─5c27c296-3931-4805-b155-a11748871b8e
# ╠═125501ff-e491-4862-b70d-a8264cde5e2e
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
