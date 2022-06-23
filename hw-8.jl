### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ c1ca9ba8-ac6c-11ec-3d5a-75413c690410
begin
	using Unitful
	using PhysicalConstants.CODATA2018: h, c_0, N_A, m_e, k_B
	using DataFrames
	using StatsBase
md"""
# HW 8

Eric Nguyen $\qquad$ TUID: 915786865 $\qquad$ Date: Mar 29, 2022
"""
end

# ╔═╡ 7544a0de-0bed-48ca-857b-e30baa0fd032
let
md"""
### Problem 9.18

**9.4 Molecular Vibrations**
Figure 9.32 shows the energy minimum of molecular NaCl, through which a parabola has been drawn.
Following the methods of Example 9.4, find the effective vibrational force constant, the vibrational frequency and wavelength, and the vibrational photon energy for NaCl.

In what range of the electromagnetic spectrum would such radiations be found?

What is the maximum vibrational quantum number for which the parabolic approximation remains valid for NaCl?
"""
let
	m1 = 22.99u"u"
	m2 = 35.45u"u"

	k = 2*(0.25u"eV") / (0.04u"nm")^2 |> u"eV/m^2"
	m = m1*m2 / (m1 + m2)

	f = (1/2π) * sqrt(k/m) |> u"Hz"
	E = h*f |> u"eV"
	λ = h*c_0 / E |> u"μm"
end
md"""
### Problem 9.18

To find the frequency, we must know the force constant ``k``.
To estimate ``k``, we consider the molecule to behave like a simple harmonic oscillator in the vicinity of its equilibrium separation ``R_{\text{eq}}``, and we fit a parabolic oscillator potential energy ``U = \frac{1}{2} kx^2`` to the molecular energy in that region.
The equation of the parabola is

$E = E_{\text{min}} = \frac{1}{2} k(R - R_{\text{eq}})^2$

The constant ``k`` can be estimated from the graph by finding the value of ``R - R_{\text{eq}}`` that is necessary for a certain value of ``E - E_{\text{min}}``.
As shown in figure, when ``E - E_{\text{min}} = 0.25 \text{ eV}``, the value of ``R - R_{\text{eq}}`` is ``\frac{1}{2}(0.08 \text{ nm}) =  0.04 \text{ nm}``.
Solving for ``k``, we obtain

$k = \frac{2(E - E_{\text{min}})}{(R - R_{\text{eq}})^2} = \frac{2(0.25 \text{ eV})}{(0.04 \text{ nm})^2} = 312.5 \text{ eV/nm}^2 = 3.125 × 10^{20} \text{ eV/m}^2$

The reduced mass of ``\text{NaCl}`` is calculated as

$m = \frac{m_1m_2}{m_1 + m_2} = \frac{(22.99 \text{ u})(35.45 \text{ u})}{(22.99 \text{ u}) + (35.45 \text{ u})} = 13.95 \text{ u}$

We can now calculate the vibrational frequency:

$f = \frac{1}{2\pi} \sqrt{\frac{k}{m}} = \frac{1}{2 \pi} \sqrt{\frac{3.125 × 10^{20} \text{ eV/m}^2}{13.95 \text{ u}}} = 7.4 × 10^{12} \text{ Hz}$

The corresponding photon energy is

$E = hf = (4.14 × 10^{-15} \text{ eV} ⋅ \text{s})(7.4 × 10^{13} \text{ Hz}) = 0.031 \text{ eV}$

The wavelength of this radiation is given by

$E = hf = \frac{hc}{\lambda} \implies \lambda = \frac{hc}{E} = \frac{(4.14 × 10^{-15} \text{ eV})(3.00 × 10^8 \text{ m/s})}{0.031 \text{ eV}} = 40.5 \,\mu \text{m}$

which is in the infrared region of the spectrum.
The parabolic approximation is valid for ``0.25 \text{ eV}``, which corresponds to the maximum vibrational quantum number ``N = 8``.
"""
end

# ╔═╡ ef51895d-04eb-4aaf-8d9d-7246901d9817
let
md"""
### Problem 10.2

**10.1 Statistical Analysis**

(a) Considering the numbers of heads and tails, how many macrostates are there when five coins are tossed?

(b) What is the total number of possible microstates in tossing five coins?

(c) Find the number of microstates for each macrostate and be sure that the total agrees with your answer to part (b).
"""
md"""
### Problem 10.2

**(a).**
The macrostates when five coins are tossed are

$\text{(H,H,H,H,H)},\text{(H,H,H,H,T)},\text{(H,H,H,T,T)},\text{(H,H,T,T,T)},\text{(H,T,T,T,T)},\text{(T,T,T,T,T)}$

which amounts to six macrostates.

**(b).**
The total number of possible microstates in tossing five coins is ``2^5 = 32``.

**(c).**
The number of microstates for each macrostate are

$\begin{align*}
(\text{H,H,H,H,H}) &\implies \begin{pmatrix} 5 \\ 0 \end{pmatrix} = 1 \text{ microstates} \\
(\text{H,H,H,H,T}) &\implies \begin{pmatrix} 5 \\ 1 \end{pmatrix} = 5 \text{ microstates} \\
(\text{H,H,H,T,T}) &\implies \begin{pmatrix} 5 \\ 2 \end{pmatrix} = 10 \text{ microstates} \\
(\text{H,H,T,T,T}) &\implies \begin{pmatrix} 5 \\ 3 \end{pmatrix} = 10 \text{ microstates} \\
(\text{H,T,T,T,T}) &\implies \begin{pmatrix} 5 \\ 4 \end{pmatrix} = 5 \text{ microstates} \\
(\text{T,T,T,T,T}) &\implies \begin{pmatrix} 5 \\ 5 \end{pmatrix} = 1 \text{ microstates}
\end{align*}$

The total agrees with the answer for (b),

$1 + 5 + 10 + 10 + 5 + 1 = 32 \text{ microstates}$
"""
end

# ╔═╡ 106457ed-4e17-4a36-8bef-c469dc336810
let
md"""
### Problem 10.6

**10.2 Classical and Quantum Statistics**
A system of four oscillator-like particles shares 8 units of energy.
(That is, the particles can accept energy only in equal units, in which the oscillator energy spacing is 1 unit.)

(a) List the macrostates, and for each macrostate give the number of microstates for distinguishable classical particles, indistinguishable quantum particles with integral spin, and indistinguishable quantum particles with half-integral spin.

(b) Calculate the probability to find a particle with exactly 2 units of energy for each of the three different types of particles.
"""
macrostates = [
	(8,0,0,0), (7,1,0,0), (6,2,0,0), (6,1,1,0), (5,3,0,0), (5,2,1,0), (5,1,1,1), (4,4,0,0), (4,3,1,0), (4,2,2,0), (4,2,1,1), (3,3,2,0), (3,3,1,1), (3,2,2,1), (2,2,2,2)
]
distinguishable = Int.([(factorial(4) / prod([factorial(N) for N ∈ values(countmap(x))])) for x ∈ macrostates])
indistinguishable_integral = [1 for x ∈ macrostates]
indistinguishable_halfintegral = Int.([!any(values(countmap(x)) .> 2) for x ∈ macrostates])

df = let
	df = DataFrame()
	df[!,"Macrostates"] = macrostates
	df[!,"Distinguishable"] = distinguishable
	df[!,"Indist. integral"] = indistinguishable_integral
	df[!,"Indist. half-integral"] = indistinguishable_halfintegral	
	df
end


b = [
	sum([count(==(2), macrostates[i]) * distinguishable[i] for i ∈ 1:length(macrostates)]) / (4 * sum(distinguishable)),
	sum([count(==(2), macrostates[i]) * indistinguishable_integral[i] for i ∈ 1:length(macrostates)]) / (4 * sum(indistinguishable_integral)),
	sum([count(==(2), macrostates[i]) * indistinguishable_halfintegral[i] for i ∈ 1:length(macrostates)]) / (4 * sum(indistinguishable_halfintegral))
]
md"""
### Problem 10.6

**(a).**
Let ``N = 4`` and ``Q = 8``.
The expected number of microstates is

$W_{\text{total}} = \frac{(N + Q - 1)!}{Q! (N - 1)!} = \frac{11!}{8! \, 3!} = 165 \text{ microstates}$

The microstates for each macrostate are as follows:
$(df)

where the columns are calculated accordingly:

$\begin{align*}
\text{Distinguishable} &\implies W = \frac{N!}{N_0! N_1! N_3! N_4!} \\
\text{Indist. integral} &\implies W = 1 \\
\text{Indist. half-integral} &\implies W = \begin{cases} 0 & N_E > 2 \text{ for } E ∈ \{0,1,2,3\} \\
1 &\text{otherwise} \end{cases}
\end{align*}$

The sums of the columns are, respectively, $(sum(df[!,"Distinguishable"])), $(sum(df[!,"Indist. integral"])), $(sum(df[!,"Indist. half-integral"])), as expected.

**(b).**
Let the expression ``N_i`` represent the number of particles with energy ``E = 2`` in the ``i``th macrostate.
For particles with distinguishable spin, we have

$p(2) = \frac{\sum_i N_i W_i}{N \sum_i W_i} = \frac{(0)(4) + (0)(12) + ⋯ + (4)(1)}{4(165)} = \frac{112}{660} = 0.170$

For particles with indistinguishable, integral spin, we have

$p(2) = \frac{\sum_i N_i W_i}{N \sum_i W_i} = \frac{(0)(1) + (0)(1) + ⋯ + (4)(1)}{4(15)} = \frac{12}{60} = 0.200$

For particles indistinguishable, half-integral spin, we have

$p(2) = \frac{\sum_i N_i W_i}{N \sum_i W_i} = \frac{(0)(0) + (0)(1) + ⋯ + (4)(0)}{4(12)} = \frac{8}{48} = 0.167$
"""
end

# ╔═╡ 582c9bb5-c00b-4173-baae-6a163aaee382
let
md"""
### Problem 10.25

**10.7 Applications of Fermi-Dirac Statistics**
Calculate the Fermi energy for magnesium, assuming two free electrons per atom.
"""
let
	ρ = 1.738u"g/cm^3" |> u"kg/m^3"
	M = 24.305u"g/mol" |> u"kg/mol"
	EF = (h^2 / 2m_e) * ((3 / 8π) * (2ρ * N_A / M))^(2/3) |> u"eV"
end
md"""
### Problem 10.25

Each magnesium atom contributes two valence electrons to the metal, and so the number of electrons per unit volume, ``N / V``, is equal to double the number of sodium atoms per unit volume.
We find this quantity from the density ``\rho`` and the molar mass ``M`` of magnesium:

$\frac{N}{V} = \frac{2 \rho N_A}{M} = \frac{2(1.738 × 10^3 \text{ kg/m}^3)(6.02 × 10^{23} \text{ atoms/mole})}{0.0243 \text{ kg/mole}} = 8.61 × 10^{28} \text{ m}^{-3}$

The Fermi energy is calculated as

$E_F = \frac{h^2}{2m} \left(\frac{3N}{8\pi V}\right)^{2/3} = \frac{h^2}{2m_e} \left(\frac{3}{8\pi} \left(8.61 × 10^{28} \text{ m}^{-3}\right)\right)^{2/3} = 7.11 \text{ eV}$
"""
end

# ╔═╡ 16016969-312f-4158-b5d9-0736520c63a5
let
md"""
### Problem 10.44

**General Problems**
To achieve the Bose-Einstein condensation requires very low temperatures (so that the atoms are moving very slowly and thus have large de Broglie wavelengths) and low densities (so that the atoms don't condense into an ordinary solid).
For the atoms to behave as if they are in a single quantum state, their de Broglie wavelength must be about the same as the distance between atoms, so that their wave packets overlap.

(a) Calculate the atomic spacing for a gas of density ``5 \times 10^{12} \text{ atoms/cm}^3``, which was the density used in the experiments of Wiemann and Cornell shown in Figure 10.21.

(b) Calculate the temperature at which the Rb gas molecules would have a de Broglie wavelength equal to the atomic spacing.
"""
let
	NV = 5e12u"cm^-3"
	d = NV^(-1/3)
	T = h^2 / (d^2 * 2*(85.4678u"u")*k_B) |> u"nK"
end
md"""
### Problem 10.44

**(a).**
The average spacing ``d`` between particles is about ``(N / V)^{-1/3}`` for a gas with density ``N / V``.
The atomic spacing for a gas of density ``N / V = 5 × 10^{12} \text{ atoms/cm}^3`` is then

$d = (N/V)^{-1/3} = (5 × 10^{12} \text{ atoms/cm}^3)^{-1/3} = 5.85 × 10^{-5} \text{ cm}$

**(b).**
The temperature at which the Rb ``(m = 85.4678 \text{ u})`` gas would have a de Broglie wavelength equal to atomic spacing is when

$\frac{h}{\sqrt{2mkT}} = d$

Solving for ``T``, we get

$T = \frac{h^2}{2mkd^2} = \frac{(6.63 × 10^{-34} \text{ J s})^2}{2 (85.4678 \text{ u}) (1.38 × 10^{-23} \text{ J/K}) (5.85 × 10^{-5} \text{ cm})^2} = 328 \text{ nK}$
"""
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
DataFrames = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"
PhysicalConstants = "5ad8b20f-a522-5ce9-bfc9-ddf1d5bda6ab"
StatsBase = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"
Unitful = "1986cc42-f94f-5a68-af5c-568840ba703d"

[compat]
DataFrames = "~1.3.2"
PhysicalConstants = "~0.2.1"
StatsBase = "~0.33.16"
Unitful = "~1.11.0"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0-beta1"
manifest_format = "2.0"
project_hash = "dcfad61eca4050789b07637b341eb5ddca503e12"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.Calculus]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f641eb0a4f00c343bbc32346e1217b86f3ce9dad"
uuid = "49dc2e85-a5d0-5ad3-a950-438e2897f1b9"
version = "0.5.1"

[[deps.ChainRulesCore]]
deps = ["Compat", "LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "9950387274246d08af38f6eef8cb5480862a435f"
uuid = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
version = "1.14.0"

[[deps.ChangesOfVariables]]
deps = ["ChainRulesCore", "LinearAlgebra", "Test"]
git-tree-sha1 = "bf98fa45a0a4cee295de98d4c1462be26345b9a1"
uuid = "9e997f8a-9a97-42d5-a9f1-ce6bfc15e2c0"
version = "0.1.2"

[[deps.CommonSolve]]
git-tree-sha1 = "68a0743f578349ada8bc911a5cbd5a2ef6ed6d1f"
uuid = "38540f10-b2f7-11e9-35d8-d573e4eb0ff2"
version = "0.2.0"

[[deps.Compat]]
deps = ["Base64", "Dates", "DelimitedFiles", "Distributed", "InteractiveUtils", "LibGit2", "Libdl", "LinearAlgebra", "Markdown", "Mmap", "Pkg", "Printf", "REPL", "Random", "SHA", "Serialization", "SharedArrays", "Sockets", "SparseArrays", "Statistics", "Test", "UUIDs", "Unicode"]
git-tree-sha1 = "96b0bc6c52df76506efc8a441c6cf1adcb1babc4"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "3.42.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "0.5.0+0"

[[deps.ConstructionBase]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f74e9d5388b8620b4cee35d4c5a618dd4dc547f4"
uuid = "187b0558-2788-49d3-abe0-74a17ed4e7c9"
version = "1.3.0"

[[deps.Crayons]]
git-tree-sha1 = "249fe38abf76d48563e2f4556bebd215aa317e15"
uuid = "a8cc5b0e-0ffa-5ad4-8c14-923d3ee1735f"
version = "4.1.1"

[[deps.DataAPI]]
git-tree-sha1 = "cc70b17275652eb47bc9e5f81635981f13cea5c8"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.9.0"

[[deps.DataFrames]]
deps = ["Compat", "DataAPI", "Future", "InvertedIndices", "IteratorInterfaceExtensions", "LinearAlgebra", "Markdown", "Missings", "PooledArrays", "PrettyTables", "Printf", "REPL", "Reexport", "SortingAlgorithms", "Statistics", "TableTraits", "Tables", "Unicode"]
git-tree-sha1 = "ae02104e835f219b8930c7664b8012c93475c340"
uuid = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"
version = "1.3.2"

[[deps.DataStructures]]
deps = ["Compat", "InteractiveUtils", "OrderedCollections"]
git-tree-sha1 = "3daef5523dd2e769dad2365274f760ff5f282c7d"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.18.11"

[[deps.DataValueInterfaces]]
git-tree-sha1 = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"
uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464"
version = "1.0.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.DelimitedFiles]]
deps = ["Mmap"]
uuid = "8bb1440f-4735-579b-a4ab-409b98df4dab"

[[deps.Distributed]]
deps = ["Random", "Serialization", "Sockets"]
uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b"

[[deps.DocStringExtensions]]
deps = ["LibGit2"]
git-tree-sha1 = "b19534d1895d702889b219c382a6e18010797f0b"
uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae"
version = "0.8.6"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.Formatting]]
deps = ["Printf"]
git-tree-sha1 = "8339d61043228fdd3eb658d86c926cb282ae72a8"
uuid = "59287772-0a20-5a39-b81b-1366585eb4c0"
version = "0.4.2"

[[deps.Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.InverseFunctions]]
deps = ["Test"]
git-tree-sha1 = "91b5dcf362c5add98049e6c29ee756910b03051d"
uuid = "3587e190-3f89-42d0-90ee-14403ec27112"
version = "0.1.3"

[[deps.InvertedIndices]]
git-tree-sha1 = "bee5f1ef5bf65df56bdd2e40447590b272a5471f"
uuid = "41ab1584-1d38-5bbf-9106-f11c6c58b48f"
version = "1.1.0"

[[deps.IrrationalConstants]]
git-tree-sha1 = "7fd44fd4ff43fc60815f8e764c0f352b83c49151"
uuid = "92d709cd-6900-40b7-9082-c6be49f344b6"
version = "0.1.1"

[[deps.IteratorInterfaceExtensions]]
git-tree-sha1 = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"
uuid = "82899510-4779-5014-852e-03e436cf321d"
version = "1.0.0"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.3"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "7.81.0+0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.10.2+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.LogExpFunctions]]
deps = ["ChainRulesCore", "ChangesOfVariables", "DocStringExtensions", "InverseFunctions", "IrrationalConstants", "LinearAlgebra"]
git-tree-sha1 = "58f25e56b706f95125dcb796f39e1fb01d913a71"
uuid = "2ab3a3ac-af41-5b50-aa03-7779005ae688"
version = "0.3.10"

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

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.0+0"

[[deps.Measurements]]
deps = ["Calculus", "LinearAlgebra", "Printf", "RecipesBase", "Requires"]
git-tree-sha1 = "88cd033eb781c698e75ae0b680e5cef1553f0856"
uuid = "eff96d63-e80a-5855-80a2-b1b0885c5ab7"
version = "2.7.1"

[[deps.Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "bf210ce90b6c9eed32d25dbcae1ebc565df2687f"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.0.2"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.2.1"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.17+2"

[[deps.OrderedCollections]]
git-tree-sha1 = "85f8e6578bf1f9ee0d11e7bb1b1456435479d47c"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.4.1"

[[deps.PhysicalConstants]]
deps = ["Measurements", "Roots", "Unitful"]
git-tree-sha1 = "2bc26b693b5cbc823c54b33ea88a9209d27e2db7"
uuid = "5ad8b20f-a522-5ce9-bfc9-ddf1d5bda6ab"
version = "0.2.1"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.8.0"

[[deps.PooledArrays]]
deps = ["DataAPI", "Future"]
git-tree-sha1 = "28ef6c7ce353f0b35d0df0d5930e0d072c1f5b9b"
uuid = "2dfb63ee-cc39-5dd5-95bd-886bf059d720"
version = "1.4.1"

[[deps.PrettyTables]]
deps = ["Crayons", "Formatting", "Markdown", "Reexport", "Tables"]
git-tree-sha1 = "dfb54c4e414caa595a1f2ed759b160f5a3ddcba5"
uuid = "08abe8d2-0d0c-5749-adfa-8a2ac140af0d"
version = "1.3.1"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.RecipesBase]]
git-tree-sha1 = "6bf3f380ff52ce0832ddd3a2a7b9538ed1bcca7d"
uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
version = "1.2.1"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

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

[[deps.SharedArrays]]
deps = ["Distributed", "Mmap", "Random", "Serialization"]
uuid = "1a1011a3-84de-559e-8e89-a11a2f7dc383"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "b3363d7460f7d098ca0912c69b082f75625d7508"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.0.1"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.StatsAPI]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "c3d8ba7f3fa0625b062b82853a7d5229cb728b6b"
uuid = "82ae8749-77ed-4fe6-ae5f-f523153014b0"
version = "1.2.1"

[[deps.StatsBase]]
deps = ["DataAPI", "DataStructures", "LinearAlgebra", "LogExpFunctions", "Missings", "Printf", "Random", "SortingAlgorithms", "SparseArrays", "Statistics", "StatsAPI"]
git-tree-sha1 = "8977b17906b0a1cc74ab2e3a05faa16cf08a8291"
uuid = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"
version = "0.33.16"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.0"

[[deps.TableTraits]]
deps = ["IteratorInterfaceExtensions"]
git-tree-sha1 = "c06b2f539df1c6efa794486abfb6ed2022561a39"
uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c"
version = "1.0.1"

[[deps.Tables]]
deps = ["DataAPI", "DataValueInterfaces", "IteratorInterfaceExtensions", "LinearAlgebra", "OrderedCollections", "TableTraits", "Test"]
git-tree-sha1 = "5ce79ce186cc678bbb5c5681ca3379d1ddae11a1"
uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c"
version = "1.7.0"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

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

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.12+1"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.0.1+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.41.0+1"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "16.2.1+1"
"""

# ╔═╡ Cell order:
# ╟─c1ca9ba8-ac6c-11ec-3d5a-75413c690410
# ╟─7544a0de-0bed-48ca-857b-e30baa0fd032
# ╟─ef51895d-04eb-4aaf-8d9d-7246901d9817
# ╟─106457ed-4e17-4a36-8bef-c469dc336810
# ╟─582c9bb5-c00b-4173-baae-6a163aaee382
# ╟─16016969-312f-4158-b5d9-0736520c63a5
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
