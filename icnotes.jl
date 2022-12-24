### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 8fff6f60-73d2-11ec-0e88-1701d74f2f8d
md"# In-class Notes for PHYS2796"

# ╔═╡ 4508b3bd-716d-415b-9d93-ad417b5366fc
md"## Classical physics"

# ╔═╡ dc35f5ad-fa57-46fb-b3b6-c8753774c62f
md"""
### Newton's Laws

1. Inertia ``F_{\text{net}} = 0 \implies \frac{dv}{dt} = 0``

2. $𝐅_{\text{net}} = m𝐚 = m \frac{d𝐯}{dt}$

   $𝐅_{\text{net}} = \frac{d(m𝐯)}{dt} = \frac{d𝐩}{dt}$

3. ``𝐅_{\text{AB}} = -𝐅_{\text{BA}}``
"""

# ╔═╡ 2a88584c-c715-409a-9272-15bc6073350b
md"""
$𝐩 = m𝐯$

$K = \frac{1}{2} mv^2$

$𝐅_{\text{G}} = -G \frac{m_1 m_2}{r^2} 𝐫$

$G = 6.67 × 10^{-11} \; \frac{N ⋅ m^2}{kg^2}$

$U = -G\frac{m_1m_2}{r}$

$-∫𝐅 ⋅ d𝐫 = ΔU$

$𝐅 = -∇U$

$𝐋 = 𝐫 × 𝐩$
"""

# ╔═╡ bb031c5a-903d-4966-8123-6036c7f01bfd
md"## Electricity and Magnetism"

# ╔═╡ d111c64f-2c45-4eb3-97cf-0cae5fe8d96b
md"""
$𝐅_C = k_c \frac{q_1 q_2}{r^2} 𝐫 = \frac{1}{4 \pi \epsilon_0} \frac{q_1 q_2}{r^2} 𝐫$

$k_c = 9 × 10^9 \; \frac{N ⋅ m^2}{C^2}$

$d𝐁 = \mu_0 I \frac{d\vec{s} × \hat{r}}{4\pi r^2}$

$𝐁_{\text{wire}} = \frac{\mu_0 I}{2 \pi r}$

$y(x,t) = A \sin(kx - \omega t + \phi)$

$𝐄(z,t) = E_0 \sin(kz - \omega t + \phi) \vec{x}$

$𝐁(z,t) = B_0 \sin(kz - \omega t + \phi) \vec{y}$

Poynting vector ``𝐒 = \frac{1}{\mu_0} 𝐄 × 𝐁``
"""

# ╔═╡ e4d5feb0-1d32-4e22-b6b3-f657c47325ce
md"""
## Thermodynamics

2 objects that come in contact approach the same temperature

1. Energy conserved

2. Entropy (S) Increase

3. If ``T > 0``, ``S > 0``

**Casino analogy**

1. You can't win

2. You can't break even

3. You have to play
"""

# ╔═╡ 754c7e68-75c7-4ffd-abc0-36b4d04d4a2f
md"## Classical Relativity"

# ╔═╡ cd257100-b7e2-40c7-b566-c2d9fd8dd56b
md"""
Galileo "Inertial Reference Frame"

### Example

"co-moving" to the left

Galilean transform

$\begin{align*}
x' &= x - ut \\
y' &= y \\
z' &= z \\
t' &= t \\
{v_x}' &= v_x - u \\
{v_y}' &= v_y \\
{v_z}' &= v_z \\
𝐚' &= 𝐚
\end{align*}$

Explanation

$\begin{align*}
{v_x}' &= \frac{dx'}{dt'} = \frac{d}{dt} (x - ut) = \frac{dx}{dt} - u = v_x - u \\
{a_x}' &= \frac{d{v_x}'}{dt'} = \frac{d}{dt} (v_x - u) = \frac{dv_x}{dt} = a_x
\end{align*}$
"""

# ╔═╡ a0ecf6c0-5046-451c-9bcf-b1bf2881c107
md"## Einstein's Special Relativity 1905"

# ╔═╡ e2127308-3258-47c2-aaa7-965c5891a9e7
md"""
### Inertial Reference Frames

1. The Principle of Relativity (Gauge Invariant Systems)

   - Physics same, all observers, in intertial reference frames.

2. The speed of light is the same for all observers, regardless of motion. ``c = 3 × 10^8 \text{ m/s}``
"""

# ╔═╡ 633bb6f8-2e0a-4997-8739-65e22cb4a049
md"""
## Time is Relative

ch 2.4

Time Dilation

Light Clock
"""

# ╔═╡ cc3d4870-23ab-4348-9865-46dad7eb52e6
md"""
## Simultaneity

### Lorentz transformations

$\begin{align*}
x' &= (x - ut) \gamma \\
y' &= y \\
z' &= z \\
t' &= \left(t - \frac{u}{c^2} x\right) \gamma
\end{align*}$

### Time dilation

$\begin{align*}
{t_1}' &= \left(t_1 + \frac{u}{c^2} x_1\right) \gamma = \frac{L}{2c} \gamma \\
{t_2}' &- \left(t_2 + \frac{u}{c^2} x_2\right) \gamma = \left(\frac{L}{2c} + \frac{u}{c^2} L\right) \gamma \\
Δt' &= {t_2}' - {t_1}' = \left(\frac{L}{2c} + \frac{u}{c^2} L - \frac{L}{2c}\right) \gamma = \frac{u}{c^2} L \gamma
\end{align*}$

### Length contraction

$L' = {x_2}' - {x_1}' = (x_2 + ut_2 - x_1 - ut_1) \gamma = (x_2 - x_1) \gamma = L_0 \gamma$

### Relativistic Doppler effect

classic:

$f' = f_0 \frac{v + v_O}{v - v_S}$

$\lambda = \frac{c}{f} = cT$

$\begin{align*}
\lambda' &= {x_2}' - {x_1}' \\
&= (x_2 - ut_2 - x_1 + ut_1) \gamma \\
&= (x_2 - x_1) \gamma \\
&= \left([x_2 - x_1] - u[t_2 - t_1]\right) \gamma \\
&= (\lambda - uT) \gamma \\
&= (cT - uT) \gamma \\
&= (c - u) T \gamma
\end{align*}$

$\begin{align*}
f' &= \frac{c}{\lambda'} \\
&= \frac{c}{(c - u)T\gamma} \\
&= \frac{c \sqrt{1 - u^2 / c^2}}{(c - u)T} \\
&= \frac{c \sqrt{1 - u/c}\sqrt{1 + u/c}}{Tc(1 - u/c)} \\
&= f_0 \frac{\sqrt{1 - u/c} \sqrt{1 + u/c}}{(\sqrt{1 - u/c})^2} \\
&= f_0 \frac{\sqrt{1 + u/c}}{\sqrt{1 - u/c}} \\
\end{align*}$
"""

# ╔═╡ 42da86fc-c074-4a97-b959-74d2d2436343
md"""
## Relativistic Energy & Momentum
"""

# ╔═╡ 0bc0a6ee-58ca-47a7-8ebe-dc85a842d4bf
md"""
### Relativistic Momentum

$v_x = {v_{xi}}' = {v_{xf}}' = u$

$v_{yi} = {v_{yi}}' \frac{\sqrt{1 -\frac{u^2}{c^2}}}{1 -\frac{u{v_x}'}{c^2}} = \frac{\sqrt{1 - \frac{u^2}{c^2}}}{1 - \frac{u^2}{c^2}} = v_{yi}' \frac{1}{\sqrt{1 - \frac{u^2}{c^2}}} = v_{yi}' \gamma$

$v_{yf} = -v_{yi}' \gamma$

$Δp_x m(u - u) = 0$

$\begin{align*}
Δp_y &= \left[(-v_{y0} + v_{yf}) - (v_{y0} + v_{yi})\right] m \\
&= m[-v_{y0} - v_{yi}' \gamma - v_{y0} - v_{yi}' \gamma] \\
&= -2m (v_{y0} + v_{yi}' \gamma)
\end{align*}$

$\begin{align*}
mv_{y0} &= -2mv_{yi}'\gamma \\
mv_{y0} &= -mv_{yi}'\gamma
\end{align*}$

$\vec{𝐩} = m\vec{𝐯}\gamma$
"""

# ╔═╡ ec41a817-1f19-48c4-906b-6dd110622a69
md"""
### Relativistic Kinetic Energy

$K = \gamma mc^2 - mc^2 = (\gamma - 1) mc^2$

Test that this matches classical physics for ``u ≪ c`` and ``\gamma → 1``:

$K → (1 - 1) mc^2 = 0 \qquad \text{This doesn't work.}$

Try again using binomial expansion approximation:

$\gamma = \frac{1}{\sqrt{1 - \frac{u^2}{c^2}}}$

Let ``\displaystyle \frac{u}{c} = \beta``.
Let ``\beta ≪ 1``.

$\gamma = \frac{1}{\sqrt{1 - \beta^2}} = (1 - \beta^2)^{-1/2} ∼ 1 + \frac{1}{2} \beta^2 + ⋯$

$K → \left(\left(1 + \frac{1}{2} \beta^2 + ⋯\right) - 1\right) mc^2 ∼ \left(\frac{1}{2} \beta^2\right) mc^2 = \frac{1}{2} \frac{u^2}{c^2} mc^2 = \frac{1}{2} mu^2$
"""

# ╔═╡ 361e342b-d5b1-47b4-8923-a5f1f45c8caf
md"""
### Relativistic Total Energy

$\vec{𝐩} = m\vec{𝐯} \gamma = \frac{m\vec{𝐯}}{\sqrt{1 - \frac{u^2}{c^2}}} \qquad u → c \implies \vec{𝐩} → ∞$

$K = (\gamma - 1) mc^2 \qquad u → c \implies K → ∞$

Universal rule:

If ``m = 0 \implies v = c``.
If ``m > 0 \implies v < c``.
"""

# ╔═╡ 9d5d915e-275f-40af-b850-03bb70f28d42
md"""
### Example

$\begin{align*}
x' &= (x - ut) \gamma \\
t' &= \left(t - \frac{u}{c^2} x\right) \gamma
\end{align*}$

$\begin{align*}
{x_2}' - {x_1}' &= (x_2 - x_1 - ut_1 + ut_2) \gamma \\
L_0 &= L \gamma \\
L &= \frac{L_0}{\gamma}
\end{align*}$
"""

# ╔═╡ 122d07e1-aba7-4000-afdc-f71710ed3f4c
md"""
### Example

$⊕: \frac{L_⊕}{Δt_⊕} = \frac{\gamma L_s}{\gamma Δt_s} = \frac{L_s}{Δt_s}$

$s: \frac{L_s}{Δt_s}$
"""

# ╔═╡ 71b5a478-4383-451a-b95b-f6a3f81d526c
md"""
### Relativistic Total Energy and Rest Energy

$K = (\gamma - 1) mc^2$

$\vec{𝐩} = m\vec{𝐯} \gamma$

Relativistic total energy:

$E = \gamma m c^2 = K + E_0$

Rest Energy:

$E_0 = mc^2$
"""

# ╔═╡ ee6ae1ef-eadc-4574-8405-53bb778de820
md"""
### Example

The rest energy of a proton

$E_0 = 938 \text{ MeV} = mc^2$

where $1 \text{ eV} = 1 \text{ electron-Volt} = 1.602×10^{-19} \text{ J}$

Then the mass of a proton is

$m = \frac{E_0}{c^2} = 938 \frac{\text{MeV}}{c^2}$

Examples:

Mass of proton:

$m_p = 938\, \frac{\text{MeV}}{c^2} ≈ 1\, \frac{\text{GeV}}{c^2}$

Mass of electron:

$m_e = 0.511\, \frac{\text{MeV}}{c^2} ≈ 0.5\, \frac{\text{MeV}}{c^2}$

Mass of Higgs-Boson:

$m_H = 126\, \frac{\text{GeV}}{c^2}$
"""

# ╔═╡ fd17b20b-5e4d-4186-8216-fd701d2e49b4
md"""
### Relationship between total energy, momentum, and rest energy

$\begin{align*}
E &= \gamma mc^2 \\
&= \sqrt{p^2 c^2 + m^2 c^4} \\
&= \sqrt{(pc)^2 + (mc^2)^2}
\end{align*}$

$m = 0 \implies E = \sqrt{(pc)^2 + (0)^2} = pc \implies p = \frac{E}{c}$
"""

# ╔═╡ 8ec9d896-240f-42d7-abe5-f6c2949ac1ac
md"""
### Review of Electromagnetism

$\vec{𝐄} = \vec{𝐄}_0 \sin{(kz + \omega t + \phi)}$

$\vec{𝐁} = \vec{𝐁}_0 \sin{(kz - \omega t + \phi)}$
"""

# ╔═╡ 1bd2a1ff-e175-4607-bcdd-a0045bf8e40f
md"""
### Poynting

$\vec{𝐒} = \frac{1}{\mu_0} \vec{𝐄} × \vec{𝐁}$

$I = S_{\text{avg}} = \frac{1}{2\mu_0 c} {E_0}^2$
"""

# ╔═╡ 80724c9f-0f9d-4179-bb9b-092e3abb0e29
md"""
### Photoelectric

Classically: ``KE ∝ I``, ``e^-`` at all ``\lambda``, ``t∼\text{s}``

Reality: ``K ∝ \frac{1}{\lambda}``, ``K ∝̸ I``, ``e^-`` at ``\lambda < \lambda_{\text{max}}``, ``t ∼ \text{ns}``

$hf = K + \phi$

$hf = eV_s + \phi$
"""

# ╔═╡ 18877ae9-de56-423a-97f7-8e29f300536a
md"""
### Thermal radiation

Energy is quantized

$E = hf = \frac{hc}{\lambda}$

$E_n = nhf, \quad n = 1, 2,…$
"""

# ╔═╡ 820d6d23-f09f-4cb0-b2d1-d4fbf4b41898
md"""
### Planck Function

$I(\lambda) = \frac{2\pi h c^2}{\lambda^5} \frac{1}{e^{hc/\lambda k T} - 1}$
"""

# ╔═╡ 015a9c6a-48fe-4a63-9e13-7bcf9679ff4b
md"""
### Compton Effect

$\lambda' - \lambda = \frac{h}{m_e c}(1-\cos{\theta})$

$K_e = E - E'$
"""

# ╔═╡ 328eac0a-fd21-4824-a167-0bd951207475
md"""
### Diffraction

Bragg's Law

$2d \sin{\theta} = n \lambda$
"""

# ╔═╡ 3f73ead6-2a24-47ef-b0ad-1a9472ffcc67
md"""
### Blackbody Earth

Let ``⊙ = \text{Sun}`` and ``\

$I = \sigma T^4$

$P = 4\pi {R_⊙}^2 \sigma {T_⊙}^4$

$\sigma = 5.67 × 10^{-8}\, \frac{\text{W}}{\text{m}^2 ⋅ \text{K}^4}$

$I_⊕ = \frac{P}{4 \pi D^2}$

$P_{\text{in}} = \frac{P}{4 \pi D^2} \pi {R_⊕}^2 (1 - a)$

$\text{albedo} = a$

$P_⊕ = 4 \pi {R_⊕}^2 \sigma {T_⊕}^4$

$\varepsilon = \text{emissivity} ∼ 1$

$\begin{align*}
P_{\text{in}} &= P_{\text{out}} \\
\frac{4 \pi {R_⊙}^2 \sigma {T_⊙}^4}{4 \pi D^2} &= 4 \pi {R_⊕}^2 \sigma {T_⊕}^4 \\
\frac{{R_⊙}^2 {T_⊙}^4}{4D^2} (1 - a) &= {T_⊕}^4 \\
T_⊕ &= (1 - a)^{1/4} \sqrt{\frac{R_⊙}{2D}} T_⊙ ∝ \frac{(1 - a)^{1/4}}{\sqrt{D}}
\end{align*}$
"""

# ╔═╡ 770e45ce-6855-4b5c-9c52-6c9bfa2280d4
md"""
### Example

$D = 1 \text{ AU} = 1.5 × 10^{11} \text{ m}$

$T_⊙ = 5800 \text{ K}$

$R_⊙ = 6.7 × 10^8 \text{ m}$

$a ≃ 0.31$

$T ≃ 250 \text{ K} = -23^∘ \text{C}$
"""

# ╔═╡ f33418ce-1ebe-48cc-9fb3-9c044754a0a4
md"""
### Photon

$p = \frac{E}{c} = \frac{hf}{c} = \frac{h}{\lambda}$
"""

# ╔═╡ 6e2fa8f7-f0f7-458b-ad7b-4dc8a3354ccf
md"### Particle/Wave Duality"

# ╔═╡ a2765200-42e8-43a1-a5e2-72a506cb03bb
md"""
### Principle of Complementarity

Both wave & particle only measure one at a time
"""

# ╔═╡ dbf7f220-1634-4e53-97b8-06b79d3d256f
md"""
### Principle of Uncertainty (Heisenberg's uncertainty principle)

$E = \frac{h}{4\pi} = \frac{\hbar}{2}$

$\hbar = \frac{h}{2\pi}$

$Δx Δp ≥ \frac{\hbar}{2}$

$ΔE Δt ≥ \frac{\hbar}{2}$
"""

# ╔═╡ b223ab57-a746-4ee3-a08f-5bc68cc9b4cb
md"""
### Wave Packet

Fourier Transform

$y(x) = \sum_i A_{i,1} \sin{k_{i,1} x} + A_{i,2} \cos{k_{i,2} x}$

$k_i = \frac{2\pi}{\lambda_i}$

Two ``v``'s:

``v_p`` = phase velocity -> ``i``th component

``v_g`` = group velocity -> packet

``v_g = v_p``

``v_g = \frac{d\omega}{dk}``

``E = \hbar \omega``

``v_g = \frac{d\omega}{dk} = \frac{dE/\hbar}{dp/\hbar} = \frac{dE}{dp}``

``E = hf = \hbar \omega``

``p = \frac{h}{\lambda} = \frac{hk}{2\pi} = \hbar k``

``dE = \hbar \,d\omega``

``dp = \hbar \,dk``
"""

# ╔═╡ b11f5c06-35e0-4a85-829f-10da048ffa0c
md"""
### Definition

$\psi(x)$

$|\psi(x)|^2 \,dx = \text{probability of finding particle in interval } dx$

Normalize

$∫_{-∞}^{+∞} |\psi(x)|^2\,dx = 1$
"""

# ╔═╡ fa8476da-e485-4c11-a02e-76e2d5116c2a
md"""
### Example (Roll a die)

$\psi(x) = \frac{1}{\sqrt{6}} \left(\sum_{i=1}^6 \delta (x - i)\right)$

$∫_{0.5}^{1.5} |\psi(x)|^2 \,dx = \frac{1}{6}$

$Δx Δp ≥ \frac{\hbar}{2}$
"""

# ╔═╡ 79070364-e1a6-4f7e-8b3b-6219b7b8a1b2
md"""
### Big Names in Making of the Atomic Bomb

- Hans Geiger

- Ernest Marsden

They used a helium source where the helium was stripped of its protons.
"""

# ╔═╡ 3c17911b-25b4-437a-8397-1c0b36abf189
md"""
### Rutherford Scattering Problem

(1) ``\theta(b)``

(2) Fraction within ``b`` ``(> \theta)``

(3) detector

$n = \frac{N_A \rho}{M}$

nuclei per area = ``nt``

``\pi R^2 = (nt)^{-1} = \frac{M}{N_A \rho t}``

$f_{<b} = \frac{\pi b^2}{\pi R^2} = nt\pi b^2$

$df = \frac{d}{db} (nt\pi b^2) = nt(2\pi b \,db)$

$dA = 2 \pi (r \sin{\theta}) (r \,d\theta)$

$\frac{df}{dA} = \frac{nt(2\pi b)}{2\pi r^2 \sin{\theta}} \frac{db}{d\theta}$
"""

# ╔═╡ 29d0dd28-0645-4148-8871-a8d94b079d80
md"""
### Rutherford Scattering formula

$N(\theta) = \frac{nt}{4r^2} \left(\frac{zZ}{2K}\right)^2 \left(\frac{e^2}{4\pi\epsilon_0}\right)^2 \frac{1}{\sin^4{\frac{\theta}{2}}}$

foil → ``n,t,Z``

impactors → ``z, K``

detector arm → ``r``
"""

# ╔═╡ cfa85100-acfc-4730-97e6-744b5671dfc5
md"""
### Scrödinger Equation

1. ``U(x) \implies \text{S.E.}``

2. Solve S.E.

3. Apply boundary conditions

   - Eliminate solutions
  
   - Solve for unknowns

4. Normalize ``\psi``
"""

# ╔═╡ c7ebcc33-cc87-4ea1-a5bf-98b0e3e2c850
md"""
### Covalent Bonding

|   | ``\#e^-`` | ``p_x`` ``p_{y,z}`` |  ``p_{y,z} p_x`` |
|---|-----------|---------------------|------------------|
| N₂ | 6 | ↑↓ ↑↓↑↓ | -- -- |
| O₂ | 8 | ↑↓ ↑↓↑↓ | ↑↓ -- |
| F₂ | 10 | ↑↓ ↑↓↑↓ | ↑↓↑↓ -- |
| Ne₂ | 12 | ↑↓ ↑↓↑↓ | ↑↓↑↓ ↑↓ |
"""

# ╔═╡ 282c6297-275b-4b92-85fc-1ca9d59bbf01
md"""
### The Density of States

$\begin{align*}
\text{Gas of Fermions} &&& g(E) ∝ (2s + 1) E^{1/2} \\
\text{Gas of Bosons} &&& g(E) ∝ E^2 \\
\end{align*}$
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0-beta1"
manifest_format = "2.0"
project_hash = "da39a3ee5e6b4b0d3255bfef95601890afd80709"

[deps]
"""

# ╔═╡ Cell order:
# ╟─8fff6f60-73d2-11ec-0e88-1701d74f2f8d
# ╟─4508b3bd-716d-415b-9d93-ad417b5366fc
# ╟─dc35f5ad-fa57-46fb-b3b6-c8753774c62f
# ╟─2a88584c-c715-409a-9272-15bc6073350b
# ╟─bb031c5a-903d-4966-8123-6036c7f01bfd
# ╟─d111c64f-2c45-4eb3-97cf-0cae5fe8d96b
# ╟─e4d5feb0-1d32-4e22-b6b3-f657c47325ce
# ╟─754c7e68-75c7-4ffd-abc0-36b4d04d4a2f
# ╟─cd257100-b7e2-40c7-b566-c2d9fd8dd56b
# ╟─a0ecf6c0-5046-451c-9bcf-b1bf2881c107
# ╟─e2127308-3258-47c2-aaa7-965c5891a9e7
# ╟─633bb6f8-2e0a-4997-8739-65e22cb4a049
# ╟─cc3d4870-23ab-4348-9865-46dad7eb52e6
# ╟─42da86fc-c074-4a97-b959-74d2d2436343
# ╟─0bc0a6ee-58ca-47a7-8ebe-dc85a842d4bf
# ╟─ec41a817-1f19-48c4-906b-6dd110622a69
# ╟─361e342b-d5b1-47b4-8923-a5f1f45c8caf
# ╟─9d5d915e-275f-40af-b850-03bb70f28d42
# ╟─122d07e1-aba7-4000-afdc-f71710ed3f4c
# ╟─71b5a478-4383-451a-b95b-f6a3f81d526c
# ╟─ee6ae1ef-eadc-4574-8405-53bb778de820
# ╟─fd17b20b-5e4d-4186-8216-fd701d2e49b4
# ╟─8ec9d896-240f-42d7-abe5-f6c2949ac1ac
# ╟─1bd2a1ff-e175-4607-bcdd-a0045bf8e40f
# ╟─80724c9f-0f9d-4179-bb9b-092e3abb0e29
# ╟─18877ae9-de56-423a-97f7-8e29f300536a
# ╟─820d6d23-f09f-4cb0-b2d1-d4fbf4b41898
# ╟─015a9c6a-48fe-4a63-9e13-7bcf9679ff4b
# ╟─328eac0a-fd21-4824-a167-0bd951207475
# ╟─3f73ead6-2a24-47ef-b0ad-1a9472ffcc67
# ╟─770e45ce-6855-4b5c-9c52-6c9bfa2280d4
# ╟─f33418ce-1ebe-48cc-9fb3-9c044754a0a4
# ╟─6e2fa8f7-f0f7-458b-ad7b-4dc8a3354ccf
# ╟─a2765200-42e8-43a1-a5e2-72a506cb03bb
# ╟─dbf7f220-1634-4e53-97b8-06b79d3d256f
# ╟─b223ab57-a746-4ee3-a08f-5bc68cc9b4cb
# ╟─b11f5c06-35e0-4a85-829f-10da048ffa0c
# ╟─fa8476da-e485-4c11-a02e-76e2d5116c2a
# ╟─79070364-e1a6-4f7e-8b3b-6219b7b8a1b2
# ╟─3c17911b-25b4-437a-8397-1c0b36abf189
# ╟─29d0dd28-0645-4148-8871-a8d94b079d80
# ╟─cfa85100-acfc-4730-97e6-744b5671dfc5
# ╟─c7ebcc33-cc87-4ea1-a5bf-98b0e3e2c850
# ╟─282c6297-275b-4b92-85fc-1ca9d59bbf01
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
