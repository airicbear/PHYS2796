### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 4c12e68c-a854-11ec-25f8-49ef87b467c0
begin
	using Unitful
	using PhysicalConstants.CODATA2018: h, m_e, m_n, c_0, ħ, h
	
md"""
# HW 7

Eric Nguyen $\qquad$ TUID: 915786865 $\qquad$ Mar 22, 2022
"""
end

# ╔═╡ 05386b29-c4ee-4b83-a557-8bb219a4feb2
let
md"""
### Problem 8.2

**8.1 The Pauli Exclusion Principle**
Nitrogen ``(Z = 7)`` has three electrons in the ``2p`` level (in addition to two electrons each in the ``1s`` and ``2s`` levels).

(a) Consistent with the Pauli principle, what is the maximum possible value of the total ``m_s`` of all seven electrons?

(b) List the quantum numbers of the three ``2p`` that result in the largest total ``m_s``.

(c) If the electrons in the ``2p`` level occupy states that maximize ``m_s``, what would be the maximum possible value for the total ``m_l``?

(d) What would be the maximum possible total ``m_l`` if the three ``2p`` electrons were in states that did not maximize ``m_s``?
"""

md"""
### Problem 8.2

**(a).**
For a ``p`` state ``l = 1``, the possible ``m_l`` values are ``+1, 0, -1`` for each of which we can assign ``m_s = +½`` for a total of ``+3/2``.
The remaining electrons in the ``1s`` and ``2s`` levels have ``m_s = +½`` and ``m_s = -½`` and do not contribute to the total.
Thus the maximum possible value of the total ``m_s`` of all seven electrons is ``+3/2``.

**(b).**
``(n, l, m_l, m_s) = (2, 1, +1, +½), (2, 1, 0, +½), (2, 1, -1, +½)``

**(c).**
There is only one state such that ``m_s`` is maximized, which is given by (b).
Thus, the maximum possible value for the total ``m_l`` for the states maximizing ``m_s`` is ``+1 + 0 + (-1) = 0``.

**(d).**
The maximum possible value for the total ``m_l`` for the states not maximizing ``m_s`` is ``+ 1 + 1 = 2`` since the there are two states where ``m_l = +1`` from ``m_s = ±½``.
"""
end

# ╔═╡ 46aad136-64b6-40eb-8170-d66d8b9cb120
let
md"""
### Problem 8.8

**8.2 Electronic States in Many-Electron Atoms**
Negative ions can be produced by adding an electron to a neutral atom.
what would be the electron configuration of

(a) ``\text{Be}^-``

(b) ``\text{N}^-``

(c) ``\text{Cl}^-``

(d) ``\text{Cu}^-``
"""
md"""
### Problem 8.8

**(a).** The electron configuration of ``\text{Be}^-`` is ``1s^2 2s^2 2p^1``.

**(b).** The electron configuration of ``\text{N}^-`` is ``1s^2 2s^2 2p^4``.

**(c).** The electron configuration of ``\text{Cl}^-`` is ``[\text{Ar}]``.

**(d).** The electron configuration of ``\text{Cu}^-`` is ``[\text{Ar}] 4s^2 3d^{10}``.
"""
end

# ╔═╡ a3317137-7943-495c-8418-a035bfeb0168
let
md"""
### Problem 8.16

**8.5 Inner Electrons: Absorption Edges and X Rays**
A certain element emits a ``K_{\alpha}`` X ray of wavelength 0.1940 nm.
Identify the element.
"""
md"""
### Problem 8.16

$E = \frac{hc}{\lambda} = 6.391 \text{ keV} = (10.2 \text{ eV})(Z - 1)^2 \implies Z = 26$

The element is ``\text{Fe}`` (Iron) from ``(Z = 26)``.
"""
end

# ╔═╡ 440e37bd-964e-4300-a8f1-49442d7fe36f
let
	λ = 0.1940u"nm"
	E = h*c_0 / λ |> u"keV"
	Z = sqrt(E / 10.2u"eV") + 1
	:Z => round(Int, Z)
end

# ╔═╡ 54ec1857-0a58-4941-9b92-269a3edb2945
let
md"""
### Problem 8.17

**8.5 Inner Electrons: Absorption Edges and X Rays**
Compute the ``K_{\alpha}`` X Ray energies of calcium ``(Z = 20)``, zirconium ``(Z = 40)``, and mercury ``(Z = 80)``.
Compare with the measured values of ``3.69 \text{ keV}``, ``15.8 \text{ keV}``, and ``70.8 \text{ keV}``.
(See Question 16.)
"""
md"""
### Problem 8.17

The computed ``K_{\alpha}`` X Ray energies of calcium ``(Z = 20)``, zirconium ``(Z = 40)``, and mercury ``(Z = 80)`` are ``3.68 \text{ keV}, 15.5 \text{ keV},`` and ``63.7 \text{ keV}``, respectively.
While the first two calculations are reasonably close to their respective measured values, there is a clear discrepancy for the calculation of the ``K_{\alpha}`` X Ray energy of mercury compared to its measured value.
"""
end

# ╔═╡ cb2bd34e-abe1-4f88-81a0-612466ea6c1e
let
	E(Z) = (10.2u"eV") * (Z - 1)^2 |> u"keV"
	:Ca => E(20), # Calcium
	:Zr => E(40), # Zirconium
	:Hg => E(80)  # Mercury
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
git-tree-sha1 = "554149b8b82e167c1fa79df99aeabed4f8404119"
uuid = "f2b01f46-fcfa-551c-844a-d8ac1e96c665"
version = "1.3.15"

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
# ╟─4c12e68c-a854-11ec-25f8-49ef87b467c0
# ╟─05386b29-c4ee-4b83-a557-8bb219a4feb2
# ╟─46aad136-64b6-40eb-8170-d66d8b9cb120
# ╟─a3317137-7943-495c-8418-a035bfeb0168
# ╠═440e37bd-964e-4300-a8f1-49442d7fe36f
# ╟─54ec1857-0a58-4941-9b92-269a3edb2945
# ╠═cb2bd34e-abe1-4f88-81a0-612466ea6c1e
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
