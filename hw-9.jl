### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 48a7d6d6-b041-11ec-2149-97e7c01713e9
begin
	using Unitful
	using PhysicalConstants.CODATA2018: k_B, N_A, R, m_e, h, c_0
md"""
# HW 9

Eric Nguyen $\qquad$ TUID: 915786865 $\qquad$ Date: Apr 5, 2022
"""
end

# ╔═╡ 1dadee85-c207-4eb1-a9a1-1ea9399bf425
let
md"""
### Problem 11.11

**11.2 The Heat Capacity of Solids**
At what temperature do the lattice and electronic heat capacities of copper become equal to each other?
Take ``T_D = 343 \text{ K}`` and ``E_F = 7.03 \text{ eV}``.
Which contribution is larger above this temperature?
Below this temperature?
"""
let
	TD = 343u"K"
	EF = 7.03u"eV"
	
	:T => sqrt((5k_B * TD^3) / (24π^2 * EF)) |> u"K"
end
md"""
### Problem 11.11

The temperature ``T`` at which the lattice and electronic heat capacities of copper become equal to each other is the temperature at which

$\frac{\pi^2}{2} \frac{R k T}{E_F} = \frac{12\pi^4}{5} R \left(\frac{T}{T_D}\right)^3$

Solving for ``T``, we get

$T = \sqrt{\frac{5k {T_D}^3}{24\pi^2 E_F}} = \sqrt{\frac{5(8.617 × 10^{-5} \text{ eV/K}) {(343 \text{ K})}^3}{24\pi^2 (7.03 \text{ eV})}} = 3.23 \text{ K}$

For ``T > 3.23 \text{ K}`` we find that the lattice contribution is larger.
For ``T < 3.23 \text{ K}`` we find that the electronic contribution is larger.
"""
end

# ╔═╡ 12e5c2b9-fd2c-4b24-bfe4-2bc99ac07451
let
md"""
### Problem 11.16

**11.3 Electrons in Metals** Calculate the de Broglie wavelength of an electron with energy ``E_F`` in copper, and compare the value with the atomic separation in copper.
"""
md"""
### Problem 11.16

For copper, ``E_F = 7.03 \text{ eV}``.

$v = \sqrt{2E_F / m_e} = 1.57 × 10^{6} \text{ m/s}$

$\lambda = \frac{h}{p} = \frac{h}{mv} = 0.463 \text{ nm}$

This is the same order of magnitude as that of the atomic separation in copper ``(0.256 \text{ nm})``.
"""
end

# ╔═╡ bc286de9-3d9a-42dc-be9c-1b20fb838625
let
	EF = 7.03u"eV"
	v = sqrt(2EF / m_e)
	λ = h / (m_e * v) |> u"nm"
end

# ╔═╡ 7327239c-af29-4411-928e-697ac869b1e1
let
md"""
### Problem 11.22

**11.4 Band Theory of Solids**
Estimate the ratio of the concentration of electrons in the conduction band of carbon (an insulator) and silicon (a semiconductor) at room temperature (293 K).
The energy gaps are 5.5 eV for carbon and 1.1 eV for silicon.
Assume that the Fermi energy lies at the center of the gap.
"""
md"""
### Problem 11.22

Using the Fermi--Dirac distribution, the ratio of concentrations in the conduction band is

$\frac{e^{E_{g_2} / 2kT} + 1}{e^{E_{g_1} / 2kT} + 1} = 1.4 × 10^{-38}$

where ``E_{g_1} = 2(E - E_{F_1}) = 5.5 \text{ eV}`` for carbon and ``E_{g_2} = 2(E - E_{F_2}) = 1.1 \text{ eV}`` for silicon.
"""
end

# ╔═╡ 3ce4f53d-2d75-46e9-85f8-7d7d26593bd1
let
	Eg1 = 5.5u"eV"
	Eg2 = 1.1u"eV"
	T = 293u"K"
	(exp(Eg2 / (2k_B * T)) + 1) / (exp(Eg1 / (2k_B * T)) + 1)
end

# ╔═╡ a01e7deb-97a7-4b72-a416-f1ad702f750d
let
md"""
### Problem 11.26

**11.5 Superconductivity**
When superconducting tantalum metal is illuminated with a beam of photons, it is found that photon wavelengths of up to 0.91 mm are sufficient to destroy the superconducting state.
According to the BCS theory, find the energy gap and critical temperature for Ta.
"""
md"""
### Problem 11.26

The minimum energy needed to destroy the superconducting state is when ``\lambda = 0.91 \text{ mm}``, that is

$E_g = \frac{hc}{\lambda} = 1.36 \text{ meV}$

The BCS theory gives the relationship

$T_c = \frac{E_g}{3.53k} = 4.48 \text{ K}$
"""
end

# ╔═╡ 4f995ec9-d2f6-4b99-9503-be6d42125f56
let
	λ = 0.91u"mm"
	E = h * c_0 / λ |> u"meV"
	T = E / (3.53 * k_B) |> u"K"
end

# ╔═╡ d24285e6-cf7d-411b-8281-ac3566fd395e
let
md"""
### Problem 11.36

**11.7 Semiconductor Devices**
Gallium phosphide ``(E_g = 2.26 \text{ eV})`` and zinc selenide ``(E_g = 2.87 \text{ eV})`` are commonly used to make LEDs.
What is the most prominent emission wavelength of these devices, and what color is the corresponding light?
"""
md"""
### Problem 11.36

From the equation ``\lambda = \frac{hc}{E_g}`` we see that Gallium phosphide has the most prominent emission wavelength of ``\lambda = 549 \text{ nm}`` with the corresponding color green (compared to the wavelength ``\lambda = 432 \text{ nm}`` for zinc selenide which corresponds to blue).
"""
end

# ╔═╡ 30be01bf-e81f-4f06-a394-61640078b70a
let
	Eg = 2.26u"eV"
	λ = h * c_0 / Eg |> u"nm"
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
git-tree-sha1 = "6085b8ac184add45b586ed8d74468310948dcfe8"
uuid = "f2b01f46-fcfa-551c-844a-d8ac1e96c665"
version = "1.4.0"

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
# ╟─48a7d6d6-b041-11ec-2149-97e7c01713e9
# ╟─1dadee85-c207-4eb1-a9a1-1ea9399bf425
# ╟─12e5c2b9-fd2c-4b24-bfe4-2bc99ac07451
# ╠═bc286de9-3d9a-42dc-be9c-1b20fb838625
# ╟─7327239c-af29-4411-928e-697ac869b1e1
# ╠═3ce4f53d-2d75-46e9-85f8-7d7d26593bd1
# ╟─a01e7deb-97a7-4b72-a416-f1ad702f750d
# ╠═4f995ec9-d2f6-4b99-9503-be6d42125f56
# ╟─d24285e6-cf7d-411b-8281-ac3566fd395e
# ╠═30be01bf-e81f-4f06-a394-61640078b70a
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
