### A Pluto.jl notebook ###
# v0.18.1

using Markdown
using InteractiveUtils

# ╔═╡ 86a1e0c6-7a7c-11ec-2c71-53fdbb55333b
begin
	using Unitful
	using PhysicalConstants.CODATA2018: c_0
	
	md"""
	# HW 1
	
	Eric Nguyen
	"""
end

# ╔═╡ d686c19d-92ee-4573-9648-73f7c90aa6f6
md"""
### Problem 1.1

See Example 1.1

**(a).**
The conservation of momentum states that the initial momentum of a system is equal to the final momentum of the system, ``\vec{𝐩}_{\text{initial}} = \vec{𝐩}_{\text{final}}`` which is equivalent to

$p_{x,\text{initial}} = p_{x,\text{final}} \quad\text{ and }\quad p_{y,\text{initial}} = p_{y,\text{final}}$

We're told that the hydrogen atom moves opposite to its original motion, so we can choose the ``x`` axis to be the direction of the initial motion such that ``p_y = 0``.
Now we are only concerned with ``p_x``.
The initial and final values of the momentum ``p_x`` are

$\begin{align*}
p_{x,\text{initial}} &= m_{\text{H}} v_{\text{H}} \\
p_{x,\text{final}} &= m_{\text{H}} v_{\text{H}}' + m_{\text{He}} v_{\text{He}}'
\end{align*}$

Using the conservation of momentum, solve for ``v_{\text{He}}'`` and substitute the known values,

$\begin{align*}
p_{x,\text{initial}} &= p_{x,\text{final}} \\
m_{\text{H}} v_{\text{H}} &= m_{\text{H}} v_{\text{H}}' + m_{\text{He}} v_{\text{He}}' \\
v_{\text{He}}' &= \frac{m_{\text{H}} (v_{\text{H}} - v_{\text{H}}')}{m_{\text{He}}} \\
&= \frac{(1.674 × 10^{-27} \text{ kg}) ((1.1250 × 10^7 \text{ m/s}) - (-6.724 × 10^6 \text{ m/s}))}{(6.646 × 10^{-27} \text{ kg})} \\
&≈ 4.527 × 10^6 \text{ m/s}
\end{align*}$

**(b).**
The conservation of energy states that the initial energy of a system is equal to the final energy of a system.
In this case, we are only concerned with the kinetic energy since there is no change in potential energy.
We can write the equation for conservation of energy and then solve for ``v_{\text{He}}'``

$\begin{align*}
K_{\text{initial}} &= K_{\text{final}} \\
\frac{1}{2} m_{\text{H}} {v_{\text{H}}}^2 &= \frac{1}{2} m_{\text{H}} {v_{\text{H}}'}^2 + \frac{1}{2} m_{\text{He}} {v_{\text{He}}'}^2 \\
{v_{\text{He}}'}^2 &= \frac{\frac{1}{2} m_{\text{H}} {v_{\text{H}}}^2 - \frac{1}{2} m_{\text{H}} {v_{\text{H}}'}^2}{\frac{1}{2} m_{\text{He}}} \\
{v_{\text{He}}'}^2 &= \frac{m_{\text{H}} {v_{\text{H}}}^2 - m_{\text{H}} {v_{\text{H}}'}^2}{m_{\text{He}}} \\
v_{\text{He}}' &= \sqrt{\frac{m_{\text{H}} ({v_{\text{H}}}^2 - {v_{\text{H}}'}^2)}{m_{\text{He}}}}
\end{align*}$

Plugging in the values for each of the known variables we get

$\begin{align*}
v_{\text{He}}' &= \sqrt{\frac{(1.674 × 10^{-27} \text{ kg}) \left({(1.1250 × 10^7 \text{ m/s})}^2 - {(-6.724 × 10^6 \text{ m/s})}^2\right)}{(6.646 × 10^{-27} \text{ kg})}} \\
&≈ 4.527 × 10^6 \text{ m/s}
\end{align*}$
"""

# ╔═╡ 2da8a35d-9ede-487c-8cfb-7b1f48b6666b
md"""
### Problem 1.8

The Maxwell-Boltzmann distribution is

$N(E) = \frac{2N}{\sqrt{\pi}} \frac{1}{(kT)^{3/2}} E^{1/2} e^{-E/kT}$

Differentiating the distribution we get

$\frac{d}{dE} N(E) = \frac{d}{dE} \left[\frac{2N}{\sqrt{\pi}} \frac{1}{(kT)^{3/2}} E^{1/2} e^{-E/kT}\right] = \frac{2N}{\sqrt{\pi}} \frac{1}{(kT)^{3/2}} \left[\frac{d}{dE} \left[E^{1/2} e^{-E/kT}\right]\right]$

The expression ``\frac{d}{dE} \left[E^{1/2} e^{-E/kT}\right]`` can be simplified using the product rule,

$\begin{align*}
\frac{d}{dE} \left[E^{1/2} e^{-E/kT}\right] &= E^{1/2} \frac{d}{dE} \left(e^{-E/kT}\right) + e^{-E/kT} \frac{d}{dE} \left(E^{1/2}\right) \\
&= E^{1/2} \left(-\frac{1}{kT} e^{-E/kT}\right) + e^{-E/kT} \left(\frac{1}{2} E^{-1/2}\right) \\
&= e^{-E/kT} \left(-\frac{\sqrt{E}}{kT} + \frac{1}{2\sqrt{E}}\right) \\
&= e^{-E/kT} \left(\frac{kT - 2E}{2kT\sqrt{E}}\right) \\
\end{align*}$

Then

$\frac{d}{dE} N(E) = \frac{2N}{\sqrt{\pi}} \frac{1}{(kT)^{3/2}} \left[e^{-E/kT} \left(\frac{kT - 2E}{2kT\sqrt{E}}\right)\right] = \frac{N}{\sqrt{\pi}} \frac{1}{(kT)^{5/2}} \left[e^{-E/kT} \left(\frac{kT - 2E}{\sqrt{E}}\right)\right]$

To find the peak of the distribution, set ``\frac{d}{dE} N(E) = 0`` and solve for ``E`` in terms of ``k`` and ``T``,

$\begin{align*}
\frac{N}{\sqrt{\pi}} \frac{1}{(kT)^{5/2}} \left[e^{-E/kT} \left(\frac{kT - 2E}{\sqrt{E}}\right)\right] &= 0 \\
e^{-E/kT} \left(\frac{kT - 2E}{\sqrt{E}}\right) &= 0 \\
kT - 2E &= 0 \\
kT &= 2E \\
E &= \frac{1}{2} kT
\end{align*}$
"""

# ╔═╡ a0ffdef7-57e1-4c74-b6d1-0082d11571bc
md"""
### Problem 2.4

Let

$\begin{align*}
L_0 &= 4000 \text{ km} = 4000000 \text{ m} \\
Δt_0 &= 40 \text{ h} = 144000 \text{ s} \\
u &= 100 \text{ km/h} = \frac{250}{9} \text{ m/s} \\
c &= 299 \,792\, 458 \text{ m/s}
\end{align*}$

**(a).**
Apply the length contraction effect.

$L = L_0 \sqrt{1 - u^2 / c^2} = (4000000 \text{ m}) \sqrt{1 - \frac{\left(\frac{250}{9} \text{ m/s}\right)^2}{(299 \,792 \,458 \text{ m/s})^2}}$

The square root term is approximately equal to one, thus the distance according to the car travelers is practically ``0 \text{ km}`` shorter than ``4000 \text{ km}``.
In other words, the length contraction effect is negligible.

**(b).**
Apply the time dilation effect.

$Δt = \frac{Δt_0}{\sqrt{1 - u^2 / c^2}} = \frac{144000 \text{ s}}{\sqrt{1 - \frac{\left(\frac{250}{9} \text{ m/s}\right)^2}{(299 \,792 \,458 \text{ m/s})^2}}}$

Again, the square root term is approximately equal to one, thus the car travelers practically age ``0 \text{ h}`` less than ``40 \text{ h}``.
In other words, the time dilation effect is negligible.
"""

# ╔═╡ b6c45f5d-3605-4a70-8442-2cd3cb80d706
md"""
### Problem 2.7

Let ``Δt_0 = 120.0 \text{ ns} = 1.2 × 10^{-7} \text{ s}``.

**(a).**
Apply the time dilation effect where ``u = 0.950c``.

$Δt = \frac{Δt_0}{\sqrt{1 - u^2 / c^2}} = \frac{120.0 \text{ ns}}{\sqrt{1 - (0.950c)^2 / c^2}} = \frac{120.0 \text{ ns}}{0.05} = 2400 \text{ ns}$

The particle lives in the laboratory for ``2400 \text{ ns}`` given that it moves at ``v = 0.950c``.

**(b).**
The distance the particle travels can be found using the relation between the proper time and proper length,

$Δt_0 = 2L_0 / c \implies L_0 = \frac{c Δt_0}{2} = \frac{(299\,792\,458 \text{ m/s}) (1.2 × 10^{-7} \text{ s})}{2} ≈ 17.99 \text{ m}$

The distance the particle travels in the laboratory is approximately ``17.99 \text{ m}``.

**(c).**
Apply the length contraction effect.

$L = L_0 \sqrt{1 - u^2 / c^2} = (17.99 \text{ m}) \sqrt{1 - (0.950c)^2 / c^2} = (17.99 \text{ m})(0.05) ≈ 0.899 \text{ m}$

The distance traveled in the laboratory according to an observer moving with the particle is approximately ``0.899 \text{ m}``.
"""

# ╔═╡ 29f53a2d-7f5f-4439-bfee-bb6ff3034cad
md"""
### Problem 2.10

We can use the relativistic velocity addition law

$v = \frac{v' + u}{1 + v' u / c^2}$

to model this problem.
For the first question, suppose that ship ``A`` is the particle emitted from ship ``B``.
Then let ``v = 0.743c`` be the velocity of ship ``A`` according to an observer on the Earth, ``u = 0.831c`` be the velocity of ship ``B`` according to an observer on the Earth, and the unknown ``v'`` be the velocity of ship ``A`` according to an observer on ship ``B``.
Then solve for ``v'``.

$\begin{align*}
v &= \frac{v' + u}{1 + v' u / c^2} \\
v(1 + v' u / c^2) &= v' + u \\
v + vv' u / c^2 - v' &= u \\
v'(vu/c^2 - 1) &= u - v \\
v' &= \frac{u - v}{vu/c^2 - 1}
\end{align*}$

Substitute the known values to find a value for ``v'``:

$v' = \frac{0.831c - 0.743c}{(0.743c)(0.831c)/c^2 - 1} = \frac{0.088c}{0.617433 - 1} = -\frac{0.088c}{0.382567} ≈ -0.23c$

Apply the same steps for finding the velocity of ship ``B`` as observed from ship ``A``, except this time ``v = 0.831c`` and ``u = 0.743c``.

$v' = \frac{u - v}{vu/c^2 - 1} = -\frac{0.743c - 0.831c}{0.382567} ≈ 0.23c$

So, the velocity of ship ``A`` as observed from ship ``B`` is ``-0.23c`` and the velocity of ship ``B`` as observed from ship ``A`` is ``0.23c``.
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
# ╟─86a1e0c6-7a7c-11ec-2c71-53fdbb55333b
# ╟─d686c19d-92ee-4573-9648-73f7c90aa6f6
# ╟─2da8a35d-9ede-487c-8cfb-7b1f48b6666b
# ╟─a0ffdef7-57e1-4c74-b6d1-0082d11571bc
# ╟─b6c45f5d-3605-4a70-8442-2cd3cb80d706
# ╟─29f53a2d-7f5f-4439-bfee-bb6ff3034cad
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
