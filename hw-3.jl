### A Pluto.jl notebook ###
# v0.18.1

using Markdown
using InteractiveUtils

# ╔═╡ 6dca3d26-879e-11ec-3d9b-e9455efb8810
begin
	using Unitful
	using PhysicalConstants.CODATA2018: c_0, h, e, m_e
	
	md"""
	# HW 3
	
	Eric Nguyen ``\qquad`` TUID: 915786865 ``\qquad`` Date: Feb 7, 2022
	"""
end

# ╔═╡ 1275b246-fc0d-4ee0-ab31-8068e93869cd
let
	θ = 38.0
	d = 0.328u"nm"
	n = 1
	λ = 2*d*sind(θ) / n
	θ′ = asind(λ / (2d*sind(45))) - 45
	
	md"""
	### Problem 3.3
	
	Let ``\theta = 38.0^∘``.
	Let ``d = 0.328 \text{ nm}``.
	Let ``n = 1``.
	
	**(a).**
	Solving Bragg's law for ``\lambda``,
	
	$\lambda = \frac{2d \sin{\theta}}{n} = \frac{2 (0.328 \text{ nm}) \sin{38.0^∘}}{1} = 0.404 \text{ nm}$
	
	**(b).**
	Recalculate ``d = d \sin{45^∘}`` and solve Bragg's law for ``\theta``,

	$\theta = \sin^{-1}\left(\frac{n \lambda}{2d \sin{45^∘}}\right) = \sin^{-1}\left(\frac{0.404 \text{ nm}}{2(0.328 \text{ nm}) \sin{45^∘}}\right) = 15.5^∘$
	"""
end

# ╔═╡ 9dda7e50-c322-4c18-a1d0-c80fcb0e830c
let
	ϕ = 4.31u"eV"
	λ = 252.0u"nm"
	f = c_0 / λ
	Kmax = h*f - ϕ |> u"eV"

	λc = h*c_0 / ϕ |> u"nm"
	Vs = Kmax / e |> u"V"

	md"""
	### Problem 3.12 (3.2)
	
	**(a).**
	The cutoff wavelength for zinc is
	
	$\lambda_c = \frac{hc}{\phi} = \frac{1240 \text{ eV} ⋅ \text{nm}}{4.31 \text{ eV}} = 288 \text{ nm}$
	
	**(b).**
	The maximum kinetic energy of photoelectrons gives
	
	$K_{\text{max}} = hf - \phi = \frac{hc}{\lambda} - \phi = \frac{1240 \text{ eV} ⋅ \text{nm}}{252 \text{ nm}} - 4.31 \text{ eV} = 0.610 \text{ eV}$
	
	The stopping potential is then
	
	$V_s = \frac{K_{\text{max}}}{e} = \frac{0.610 \text{ eV}}{e} = 0.610 \text{ V}$
	"""
end

# ╔═╡ 971348f1-db64-46f9-811e-20e6933e192a
let
	T = 6000u"K"
	λmax = 2.8978e-3u"m*K" / T |> u"nm"
	
	md"""
	### Problem 3.18 (3.3)
	
	Let ``T = 6000 \text{ K}``.
	From Wien's displacement law,
	
	$\lambda_{\text{max}} = \frac{2.8978 × 10^{-3} \text{ m} ⋅ \text{K}}{T} = \frac{2.8978 × 10^{-3} \text{ m} ⋅ \text{K}}{6000 \text{ K}} = 483 \text{ nm}$
	
	The peak sensitivity of the human is ``555 \text{ nm}`` which is greater than the wavelength at which the Sun emits its peak intensity.
	"""
end

# ╔═╡ fdf0b2fa-d3b9-4ca3-a12b-8d41cec9ba8b
let
	E = 0.662u"MeV"
	λ = h*c_0 / E |> u"nm"
	θ = 52.2
	E′ = ((1 / (m_e * c_0^2)) * (1 - cosd(θ)) + 1/E)^-1 |> u"MeV"

	# Alternative approach to finding E′:
	# λ′ = λ + h / (m_e * c_0) * (1 - cosd(θ)) |> u"nm"
	# E′ = h*c_0 / λ′ |> u"MeV"
	
	Ke = E - E′
		
	md"""
	### Problem 3.28 (3.4)
	**(a).**
	Using the Compton scattering equations, solve for ``E'``,
	
	$\begin{align*}
	E' &= \left[\frac{1}{m_e c^2} (1 - \cos{\theta}) + \frac{1}{E}\right]^{-1} \\
	&= \left[\frac{1}{m_e c^2} (1 - \cos{52.2^∘}) + \frac{1}{0.662 \text{ MeV}}\right]^{-1} = 0.441 \text{ MeV}
	\end{align*}$
	
	**(b).**
	The kinetic energy of the scatter electrons is
	
	$K_e = E - E' = 0.662 \text{ MeV} - 0.441 \text{ MeV} = 0.221 \text{ MeV}$
	"""
end

# ╔═╡ 80fb7c03-139f-4782-a504-519bb45687b1
let
	ΔV = 7.5e4u"V" |> u"kV"
	λmin = h * c_0 / (e * ΔV) |> u"nm"
	
	md"""
	### Problem 3.32 (3.5)
	
	From the bremsstrahlung equation,
	
	$\lambda_{\text{min}} = \frac{hc}{e ΔV} = \frac{hc}{e (7.5 × 10^4 \text{ V})} = 0.017 \text{ nm}$
	"""
end

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
# ╟─6dca3d26-879e-11ec-3d9b-e9455efb8810
# ╟─1275b246-fc0d-4ee0-ab31-8068e93869cd
# ╟─9dda7e50-c322-4c18-a1d0-c80fcb0e830c
# ╟─971348f1-db64-46f9-811e-20e6933e192a
# ╟─fdf0b2fa-d3b9-4ca3-a12b-8d41cec9ba8b
# ╟─80fb7c03-139f-4782-a504-519bb45687b1
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
