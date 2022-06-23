### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ af7a28e0-bdad-11ec-21b1-231cb7e1c16b
begin
	using Unitful
	using PhysicalConstants.CODATA2018: k_B, N_A, R, m_e, m_n, m_p, h, c_0
	using PeriodicTable
md"""
# HW 11

Eric Nguyen $\qquad$ TUID: 915786865 $\qquad$ Date: Apr 20, 2022
"""
end

# ╔═╡ 47a0d299-490a-456c-8a20-85b595a41c4c
let
md"""
### Problem 12.25

**12.7 Alpha Decay**
Find the kinetic energy of the alpha particle emitted in the decay of ``{}^{234} \text{U}``.
"""
let
	mU = 234.040950u"u"
	mTh = 230.033132u"u"
	mHe = 4.002603u"u"
	c² = 931.50u"MeV/u"

	Q = (mU - mTh - mHe) * c²

	A = 234
	Kα = ((A - 4) / A) * Q
	:Q => round(u"MeV", Q,sigdigits=5), :Kα => round(u"MeV",Kα,sigdigits=5)
end
md"""
### Problem 12.25

${}_Z^A \text{X}_N → {}_{Z - 2}^{A - 4} \text{X}'_{N - 2} + {}_2^4 \text{He}_2 \implies {}^{234} \text{U} → {}^{230} \text{Th} + {}^4 \text{He}$

Using Appendix D (Table of Atomic Masses),

$\begin{align*}
Q &= [m({}^{234}\text{U}) - m({}^{230}\text{Th}) - m({}^4 \text{He})] c^2 \\
&= [234.040950 \text{ u} - 230.033132 \text{ u} - 4.002603 \text{ u}] (931.50 \text{ MeV/u}) \\
&= 4.8578 \text{ MeV}
\end{align*}$

$K_{\alpha} = \frac{A - 4}{A} Q = \frac{230}{234} (4.8578 \text{ MeV}) = 4.7747 \text{ MeV}$
"""
end

# ╔═╡ 46e4f28e-5dfc-48fa-a028-f17edea26596
let
md"""
### Problem 12.29

**12.8 Beta Decay**
``{}^{15} \text{O}`` decays to ``{}^{15} \text{N}`` by positron beta decay.

- (a) What is the ``Q`` value for this decay?
- (b) What is the maximum kinetic energy of the positrons?
"""
let
	mO = 15.003066u"u"
	mN = 15.000109u"u"
	Q = (mO - mN - 2m_e) * c_0^2 |> u"MeV"

	round(u"MeV",Q,sigdigits=5)
end
md"""
### Problem 12.29

**(a).**

${}_Z^A \text{X}_N → {}_{Z-1}^A \text{X}'_{N+1} + \text{e}^+ + \nu \implies {}^{15} \text{O} → {}^{15} \text{N} + \text{e}^+ + \nu$

$\begin{align*}
Q &= [m({}^{15} \text{O}) - m({}^{15} \text{N}) - 2m_e] c^2 \\
&= [15.003066 \text{ u} - 15.000109 \text{ u} - 0.00109716 \text{ u}] (931.50 \text{ MeV/u}) \\
&= 1.7324 \text{ MeV}
\end{align*}$

**(b).**

$Q = E_\nu + K_e + K_N ≅ E_\nu + K_e$

The maximum kinetic energy of the positrons is when ``E_\nu = 0``, that is,

$K_{e_{\text{max}}} = Q = 1.732 \text{ MeV}$
"""
end

# ╔═╡ d899dc76-cec6-4a31-b3d4-660d81c533ae
let
md"""
### Problem 12.34

**12.10 Natural Radioactivity**
The ``4n`` radioactive decay series begins with ``{}_{90}^{232} \text{Th}`` and ends with ``{}_{82}^{208} \text{Pb}``.

- (a) How many alpha decays are in the chain? (See Question 22.)

- (b) How many beta decays?

- (c) How much energy is released in the complete chain?

- (d) What is the radioactive power produced by ``1.00 \text{ kg}`` of ``{}^{232} \text{Th} (t_{1/2} = 1.40 × 10^{10} \text{ h})``?
"""
let
	mTh = 232.038054u"u"
	mPb = 207.976652u"u"
	mHe = 4.002603u"u"

	Q = (mTh - mPb - 6mHe) * c_0^2 |> u"MeV"

	round(u"MeV",Q,sigdigits=5)

	t½ = 1.40e10u"hr" |> u"s"
	λ = log(2) / t½ |> u"s^-1"
	
	N = 1000N_A * (1 / 232)u"mol"
	α = λ * N
	α * 51.7u"MeV" |> u"W"

	α * Q |> u"W"
	N
end
md"""
### Problem 12.34

**(a).**
Since ``A`` changes by ``24``, there must be ``6`` alpha decays in the chain.

**(b).**
These 6 alpha decays would decrease ``Z`` by ``12`` units, from ``90`` to ``78``.
However, the final ``Z`` must be ``82``, so there must also be ``4`` beta decays in the chain.

**(c).**
We recall that for ``\beta^-`` decays, the electron masses combine with the nuclear masses in the computation of the ``Q`` value and we can therefore use atomic masses.
Thus, for the entire decay chain,

$\begin{align*}
Q &= [m({}_{90}^{232} \text{Th}) - m({}_{82}^{208} \text{Pb}) - 6m({}^4 \text{He})] c^2 \\
&= [232.038054 \text{ u} - 207.976652 \text{ u} - 6(4.002603 \text{ u})] (931.50 \text{ MeV/u}) \\
&= 42.648 \text{ MeV}
\end{align*}$

**(d).**
Let ``t_{1/2} = 1.40 × 10^{10} \text{ h} = 5.04 × 10^{13} \text{ s}``.
One kilogram of ``{}^{232} \text{Th}`` is ``\frac{1000}{232} \text{ mole}`` and therefore contains ``N_A \left(\frac{1000}{232}\right) \text{ atoms}``.

$\lambda = \frac{\log{2}}{t_{1/2}} = 1.3753 \text{ s}^{-1} \qquad N = N_A \left(\frac{1000}{232}\right) = 2.5975 × 10^{24} \text{ atoms}$

The radioactive power is the decay rate ``a = \lambda N`` times the decay energy ``Q``, which gives us

$a = \lambda N = 3.5699 \text{ decays/s} \implies a Q = 0.00024393 \text{ W}$
"""
end

# ╔═╡ 1da1fbff-d158-4ecb-85d2-86c80db3acfb
let
md"""
### Problem 13.26

**13.6 Nucleosynthesis**
Find the energy released when three alpha particles combine to form ``{}^{12} \text{C}``.
"""
let
	mHe = 4.002603u"u"
	mC = 12u"u"
	Q = (3mHe - mC) * c_0^2 |> u"MeV"
end
md"""
### Problem 13.26

${}^4\text{He} + {}^4\text{He} + {}^4\text{He} → {}^{12} \text{C}$

$Q = [3m({}^4\text{He}) - m({}^{12} \text{C})] c^2 = [3 × 4.002603 \text{ u} - 12 \text{ u}] (931.50 \text{ MeV/u}) = 7.27 \text{ MeV}$
"""
end

# ╔═╡ 8c096936-a780-42c2-bfdd-70bf244664f5
let
md"""
### Problem 13.42

**General Problems**
Suppose we have ``100.0 \text{ cm}^3`` of water, which is ``0.015\% \text{ D}_2\text{O}``.

- (a) Compute the energy that could be obtained if all the deuterium were consumed in the ``{}^2\text{H} + {}^2 \text{H} → {}^3 \text{H} + \text{p}`` reaction.

- (b) As an alternative, compute the energy released if two-thirds of the deuterium were fused to form ``{}^3 \text{H}``, which is then combined with the remaining one-third in the ``\text{D}-\text{T}`` reaction.
"""
let
	mH1 = 1.007825u"u"
	mH2 = 2.014102u"u"
	mH3 = 3.016049u"u"
	mHe = 4.002603u"u"
	Q = (2mH2 - mH3 - mH1) * c_0^2 |> u"MeV"
	
	N = (N_A / 18u"g/mol") * 100u"cm^3" * 1u"g/cm^3"
	E = N * 0.00015 * Q

	Q1 = 17.6u"MeV"

	E1 = (1/3) * (0.00015 * N) * Q1

	(2/3)*E + E1
end
md"""
**(a).**
We calculate the number of water molecules in ``100.0 \text{ cm}^3`` of water,

$N = \frac{6.022 × 10^{23} \text{ mol}^{-1}}{18 \text{ g/mol}} (100 \text{ cm}^3) (1 \text{ g/cm}^3) = 3.3456 × 10^{24}$

There are ``0.00015N = 5.0185 × 10^{20}`` molecules of ``\text{D}_2 \text{O}`` in the ``100.0 \text{ cm}^3`` of water.
If all the deuterium were consumed in the ``{}^2 \text{H} + {}^2 \text{H} → {}^3 \text{H} + \text{p}`` reaction, then there would be ``5.0185 × 10^{20}`` fusion reactions, each releasing

$Q = [2m({}^2 \text{H}) - m({}^3 \text{H}) - m({}^1 \text{H})] c^2 = 4.0334 \text{ MeV}$

Thus, the total energy released would be

$E = (5.0185 × 10^{20}) (4.0334 \text{ MeV}) = 2.0 × 10^{21} \text{ MeV}$

**(b).**
If only ⅔ of the ``\text{D}_2 \text{O}`` was used to form ``{}^3 \text{H}``, then there would be ``E_0 = (2/3)E = 1.3494 × 10^{21} \text{ MeV}`` energy released producing ``\frac{1}{3} (0.00015N)`` ``{}^3 \text{H}`` molecules.
However, since the remaining ⅓ of ``\text{D}_2 \text{O}`` is combined with the ``{}^3 \text{H}`` with each reaction being

${}^2 \text{H} + {}^3 \text{H} → {}^4 \text{He} + \text{n} \qquad Q = 17.6 \text{ MeV}$

the energy release for the combination of ``\text{D}_2 \text{O}`` and ``{}^3 \text{H}`` would then be

$E_1 = \frac{1}{3} (0.00015N) (17.6 \text{ MeV}) = 2.9442 × 10^{21} \text{ MeV}$

and the total energy of both processes combined is

$E_{\text{tot}} = E_0 + E_1 = 1.3494 × 10^{21} \text{ MeV} + 2.9442 × 10^{21} \text{ MeV} = 4.3 × 10^{21} \text{ MeV}$
"""
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PeriodicTable = "7b2266bf-644c-5ea3-82d8-af4bbd25a884"
PhysicalConstants = "5ad8b20f-a522-5ce9-bfc9-ddf1d5bda6ab"
Unitful = "1986cc42-f94f-5a68-af5c-568840ba703d"

[compat]
PeriodicTable = "~1.1.1"
PhysicalConstants = "~0.2.1"
Unitful = "~1.11.0"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0-beta1"
manifest_format = "2.0"
project_hash = "02c2904eea6fd028565301836a421f3428e61185"

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
version = "0.5.0+0"

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

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

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
git-tree-sha1 = "88cd033eb781c698e75ae0b680e5cef1553f0856"
uuid = "eff96d63-e80a-5855-80a2-b1b0885c5ab7"
version = "2.7.1"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.17+2"

[[deps.PeriodicTable]]
deps = ["Base64", "Test", "Unitful"]
git-tree-sha1 = "33a08817dc1a025afeb093d06a8a5cb6a5961e2c"
uuid = "7b2266bf-644c-5ea3-82d8-af4bbd25a884"
version = "1.1.1"

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
git-tree-sha1 = "838b60ee62bebc794864c880a47e331e00c47505"
uuid = "f2b01f46-fcfa-551c-844a-d8ac1e96c665"
version = "1.4.1"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Setfield]]
deps = ["ConstructionBase", "Future", "MacroTools", "Requires"]
git-tree-sha1 = "38d88503f695eb0301479bc9b0d4320b378bafe5"
uuid = "efcf1570-3423-57d1-acb7-fd33fddbac46"
version = "0.8.2"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

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
version = "5.0.1+0"
"""

# ╔═╡ Cell order:
# ╟─af7a28e0-bdad-11ec-21b1-231cb7e1c16b
# ╟─47a0d299-490a-456c-8a20-85b595a41c4c
# ╟─46e4f28e-5dfc-48fa-a028-f17edea26596
# ╠═d899dc76-cec6-4a31-b3d4-660d81c533ae
# ╟─1da1fbff-d158-4ecb-85d2-86c80db3acfb
# ╟─8c096936-a780-42c2-bfdd-70bf244664f5
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
