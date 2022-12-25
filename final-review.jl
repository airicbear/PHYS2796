### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 070c4f20-c5dd-11ec-36d1-23253d0e5757
begin
	using Unitful
	using PhysicalConstants.CODATA2018: c_0, h, k_B, e, m_e, m_p, m_n, ε_0, μ_0
md"""
# PHYS 2796 Final Review

- Temple University

- Spring 2022

- Textbook: Modern Physics by Kenneth Krane (2019, 4th Edition)
"""
end

# ╔═╡ 9bb966fc-be4c-4cc1-b58c-80bc04ee074f
md"""
# Relevant Formulas
"""

# ╔═╡ 2b76e3a0-aa91-44e5-ada9-f26aadad86db
md"""
**Chapter 7. The Hydrogen Atom**

- Orbital angular momentum:

  $|\vec{𝐋}| = \sqrt{l(l + 1)} \hbar \qquad (l = 0,1,2,…)$

- Orbital magnetic quantum number:

  $L_z = m_l \hbar \qquad (m_l = 0, ±1, ±2,…,±l)$

- Spatial quantization:

  $\cos{\theta} = \frac{L_z}{|𝐋|} = \frac{m_l}{\sqrt{l(l + 1)}}$

- Angular momentum uncertainty relationship:

  $ΔL_z Δ\phi ≥ \hbar$

- Hydrogen quantum numbers:

  $\begin{align*}
  n &= 1,2,3,… \\ l &= 0,1,2,…,n-1 \\ m_l &= 0,±1,±2,…,±l
  \end{align*}$

- Hydrogen energy levels:

  $E_n = -\frac{me^4}{32 \pi^2 \varepsilon_0^2 \hbar^2} \frac{1}{n^2}$

- Radial probability density:

  $P(r) = r^2 |R_{n,l}(r)|^2$

- Spectroscopic notation:

  $s(l = 0), p(l = 1), d(l = 2), f(l = 3),…$

- Selection rules for photon emission:

  $Δl = ±1 \quad Δm_l = 0, ±1$
"""

# ╔═╡ 0c6eb228-e915-442b-bf6c-5a8dfad6d11f
md"""
**Chapter 8. Many-Electron Atoms**

- Pauli exclusion principle:

  "No two electrons in a single atom can have the same set of quantum numbers ``(n,l,m_l,m_s)``."

- Filling order of atomic subshells:

  $1s,2s,2p,3s,3d,4s,3d,4p,5s,4d,5p,6s,4f,5d,6p,7s,5f,6d$

- Capacity of subshell ``nl``:

  $2(2l + 1)$

- Moseley's law for ``K_{\alpha}`` X rays

  $ΔE = (10.2\text{ eV})(Z - 1)^2$
"""

# ╔═╡ ddbf3d18-42dd-4634-bd24-c4ab8f3f41e0
md"""
**Chapter 9. Molecular Structure**

- Covalent bonding:

  "Bonding involving the sharing or overlap of electron wave functions, forming bonding and antibonding states"


- Ionic bonding:

  "Bonding involving the electrostatic (Coulomb) attraction of oppositely charged ions"


- Reduced mass:

  $m = \frac{m_1 m_2}{m_1 + m_2}$

- Parabolic oscillator approximation:

  $E - E_{\text{min}} = \frac{1}{2} k(R - R_{\text{eq}})$

- Vibrational frequency:

  $f = \frac{1}{2\pi} \sqrt{\frac{k}{m}}$

- Photon energy:

  $E = hf = \frac{hc}{\lambda}$
"""

# ╔═╡ ca97bab1-740b-418a-84fb-645b0dea83c4
md"""
**Chapter 10. Statistical Physics**

- Probability of energy observation:

  $p(E) = \frac{\sum N_i W_i}{N \sum W_i}$

- Fermi energy

  $E_F = \frac{h^2}{2m} \left(\frac{3N}{8 \pi V}\right)^{2/3}$
"""

# ╔═╡ 9e4f88e8-cc31-4171-84ec-2ca4905d4e3b
md"""
**Chapter 11. Solid-State Physics**

- Electron contribution to heat capacity:

  $C = \frac{\pi^2 k^2 N_A T}{2E_F} = \frac{\pi^2}{2} \frac{RkT}{E_F}$

- Debye heat capacity (lattice contribution):

  $C = \frac{12\pi^4}{5} R \left(\frac{T}{T_D}\right)^3$

- Electron energy:

  $E = E_F = \frac{p^2}{2m} = \frac{1}{2} mv^2$

- de Broglie wavelength:

  $\lambda = h/p = h/mv$

- Fermi-Dirac distribution:

  $e^{E_g / 2kT} + 1$

- BCS gap energy in superconductor:

  $E_g = 3.53kT_c$
"""

# ╔═╡ 1f6ee46f-5a41-4fe2-86e7-63e2d60adf0f
md"""
**Chapter 12. Nuclear Structure and Radioactivity**

- Nuclear radius:

  $R = R_0 A^{1/3}, \,R_0 = 1.2 \text{ fm}$

- Coulomb energy:

  $U = \frac{e}{4\pi\varepsilon_0} \frac{Z^2}{r}$

- Nuclear binding energy:

  $B = [Nm_n + Zm({}_1^1 \text{H}_0) - m({}_Z^A \text{X}_N)]c^2$

- Proton separation energy:

  $S_p = [m({}_{Z-1}^{A-1} \text{X}_N') + m({}^1 \text{H}_0) - m({}_Z^A\text{X}_N)]c^2$

- Neutron separation energy:

  $S_n = [m({}_Z^{A-1}\text{X}_{n-1}) + m_n - m({}_Z^A \text{X}_N)]c^2$

- Activity:

  $a = \lambda N, \quad \lambda = \ln{2} / t_{1/2} = 0.693 / t_{1/2}$

- Radioactive decay law:

  $N = N_0 e^{-\lambda t}, \quad a = a_0 e^{-\lambda t}$

- Number of atoms:

  $N = \frac{m N_A}{M}$

- ``Q`` value of decay ``\text{X} → \text{X}' + \text{x}``:

  $Q = [m_{\text{X}} - (m_{\text{X}'} + m_{\text{x}})] c^2$

- ``Q`` value of alpha decay:

  $Q = [m(\text{X}) - m(\text{X}') - m({}^4\text{He})]c^2$

- Kinetic energy of alpha particle:

  $K_{\alpha} ≅ Q(A - 4)/A$

- ``Q`` values of beta decay:

  $\begin{align*}
  Q_{\beta^-} &= [m({}^A \text{X}) - m({}^A \text{X}')] c^2, \\
  Q_{\beta^+} &= [m({}^A \text{X}) - m({}^A \text{X}') - 2m_e] c^2
  \end{align*}$
"""

# ╔═╡ 84b54ad4-812f-4ac6-ba59-2d5dc4524946
md"""
**Chapter 13. Nuclear Reactions and Applications**

- D-T fusion reaction:

  ${}^2 \text{H} + {}^3\text{H} → {}^4 \text{He} + \text{n}$

- Triple-alpha process:

  ${}^4\text{H} + {}^4\text{H} + {}^4\text{H} → {}^{12}\text{C}$
"""

# ╔═╡ 5db9ae8d-91f0-4cc2-8ba8-160bc3fa040b
md"# Homework problems"

# ╔═╡ f6e93827-d614-40d9-8e8b-36c6df7f04a8
md"""
### Problem 7.4

$l = 3$

$|\vec{𝐋}| = \sqrt{l(l + 1)} \hbar = 2\sqrt{3} \hbar$

$L_z = 3\hbar, 2\hbar, \hbar, 0, -\hbar, -2\hbar, -3\hbar$

$\cos{\theta} = \frac{L_z}{|\vec{𝐋}|}$
"""

# ╔═╡ 02b80b1f-9521-43c4-b486-804095a24d9f
md"""
### Problem 7.12

$P(r) = r^2 |R_{n,e}(r)|^2$

$\frac{dP}{dr} = 0$
"""

# ╔═╡ 6766f8d4-a866-42bd-b2ba-79ab1dc443d4
md"""
### Problem 7.13

$P(r) = r^2 |R_{n,e}(r)|^2$

$\frac{dP}{dr} = 0$
"""

# ╔═╡ cd1bb1c9-d42c-41cb-996d-8a2176572c92
md"""
### Problem 7.22

See hydrogen numbers
"""

# ╔═╡ 83f48bf2-78ed-4fd1-b424-498aca968fd6
md"""
### Problem 7.23

$p \implies l = 1$

Selection rule ``\implies l ± 1`` that are lower
"""

# ╔═╡ ce99e039-87e7-42d8-8100-48fcd6691e68
md"""
### Problem 8.2
"""

# ╔═╡ b63c5728-86e3-43af-9c3e-89c21128d205
md"""
### Problem 8.8
"""

# ╔═╡ 86b94d9f-70cc-465f-b6ad-5206a91d29e2
md"""
### Problem 8.16
"""

# ╔═╡ 4d06cd29-0f43-47fc-bd0f-9d95edd6512e
md"""
### Problem 8.16
"""

# ╔═╡ 348d2c69-bad2-453a-8b3c-459956788034
md"""
### Problem 8.17
"""

# ╔═╡ 3f850e55-3626-4ee7-90c2-063c4c790c90
md"""
### Problem 9.18
"""

# ╔═╡ cf113721-1672-4220-8428-b42fcf46033c
md"""
### Problem 10.2
"""

# ╔═╡ 36b0e606-365a-4c17-95b3-2ef1633fdc0f
md"""
### Problem 10.6
"""

# ╔═╡ 26a79585-13c0-4be3-9a31-5f06439d8e3b
md"""
### Problem 10.25
"""

# ╔═╡ 54f72a99-bb65-4d71-a255-c12f75f1f441
md"""
### Problem 10.44
"""

# ╔═╡ bdb8b372-bd74-4db6-934c-ff5e9df7f768
md"""
### Problem 11.16
"""

# ╔═╡ 6358aa42-6b24-4374-97cc-8ff45e1b17cd
md"""
### Problem 11.22
"""

# ╔═╡ b0d8a6ea-416a-4b06-adea-caca93f18ed6
md"""
### Problem 11.26
"""

# ╔═╡ 2820fbcf-246e-4a08-83e1-b4cc1809cf38
md"""
### Problem 11.36
"""

# ╔═╡ 23e1cfaa-44ea-4b58-80d6-c8e3c9ce38ec
md"""
### Problem 12.4
"""

# ╔═╡ f2e6b37f-4ee1-4cfa-83ac-a3e3102fee42
md"""
### Problem 12.6
"""

# ╔═╡ fe167a5a-21c4-4100-b093-a080034b7511
md"""
### Problem 12.8
"""

# ╔═╡ 25e60345-2a73-477c-89de-523a5ae6c254
md"""
### Problem 12.18
"""

# ╔═╡ ffa92978-1463-49eb-a0ac-123fe12ca0a1
md"""
### Problem 12.22
"""

# ╔═╡ e9f8968d-06e6-4577-9c46-6f5267382562
md"""
### Problem 12.25
"""

# ╔═╡ 0bf759c8-52c3-46fd-b49e-64392a0e6a43
md"""
### Problem 12.29
"""

# ╔═╡ 11348f1e-3a76-4a3e-94a5-edcc3910f54c
md"""
### Problem 12.34
"""

# ╔═╡ c3f3f365-552c-4c0f-b0fd-60e5c9f514d7
md"""
### Problem 13.26
"""

# ╔═╡ 67cd5ac4-77e7-40ba-a25c-08054378e7f0
md"""
### Problem 13.42
"""

# ╔═╡ 32faf549-fc88-4ca2-89c6-7ae96e435352
md"# 2019 Midterm"

# ╔═╡ 111da580-fd32-4631-8191-626ceabcc100
md"""
### Problem 1

Cooper pairs are "twin" electrons that pair up to act like a single entity in superconducting materials.

(a) Assume that a Cooper pair consists of two electrons that are physically paired up to make a single bound system.
If the electrons are within one atomic lattice spacing of each other (~ 0.5 nm), what is the Coulomb repulsion energy?

(b) BCS theory states that the superconducting band gap (that is, the energy electrons gain by forming Cooper pairs) is given by ``E_g = 3.53k_B T_c``.
What is this energy for a high-temperature superconductor with ``T_c = 100 \text{ K}``?

(c) Given your answer to part (b), is the initial assumption in part (a) a good one?
Why or why not?
What other considerations are necessary?
"""

# ╔═╡ 52c91647-186f-4a64-a6f8-7ea6c79f6ba3
md"""
**Solution (a).**
The Coulomb repulsion energy is

$\begin{align*}
U &= \frac{q_1 q_2}{4\pi\varepsilon_0 r} \\
&= k_C \frac{e^2}{r} \\
&= (9.0 × 10^{9} \text{ N}⋅\text{m}^2 / \text{C}^2)\frac{(1.6 × 10^{-19} \text{ C})^2}{0.5 × 10^{-9} \text{ m}} \\
&= 4.6 × 10^{-19} \text{ J} \\
&= (4.6 × 10^{-19} / 1.6 × 10^{-19}) \text{ eV} \\
&= 2.88 \text{ eV}
\end{align*}$
"""

# ╔═╡ c8ba0e3b-07c2-44b5-b403-1f9caf100e3b
md"""
**Solution (b).**
The energy for a high-temperature superconductor with ``T_c = 100 \text{ K}`` is

$E_g = 3.53 (1.38 × 10^{-23} \text{ J/K})(100 \text{ K}) = 4.9 × 10^{-21} \text{ J} = 3.04 × 10^{-2} \text{ eV}$
"""

# ╔═╡ 2abe3bf2-5302-47b5-acb8-60e6f2e50957
md"""
**Solution (c).**
Since ``E_g ≫ U``, the electrons would have a binding energy larger than the gap energy, so they are probably not truly bound to each other.
"""

# ╔═╡ 176dc08a-8055-48e6-83f0-9e22f6eb10b0
let
	r = 0.5u"nm"
	U = e*e/(4π*ε_0*r) |> u"eV"
	Tc = 100u"K"
	Eg = 3.53k_B * Tc |> u"eV"
	
	:a => U, :b => Eg, :c => "Eg ≫ U ⟹ binding energy > gap energy, not truly bound"
end

# ╔═╡ d7e01fb3-5c18-4a3b-a721-bc8d8a81f197
md"""
### Problem 2

Suppose you had a system of 3 identical quantum particles, each of which has 4 possible, equally-spaced energy levels (that is, each particle can have 0ε, 1ε, 2ε, or 3ε energy, where ε is some energy).

(a) What is the minimum possible energy for this system if the particles are: (i) indistinguishable; (ii) indistinguishable spin-1 bosons; (iii) indistinguishable spin-½ fermions.

(b) If this system is isolated and has 3ε total energy, what are the macrostates and their multiplicities for this system if the particles are: (i) distinguishable; (ii) indistinguishable spin-1 bosons; (iii) indistinguishable spin-½ fermions.
"""

# ╔═╡ ad8d558b-8442-49b1-8ed5-b6ffa9e26f40
md"""
**Solution (a).**
(i) ``W_A = 3``; (ii) ``W_B = 6``; (iii) ``W_C = 1``;
``W_T = 10``
"""

# ╔═╡ c090171c-9bfc-460b-afdf-b65476defc09
md"""
**Solution (b).**
(i) ``W_A = 3, W_B = 6, W_C = 1; W_T = 10``
(ii) ``W_A = W_B = W_C = 1; W_T = 3``
(iii) ``W_A = W_B = 1; W_C = 0; W_T = 2``
"""

# ╔═╡ 45447fb8-a1d2-4540-b632-4139adf58a1c
md"""
### Problem 3

For the following unstable nuclei, estimate the most probable nuclear decay (i.e., alpha, beta⁺, beta⁻, or gamma), and explain your decision:

(a) Oxygen-21 (Z=8); (b) Calcium-37 (Z=20); (c) Lithium-11 (Z=3); (d) Uranium-236 (Z=92)
"""

# ╔═╡ 31542974-b55a-4a2b-ab3d-d0ea8cfbf2ee
md"""
**Solution (a).**
``N > Z``, ``N`` odd ``\implies n → p \implies \beta^-``
"""

# ╔═╡ fe7544f8-b9d4-4a10-bee4-bc2a929fdec7
md"""
**Solution (b).**
``Z > N``, ``N`` odd ``⟹ p → n ⟹ \beta^+``
"""

# ╔═╡ 51aa4e83-bb7f-43ff-82ae-e80d3906c3f9
md"""
**Solution (c).**
``N > Z``, ``Z`` odd ``⟹ n → p ⟹ \beta^-``
"""

# ╔═╡ 6584995e-3933-4229-b37c-e3b11ffbfe5b
md"""
**Solution (d).**
Big, with even ``Z`` and ``N`` ``⟹ \alpha``
"""

# ╔═╡ 700c6416-54ad-4247-92b5-de1eecab2a92
md"""
### Problem 4

This year, the XENON1T experiment announced that it had directly observed double-electron capture (that is, the electron capture happens twice at once) in Xenon-124 (54 protons, 70 neutrons).
This process has a half-life of ``1.8×10^{22}`` years.
The XENON1T detector contains 1500 kg of pure liquid Xenon.
The average atomic mass of Xenon (all isotopes) is 131.3 u, and Xenon-124 atoms make up 0.00094 of all Xenon atoms.

(a) What particles are released during the double-electron capture process, and what is the resulting nucleus?

(b) What is the activity, in decays per year, for this process within the XENON1T experiment?
"""

# ╔═╡ 1825d29f-f9ad-4207-9a3a-2e31a2af48b3
md"""
**Solution (a).**

${}_{54}^{124}\text{Xe}_{70} + 2e^- → {}_{52}^{124}\text{Te}_{72} + 2\nu$
"""

# ╔═╡ 564cac0b-257c-4dde-891b-f52653d400e0
md"""
**Solution (b).**

$t_{1/2} = 1.8 × 10^{22} \text{ yr}$

$N = \frac{1500 \text{ kg}}{(131.1 \text{ u})(1.66 × 10^{-27} \text{ kg/u})} ⋅ 0.00094 = 6.50 × 10^{24} \text{ atoms}$

$a = \lambda N = \frac{\ln{2}}{t_{1/2}} N = 250 \text{ decays/yr}$
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

julia_version = "1.8.0-beta1"
manifest_format = "2.0"
project_hash = "46ec001d080ed75f5ac9769161d17ab205de024d"

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
git-tree-sha1 = "838b60ee62bebc794864c880a47e331e00c47505"
uuid = "f2b01f46-fcfa-551c-844a-d8ac1e96c665"
version = "1.4.1"

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
# ╟─070c4f20-c5dd-11ec-36d1-23253d0e5757
# ╟─9bb966fc-be4c-4cc1-b58c-80bc04ee074f
# ╟─2b76e3a0-aa91-44e5-ada9-f26aadad86db
# ╟─0c6eb228-e915-442b-bf6c-5a8dfad6d11f
# ╟─ddbf3d18-42dd-4634-bd24-c4ab8f3f41e0
# ╟─ca97bab1-740b-418a-84fb-645b0dea83c4
# ╟─9e4f88e8-cc31-4171-84ec-2ca4905d4e3b
# ╟─1f6ee46f-5a41-4fe2-86e7-63e2d60adf0f
# ╟─84b54ad4-812f-4ac6-ba59-2d5dc4524946
# ╟─5db9ae8d-91f0-4cc2-8ba8-160bc3fa040b
# ╟─f6e93827-d614-40d9-8e8b-36c6df7f04a8
# ╟─02b80b1f-9521-43c4-b486-804095a24d9f
# ╟─6766f8d4-a866-42bd-b2ba-79ab1dc443d4
# ╟─cd1bb1c9-d42c-41cb-996d-8a2176572c92
# ╟─83f48bf2-78ed-4fd1-b424-498aca968fd6
# ╠═ce99e039-87e7-42d8-8100-48fcd6691e68
# ╠═b63c5728-86e3-43af-9c3e-89c21128d205
# ╠═86b94d9f-70cc-465f-b6ad-5206a91d29e2
# ╠═4d06cd29-0f43-47fc-bd0f-9d95edd6512e
# ╠═348d2c69-bad2-453a-8b3c-459956788034
# ╠═3f850e55-3626-4ee7-90c2-063c4c790c90
# ╠═cf113721-1672-4220-8428-b42fcf46033c
# ╠═36b0e606-365a-4c17-95b3-2ef1633fdc0f
# ╠═26a79585-13c0-4be3-9a31-5f06439d8e3b
# ╠═54f72a99-bb65-4d71-a255-c12f75f1f441
# ╠═bdb8b372-bd74-4db6-934c-ff5e9df7f768
# ╠═6358aa42-6b24-4374-97cc-8ff45e1b17cd
# ╠═b0d8a6ea-416a-4b06-adea-caca93f18ed6
# ╠═2820fbcf-246e-4a08-83e1-b4cc1809cf38
# ╠═23e1cfaa-44ea-4b58-80d6-c8e3c9ce38ec
# ╠═f2e6b37f-4ee1-4cfa-83ac-a3e3102fee42
# ╠═fe167a5a-21c4-4100-b093-a080034b7511
# ╠═25e60345-2a73-477c-89de-523a5ae6c254
# ╠═ffa92978-1463-49eb-a0ac-123fe12ca0a1
# ╠═e9f8968d-06e6-4577-9c46-6f5267382562
# ╠═0bf759c8-52c3-46fd-b49e-64392a0e6a43
# ╠═11348f1e-3a76-4a3e-94a5-edcc3910f54c
# ╠═c3f3f365-552c-4c0f-b0fd-60e5c9f514d7
# ╠═67cd5ac4-77e7-40ba-a25c-08054378e7f0
# ╟─32faf549-fc88-4ca2-89c6-7ae96e435352
# ╟─111da580-fd32-4631-8191-626ceabcc100
# ╟─52c91647-186f-4a64-a6f8-7ea6c79f6ba3
# ╟─c8ba0e3b-07c2-44b5-b403-1f9caf100e3b
# ╟─2abe3bf2-5302-47b5-acb8-60e6f2e50957
# ╠═176dc08a-8055-48e6-83f0-9e22f6eb10b0
# ╟─d7e01fb3-5c18-4a3b-a721-bc8d8a81f197
# ╟─ad8d558b-8442-49b1-8ed5-b6ffa9e26f40
# ╟─c090171c-9bfc-460b-afdf-b65476defc09
# ╟─45447fb8-a1d2-4540-b632-4139adf58a1c
# ╟─31542974-b55a-4a2b-ab3d-d0ea8cfbf2ee
# ╟─fe7544f8-b9d4-4a10-bee4-bc2a929fdec7
# ╟─51aa4e83-bb7f-43ff-82ae-e80d3906c3f9
# ╟─6584995e-3933-4229-b37c-e3b11ffbfe5b
# ╟─700c6416-54ad-4247-92b5-de1eecab2a92
# ╟─1825d29f-f9ad-4207-9a3a-2e31a2af48b3
# ╟─564cac0b-257c-4dde-891b-f52653d400e0
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
