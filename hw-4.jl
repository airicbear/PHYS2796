### A Pluto.jl notebook ###
# v0.18.1

using Markdown
using InteractiveUtils

# ╔═╡ a8d7e95c-8d18-11ec-1fe3-c94dff5fecfa
begin
	using Unitful
	using PhysicalConstants.CODATA2018: h, m_e, c_0, e, ħ, N_A, VacuumElectricPermittivity as ϵ_0
	
	md"""
	# HW 4
	
	Eric Nguyen $\qquad$ TUID: 915786865 $\qquad$ Date: Feb 14, 2022
	"""
end

# ╔═╡ 73741a26-b7e0-41cb-826a-faf5938d4328
let
	λ = 0.10u"μm"
	ΔV = h^2 / (2 * m_e * e * λ^2) |> u"pV"
	
md"""
### Problem 4.6

**(a).**
The de Broglie wavelength of the electrons should be ``\lambda = 0.10 \,\mu\text{m}``.

**(b).**
Using the de Broglie wavelength, we can write the de Broglie wavelength equation as

$\lambda = \frac{h}{\sqrt{2mK}} = \frac{h}{\sqrt{2m eΔV}}$

Solving for ``ΔV`` we get

$ΔV = \frac{h^2}{2me\lambda^2} = \frac{(6.6 × 10^{-34} \text{ J s})^2}{2(9.1 × 10^{-31} \text{ kg})(1.6 × 10^{-19} \text{ C})(0.10 \,\mu\text{m})^2} = 1.5 \text{ pV}$
"""
end

# ╔═╡ e5fc30f3-3d99-4b80-919d-7ad2863d31b5
let	
	Δx = 0.1u"nm"
	Δp = ħ / 2Δx |> u"eV/c"
	v = Δp / m_e |> u"m/s"
	K = 0.5m_e * v^2 |> u"eV"
	
md"""
### Problem 4.20

**(a).**
Let ``Δx = 0.1 \text{ nm}``.
Solve for ``Δp`` in the Heisenberg position--momentum uncertainty

$Δp ≥ \frac{\hbar}{2Δx} = \frac{1 × 10^{-34} \text{ J s}}{2 (0.1 \text{ nm})} = 1000 \text{ eV/}c$

**(b).**
We want to find the kinetic energy of an electron with a momentum equal to ``Δp``.
The velocity is given by

$v = \frac{Δp}{m}$

The kinetic energy of the electron is then

$K = \frac{1}{2} mv^2 = \frac{1}{2} m \left(\frac{Δp}{m}\right)^2 = \frac{(Δp)^2}{2m} = \frac{(1000 \text{ eV/}c)^2}{2(9 × 10^{-31} \text{ kg})} = 1 \text{ eV}$

**(c).**
Yes this gives a reasonable value for the kinetic energy in an atom.
"""
end

# ╔═╡ ff9da7e7-657f-441a-91ef-f21d44a64af8
md"""
### Problem 6.6

In solving for ``K`` in the distance of closest approach formula we get

$K = \frac{1}{4\pi\epsilon_0} \frac{zZe^2}{d} = (2)(79)(1.44 \text{ MeV} ⋅ \text{fm}) \frac{1}{7.0 \text{ fm}} = 33 \text{ MeV}$
"""

# ╔═╡ 426daf7f-dc9e-44db-b312-c45394827f1d
let
	ρ = 19.3u"g/cm^3"
	M = 197u"g/mol"
	n = N_A * ρ / M |> u"m^-3"

	z = 2
	Z = 79
	K = 6.0u"MeV"
	t = 3.0e-6u"m"
	r = 12u"cm"
	ω = 3.0e7u"s^-1"

	b = ((z*Z) / (2K)) * (e^2 / (4π * ϵ_0) |> u"MeV*fm") * cot(15)

	θ = 30
	Nθ = (n*t/4r^2) * (z*Z/2K)^2 * (e^2/(4π*ϵ_0))^2 * (1/(sin(θ/2)^4)) |> u"m^-2"

	R = 0.50u"cm"
	A = π*R^2

	ω * A * Nθ |> u"s^-1"
	
md"""
### Problem 6.13

Let ``\rho = 19.3 \text{ g/cm}^3``,
``M = 197 \text{ g/mol}``,
``K = 6.0 \text{ MeV}``,
``r = 12 \text{ cm}``,
``R = 0.5 \text{ cm}``,
``\theta = 30^∘``,
``\omega = 3.0 × 10^7 \text{ s}^{-1}``,
``t = 3.0 × 10^{-6} \text{ m}``,
``z = 2``, and
``Z = 79``.
The number of nuclei per unit volume is

$n = \frac{N_A \rho}{M} = \frac{(6.02 × 10^{23} \text{ atoms/moles})(19.3 \text{ g/cm}^3)}{(197 \text{ g/mole})} = 5.9 × 10^{28} \text{ m}^{-3}$

The Rutherford scattering formula gives us

$\begin{align*}
N(\theta) &= \frac{nt}{4r^2} \left(\frac{zZ}{2K}\right)^2 \left(\frac{e^2}{4\pi\epsilon_0}\right)^2 \frac{1}{\sin^4{\frac{1}{2} \theta}} \\
&= \frac{(5.9 × 10^{28} \text{ m}^{-3})(3.0 × 10^{-6} \text{ m})}{4(12 \text{ cm})^2} \left[\frac{(2)(79) (1.44 \text{ MeV} ⋅ \text{fm})^2}{2(6.0 \text{ MeV})}\right]^2 \frac{1}{\sin^4{15^∘}} \\
&= 0.0062 \text{ m}^{-2}
\end{align*}$

The rate at which the detector measures scattered alpha particles is the rate of incident particles ``\omega`` times the rate at which they hit the detector at some angle ``\theta``, ``A N(\theta)``, where ``A = \pi R^2 = 0.79 \text{ cm}^2``,

$\omega A N(\theta) = (3.0 × 10^7 \text{ s}^{-1})(0.79 \text{ cm}^2)(0.0062 \text{ m}^{-2}) = 15 \text{ s}^{-1}$
"""
end

# ╔═╡ c245ba97-bf48-4e75-b20e-e878aeabd536
let	
	λ = 59.0u"nm"
	ΔE = 13.60u"eV"
	K = h*c_0 / λ - ΔE |> u"eV"
	
md"""
### Problem 6.24

The excitation energy is

$ΔE = E_n - E_1 = (0 - (-13.60 \text{ eV})) = 13.60 \text{ eV}$

The kinetic energy is then

$K = hf - ΔE = \frac{hc}{\lambda} - ΔE = \frac{(6.6 × 10^{-34} \text{ J s})(3.0 × 10^8 \text{ m/s})}{59.0 \text{ nm}} - (13.60 \text{ eV}) = 7.4 \text{ eV}$
"""
end

# ╔═╡ 751fcdec-6c89-4127-9f4a-41d465b9f0f1
md"""
### Problem 6.32

The first current drop will be recorded at

$V = \frac{E}{e} = \frac{hf}{e} = \frac{hc}{e\lambda} = \frac{(6.6 × 10^{-34} \text{ J s}) (3.0×10^8 \text{ m/s})}{(1.6 × 10^{-9} \text{ C})(590 \text{ nm})} = 2.1 \text{ V}$
"""

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
git-tree-sha1 = "b649200e887a487468b71821e2644382699f1b0f"
uuid = "1986cc42-f94f-5a68-af5c-568840ba703d"
version = "1.11.0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
"""

# ╔═╡ Cell order:
# ╟─a8d7e95c-8d18-11ec-1fe3-c94dff5fecfa
# ╟─73741a26-b7e0-41cb-826a-faf5938d4328
# ╟─e5fc30f3-3d99-4b80-919d-7ad2863d31b5
# ╟─ff9da7e7-657f-441a-91ef-f21d44a64af8
# ╟─426daf7f-dc9e-44db-b312-c45394827f1d
# ╟─c245ba97-bf48-4e75-b20e-e878aeabd536
# ╟─751fcdec-6c89-4127-9f4a-41d465b9f0f1
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
