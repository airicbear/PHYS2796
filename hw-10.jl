### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 20dc317c-b755-11ec-0860-31f90a1e493e
begin
	using Unitful
	using PhysicalConstants.CODATA2018: ε_0, e, m_n, m_e, c_0, N_A
md"""
# HW 10

Eric Nguyen $\qquad$ TUID: 915786865 $\qquad$ Date: Apr 16, 2022
"""
end

# ╔═╡ 681ce219-c9ab-4fa9-886b-a6a68a01618a
let
md"""
### Problem 12.4

**12.2 Nuclear Sizes and Shapes**
(a) Compute the Coulomb repulsion energy between two nuclei of ``{}^{16}\text{O}`` that just touch at their surfaces.
(b) Do the same for two nuclei of ``{}^{238}\text{U}``.
"""
:a => let
	R0 = 1.2u"fm"
	A = 16
	Z = 8
	R = R0 * A^(1/3)
	V = ((e^2 * Z^2) / (4π * ε_0 * 2R)) |> u"MeV"
end
:b => let
	R0 = 1.2u"fm"
	A = 238
	Z = 92
	R = R0 * A^(1/3)
	V = ((e^2 * Z^2) / (4π * ε_0 * 2R)) |> u"MeV"
end
md"""
### Problem 12.4

**(a).**
The radius of the nucleus of ``{}^{16}\text{O}`` is calculated as

$R = R_0 A^{1/3} = (1.2 \text{ fm})(16)^{1/3}= 3.0 \text{ fm}$

The Coulomb repulsion energy between two such nuclei ``(Z = 8, r = 2R)`` is

$V = \frac{e^2}{4\pi\varepsilon_0} \frac{Z^2}{r} = 15 \text{ MeV}$

**(b).**
The radius of the nucleus of ``{}^{238}\text{U}`` is calculated as

$R = R_0 A^{1/3} = (1.2 \text{ fm}) (238)^{1/3}$

The Coulomb repulsion energy between two such nuclei ``(Z = 92, r = 2R)`` is

$V = \frac{e^2}{4\pi\varepsilon_0} \frac{Z^2}{r} = 820 \text{ MeV}$
"""
end

# ╔═╡ 0bddfd9c-03cf-4a94-b285-d9280fc56ed6
begin
md"""
### Problem 12.6

**12.2 Nuclear Sizes and Shapes**
The ionic radius of lead is ``0.180 \text{ nm}``.
Compute the fraction of the volume of a lead atom occupied by a nucleus of ``{}^{208} \text{Pb}``.
"""
let
	R0 = 1.2u"fm"
	A = 208
	R = R0 * A^(1/3) |> u"nm"
	R^3 / (0.180u"nm")^3
end
md"""
### Problem 12.6

The radius of the nucleus is

$R = R_0 A^{1/3} = (1.2 \text{ fm})(208)^{1/3} = 7.1 \text{ fm}$

Thus, using the volume formula of a sphere ``V = \frac{4}{3} \pi R^3``, the fraction of the volume of a lead atom occupied by a nucleus of ``{}^{208}\text{Pb}`` is

$\frac{(7.1 \text{ fm})^3}{(0.180 \text{ nm})^3} = 6.2 × 10^{-15}$
"""
end

# ╔═╡ c2aad1a3-c35c-4cec-b582-d97a010394b1
let
md"""
### Problem 12.8

**12.3 Nuclear Masses and Binding Energies**
Find the total binding energy and the binding energy per nucleon for (a) ``{}^4\text{He}``; (b) ``{}^{20}\text{Ne}``; (c) ``{}^{40}\text{Ca}``; (d)``{}^{55}\text{Mn}``.
"""
let
	A = 56
	Z = 26
	N = A - Z
	mH = 1.007825u"u"
	mX = 55.845u"u"
	m = mX + Z * m_e |> u"u"
	B = (N * m_n + Z * mH - m) * c_0^2 |> u"MeV"
	(N * m_n + Z * mH - m) |> u"u"
	
	"Fe => $(N)($(round(u"u",m_n|>u"u",sigdigits=7))) + $(Z)($(round(u"u",mH,sigdigits=7))) - ($(round(u"u",m,sigdigits=7))) = $(round(u"MeV",B,sigdigits=4)), B/A = $(round(u"MeV",B/A,sigdigits=4))"
end
let
	A = 4
	Z = 2
	N = A - Z
	mH = 1.007825u"u"
	mX = (A)u"u"
	m = mX + Z * m_e |> u"u"
	B = (N * m_n + Z * mH - m) * c_0^2 |> u"MeV"
	
	"He => $(N)($(round(u"u",m_n|>u"u",sigdigits=7))) + $(Z)($(round(u"u",mH,sigdigits=7))) - ($(round(u"u",m,sigdigits=7))) = $(round(u"MeV",B,sigdigits=4)), B/A = $(round(u"MeV",B/A,sigdigits=4))"
end
let
	A = 20
	Z = 10
	N = A - Z
	mH = 1.007825u"u"
	mX = (A)u"u"
	m = mX + Z * m_e |> u"u"
	B = (N * m_n + Z * mH - m) * c_0^2 |> u"MeV"
	
	"Ne => $(N)($(round(u"u",m_n|>u"u",sigdigits=7))) + $(Z)($(round(u"u",mH,sigdigits=7))) - ($(round(u"u",m,sigdigits=7))) = $(round(u"MeV",B,sigdigits=4)), B/A = $(round(u"MeV",B/A,sigdigits=4))"
end
let
	A = 40
	Z = 20
	N = A - Z
	mH = 1.007825u"u"
	mX = (A)u"u"
	m = mX + Z * m_e |> u"u"
	B = (N * m_n + Z * mH - m) * c_0^2 |> u"MeV"
	
	"Ca => $(N)($(round(u"u",m_n|>u"u",sigdigits=7))) + $(Z)($(round(u"u",mH,sigdigits=7))) - ($(round(u"u",m,sigdigits=7))) = $(round(u"MeV",B,sigdigits=4)), B/A = $(round(u"MeV",B/A,sigdigits=4))"
end
let
	A = 55
	Z = 25
	N = A - Z
	mH = 1.007825u"u"
	mX = (A)u"u"
	m = mX + Z * m_e |> u"u"
	B = (N * m_n + Z * mH - m) * c_0^2 |> u"MeV"
	
	"Mn => $(N)($(round(u"u",m_n|>u"u",sigdigits=7))) + $(Z)($(round(u"u",mH,sigdigits=7))) - ($(round(u"u",m,sigdigits=7))) = $(round(u"MeV",B,sigdigits=4)), B/A = $(round(u"MeV",B/A,sigdigits=4))"
end
md"""
### Problem 12.8

Apply the following equations:

$B = [Nm_\text{n} + Zm({}_1^1 \text{H}_0) - m({}_Z^A \text{X}_N)]c^2 \qquad m({}_Z^A \text{X}_N) = m_{\text{X}} + Zm_e$

**(a).** ``{}^4 \text{He} \implies A = 4, Z = 2, N = 2, B/A = 7.425 \text{ MeV/nucleon}``

$B = [2(1.00866 \text{ u}) + 2(1.00782 \text{ u}) - 4.0011 \text{ u}](931.5 \text{ MeV/u}) = 29.70 \text{ MeV}$

**(b).** ``{}^{20} \text{Ne} \implies A = 20, Z = 10, N = 10, B/A = 7.425 \text{ MeV/nucleon}``

$B = [10(1.008665 \text{ u}) + 10(1.007825 \text{ u}) - 20.00549 \text{ u}](931.5 \text{ MeV/u}) = 148.5 \text{ MeV}$

**(c).** ``{}^{40} \text{Ca} \implies A = 40, Z = 20, N = 20, B/A = 7.425 \text{ MeV/nucleon}``

$B = [20(1.008665 \text{ u}) + 20(1.007825 \text{ u}) - 40.01097 \text{ u}](931.5 \text{ MeV/u}) = 297.0 \text{ MeV}$

**(d).** ``{}^{55} \text{Mn} \implies A = 55, Z = 25, N = 30, B/A = 7.483 \text{ MeV/nucleon}``

$B = [30(1.008665 \text{ u}) + 25(1.007825 \text{ u}) - 55.01371 \text{ u}](931.5 \text{ MeV/u}) = 411.6 \text{ MeV}$
"""
end

# ╔═╡ 54298ed1-a1bb-4179-a891-381a764eb705
let
md"""
### Problem 12.18

**12.6 Radioactive Decay**
A certain sample of a radioactive material decays at a rate of 548 per second at ``t = 0``.
At ``t = 48 \text{ min}``, the counting rate has fallen to 213 per second.
(a) What is the half-life of the radioactivity?
(b) What is its decay constant?
(c) What will be the decay rate at ``t = 125 \text{ min}``?
"""
let
	a0 = 548u"s^-1"
	a = 213u"s^-1"
	t = 48u"minute"
	λ = -(1/t) * log(a / a0)
	t½ = log(2) / λ
	a0 * exp(-λ * 125u"minute")
end
md"""
### Problem 12.18

Let ``a_0 = 548 \text{ decays/s}, \,a = 213 \text{ decays/s}, \, t = 48 \text{ min}``.
Solving for the decay constant ``\lambda`` from the radioactive decay equation we get the solution for **(b).**

$a = a_0 e^{-\lambda t} \implies \lambda = -\frac{1}{t} \ln{\frac{a}{a_0}} = 0.020 \text{ min}^{-1}$

**(a).** The relationship between the half-life ``t_{1/2}`` and the decay constant ``\lambda`` gives us

$t_{1/2} = \frac{1}{\lambda} \ln{2} = \frac{0.693}{0.020} \text{ min} = 35 \text{ min}$

**(c).**
We use the decay constant calculated in part **(b)** to find the decay rate ``a`` at ``t = 125 \text{ min}``

$a = a_0 e^{-\lambda t} = 47 \text{ s}^{-1}$
"""
end

# ╔═╡ 14e96c57-293d-40b4-b410-4c8474fd47e5
let
md"""
### Problem 12.22

**12.6 Radioactive Decay**
Ordinary potassium contains ``0.012\%`` of the naturally occurring radioactive isotope ``{}^{40}\text{K}``, which has a half-life of ``1.3 × 10^9 \text{ y}``.
(a) What is the activity of ``1.0 \text{ kg}`` of potassium?
(b) What would have been the fraction of ``{}^{40}\text{K}`` in natural potassium ``4.5 × 10^9 \text{ y}`` ago?
"""
let
	m = 1000u"g"
	M = 39.0983u"g/mol"
	N = m * N_A / M
	
	t½ = 1.3e9u"yr"
	λ = log(2) / t½

	a = (λ * 0.00012N |> u"s^-1") / 3.7e10 / 1e-6

	t = 4.5e9u"yr"
	exp(λ * t)

	11*(0.00012) / (1 + 10*(0.00012))
end
md"""
### Problem 12.22

**(a).**
Let ``m = 1000 \text{ g}``.
The number of atoms in the sample is determined from the Avogadro constant ``N_A = 6.02 × 10^{23} \text{ mol}^{-1}`` and the molar mass ``M = 39.0983 \text{ g/mol}``,

$N = \frac{m N_A}{M} = 1.54 × 10^{25} \text{ atoms}$

The decay constant ``\lambda`` is found from the half-life relationship,

$\lambda = \frac{\ln{2}}{t_{1/2}} = \frac{0.693}{1.3 × 10^9 \text{ y}} = 5.33 × 10^{-10} \text{ y}^{-1}$

Thus, the activity of ``1.0 \text{ kg}`` of potassium is

$a = \lambda (0.00012N) = 3.1 × 10^4 \text{ s}^{-1} = 0.84 \,\mu\text{Ci}$

**(b).**
The current fraction of ``{}^{40} \text{K}`` in natural potassium can be written as ``N_r/N = 0.012\%`` where ``N_r`` is the number of radioactive nuclei.
We can use the exponential law of radioactive decay to find the original number of radioactive nuclei ``N_{r_0}`` at ``t = 4.5 × 10^9 \text{ y}``,

$N_r = N_{r_0} e^{-\lambda t} \implies N_{r_0} = N_r e^{\lambda t} = 11N_r$

Consider that the number of nonradioactive nuclei ``N_{nr}`` does not change over time.
Let ``N_0`` be the number of nuclei originally present and ``N = N_{nr} + N_r``.
So the fraction of ``{}^{40} \text{K}`` in natural potassium ``t = 4.5 × 10^9`` years ago is given by the expression

$\frac{N_{r_0}}{N_0} = \frac{N_{r_0}}{N_{nr} + N_{r_0}} = \frac{11N_r}{N_{nr} + 11N_r} = \frac{11N_r}{N + 10N_r} = \frac{11(N_r/N)}{1 + 10(N_r/N)} = 0.13\%$
"""
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

julia_version = "1.8.0-beta1"
manifest_format = "2.0"
project_hash = "5dd890fe21c2c98af91443177cc055f00c0ab1b3"

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
git-tree-sha1 = "88cd033eb781c698e75ae0b680e5cef1553f0856"
uuid = "eff96d63-e80a-5855-80a2-b1b0885c5ab7"
version = "2.7.1"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.17+2"

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
# ╟─20dc317c-b755-11ec-0860-31f90a1e493e
# ╟─681ce219-c9ab-4fa9-886b-a6a68a01618a
# ╟─0bddfd9c-03cf-4a94-b285-d9280fc56ed6
# ╟─c2aad1a3-c35c-4cec-b582-d97a010394b1
# ╟─54298ed1-a1bb-4179-a891-381a764eb705
# ╟─14e96c57-293d-40b4-b410-4c8474fd47e5
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
