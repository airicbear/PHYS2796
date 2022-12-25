### A Pluto.jl notebook ###
# v0.18.1

using Markdown
using InteractiveUtils

# ╔═╡ b098dc9e-a09f-11ec-29cb-09bc72ef537a
begin
	using Unitful
	using PhysicalConstants.CODATA2018: c_0, h, k_B, e, m_e, m_p, m_n, ε_0, μ_0
	using PlutoUI
	
md"""
# PHYS2796 Midterm Review

Eric Nguyen
"""
end

# ╔═╡ f659259b-0fbd-4d7f-91f8-a0f26dc57db9
md"# Midterm 2020 Problems"

# ╔═╡ 610af6f8-4d20-431a-a8c0-3cbbe99bb98c
md"""
### Problem 1

An experiment is performed by creating a beam of protons, with each proton having a kinetic energy of 469 MeV (million electron-volts).

a -- What electric potential difference must the proton be accelerated through in order to have this kinetic energy?

b -- What is the velocity of a proton with this much energy?

c -- How long will it take each proton to travel across a 100 meter long lab, in both the lab, in both the lab reference frame and the proton's reference frame?
"""

# ╔═╡ 7646d5f6-d2b5-4f15-afa8-8c314c1dddd1
md"""
**Solution 1(a).**
The nonrelativistic kinetic energy ``K`` of a charged particle of charge ``q`` accelerated through a potential difference of ``ΔV`` is given by ``K = e ΔV``, so in units of electron-volts the potential is:

$ΔV = \frac{K}{e} = \frac{469 \text{ MeV}}{e} = 469 \text{ MV}$
"""

# ╔═╡ 9a3c0ab9-cc43-441e-b8e5-470cef7b5484
md"""
**Solution 1(b).**
Relativistic kinetic energy is defined by

$K = \frac{mv^2}{\sqrt{1 - \frac{v^2}{c^2}}} - mv^2$

Notice that the nonrelativistic kinetic energy of the is ``469 \text{ MeV}`` which happens to be equal to ``\frac{1}{2} m_p c^2``.
If we substitute the appropriate quantities into the relativistic expression and then set these two expressions equal to each other, we can solve for ``v``,

$\begin{align*}
\frac{m_p c^2}{\sqrt{1 - \frac{v^2}{c^2}}} - m_p c^2 &= \frac{1}{2} m_p c^2 \\
\frac{1}{\sqrt{1 - \frac{v^2}{c^2}}} - 1 &= \frac{1}{2} \\
\frac{1}{\sqrt{1 - \frac{v^2}{c^2}}} &= \frac{3}{2} \\
1 - \frac{v^2}{c^2} &= \frac{4}{9} \\
v &= \sqrt{\frac{5}{9}} \,c
\end{align*}$
"""

# ╔═╡ e1413169-149a-4796-8fa0-df366ff5a0d1
md"""
**Solution 1(c).**
Let ``L = 100 \text{ m}``.
In the lab frame, it will take

$t_ℓ = \frac{L}{v} = \frac{100 \text{ m}}{\sqrt{\frac{5}{9}} \,c} = 450 \text{ ns}$

In the proton frame, apply time dilation to find the proton's time

$t_ℓ = \frac{t_p}{\sqrt{1 - \frac{v^2}{c^2}}} \implies t_p = t_ℓ \sqrt{1 - \frac{v^2}{c^2}} = (450 \text{ ns}) \left(\frac{2}{3}\right) = 300 \text{ ns}$
"""

# ╔═╡ 746b18f5-a507-4b38-a8db-b78a07af3a33
md"""
### Problem 2

Suppose you were traveling at a relativistic velocity directly towards the Sun, which emits most of its light at a wavelength of around 550 nm (nanometers).
At what velocity towards the Sun will this peak emission wavelength appear as X-rays (wavelength ~10 nm)?
[Please report your final answer as a fraction of ``c``, to 5 significant figures]
"""

# ╔═╡ 6495a639-3d08-4ff6-b52a-5e1a59713da4
md"""
**Solution.**
The initial frequency is ``f_0 = \frac{c}{\lambda_0}`` where ``\lambda_0 = 550 \text{ nm}`` and the frequency upon reaching the observer is ``f' = \frac{c}{\lambda'}`` where ``\lambda' = 10 \text{ nm}``.
The observed wavelength or frequency of light emitted by a source in a different inertial reference frame, along line-of-sight, is given by the relativistic Doppler shift:

$f' = f_0 \sqrt{\frac{1 - u/c}{1 + u/c}} → \left(\frac{f'}{f_0}\right) = \frac{1 - u/c}{1 + u/c}$

Solving for ``u``, we get

$\begin{align*}
\left(\frac{f'}{f_0}\right)^2 (1 + u/c) &= 1 - u/c \\
\left(\frac{f'}{f_0}\right)^2 + \left(\frac{f'}{f_0}\right)^2 \left(\frac{u}{c}\right) &= 1 - \frac{u}{c} \\
\frac{u}{c} + \left(\frac{f'}{f_0}\right)^2 \left(\frac{u}{c}\right) &= 1 - \left(\frac{f'}{f_0}\right)^2 \\
u \left[\frac{1}{c} + \left(\frac{f'}{f_0}\right)^2 \left(\frac{1}{c}\right)\right] &= 1 - \left(\frac{f'}{f_0}\right)^2
\end{align*}$

$\begin{align*}
u &= \frac{1 - \left(\frac{f'}{f_0}\right)^2}{\frac{1}{c} + \left(\frac{f'}{f_0}\right)^2 \left(\frac{1}{c}\right)} = c\left[\frac{1 - \left(\frac{f'}{f_0}\right)^2}{1 + \left(\frac{f'}{f_0}\right)^2}\right]
\end{align*}$

Writing ``u`` in terms of the known quantities ``\lambda_0`` and ``\lambda'``, we get

$u = c\left[\frac{1 - \left(\frac{c/\lambda'}{c/\lambda_0}\right)^2}{1 + \left(\frac{c/\lambda'}{c/\lambda_0}\right)^2}\right] = c\left[\frac{1 - \left(\frac{\lambda_0}{\lambda'}\right)^2}{1 + \left(\frac{\lambda_0}{\lambda'}\right)^2}\right]$

Substituting the appropriate quantities, we obtain

$u = c\left[\frac{1 - \left(55\right)^2}{1 + \left(55\right)^2}\right] = -0.99934c$
"""

# ╔═╡ 47913c72-06fb-431e-a47c-4e08d5a73d9f
md"""
### Problem 3

A particle is found in an infinite well of width ``L``, and has a ground state energy of ``10 \text{ eV}``.

a -- What is the wavelength of the photon emitted when this particle transitions from the first excited state to the ground state?

b -- If the width of the well is halved (to ``L/2``), what will be the new ground state energy?
"""

# ╔═╡ 7ad7cd6a-2705-4a22-b9bd-80b97ce29f64
md"""
**Solution (a).**
The energy for a particle in an infinite square well is

$E_n = n^2 \frac{h^2}{8mL^2}$

For the ground state, ``n = 1`` and ``E_1 = 10 \text{ eV}``, so

$E_1 = \frac{h^2}{8mL^2} = 10 \text{ eV}$

Then ``E_2`` (``n = 2``) must be

$E_2 = (2)^2 (10 \text{ eV}) = 40 \text{ eV}$

Thus, the energy of a photon emitted when the system transitions from ``n = 2`` to ``n = 1`` is ``30 \text{ eV}``.
A photon with this energy has a wavelength of

$E = hf = \frac{hc}{\lambda} \implies \lambda = \frac{hc}{E} = 41.4 \text{ nm}$
"""

# ╔═╡ f45bf02a-1bf4-4f73-abb5-3b9a59cde16d
md"""
**Solution (b).**
Taking the ratio of energies:

$\frac{E'}{E} = \frac{h^2}{8m(L/2)} \frac{8mL^2}{h^2} = 4$

We see that the energy levels in the ``(L/2)``-width well will always be 4 times the energy of the ``L``-width well, and so the ground state energy of the half-width well is ``40 \text{ eV}``.
"""

# ╔═╡ 0dd71fd8-550f-42ef-96b9-35ab6ed95557
md"""
### Problem 4

Consider a Hydrogen atom with a single electron.

a -- For an electron in an ``n = 3`` state, how many unique sets of possible quantum numbers are possible?
Justify your answer.

b -- For an electron in a ``3s`` state, what is the most likely transition or set of transitions that this electron will take in order to reach the ground state?
"""

# ╔═╡ 1a9ccf1a-44c7-4f6e-bffd-0d49bb3f9b39
md"""
**Solution (a).**
The degeneracy of states in a Hydrogen atom is given by ``d = 2n^2``.
For ``n = 3``, this gives us 18 different states (or configurations of quantum numbers).
This is because a single state is given by the quantum numbers ``(n, l, m_l, m_s)``, which for ``n = 3`` gives the following possibilities:

$\begin{align*}
(3, 0, 0, ±½) &→ 2 \text{ states} \\
(3, 1, \{-1, 0, +1\}, ±½) &→ 6 \text{ states} \\
(3, 2, \{-2, -1, 0, +1, +2\}, ±½) &→ 10 \text{ states}
\end{align*}$

For a total number of 18 states for ``n = 3``.
(Note: Stating the rules for each quantum number or listing all of the possible states is also acceptable.)
"""

# ╔═╡ 06cc63a0-a98e-4254-b566-72400926cd5a
md"""
**Solution (b).**
An electron losing energy will (tend to) follow the rules:

$n_{\text{new}} < n_{\text{old}}$

$Δl = ±1$

For a ``3s`` electron, ``n = 3``, ``l = 0``, and so it will try to transition to an ``l = 1`` ("``p``") state of lower ``n``, either ``2p`` or ``1p``; but ``1p`` is not allowed (cannot exist), so it must transition to the ``2p`` state.
The only place left to go is the ground state, ``1s``.

$3s → 2p → 1s$
"""

# ╔═╡ 160a795d-f225-46ee-a3fd-d8c0713ef3d9
md"""
# Homework 1
"""

# ╔═╡ 81ee203c-910e-4c50-9099-8492a98fdc3b
md"""
### Problem 1.1

A hydrogen atom ``(m = 1.674 × 10^{-27} \text{ kg})`` is moving with a velocity of ``1.1250 × 10^7 \text{ m/s}``.
It collides elastically with a helium atom ``(m = 6.646 × 10^{-27} \text{ kg})`` at rest.
After the collision, the hydrogen atom is found to be moving with a velocity of ``-6.724 × 10^6 \text{ m/s}`` (in a direction opposite to its original motion).
Find the velocity of the helium atom after the collision in two different ways: (a) by applying conservation of momentum; (b) by applying conservation of energy.
"""

# ╔═╡ 90ca4ff9-1633-4de4-9fa4-d9067a1fd809
md"""
**Solution (a).**

$p_{1_i} + p_{2_i} = p_{1_f} + p_{2_f}$

$m_1 v_i + 0 = m_1 v_f + m_2 v_2$

$v_2 = \frac{m_1 (v_i - v_f)}{m_2} = 4.527 × 10^6 \text{ m/s}$
"""

# ╔═╡ 9e0aeed3-6278-4bc7-b6ab-fab4e13c1533
md"""
**Solution (b).**

$K_{1_i} + K_{2_i} = K_{1_f} + K_{2_f}$

$m_1 {v_i}^2 + 0 = m_1 {v_f}^2 + m_2 {v_2}x5l^2$
"""

# ╔═╡ 19109e35-81be-43d3-be94-89e0a109492b
md"""
### Problem 1.8

By differentiating the expressiong for the Maxwell-Boltzmann energy distribution, show that the peak of the distribution occurs at an energy of ``\frac{1}{2} kT``.
"""

# ╔═╡ ebd94357-dba2-45af-8e11-49e2336412d4
md"""
### Problem 2.4

The distance from New York to Los Angeles is about 4000 km and should take about 40 h in a car driving at 100 km/h.
(a) How much shorter than 4000 km is the distance according to the car travelers?
(b) How much less than 40 h do they age during the trip?
"""

# ╔═╡ 7f245a1d-6038-48ac-827a-763af399e163
md"""
### Problem 2.7

The proper lifetime of a certain particle is 120.0 ns.
(a) How long does it live in the laboratory if it moves at ``v = 0.950c``?
(b) How far does it travel in the laboratory during that time?
(c) What is the distance traveled in the laboratory according to an observer moving with the particle?
"""

# ╔═╡ 10c3112b-7b2d-4935-b71f-1063e1fb46c5
md"""
### Problem 2.10

Two spaceships approach the Earth from opposite directions.
According to an observer on the Earth, ship ``A`` is moving at a speed of ``0.743c`` and ship ``B`` at a speed of ``0.831c``.
What is the velocity of ship ``A`` as observed from ship ``B``?
Of ship ``B`` as observed from ship ``A``?
"""

# ╔═╡ ca254838-fbfb-47da-918c-a8d17d77090d
md"""
# Homework 2
"""

# ╔═╡ 98eb2f40-32f7-48d1-9d49-1c1d64213af2
md"""
### Problem 2.21

Two events occur at locations separated by a distance of 49.5 m and by a time interval of 0.528 ``\mu \text{s}``, according to observer ``O``.
Observer ``O'`` is in motion away from ``O`` with a speed of ``0.685c`` in the ``x`` direction.
According to ``O'``, what are the spatial and time separations of the events?
"""

# ╔═╡ c0cb6471-aa59-4230-8df1-4277d90f091b
md"""
### Problem 2.23

Suppose the speed of light were 1000 mi/h.
You are traveling on a flight from Los Angeles to Boston, a distance of 3000 mi.
The plane's speed is a constant 600 mi/h.
You leave Los Angeles at 10:00 am, as indicated by your wristwatch and by a clock on the airport.
(a) According to your watch, what time is it when you land in Boston?
(b) In the Boston airport is a clock that is synchronized to read exactly the same time as the clock in the Los Angeles airport.
What time does that clock read when you land in Boston?
(c) The following day when the Boston clock that records Los Angeles time reads 10:00 am, you leave Boston to return to Los Angeles on the same airplane.
When you land in Los Angeles, what are the times reade on your watch and on the airport clock?
"""

# ╔═╡ 87c49776-7e75-4964-ae28-ce7166a71290
md"""
### Problem 2.24
"""

# ╔═╡ 4e7cc345-929b-4c4e-b079-0ac9067b2a05
md"""
### Problem 2.37
"""

# ╔═╡ 8b951bb0-135d-4b96-b393-87b3f55d7c15
md"""
### Problem 2.45
"""

# ╔═╡ 150f76c7-2168-45b7-9735-a87f20a85f4b
md"""
# Homework 3
"""

# ╔═╡ c21c3cfa-1609-4b5c-bd82-1b504db146f5
md"""
### Problem 3.3
"""

# ╔═╡ 97651d50-2002-422c-b393-cac8e757e033
md"""
### Problem 3.12
"""

# ╔═╡ 4ac954f1-354b-4ff1-839d-39c387b30cd2
md"""
### Problem 3.18
"""

# ╔═╡ ab6c89e8-a056-4160-a540-4c56b2bf26f5
md"""
### Problem 3.28
"""

# ╔═╡ 296b5ed1-85f2-46c5-b123-6b0923ba95ce
md"""
### Problem 3.32
"""

# ╔═╡ aeece4b5-b746-4b12-89de-53d6e5d93209
md"""
# Homework 4
"""

# ╔═╡ 74c37b1f-d1be-49d6-b363-a3629ade09c7
md"""
### Problem 4.6
"""

# ╔═╡ 7f577acf-0702-496d-840c-57b6e20135de
md"""
### Problem 4.20
"""

# ╔═╡ f5e4cd3f-4764-49a8-89cd-9d840c8b947e
md"""
### Problem 6.6
"""

# ╔═╡ 5c9b71f5-7682-4607-9f18-93994bd12428
md"""
### Problem 6.13
"""

# ╔═╡ 559f7b12-3f4a-481f-bddd-e18c369b1da3
md"""
### Problem 6.24
"""

# ╔═╡ cd66ecd5-685d-43cf-b384-d4594b6098ac
md"""
### Problem 6.32
"""

# ╔═╡ 7a80e518-b62f-49f1-92eb-8e1f7469db75
md"""
# Homework 5
"""

# ╔═╡ 54340695-af43-4544-8546-2cd2abf18884
md"""
### Problem 7.4
"""

# ╔═╡ f6ebd6d7-7b86-47a4-9368-3e3dbcf455ee
md"""
### Problem 7.12
"""

# ╔═╡ cd4d0403-925f-46ce-b038-66778cb265b1
md"""
### Problem 7.13
"""

# ╔═╡ 5bfe8e8d-f46a-408f-b7d0-3965fd029708
md"""
### Problem 7.22
"""

# ╔═╡ 2658a72c-b176-4f8e-b149-f1bb596774ca
md"""
### Problem 7.23
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PhysicalConstants = "5ad8b20f-a522-5ce9-bfc9-ddf1d5bda6ab"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
Unitful = "1986cc42-f94f-5a68-af5c-568840ba703d"

[compat]
PhysicalConstants = "~0.2.1"
PlutoUI = "~0.7.37"
Unitful = "~1.11.0"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.1"
manifest_format = "2.0"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.Calculus]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f641eb0a4f00c343bbc32346e1217b86f3ce9dad"
uuid = "49dc2e85-a5d0-5ad3-a950-438e2897f1b9"
version = "0.5.1"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "024fe24d83e4a5bf5fc80501a314ce0d1aa35597"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.0"

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

[[deps.Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
git-tree-sha1 = "2b078b5a615c6c0396c77810d92ee8c6f470d238"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.3"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

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

[[deps.Measurements]]
deps = ["Calculus", "LinearAlgebra", "Printf", "RecipesBase", "Requires"]
git-tree-sha1 = "88cd033eb781c698e75ae0b680e5cef1553f0856"
uuid = "eff96d63-e80a-5855-80a2-b1b0885c5ab7"
version = "2.7.1"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "85b5da0fa43588c75bb1ff986493443f821c70b7"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.2.3"

[[deps.PhysicalConstants]]
deps = ["Measurements", "Roots", "Unitful"]
git-tree-sha1 = "2bc26b693b5cbc823c54b33ea88a9209d27e2db7"
uuid = "5ad8b20f-a522-5ce9-bfc9-ddf1d5bda6ab"
version = "0.2.1"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "bf0a1121af131d9974241ba53f601211e9303a9e"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.37"

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
git-tree-sha1 = "0abe7fc220977da88ad86d339335a4517944fea2"
uuid = "f2b01f46-fcfa-551c-844a-d8ac1e96c665"
version = "1.3.14"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Setfield]]
deps = ["ConstructionBase", "Future", "MacroTools", "Requires"]
git-tree-sha1 = "38d88503f695eb0301479bc9b0d4320b378bafe5"
uuid = "efcf1570-3423-57d1-acb7-fd33fddbac46"
version = "0.8.2"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

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

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
"""

# ╔═╡ Cell order:
# ╟─b098dc9e-a09f-11ec-29cb-09bc72ef537a
# ╟─f659259b-0fbd-4d7f-91f8-a0f26dc57db9
# ╟─610af6f8-4d20-431a-a8c0-3cbbe99bb98c
# ╟─7646d5f6-d2b5-4f15-afa8-8c314c1dddd1
# ╟─9a3c0ab9-cc43-441e-b8e5-470cef7b5484
# ╟─e1413169-149a-4796-8fa0-df366ff5a0d1
# ╟─746b18f5-a507-4b38-a8db-b78a07af3a33
# ╟─6495a639-3d08-4ff6-b52a-5e1a59713da4
# ╟─47913c72-06fb-431e-a47c-4e08d5a73d9f
# ╟─7ad7cd6a-2705-4a22-b9bd-80b97ce29f64
# ╟─f45bf02a-1bf4-4f73-abb5-3b9a59cde16d
# ╟─0dd71fd8-550f-42ef-96b9-35ab6ed95557
# ╟─1a9ccf1a-44c7-4f6e-bffd-0d49bb3f9b39
# ╟─06cc63a0-a98e-4254-b566-72400926cd5a
# ╟─160a795d-f225-46ee-a3fd-d8c0713ef3d9
# ╟─81ee203c-910e-4c50-9099-8492a98fdc3b
# ╟─90ca4ff9-1633-4de4-9fa4-d9067a1fd809
# ╟─9e0aeed3-6278-4bc7-b6ab-fab4e13c1533
# ╟─19109e35-81be-43d3-be94-89e0a109492b
# ╟─ebd94357-dba2-45af-8e11-49e2336412d4
# ╟─7f245a1d-6038-48ac-827a-763af399e163
# ╟─10c3112b-7b2d-4935-b71f-1063e1fb46c5
# ╟─ca254838-fbfb-47da-918c-a8d17d77090d
# ╟─98eb2f40-32f7-48d1-9d49-1c1d64213af2
# ╟─c0cb6471-aa59-4230-8df1-4277d90f091b
# ╠═87c49776-7e75-4964-ae28-ce7166a71290
# ╠═4e7cc345-929b-4c4e-b079-0ac9067b2a05
# ╠═8b951bb0-135d-4b96-b393-87b3f55d7c15
# ╟─150f76c7-2168-45b7-9735-a87f20a85f4b
# ╠═c21c3cfa-1609-4b5c-bd82-1b504db146f5
# ╠═97651d50-2002-422c-b393-cac8e757e033
# ╠═4ac954f1-354b-4ff1-839d-39c387b30cd2
# ╠═ab6c89e8-a056-4160-a540-4c56b2bf26f5
# ╠═296b5ed1-85f2-46c5-b123-6b0923ba95ce
# ╠═aeece4b5-b746-4b12-89de-53d6e5d93209
# ╠═74c37b1f-d1be-49d6-b363-a3629ade09c7
# ╠═7f577acf-0702-496d-840c-57b6e20135de
# ╠═f5e4cd3f-4764-49a8-89cd-9d840c8b947e
# ╠═5c9b71f5-7682-4607-9f18-93994bd12428
# ╠═559f7b12-3f4a-481f-bddd-e18c369b1da3
# ╠═cd66ecd5-685d-43cf-b384-d4594b6098ac
# ╠═7a80e518-b62f-49f1-92eb-8e1f7469db75
# ╠═54340695-af43-4544-8546-2cd2abf18884
# ╠═f6ebd6d7-7b86-47a4-9368-3e3dbcf455ee
# ╠═cd4d0403-925f-46ce-b038-66778cb265b1
# ╠═5bfe8e8d-f46a-408f-b7d0-3965fd029708
# ╠═2658a72c-b176-4f8e-b149-f1bb596774ca
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
