### A Pluto.jl notebook ###
# v0.18.1

using Markdown
using InteractiveUtils

# ╔═╡ 9695c85a-7ed2-11ec-1c4b-fb03107b37bd
begin
	using Unitful
	using PhysicalConstants.CODATA2018: c_0
	md"""
	# HW 2
	
	Name: Eric Nguyen $\qquad$ TUID: 915786865 $\qquad$ Date: Feb 2, 2022
	"""
end

# ╔═╡ f7e6207f-2380-4017-a62b-e2c3cbf8fd1b
let
	Δx = 49.5u"m"
	Δt = 0.528u"μs"
	u = 0.685c_0
	γ = 1 / sqrt(1 - u^2 / c_0^2)
	Δx′ = (Δx - u*Δt) * γ
	Δt′ = (-Δt + (u/c_0^2)*Δx) * γ |> u"μs"
	
md"""
### Problem 2.21

According to observer ``O``, two events occur at locations separated by:

$Δx = 49.5 \text{ m}$

$Δt = 0.528 \;\mu\text{s}$

Observer ``O'`` is moving away from ``O`` with

$u = 0.685c$

What are the spatial and time separations of the events according to ``O'``?

The spatial separation of the events according to ``O'`` is

$\begin{align*}
Δx' = \frac{Δx - uΔt}{\sqrt{1 - u^2 / c^2}} = \frac{(49.5 \text{ m} - (0.685c)(0.528\,\mu\text{s}))}{\sqrt{1 - (0.685c)^2 / c^2}} = -80.9 \text{ m}
\end{align*}$

The time separation observed by ``O'`` is

$Δt' = \frac{-Δt + (u/c^2)Δx}{\sqrt{1 - \frac{u^2}{c^2}}} \\
= \frac{-(0.528\,\mu\text{s}) + ((0.685c)/c^2)(49.5 \text{ m})}{\sqrt{1 - \frac{(0.685c)^2}{c^2}}} = -0.569 \,\mu\text{s}$
"""
end

# ╔═╡ 6ad25670-b393-4606-823e-79ab3d7d1b9b
md"""
### Problem 2.23

Let the speed of light be

$c = 1000 \text{ mi/h}$

Let the distance between Los Angeles and Boston be

$L_0 = 3000 \text{ mi}$

Let the plane's speed be

$u = 600 \text{ mi/h}$

Let the departure time be

$t_1 = 10 \text{ h}$

**(a).**
When I land in Boston, the time according to my watch is

$t_1 + Δt' = t_1 + \frac{L}{u} = t_1 + \frac{L_0 \sqrt{1 - \frac{u^2}{c^2}}}{u} = (10 \text{ h}) + (3000 \text{ mi}) \sqrt{1 - \frac{600}{1000} \text{ mi/h}} = 14 \text{ h}$

Which is equal to ``2 \text{ PM}``.

**(b).**
In this case, the clock reads

$t_1 + Δt = t_1 + \frac{L_0}{u} = (10 \text{ h}) + \frac{(3000 \text{ mi/h})}{(600 \text{ mi/h})} = 15 \text{ h} = 3 \text{ PM}$

**(c).**
The Boston clock is one hour ahead since it's synchronized, so the watch clock starts at 9 AM.

The time read on the watch is

$t_1 + Δt' = (9 \text{ h}) + (4 \text{ h}) = 13 \text{ h} = 1 \text{ PM}$

and the time read on the airport is synchronized so the time read on the airport clock is

$t_1 + Δt = (10 \text{ h}) + (5 \text{ h}) = 15 \text{ h} = 3 \text{ PM}$
"""

# ╔═╡ 9da7d655-611b-40f5-8942-c5738517f802
md"""
### Problem 2.24

Let ``u = 0.6c``.

**(a).**
Apply the Doppler effect for moving away from the source:

$f' = f \sqrt{\frac{1 - u/c}{1 + u/c}} = (1 / \text{year}) \sqrt{\frac{1 - 0.6}{1 + 0.6}} = 0.5 \text{ year}$

**(b).**
Apply the Doppler effect for moving towards the source:

$f' = f \sqrt{\frac{1 + u/c}{1 - u/c}} = (1 / \text{year}) \sqrt{\frac{1 + 0.6}{1 - 0.6}} = 2 \text{ year}$

**(c).**
During the outbound journey, Casper receives 16 years × 0.5 = 8 signals and 4 years × 2 = 8 signals for the return trip.
So Casper receives 8 + 8 = 16 signals indicating to him that his sister celebrated her 16th birthday.
"""

# ╔═╡ 5995f589-7c4f-4d4a-8334-aad575ff2f72
md"""
### Problem 2.37

Let the momentum of the particle be

$𝐩 = 1256 \text{ MeV/}c$

Let the total relativistic energy of the particle be

$E = 1351 \text{ MeV}$

**(a).**
The particles rest energy is given by solving for ``E_0 = mc^2`` in ``E = \sqrt{(pc)^2 + (mc^2)^2}``

$\begin{align*}
E^2 &= (pc)^2 + (mc^2)^2 \\
(mc^2)^2 &= E^2 - (pc)^2 \\
mc^2 &= \sqrt{E^2 - (pc)^2} \\
&= \sqrt{(1351 \text{ MeV})^2 - (1256 \text{ MeV})^2} \\
&= 498 \text{ MeV}
\end{align*}$

**(b).**
Let the momentum of the particle according to ``O'`` be

$𝐩' = 857 \text{ MeV}/c$

The total relativistic energy of the particle according to ``O'`` is

$E = \sqrt{(pc)^2 + (mc^2)^2} = \sqrt{(857 \text{ MeV})^2 + (498 \text{ MeV})^2} = 991 \text{ MeV}$
"""

# ╔═╡ d5657bab-068d-48cf-bcac-11dc8b8bdd68
md"""
### Problem 2.45

Let the velocity of both the electron and positron to be

$v = 0.99999c$

Let the rest energy of the muons to be

$mc^2 = 105.7 \text{ MeV}$

The kinetic energy of the muons is given by the solving for ``K`` in the relativistic total energy formula

$K = E - mc^2$

The momentum-energy relationship formula tells us that

$E = \sqrt{(pc)^2 + (mc^2)^2}$

Use the relativistic momentum formula to find ``pc``,

$pc = \frac{mvc}{\sqrt{1 - v^2 / c^2}} = \frac{mc^2 (v/c)}{\sqrt{1 - v^2 / c^2}} = \frac{(105.7 \text{ MeV})(0.99999)}{\sqrt{1 - 0.99998}} = 23635 \text{ MeV}/c$

Going back to the momentum-energy relationship formula we get

$E = \sqrt{(23635 \text{ MeV})^2 + (105.7 \text{ MeV})^2} = 23635 \text{ MeV}$

Which implies that the kinetic energy of each of the muons is

$K = (23635 \text{ MeV}) - (105.7 \text{ MeV}) = 23530 \text{ MeV}$
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PhysicalConstants = "5ad8b20f-a522-5ce9-bfc9-ddf1d5bda6ab"
Unitful = "1986cc42-f94f-5a68-af5c-568840ba703d"

[compat]
PhysicalConstants = "~0.2.1"
Unitful = "~1.10.1"
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
git-tree-sha1 = "0afd9e6c623e379f593da01f20590bacc26d1d14"
uuid = "efcf1570-3423-57d1-acb7-fd33fddbac46"
version = "0.8.1"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Unitful]]
deps = ["ConstructionBase", "Dates", "LinearAlgebra", "Random"]
git-tree-sha1 = "b95e0b8a8d1b6a6c3e0b3ca393a7a285af47c264"
uuid = "1986cc42-f94f-5a68-af5c-568840ba703d"
version = "1.10.1"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
"""

# ╔═╡ Cell order:
# ╟─9695c85a-7ed2-11ec-1c4b-fb03107b37bd
# ╟─f7e6207f-2380-4017-a62b-e2c3cbf8fd1b
# ╟─6ad25670-b393-4606-823e-79ab3d7d1b9b
# ╟─9da7d655-611b-40f5-8942-c5738517f802
# ╟─5995f589-7c4f-4d4a-8334-aad575ff2f72
# ╟─d5657bab-068d-48cf-bcac-11dc8b8bdd68
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
