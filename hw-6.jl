### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 620b57b4-a3b8-11ec-0eaa-7d82d40230fc
begin
	using Unitful
	using PhysicalConstants.CODATA2018: h, m_e, m_n, c_0, ħ
	
md"""
# HW 6

Eric Nguyen $\qquad$ TUID: 915786865 $\qquad$ Mar 16, 2022
"""
end

# ╔═╡ 0f83d7c0-74f4-43d7-8cd4-a022a75772c2
md"""
### Problem 7.4

**(a).**
The length of the electron's angular momentum vector ``|\vec{𝐋}|`` is found using the orbital angular momentum equation for ``l = 3``,

$|\vec{𝐋}| = \sqrt{l(l + 1)} \hbar = \sqrt{3(3 + 1)} \hbar = \sqrt{12} \hbar = 2 \sqrt{3} \hbar$

**(b).**
The possible ``z`` components that the ``\vec{𝐋}`` vector can have are, according to the orbital magnetic quantum number equation, ``3\hbar, 2\hbar, \hbar, 0, -\hbar, -2\hbar, -3\hbar``.
Thus, there are seven possible ``z`` components for the ``\vec{𝐋}`` vector.
Alternatively, we can calculate the result by using the formula

$2l + 1 = 2(3) + 1 = 7$

**(c).**
By spatial quantization, we can determine the angles at which the ``\vec{𝐋}`` vector makes with the ``z`` axis for ``m_l = 0, ±1, ±2, ±3``,

$\cos{\theta}= \frac{m_l}{\sqrt{l(l + 1)}} = \frac{m_l}{2 \sqrt{3}} \qquad m_l = 3, 2, 1, 0, -1, -2, -3$

$\begin{align*}
m_l &= 3 \implies &\theta &= \cos^{-1}\left(\frac{3}{2 \sqrt{3}}\right) = 30^∘ \\
m_l &= 2 \implies &\theta &= \cos^{-1}\left(\frac{1}{\sqrt{3}}\right) = 55^∘ \\
m_l &= 2 \implies &\theta &= \cos^{-1}\left(\frac{1}{2 \sqrt{3}}\right) = 73^∘ \\
m_l &= 0 \implies &\theta &= \cos^{-1}\left(0\right) = 90^∘ \\
m_l &= -1 \implies &\theta &= \cos^{-1}\left(-\frac{1}{2 \sqrt{3}}\right) = 107^∘ \\
m_l &= -2 \implies &\theta &= \cos^{-1}\left(-\frac{1}{\sqrt{3}}\right) = 125^∘ \\
m_l &= -3 \implies &\theta &= \cos^{-1}\left(-\frac{3}{2 \sqrt{3}}\right) = 150^∘
\end{align*}$
"""

# ╔═╡ 02afe851-d9c7-489f-91ab-20ce7327d235
round.(Int, acosd.([3,2,1,0,-1,-2,-3] ./ 2√(3)))

# ╔═╡ a0524b9c-73d5-42a6-aea7-aea3199a6079
let
md"""
**7.4 Radial Probability Densities**
Show that the radial probability density of the ``1s`` level has its maximum value at ``r = a_0``.
"""
	
md"""
### Problem 7.12

The ``1s`` level implies ``n = 1`` and ``l = 0``.
Thus the radial probability density for the ``1s`` level is

$P(r) = r^2 |R_{1,0}(r)|^2 = r^2 \left(\frac{2}{{a_0}^{3/2}} e^{-r / a_0}\right)^2 = \frac{4r^2}{{a_0}^3} e^{-2r / a_0}$

The maximum value of the radial probability density is the value at which ``\frac{dP}{dr} = 0``.

$\frac{dP}{dr} = \frac{8r}{{a_0}^3} e^{-2r / a_0} - \frac{8r^2}{{a_0}^4} e^{-2r / a_0} = \frac{8r}{{a_0}^3} e^{-2r / a_0} \left(1 - \frac{r}{a_0}\right) = 0$

There are three solutions ``r = 0``, ``r = ∞``, and ``r = a_0``.
The solutions ``r = 0`` and ``r = ∞`` give minima to the radial probability density.
The solution ``r = a_0`` gives a maximum of the radial probability density.
"""
end

# ╔═╡ 9b47ea90-ffed-44cf-aec7-024fec348a3b
let
md"""
### Problem 7.13

**7.4 Radial Probability Densities** Find the values of the radius where the ``n = 2``, ``l = 0`` radial probability density has its maximum values.
"""
md"""
### Problem 7.13

The radial probability density where ``n = 2`` and ``l = 0`` is

$\begin{align*}
P(r) = r^2 |R_{2,0}(r)|^2 &= r^2 \left[\frac{1}{(2a_0)^{3/2}} \left(2 - \frac{r}{a_0}\right) e^{-r / 2a_0}\right]^2 \\
&= \frac{r^2}{8{a_0}^3} \left(2 - \frac{r}{a_0}\right)^2 e^{-r / a_0} \\
&= \frac{e^{-r / a_0} r^2}{8{a_0}^3} \left(4 - \frac{4r}{a_0} + \frac{r^2}{{a_0}^2}\right) \\
&= \frac{e^{-r / a_0} r^2}{8{a_0}^5} \left(4{a_0}^2 - 4a_0 \,r + r^2\right) \\
\end{align*}$

The maximum probability is found when ``\frac{dP(r)}{dr} = 0``.
We can use MATHEMATICA to find ``\frac{dP(r)}{dr}`` and setup the equation.
MATHEMATICA code:

```
R = 1/(2 a0)^(3/2) (2 - r/a0)*Exp[-(r/(2 a0))]
P = r^2*R^2
D[P, r] // Factor
```

$\frac{dP(r)}{dr} = \frac{r e^{-r / a_0} (2 a_0 - r)(4 {a_0}^2 - 6 a_0 r + r^2)}{8 {a_0}^6} = 0$

The solution of the quadratic expression are

$r = \frac{6a_0 ± \sqrt{(6a_0)^2 - 4(4{a_0}^2)}}{2} = \frac{6a_0 ± 2\sqrt{5} a_0}{2} = (3 ± \sqrt{5}) a_0$

Thus there are five solutions to the equation ``\frac{dP}{dr} = 0`` namely, ``r = 0``, ``r = ∞``, ``r = 2a_0``, ``r = (3 - \sqrt{5}) a_0``, and ``r = (3 + \sqrt{5}) a_0``.
The solutions ``r = 0``, ``r = ∞``, and ``r = 2a_0`` give minima to the radial probability density.
The solutions ``r = (3 - \sqrt{5}) a_0`` and ``r = (3 + \sqrt{5}) a_0`` give maxima to the radial probability density.
"""
end

# ╔═╡ 7f4bff1d-18d3-40a6-bdbf-e888db091d70
let
md"""
**7.6 Intrinsic Spin**
Explain why each of the following sets of quantum numbers ``(n,l,m_l,m_s)`` is not permitted for hydrogen.
(a) ``(2, 2, -1, +1/2)``
(b) ``(3, 1, +2, -1/2)``
(c) ``(4, 1, +1, -3/2)``
(d) ``(2, -1, +1, +1/2)``
"""
md"""
### Problem 7.22

**(a).**
The set of quantum numbers ``(2,2,-1,+1/2)`` is not permitted for hydrogen since the angular momentum quantum number ``l = 2`` is equal to the principal quantum number ``n = 2``.
A valid set of quantum numbers will have ``l`` be at most ``n - 1``.

**(b).**
The set of quantum numbers ``(3, 1, +2, -1/2)`` is not permitted for hydrogen since the magnitude of the  magnetic quantum number ``m_l = +2`` is greater than that of the angular momentum quantum number ``l = 1``.
A valid set of quantum numbers will have the magnitude of ``m_l`` be at most ``l``.

**(c).**
The set of quantum numbers ``(4,1,+1,-3/2)`` is not permitted for hydrogen since the spin quantum number ``m_s = -3/2`` is not in the set of valid numbers, ``m_s ∉ \{+1/2, -1/2\}``.

**(d).**
The set of quantum numbers ``(2, -1, +1, +1/2)`` is not permitted for hydrogen since the angular momentum quantum number ``l = -1`` is not in the set of valid angular momentum quantum numbers, ``l ∉ 0, 1, 2, 3, …, n - 1``.
"""
end

# ╔═╡ ceaa845f-e404-4c98-a123-e7c48dfdb841
let
md"""
### Problem 7.23

**7.7 Energy Levels and Spectroscopic Notation**
List the excited states (in spectroscopic notation) to which the ``4p`` state can make downward transitions.
"""
md"""
### Problem 7.23

The selection rule ``Δl = ±1`` tells us that the ``4p`` state may transition to any lower ``s`` or ``d`` state.
Thus the excited states in which the ``4p`` state can make downward transitions are ``3s, 3d, 2s, 1s``.
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
# ╟─620b57b4-a3b8-11ec-0eaa-7d82d40230fc
# ╟─0f83d7c0-74f4-43d7-8cd4-a022a75772c2
# ╠═02afe851-d9c7-489f-91ab-20ce7327d235
# ╟─a0524b9c-73d5-42a6-aea7-aea3199a6079
# ╟─9b47ea90-ffed-44cf-aec7-024fec348a3b
# ╟─7f4bff1d-18d3-40a6-bdbf-e888db091d70
# ╟─ceaa845f-e404-4c98-a123-e7c48dfdb841
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
