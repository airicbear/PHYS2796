### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 97a0d264-9639-11ec-103c-9f2e43b4af1f
begin
	using Unitful
	using PhysicalConstants.CODATA2018: ħ, h, c_0, m_e
	
md"""
# HW 5

Eric Nguyen $\qquad$ TUID: 915786865 $\qquad$ Date: Feb 25, 2022
"""
end

# ╔═╡ a1aa572b-98ee-4d64-976b-5cf1fe9583f6
md"""
### Problem 5.1

**(a).**
The expressions for ``v(t)`` and ``y(t)`` are given using free fall motion at the initial height ``H``,

$v(t) = H - gt$

$y(t) = H - \frac{1}{2} gt^2$

**(b).**
First, we must determine at what time ``t_{\text{cross}}`` the ball enters the water.

$y(t) = 0 \text{ when } H - \frac{1}{2} gt^2 = 0 \implies t_{\text{cross}} = \sqrt{\frac{2H}{g}}$

By the continuity conditions, the velocity at ``t_{\text{cross}}`` must be the equal for both ``v(t)`` and ``v_2(t)``.
So we can set ``v_2(t_{\text{cross}}) = v(t_{\text{cross}})`` and solve for ``b``.

$\begin{align*}
v_2(t_{\text{cross}}) &= v(t_{\text{cross}}) \\
at_{\text{cross}} + b &= H - gt_{\text{cross}} \\
b &= H - (g + a) t_{\text{cross}} \\
&= H - (g + (B - mg)/m) \sqrt{\frac{2H}{g}} \\
&= H - (B/m) \sqrt{\frac{2H}{g}} \\
\end{align*}$

Similarly we can set ``y_2(t_{\text{cross}}) = y(t_{\text{cross}})`` and solve for ``c``.

$\begin{align*}
y_2(t_{\text{cross}}) &= y(t_{\text{cross}}) \\
\frac{1}{2} a{t_{\text{cross}}}^2 + b{t_{\text{cross}}} + c &= H - \frac{1}{2} g{t_{\text{cross}}}^2 \\
\end{align*}$

$\begin{align*}
c &= H - \frac{1}{2} {t_{\text{cross}}}^2 (a + g) - bt_{\text{cross}} \\
&= H - \frac{1}{2} {t_{\text{cross}}}^2 ((B - mg)/m + g) - H - (B/m) \frac{2H}{g} \\
&= - \frac{H}{g} (B/m) - (B/m) \frac{2H}{g} \\
&= - \frac{3H}{g} (B/m) \\
\end{align*}$
"""

# ╔═╡ 4979fd33-704f-4213-8daf-39bc5dffe7a9
md"""
### Problem 5.8

**(a).**
Using the normalization condition we get,

$\begin{align*}
\int_{-∞}^{+∞} |\psi(x)|^2 \,dx &= 1 \\
\int_{-a}^{a} (b(a^2 - x^2))^2 \,dx &= 1 \\
b^2 \int_{-a}^{a} (a^2 - x^2)^2 \,dx &= 1 \\
b^2 \int_{-a}^{a} (a^4 - 2a^2x^2 + x^4) \,dx &= 1 \\
b^2 \left[a^4 x - \frac{2}{3}a^2x^3 + \frac{1}{5} x^5\right]_{-a}^a &= 1 \\
\end{align*}$

$\begin{align*}
b^2 \left[\left(a^4 (a) - \frac{2}{3}a^2(a)^3 + \frac{1}{5} (a)^5\right) - \left(a^4 (-a) - \frac{2}{3}a^2(-a)^3 + \frac{1}{5} (-a)^5\right)\right] &= 1 \\
b^2 \left[a^5 - \frac{2a^5}{3} + \frac{a^5}{5} + a^5 - \frac{2a^5}{3} + \frac{a^5}{5}\right] &= 1 \\
b^2 \left[2a^5 - \frac{4a^5}{3} + \frac{2a^5}{5}\right] &= 1 \\
\frac{16}{15} b^2 a^5 &= 1
\end{align*}$

$\begin{align*}
b &= \sqrt{\frac{15}{16a^5}}
\end{align*}$

**(b).**
The probability at ``x = a/2`` in a small interval of width ``0.010a`` is

$\begin{align*}
P(a/2 - 0.01a < X < a/2 + 0.01a) &= \int_{a/2 - 0.01a}^{a/2 + 0.01a} |\psi(x)|^2 \,dx \\
&= b^2 \left[a^4 x - \frac{2}{3}a^2x^3 + \frac{1}{5} x^5\right]_{a/2 - 0.01a}^{a/2 + 0.01a} \\
&= 0.01124 b^2 a^5 \\
&= 0.01124 \left(\frac{15}{16a^5}\right) a^5 \\
&= 0.011
\end{align*}$

**(c).**
The probability that we find the particle between ``x = +a/2`` and ``x = +a`` is

$\begin{align*}
P(a/2 < X < a) &= b^2 \left[a^4 x - \frac{2}{3}a^2x^3 + \frac{1}{5} x^5\right]_{a/2}^a \\
\end{align*}$

$\begin{align*}
&= b^2 \left[\left(a^4 (a) - \frac{2}{3}a^2(a)^3 + \frac{1}{5} (a)^5\right) - \left(a^4 (a/2) - \frac{2}{3}a^2(a/2)^3 + \frac{1}{5} (a/2)^5\right)\right] \\
&= b^2 \left(a^5 - \frac{2a^5}{3} + \frac{a^5}{5} - \frac{a^5}{2} + \frac{2a^5}{24} - \frac{a^5}{160}\right) \\
&= \frac{53}{480} a^5 b^2 \\
&= \left(\frac{53}{480}\right) \left(\frac{15}{16a^5}\right) a^5 \\
&= \frac{53}{512}
\end{align*}$
"""

# ╔═╡ 4e55a0b7-4d75-4e88-8158-20f222cba682
md"""
### Problem 5.14

$E_0 = 1.54 \text{ eV}$

Using the equation ``E_n = n^2 E_0``, we get

$\begin{align*}
E_3 &= 3^2 E_0 = 9 (1.54 \text{ eV}) = 13.86 \text{ eV} \\
E_4 &= 4^2 E_0 = 16 (1.54 \text{ eV}) = 24.64 \text{ eV}
\end{align*}$

The energy differences (the required energy to be added) between the ground state and each excited state are then

$\begin{align*}
ΔE_3 = E_3 - E_0 = 12.32 \text{ eV} \\
ΔE_4 = E_4 - E_0 = 23.1 \text{ eV}
\end{align*}$
"""

# ╔═╡ 3091fbba-244d-49a2-9fdb-b351e369d958
md"""
### Problem 5.24

Let ``A = (m \omega_0 / \hbar \pi)^{1/4}`` and ``a = \sqrt{km} / 2\hbar = m \omega_0 / 2\hbar``.
The ground-state wave function is defined as

$\psi(x) = \left(\frac{m \omega_0}{\hbar \pi}\right)^{1/4} e^{-\left(\sqrt{km} / 2\hbar\right) x^2} = Ae^{-ax^2}$

Then ``x_{\text{av}}`` is

$x_{\text{av}} = ∫_{-∞}^{+∞} |\psi(x)|^2 x \,dx = A^2 ∫_{-∞}^{+∞} xe^{-2ax^2} \,dx = 0 \qquad \text{ from odd function}$

and ``(x^2)_{\text{av}}`` is

$\begin{align*}
(x^2)_{\text{av}} &= ∫_{-∞}^{+∞} |\psi(x)|^2 x^2 \,dx = A^2 ∫_{-∞}^{∞} x^2 e^{-2ax^2} \,dx = \frac{A^2}{2a ⋅ (2a)^2} ∫_{-∞}^{∞} u^2 e^{-u^2} \,du \\
&= \frac{A^2}{8a^3} ∫_{-∞}^{∞} u^2 e^{-u^2} \,du = \frac{A^2}{8a^3} \left(\frac{\sqrt{\pi}}{2}\right) = \frac{\left((m \omega_0 / \hbar \pi)^{1/4}\right)^2 \sqrt{\pi} }{16 (m \omega_0 / 2\hbar)^2} = \frac{\hbar}{2m \omega_0}
\end{align*}$

Finally,

$Δx = \sqrt{(x^2)_{\text{av}} - x_{\text{av}}} = \sqrt{\frac{\hbar}{2m\omega_0}}$
"""

# ╔═╡ 9d375dd0-8867-420c-9e2f-9d22e2ad5194
md"""
### Problem 5.35

Let ``L = 0.132 \text{ nm}`` and ``n = 10``.

**(a).**
The energy ``E_0`` is

$E_0 = \frac{h^2}{8mL^2} = 21.6 \text{ eV}$

Since the electron is in the ``n = 10`` state, its energy is

$E_{10} = 10^2 E_0 = 2160 \text{ eV}$

**(b, c).**
The momentum and position uncertainties for a particle in an infinite potential well are respectively defined as

$Δp = \frac{hn}{2L} \qquad\text{and}\qquad Δx = L \sqrt{\frac{1}{12} - \frac{1}{2 \pi^2 n^2}}$

Then substituting the known values into the expressions we obtain the following values:

$Δp = 47000 \text{ eV}/c \qquad \text{and} \qquad Δx = 0.0380 \text{ nm}$

As ``n → ∞``, the uncertainty in momentum increases, however the uncertainty in position remains unchanged.
This is not consistent with classical behavior.
"""

# ╔═╡ f3a15d4a-3e21-4483-bf57-e90009b257e6
let
	L = 0.132u"nm"
	n = 10
	E0 = h^2 / (8 * m_e * L^2) |> u"eV"
	
	:E10 => n^2 * E0,
	:Δpₓ => h*n / 2L |> u"eV/c",
	:Δx => L * sqrt(1/12 - 1/(2 * π^2 * n^2))
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
git-tree-sha1 = "58390f5617544fb09d27244749484fee0cae6712"
uuid = "eff96d63-e80a-5855-80a2-b1b0885c5ab7"
version = "2.7.0"

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
git-tree-sha1 = "0abe7fc220977da88ad86d339335a4517944fea2"
uuid = "f2b01f46-fcfa-551c-844a-d8ac1e96c665"
version = "1.3.14"

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
# ╟─97a0d264-9639-11ec-103c-9f2e43b4af1f
# ╟─a1aa572b-98ee-4d64-976b-5cf1fe9583f6
# ╟─4979fd33-704f-4213-8daf-39bc5dffe7a9
# ╟─4e55a0b7-4d75-4e88-8158-20f222cba682
# ╟─3091fbba-244d-49a2-9fdb-b351e369d958
# ╟─9d375dd0-8867-420c-9e2f-9d22e2ad5194
# ╠═f3a15d4a-3e21-4483-bf57-e90009b257e6
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
