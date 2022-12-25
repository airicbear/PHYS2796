### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 88a4cffe-7564-11ec-1a0e-4f386d9e3ed3
begin
	using PlutoUI
	
md"""
# Modern Physics Notes

Kenneth S. Krane

Fourth Edition
"""
end

# ╔═╡ e71f411b-a81b-43ab-bc17-4f91956c7754
PlutoUI.TableOfContents()

# ╔═╡ 4aaafe20-f5f9-4cea-a0a7-cc198c52ff36
md"# Some Deficiencies of Classical Physics"

# ╔═╡ 920f965a-f147-42bd-af96-2741264d58f0
md"## Review of Classical Physics"

# ╔═╡ bdb37144-3ec1-4011-a19f-e153fa40ed00
md"### Mechanics"

# ╔═╡ dccb0fa6-b310-4deb-af17-82b53c1b63b7
md"""
**Definition.**
A particle of mass ``m`` moving with velocity ``v`` has a **kinetic energy** defined by

$K = \frac{1}{2} mv^2 \tag{1.1}$

and a **linear momentum** ``\vec{𝐩}`` defined by

$\vec{𝐩} = m\vec{𝐯} \tag{1.2}$

In terms of the linear momentum, the kinetic energy can be written as

$K = \frac{p^2}{2m} \tag{1.3}$
"""

# ╔═╡ 7bc66048-abd7-48ba-af15-fd650354230a
md"""
**Definition.**
When one particle collides with another, we analyze the collision by applying two fundamental conservation laws:

I. **Conservation of Energy.**
   The total energy of an isolated system (on which no net external force acts) remains constasnt.
   In the case of a collision between particles, this means that the total energy of the particles *before* the collision is equal to the total energy of the particles *after* the collision.

II. **Conservation of Linear Momentum.**
    The total linear momentum of an isolated system remains constant.
    For the collision, the total linear momentum of the particles *before* the collision is equal to the total linear momentum of the particles *before* the collision is equal to the total linear momentum of the particles *after* the collision.
    Because linear momentum is a vector, application of this law usually gives us two equations, one for the ``x`` components and another for the ``y`` components.
"""

# ╔═╡ de0e4252-cce2-4c97-94ed-50d99b8c3bd9
md"""
**Definition.**
When a particle with linear momentum ``\vec{𝐩}`` is at a displacement ``\vec{𝐫}`` from the origin ``O``, its **angular momentum** ``\vec{𝐋}`` about the point ``O`` is defined by

$\vec{𝐋} = \vec{𝐫} × \vec{𝐩} \tag{1.6}$
"""

# ╔═╡ 50ca895f-d621-4ee8-b430-be1629290457
md"### Velocity Addition"

# ╔═╡ 3879bed9-17e8-414d-9b18-1a5af17852f3
md"""
**Definition.**
Let ``\vec{𝐯}_{AB}`` represent the velocity of ``A`` relative to ``B``, and let ``\vec{𝐯}_{BC}`` represent the velocity of ``B`` relative to ``C``.
Then the velocity of ``A`` relative to ``C`` is

$\vec{𝐯}_{AC} = \vec{𝐯}_{AB} + \vec{𝐯}_{BC} \tag{1.7}$
"""

# ╔═╡ fc4c587a-23ba-4e28-8efa-3614bfce19d2
md"### Electricity and Magnetism"

# ╔═╡ 8ebeba73-c4ec-4a77-be9f-bf614c584d58
md"""
**Definition.**
The electric field ``E`` at a distance ``r`` from a point charge ``q`` (or at a distance ``r`` from the center of a spherically symmetric charge distribution of radius smaller than ``r``) has magnitude

$E = \frac{1}{4 \pi \epsilon_0} \frac{|q|}{r} \tag{1.8}$
"""

# ╔═╡ 1c036a24-14b6-465b-954f-ec873e72bfce
md"""
**Definition.**
The electrostatic force (Coulomb force) exerted by a charged particle ``q_1`` on another charge ``q_2`` has magnitude

$F = \frac{1}{4 \pi \epsilon_0} \frac{|q_1||q_2|}{r^2} \tag{1.9}$
"""

# ╔═╡ db9814f4-4e94-4d5a-a6de-22071552168a
md"""
**Definition.**
The direction of ``F`` is along the line joining the particles (Figure 1.5).
In the SI system of units, the constant ``1/4\pi\epsilon_0`` has the value

$\frac{1}{4 \pi \epsilon_0} = 8.988 × 10^9 \text{ N} ⋅ \text{m}^2 / \text{C}^2$

The corresponding potential energy is

$U = \frac{1}{4 \pi \epsilon_0} \frac{q_1 q_2}{r} \tag{1.10}$
"""

# ╔═╡ a08e152e-10c2-4b40-827a-376e909c37b3
md"""
**Definition.**
An electrostatic potential difference ``ΔV`` can be established by a distribution of charges.
The most common example of a potential difference is that between the two terminals of a battery.
When a charge ``q`` moves through a potential difference ``ΔV``, the change in its electrical potential energy ``ΔU`` is

$ΔU = qΔV \tag{1.11}$
"""

# ╔═╡ 63d7a79a-dc8e-40b6-9b13-544a1a8ab901
md"""
**Definition.**
A magnetic field ``\vec{𝐁}`` can be produced by an electric current ``i``.
For example, the magnitude of the magnetic field at the center of a circular current loop of radius ``r`` is

$B = \frac{\mu_0 i}{2r} \tag{1.12}$

The SI unit for magnetic field is the tesla (T), which is equivalent to a newton per ampere-meter.
The constant ``\mu_0`` is

$\mu_0 = 4\pi × 10^{-7} \text{ N} ⋅ \text{s}^2 / \text{C}^2$
"""

# ╔═╡ eff77360-2f02-47bf-9254-ee7ad4ab7eb7
md"""
**Definition.**
The **magnetic moment** ``\vec{𝐮}`` of a current loop is defined as

$|\vec{𝐮}| = iA \tag{1.13}$

where ``A`` is the geometrical area enclosed by the loop.
The direction of ``\vec{𝐮}`` is perpendicular to the plane of the loop, according to the right-hand rule.
"""

# ╔═╡ 7f98aa9f-70ff-40a6-8938-c9e8c18e7f1f
md"""
**Definition.**
When a current loop is placed in a uniform *external* magnetic field ``\vec{𝐁}_{\text{ext}}``, there is a torque ``\vec{\tau}`` on the loop that tends to line up ``\vec{𝐮}`` with ``\vec{𝐁}_{\text{ext}}``:

$\vec{\tau} = \vec{𝐮} × \vec{𝐁}_{\text{ext}} \tag{1.14}$

Another way to describe this interaction is to assign a potential energy to the magnetic moment ``\vec{𝐮}`` in the external field ``\vec{𝐁}_{\text{ext}}``:

$U = -\vec{𝐮} ⋅ \vec{𝐁}_{\text{ext}} \tag{1.15}$
"""

# ╔═╡ 343dbe20-43db-4cb8-a881-09b24ac84b51
md"""
**Definition.**
Electromagnetic waves travel in free space with speed ``c`` (the speed of light), whih is related to the electromagnetic constants ``\epsilon_0`` and ``\mu_0``:

$c = (\epsilon_0 \mu_0)^{-1/2} \tag{1.16}$

The speed of light has the exact value of ``c = 299,792,458 \text{ m/s}``.
"""

# ╔═╡ 24a8736c-799f-4b6e-9af8-59b08c1fa175
md"""
**Definition.**
Electromagnetic waves have a frequency ``f`` and wavelength ``\lambda``, which are related by

$c = \lambda f \tag{1.17}$
"""

# ╔═╡ 30723a24-ca20-43cd-bac4-1f5e3d07bf6e
md"### Kinetic Theory of Matter"

# ╔═╡ 9b428d66-5058-4def-9b11-5b4570780db6
md"""
**Definition.**
For gases at relatively low pressures and high temperatures, most real gases can be modeled as ideal gases and are well described by the **ideal gas equation of state**

$PV = NkT \tag{1.18}$

where ``P`` is the pressure, ``V`` is the volume occupied by the gas, ``N`` is the number of molecules, ``T`` is the temperature, and ``k`` is the **Boltzmann constant**, which has the value

$k = 1.381 × 10^{-23} \text{ J/K}$
"""

# ╔═╡ 58d35e8e-77b8-4018-b2c8-d14804b1a6b4
md"""
**Definition.**
The ideal gas equation of state can also be expressed as

$PV = nRT \tag{1.19}$

where ``n`` is the number of moles and ``R`` is the **universal gas constant** with a value of

$R = 8.315 \text{ J/mol} ⋅ \text{K}$
"""

# ╔═╡ 5569af2e-4df9-4b3b-988a-62c75c4547ee
md"""
**Definition.**
One mole of a gas is the quantity that contains a number of fundamental entities (atoms or molecules) equal to Avogadro's constant ``N_A``, where

$N_A = 6.022 × 10^{23} \text{ per mole}$

That is, one mole of helium contains ``N_A`` atoms of ``\text{He}``, one mole of nitrogen contains ``N_A`` molecules of ``\text{N}_2`` (and thus ``2N_A`` atoms of ``\text{N}``), and one mole of water vapor contains ``N_A`` molecules of ``\text{H}_2\text{O}`` (and thus ``2N_A`` atoms of ``\text{H}`` and ``N_A`` atoms of ``\text{O}``).
"""

# ╔═╡ a615b43d-f75e-44f2-8425-e5d4567469ae
md"""
**Definition.**
Because ``N = nN_A`` (number of molecules equals number of moles time number of mole, the relationship between the Boltzmann constant is

$R = kN_A \tag{1.20}$
"""

# ╔═╡ cafd1baa-dcc4-4eda-9006-ea0d8c540886
md"""
**Definition.**
The average kinetic energy of a molecule depends only on the temperature:

$K_{\text{av}} = \frac{3}{2} kT \text{ (per molecule)} \tag{1.21}$
"""

# ╔═╡ 2ab1e92b-ae48-436e-8d91-a05624eae649
md"""
**Definition.**
Using (1.20), the average molar kinetic energy is

$K_{\text{av}} = RT \text{ (per mole)} \tag{1.22}$
"""

# ╔═╡ 96615d08-c72d-4bd6-bb3c-5fc2ea828085
md"## Deficiences in Classical Concepts of Space and Time"

# ╔═╡ 67b23133-d90a-45c6-b438-c3b3417f9ede
md"### The Deficiency in the Classical Concept of Time"

# ╔═╡ e199612c-4d89-4576-89f9-9776f3a35e88
md"""
**Example.**
In high-energy collisions between two protons, many new particles can be produced, one of which is a **pi meson** (also known as a **pion**).
When the pions are produced at rest in the laboratory, they are observed to have an average lifetime (the time between the production of the pion and its decay into other particles) of 26.0 ns (nanoseconds, or ``10^{-9}`` s).
On the other hand, pions in motion are observed to have very different lifetime.
In one particular experiment, pions moving at a speed of ``2.737 × 10^8 \text{ m/s}`` (91.3% of the speed of light) showed a lifetime of 63.7 ns.

Let us imagine this experiment as viewed by two different observers (Figure 1.8).
Observer #1, at rest in the laboratory, sees the pion moving relative to the laboratory at a speed of 91.3% of the speed of light and measures its lifetime to be 63.7 ns.
Observer #2 is moving relative to the laboratory at exactly the same velocity as the pion, so according to observer #2 the pion is at rest and has a lifetime of 26.0 ns.
The two observers measure different values for the time interval between the same two events---the formation of the pion and its decay.

According to Newton, time is the same for all observers.
Newton's laws are based on this assumption.
The pion experiment clearly shows that time is *not* the same for all observers, which indicates the need for a new theory that relates time intervals measured by different observers who are in motion with respsect to each other.
"""

# ╔═╡ 07914220-fd51-41de-b136-b95041fed751
md"### The Deficiency in the Classical Concept of Space"

# ╔═╡ a8998f41-50c8-472e-88fe-17585a4a99f4
md"""
**Example.**
The pion experiment also leads to a need to modify the classical ideas about space.
Suppose observer #1 erects two markers in the laboratory, one where the pion is created and another where it decays.
The distance ``D_1`` between the two markers is equal to the speed of the pion multiplied by the time interval from its creation to its decay: ``D_1 = (2.737 × 10^8 \text{ m/s}) (63.7 × 10^{-9} \text{ s}) = 17.4 \text{ m}``.
To observer #2, traveling at the same velocity as the pion, the laboratory appears to be rushing by at a speed of ``2.737 × 10^8 \text{ m/s}`` and the time between passing the first and second markers, showing the creation and decay of the pion in the laboratory, is 26.0 ns.
According to observer #2, the distance between the markers is ``D_2 = (2.737 × 10^8 \text{ m/s})(26.0 × 10^{-9} \text{ s}) = 7.11 \text{ m}``.
Once again, we have two observers in relative motion measuring different values for the same interval, in this case the distance between the two markers in the laboratory.
The physical theories of Galileo and Newton are based on the assumption that space is the same for all observers, and so length measurements should not depend on relative motion.
The pion experiment again shows that this cornerstone of classical physics is not consistent with modern experimental data.
"""

# ╔═╡ 724e2048-818f-49aa-ae96-47f1bb5a327f
md"### The Deficiency in the Classical Concept of Velocity"

# ╔═╡ 95efdadf-414d-43c5-927d-5ae42a74a9cd
md"""
**Example.**
Classical physics places no limit on the maximum velocity that a particle can reach.
One of the basic equations of kinematics, ``v = v_0 + at``, shows that if a particle experiences an acceleration ``a`` for a long enough time ``t``, velocities as large as desired can be achieved, perhaps even exceeding the speed of light.
For another example, when an aircraft flying at a speed of 200 m/s relative to an observer on the ground launches a missle at a speed of 250 m/s relative to the aircraft, a ground-based observer would measure the missile to travel at a speed of 200 m/s + 250 m/s = 450 m/s, according to the classical velocity addition rule (Eq. 1.7).
We can apply that same reasoning to a spaceship moving at a speed of ``2.0 × 10^8 \text{ m/s}`` (relative to an observer on a space station), which fires a missle at a speed of ``2.5 × 10^8 \text{ m/s}`` relative to the spacecraft.
We would expect that the observer on the space station would mesaure a speed of ``4.5 × 10^8 \text{ m/s}`` for the missile.
This speed exceeds the speed of light (``3.0 × 10^8 \text{ m/s}``).
Allowing speeds greater than the speed of light leads to a number of conceptual and logical difficulties, such as the reversal of the normal order of cause and effect for some observers.

Here again modern experimental results disagree with the classical ideas.
Let's go back again to our experiment with the pion, which is moving through the laboratory at a speed of ``2.737 × 10^8 \text{ m/s}``.
The pion decays into another particle, called a **muon**, which is emitted in the forward direction (the direction of the pion's velocity) with a speed of ``0.813 × 10^8 \text{ m/s}`` relative to the pion.
According to Eq. 1.7, an observer in the laboratory should observe the muon to be moving with a velocity of ``2.737 × 10^8 \text{ m/s} + 0.813 × 10^8 \text{ m/s} = 3.550 × 10^8 \text{ m/s}``, exceeding the speed of light.
The observed velocity of the muon, however, is ``2.846 × 10^8 \text{ m/s}``, below the speed of light.
Clearly, the classical rule for velocity addition fails in this experiment.

The properties of time and space and the rules for combining velocities are essential concepts of the classical physics of Newton.
These concepts are derived from observations at low speeds, which were the only speeds available to Newton and his contemporaries.
In Chapter 2, we shall discover how the special theory of relativity provides the correct procedure for comparing measurements of time, distance, and velocity by different observers and thereby removes the deficiencies of classical physics at high speed (while reducing to the classical laws at low speed, where we know the Newtonian framework works very well).
"""

# ╔═╡ 5b700809-bf0e-4e98-b9dc-083233678742
md"## Deficiences in the Classical Theory of Particle Statistics"

# ╔═╡ 493374b6-3f59-424e-8499-c460c89a805a
md"### The Distribution of Molecular Energies"

# ╔═╡ a5edd239-67e0-4b38-ab07-debbfc476040
md"""
**Definition.**
For a gas in thermal equilibrium at absolute temperature ``T`` (in kelvins), the distribution of molecular energies is given by the **Maxwell-Boltzmann distribution**:

$N(E) = \frac{2N}{\sqrt{\pi}} \frac{1}{(kT)^{3/2}} E^{1/2} e^{-E/kT} \tag{1.23}$

In this equation, ``N`` is the total number of molecules (a pure number) while ``N(E)`` is the distribution function (with units of energy``^{-1}``) defined so that ``N(E) \,dE`` is the number of molecules ``dN`` in the energy interval ``dE`` at ``E`` (or, in other words, the number of molecules with energies between ``E`` and ``E + dE``):

$dN = N(E) \,dE \tag{1.24}$
"""

# ╔═╡ c7a73959-9ab8-4eb0-8c60-17075b710741
md"### Polyatomic Molecules and the Equipartition of Energy"

# ╔═╡ 4fb60a96-8200-4558-ab03-af6b640d831d
md"### Heat Capacities of an Ideal Gas"

# ╔═╡ cf3e3a39-8071-48d7-941f-fa2df5c24c8b
md"## Theory, Experiment, Law"

# ╔═╡ c655ca2d-42d2-449e-99ef-a49e21b77a76
md"""
**Remark.**
In modern physics, fundamental concepts are not obvious from reason alone.
Only by doing often difficult and necessarily precise experiments do we learn about these unexpected and fascinating effects associated with modern physics topics such as relativity and quantum physics.
These experiments have been done to unprecedent levels of precision---of the order of one part in ``10^6`` or better---and it can certainly be concluded that modern physics was tested far better in the 20th century than classical physics was tested in all of the preceding centuries.
"""

# ╔═╡ b0e44f22-210e-4be7-a27f-fa3626cc2d74
md"# The Special Theory of Relativity"

# ╔═╡ 63f38947-8341-4ae6-af1b-cd91ea2ccf11
md"""
**Remark.**
The special theory of relativity has a completely undeserved reputation as being so exotic that few can understand it.
On the contrary, special relativity is basically a system of kinematics and dynamics, based on a set of postualtes that are different from those of classical physics.
The resulting formalism is not much more complicated than Newton's laws, but does lead to several predictions that seem to go against our common sense.
Even so, the special theory of relativity has been carefully and thoroughly tested by experiment and found to be correct in all its predictions.
"""

# ╔═╡ c04aaf8c-0b71-4257-86d7-d5c048e34a1e
md"## Classical Relativity"

# ╔═╡ 92bda6f2-84ae-43d1-8f08-2c9964cf4be5
md"""
**Definition.**
A "theory of relativity" is in effect a way for observers in different frames of reference to compare the results of their observations.
For example, consider an observer in a car parked by a highway near a large rock.
To this observer, the rock is at rest.
Another observer, who is moving along the highway in a car, sees the rock rush past as the car drives by.
To this observer, the rock appears to be moving.
A theory of relativity provides the conceptual framework and mathematical tools that enable the two observers to transform a statement such as "rock is at rest" in one frame of reference to the statement "rock is in motion" in another frame of reference.
More generally, relativity gives a means for expressing the laws of physics in different frames of reference.

The mathematical basis for comparing the two descriptions is called a **transformation**.
Figure 2.1 shows an abstract representation of the situation.
Two observers ``O`` and ``O'`` are each at rest in their own frames of reference but move relative to one another with constant velocity ``\vec{𝐮}``.
(``O`` and ``O'`` refer both to the observers and their reference frames or coordinate systems.)
They observe the same **event**, which happens at a particular point in space and a particular time, such as a collision between two particles.
According to ``O``, the space and time coordinates of the event are ``x``, ``y``, ``z``, ``t``, while according to ``O'`` the coordinates of the **same event** are ``x'``, ``y'``, ``z'``, ``t'``.
The two observers use calibrated meter sticks and synchronized clocks, so any differences between the coordinates of the two events are due to their different frames of reference and not to the measuring process.
We simplify the discussion by assuming that the relative velocity ``\vec{𝐮}`` always lies along the common ``xx'`` direction, as shown in Figure 2.1, and we let ``\vec{𝐮}`` represent the velocity of ``O'`` as measured by ``O`` (and thus ``O'`` would measure velocity ``-\vec{𝐮}`` for ``O``).

In this discussion, we make a particular choice of the kind of reference frames inhabited by ``O`` and ``O'``.
We assume that each observer has the capacity to test Newton's laws and finds them to hold in that frame of reference.
For example, each observer finds that an object at rest or moving with a constant velocity remains in that state unless acted upon by an external force (Newton's first law, the law of inertia).
Such frames of reference are called **inertial frames**.
An observer in interstellar space floating in a nonrotating rocket with the engines off would be in an inertial frame of reference.
An observer at rest on the surface of the Earth is *not* in an inertial frame, because the Earth is rotating about its axis and orbiting about the Sun; however, the accelerations associated with those motions are so small that we can usually regard our ference frame as approximately inertial.
(The noninertial reference frame at the Earth's surface does produce important and often spectacular effects, such as the circulation of air around centers of high or low pressure.)
An observer in an accelerating car, a rotating merry-go-round, or a descending roller coaster is *not* in an inertial frame of reference!
"""

# ╔═╡ c846e115-241a-4152-9d90-842e390b2a75
md"""
**Definition.**
We now derive the classical or **Galilean** transformation that relates the coordinates ``x``, ``y``, ``z``, ``t`` to ``x'``, ``y'``, ``z'``, ``t'``.
We assume as a postulate of classical physics that ``t = t'``, that is, time is the same for all observers.
We also assume for simplicity that the coordinate systems are chosen so that their origins coincide at ``t = 0``.
Consider an object in ``O'`` at the coordinates ``x'``, ``y'``, ``z'`` (Figure 2.2).
According to ``O``, the ``y`` and ``z`` coordinates are the same as those in ``O'``.
Along the ``x`` direction, ``O`` would observe the object at ``x = x' + ut``.
We therefore have the **Galilean coordinate transformation**

$x' = x - ut \qquad y' = y \qquad z' = z \tag{2.1}$

To find the velocities of the object as observed by ``O`` and ``O'``, we take the derivatives of these expressions with respect to ``t'`` on the left and with respect to ``t`` on the right (which we can do because we have assumed ``t' = t``).
This gives the **Galilean velocity transformation**

$v_x' = v_x - u \qquad v_y' = v_y \qquad v_z' = v_z \tag{2.2}$

In a similar fashion, we can take the derivatives of Eq. 2.2 with respect to time and obtain relationships between the accelerations

$a_x' = a_x \qquad a_y' = a_y \qquad a_z' = a_z \tag{2.3}$

Equation 2.3 shows again that Newton's laws hold for both observers.
As long as ``u`` is constant (``du/dt = 0``), the observers measure identical accelerations and agree on the results of applying ``\vec{𝐅}``
"""

# ╔═╡ 16222e54-3327-4a11-919e-9f2d1485c967
md"## The Michelson--Morley Experiment"

# ╔═╡ c0f6dd98-f45e-49e6-80ce-4286b605215f
md"""
**Remark.**
The Michelson--Morley experiment to observe the motion of the Earth relative to the ether was a failure.
Although several explanations were offered for the unobservability of the ether and the corresponding failure of the upstream--downstream and cross-stream velocities to add in the expected way, the most novel, revolutionary, and ultimately successful explanation is given by Einstein's special theory of relativity, which requires a serious readjustment of our traditional concepts of space and time, and therefore alters some of the very foundations of physics.
"""

# ╔═╡ 7d68f020-b82f-4010-8099-a4279737de7f
md"## Einstein's Postulates"

# ╔═╡ c8bafaa8-09cc-4490-88de-a43266cee632
md"""
**Definition.**
The **special theory of relativity** is based on two postulates proposed by Albert Einstein in 1905:

1. **The principle of relativity**: The laws of physics are the same in all inertial reference frames.

2. **The principle of the constancy of the speed of light**: The speed of light in free space has the same value ``c`` in all inertial reference frames.
"""

# ╔═╡ 26455e8b-715d-4a3e-8da5-b60c4edda480
md"## Consequences of Einstein's Postulates"

# ╔═╡ 203a8c2c-4624-4003-aa32-80b4ecf45569
md"""
**Remark.**
Among their many consequences, Einstein's postulates require a new consideration of the fundamental nature of time and space.
In this section, we discuss how the postulates affect measurements of time and length intervals by observers in different frames of reference.
"""

# ╔═╡ 49ac354b-d22b-494c-86df-6b25355d4af4
md"### The Relativity of Time"

# ╔═╡ 8c8abde5-a603-46dd-b4cf-f3f3f1b8edc7
md"""
**Example.**
To demonstrate the relativity of time, we use the timing device illustrated in Figure 2.8.
It consists of a flashing light source ``S`` that is a distance ``L_0`` from a mirror ``M``.
A flash of light from the source is reflected by the mirror, and when the light returns to ``S`` the clock ticks and triggers another flash.
The time interval between the ticks is the distance ``2L_0`` (assuming the light travels perpendicular to the mirror) divided by the speed ``c``:

$Δt_0 = 2L_0 / c \tag{2.6}$

This is the time interval that is measured when the clock is at rest with respect to the observer.
"""

# ╔═╡ 545cc12e-58c1-4113-9ca9-c515a6f43e98
md"""
**Example.**
We consider two observers: ``O`` is at rest on the ground, and ``O'`` moves with speed ``u``.
Each observer carries a timing device.
Figure 2.9 shows a sequence of events that ``O`` observes for the clock carried by ``O'``.
According to ``O``, the flash is emitted when the clock of ``O'`` is at ``A``, reflected when it is at ``B``, and detected at ``C``.
In this interval ``Δt``, ``O`` observes the clock to move forward a distance ``u Δt`` from the point at which the flash was emitted, and ``O`` concludes that the light beam travels a distance ``2L``, where ``L = \sqrt{{L_0}^2 + (u Δt / 2)^2}``, as shown in Figure 2.9.
Because ``O`` observes the light beam to travel at speed ``c`` (as required by Einstein's second postulate) the time interval measured by ``O`` is

$Δt = \frac{2L}{c} = \frac{2 \sqrt{{L_0}^2 + (uΔt/2)^2}}{c} \tag{2.7}$

Substituting for ``L_0`` from Eq. 2.6 and solving Eq. 2.7 for ``Δt``, we obtain

$Δt = \frac{Δt_0}{\sqrt{1 - u^2 / c^2}} \tag{2.8}$

According to Eq. 2.8, observer ``O`` measures a longer time interval than ``O'`` measures.
This is a general result of special relativity, which is known as **time dilation**.
An observer ``O'`` is at rest relative to a device that produces a time interval ``Δt_0``.
For this observer, the beginning and end of the time interval occur at the same location, and so the interval ``Δt_0`` is known as the **proper time**.
An observer ``O``, relative to whom ``O'`` is in motion, measures a longer time interval ``Δt`` for the same device.
The dilated time interval ``Δt`` is always longer than the proper time interval ``Δt_0``, no matter what the magnitude or direction of ``\vec{𝐮}``.

This is a real effect that applies not only to clocks based on light beams but also to time itself; all clocks run more slowly according to an observer in relative motion, biological clocks included.
Even the growth, aging, and decay of living systems are slowed by the time dilation effect.
However, not that udner normal circumstances ``(u ≪ c)``, there is no measurable difference between ``Δt`` and ``Δt_0``, so we don't notice the effect in our everyday activities.
Time dilation has been verified experimentally with decaying elementary particles as well as with precise atomic clocks carried aboard aircraft.
Some experimental tests are discussed in the last section of this chapter.
"""

# ╔═╡ 5ea36696-efae-4080-8c11-437d424c6ef3
md"### The Relativity of Length"

# ╔═╡ 0a5cb747-6aaa-4095-8b53-323e9027bdfa
md"""
**Example.**
For this discussion, the moving timing device of ``O'`` is turned sideways, so that the light travels parallel to the direction of motion of ``O'``.
Figure 2.10 shows the sequence of events that ``O`` observes for the moving clock.
According to ``O``, the length of the clock (distance between the light source and the mirror) is ``L``; as we shall wee, this length is different from the length ``L_0`` measured by ``O'``, relative to whom the clock is at rest.

The flash of light is emitted when the clock of ``O'`` is at ``A`` and reaches the mirror (position ``B``) at time ``Δt_1`` later.
In this time interval, the light travels a distance ``c Δt_1``, equal to the length ``L`` of the clock plus the additional distance ``u Δt_1`` that the mirror moves forward in this interval.
That is,

$c Δt_1 = L + uΔt_1 \tag{2.9}$

The flash of light travels from the mirror to the detector in a time ``Δt_2`` and covers a distance of ``c Δt_2``, equal to the length ``L`` of the clock less the distance ``uΔt_2`` that the clock moves forward in this interval:

$c Δt_2 = L - uΔt_2 \tag{2.10}$

Solving Eqs. 2.9 and 2.10 for ``Δt_1`` and ``Δt_2``, and adding to find the total time interval, we obtain

$Δt = Δt_1 + Δt_2 = \frac{L}{c - u} + \frac{L}{c + u} = \frac{2L}{c} \frac{1}{1 - u^2 / c^2} \tag{2.11}$

From Eq. 2.8,

$Δt = \frac{Δt_0}{\sqrt{1 - u^2 / c^2}} = \frac{2L_0}{c} \frac{1}{\sqrt{1 - u^2 / c^2}} \tag{2.12}$

Setting Eqs. 2.11 and 2.12 equal to one another and solving, we obtain

$L = L_0 \sqrt{1 - u^2 / c^2} \tag{2.13}$

Equation 2.13 summarizes the effect known as **length contraction**.
Observer ``O'``, who is at rest with respect to the object, measures the **rest length** ``L_0`` (also known as the **proper length**, in analogy with the proper time).
All observers relative to whom ``O'`` is in motion measure a shorter length, but only along the direction of motion; length measurements transverse to the direction of motion are unaffected (Figure 2.11).
"""

# ╔═╡ abe192ab-5b25-4dd9-ba02-35298b6280bd
md"""
**Remark.**
For ordinary speeds ``(u ≪ c)``, the effects of length contraction are too small to be observed.
For example, a rocket of length 100 m traveling at the escape speed from the Earth (11.2 km/s) would appear to an observer on the Earth to contract only by about two atomic diameters!
"""

# ╔═╡ 63e4903e-d0b5-41ab-821f-1645bd0140ff
md"""
**Remark.**
Length contraction suggests that objects in motion are measured to have a shorter length than they do at rest.
The objects do not actually shrink; there is merely a difference in the length measured by different observers.
For example, to observers on the Earth a high-speed rocket ship would appear to be contracted along its direction of motion (Figure 2.12a), but to an observer on the ship it is passing Earth that appears to be contracted (Figure 2.12b).
"""

# ╔═╡ 0bb97977-9453-438a-8489-da1285c6e56b
md"""
**Remark.**
These representations of length-contracted objects are somewhat idealized.
The actual appearance of a rapidly moving object is determiend by the time which light leaves the various parts of the object and enters the eye or the camera.
The result is that the object appears distorted in shape and slightly rotated.
"""

# ╔═╡ a7208b6e-858f-48b2-b489-abe1c7eb117b
md"""
**Example.**
Note that what appears as a time dilation in one frame of reference (the observer on Earth) can be regarded as a length contraction in another frame of reference (the observer traveling with the muon).
For another example of this effect, let's review again the example of the pion decay discussed in Section 1.2.
The pion at rest has a lifetime of 26.0 ns.
According to observer ``O_1`` at rest in the laboratory frame of reference, a pion moving through the laboratory at a speed of ``0.913c`` has a longer lifetime, which can be calculated to be 63.7 ns (using Eq. 2.8 for the time dilation).
According to observer ``O_2``, who is traveling through the laboratory at the same velocity as the pion, the pion appears to be at rest and has its proper lifetime of 26.0 ns.
Thus ``O_1`` sees a time dilation effect.

``O_1`` erects two markers in the laboratory, at the locations where the pion is created and decays.
To ``O_1``, the distance between those markers is the pion's speed times its lifetime, which works out to be 17.4 m.
Suppose ``O_1`` places a stick of length 17.4 m in the laboratory connecting the two markers.
That stick is at rest in the laboratory reference frame and so has its proper length in that frame.
In the reference frame of ``O_2``, the stick is moving at a speed of ``0.913c`` and has a shorter length of 7.1 m, which. we can find using the length contraction formula (Eq. 2.13).
So ``O_2`` measures a distance of 7.1 m between the locations in the laboratory where the pion was created and where it decayed.

Note that ``O_1`` measures the proper length and the dilated time, while ``O_2`` measures the proper time and the contracted length.
The proper time and proper length must always be referred to specific observers, who might not be in the same reference frame.
The proper time is always measured by an observer acccording to whom the beginning of the time interval and the end of the time interval occur at the same location.
If the time interval is the lifetime of the pion, then ``O_2`` (relative to whom the pion does not move) sees its creation and decay at the same location and thus measures the proper time interval.
The proper length, on the other hand, is always measured by an observer according to whom the measuring stick is at rest (``O_1`` in this case).
"""

# ╔═╡ 2e3e360d-b2b7-41cc-88cf-aee39b8a3ca8
md"### Relativistic Velocity Addition"

# ╔═╡ 6063907d-46ba-49c4-8a3b-082f5e289ed4
md"""
**Example.**
The timing device is now modified as shown in Figure 2.14.
A source ``P`` emits particles that travel at speed ``v'`` according to an observer ``O'`` at rest with respect to the device.
The flashing bulb ``F`` is triggered to flash when a particle reaches it.
The flash of light makes the return trip to the detector ``D``, and the clock ticks.
The time interval ``Δt_0`` between ticks measured by ``O'`` is composed of two parts: one for the particle to travel the distance ``L_0`` at speed ``v'`` and another for the light to travel the same distance at speed ``c``:

$Δt_0 = L_0 / v' + L_0 / c \tag{2.14}$

According to observer ``O``, relative to whom ``O'`` moves at speed ``u``, the sequence of events is similar to that shown in Figure 2.10.
The emitted particle, which travels at speed ``v`` according to ``O``, reaches ``F`` in a time interval ``Δt_1`` after traveling the distance ``v Δt_1`` equal to the (contracted) length ``L`` plus the additional distance ``u Δt_1`` moved by the clock in that interval:

$v Δt_1 = L + u Δt_1 \tag{2.15}$

In the interval ``Δt_2``, the light beam travels a distance ``c Δt_2`` equal to the length ``L`` less the distance ``u Δt_2`` moved by the block in that interval:

$c Δt_2 = L - u Δt_2 \tag{2.16}$

We now solve Eqs. 2.15 and 2.16 for ``Δt_1`` and ``Δt_2``, add to find the total interval ``Δt`` between ticks according to ``O``, use the time dilation formula, Eq. 2.8, to relate this result to ``Δt_0`` from Eq. 2.14, and finally use the length contraction formula, Eq. 2.13, to relate ``L`` to ``L_0``.
After doing the algebra, we find the result

$v = \frac{v' + u}{1 + v' u / c^2} \tag{2.17}$

Equation 2.17 is the **relativistic velocity addition law** for velocity components that are in direction of ``u``.
Later in this chapter we use a different method to derive the corresponding results for motion in other directions.

We can also regard Eq. 2.17 as a velocity transformation, enabling us to convert a velocity ``v'`` measured by ``O'`` to a velocity ``v`` measured by ``O``.
The corresponding classical law was given by Eq. 2.2: ``v = v' + u``.
The difference between the classical and relativistic results is the denominator of Eq. 2.17, which reduces to 1 in cases when the speeds are small compared with ``c``.
Example 2.8 shows how this factor prevents the measured speeds from exceeding ``c``.
"""

# ╔═╡ 28cb153a-b34d-422a-8b94-e7ffe595aa04
md"""
**Remark.**
Equation 2.17 gives an important result when ``O'`` observes a light beam.
For ``v' = c``,

$v = \frac{c + u}{1 + cu/c^2} = c \tag{2.18}$

That is, when ``v' = c``, then ``v = c``, independent of the value of ``u``.
All observers measure the same speed ``c`` for light, exactly as required by Einstein's second postulate.
"""

# ╔═╡ 292f82c1-57cf-40d7-aa37-24235846dbea
md"### The Relativistic Doppler Effect"

# ╔═╡ eacd8290-637d-4e2e-a117-cbb560830620
md"""
**Definition.**
In the **classical Doppler effect** for sound waves, an observer moving relative to a source of waves (sound, for example) detects a frequency different from that emitted by the source.
The frequency ``f'`` heard by the observer ``O`` is related to the frequency ``f`` emitted by the source ``S`` according to

$f' = f \frac{v±v_O}{v∓v_S} \tag{2.19}$

where ``v`` is the speed of the waves in the medium (such as still air, in the case of sound waves), ``v_S`` is the speed of the source relative to the medium, and ``v_O`` is the speed of the observer relative to the medium.
The upper signs in the numerator and denominator are chosen whenever ``S`` moves towards ``O`` or ``O`` moves towards ``S``, while the loewr signs apply whenever ``O`` and ``S`` move away from one another.
"""

# ╔═╡ 27804728-9e84-4d24-b179-9fc4256a9c3b
md"""
**Example.**
The classical Doppler shift for motion of the source differs from that for the motion of the observer.
For example, suppose the source emits sound waves at ``f = 1000 \text{ Hz}``.
If the source moves at 30 m/s toward the observer who is at rest in the medium who is at rest in the medium (which we take to be air, in which sound moves at ``v = 340 \text{ m/s}``), then ``f' = 1097 \text{ Hz}``, while if the source is at rest in the medium and the observer moves the source at ``30 \text{ m/s}``, the frequency is ``1088 \text{ Hz}``.
Other possibilities in which the relative speed between ``S`` and ``O`` is ``30 \text{ m/s}``, such as each moving toward the other at ``15 \text{ m/s}``, give still different frequencies.

Here we have a situation in which it is not the relative speed of the source and observer that determines the Doppler shift---it is the speed of each with respect to the medium.
This cannot occur for light waves, since there is no medium (no "ether") and no preferred reference frame by Einstein's first postulate.
We therefore require a different approach to the Doppler effect for light waves, an approach that does not distinguish between source motion and observer motion, but involves only the relative motion between the source and the observer.
"""

# ╔═╡ bb9d02b2-d7b7-4130-a8f4-9f0902ad4d43
md"""
**Example.**
Consider a source of waves that is at rest in the reference frame of observer ``O``.
Observer ``O'`` moves relative to the source at speed ``u``.
We consider the situation from the frame of reference of ``O'``, as shown in Figure 2.16.
Suppose ``O`` observes the source to emit ``N`` waves of frequency ``f``.
According to ``O``, it takes an interval ``Δt_0 = N / f`` for these ``N`` waves to be emitted; this is a proper time interval in the frame of reference of ``O``.
The corresponding time interval to ``O'`` is ``Δt'``, during which ``O`` moves a distance ``u Δt'``.
The wavelength according to ``O'`` is the total length interval occupied by these waves divided by the number of waves:

$\lambda' = \frac{cΔt' + uΔt'}{N} = \frac{cΔt' + uΔt'}{fΔt_0} \tag{2.20}$

The frequency according to ``O'`` is ``f' = c/\lambda'``, so

$f' = f\frac{Δt_0}{Δt'} \frac{1}{1 + u/c} \tag{2.21}$

and using the time dilation formula, Eq. 2.8, to relate ``Δt'`` and ``Δt_0``, we obtain

$f' = f \frac{\sqrt{1 - u^2 / c^2}}{1 + u/c} = f \sqrt{\frac{1 - u/c}{1 + u/c}} \tag{2.22}$

This is the formula for the **relativistic Doppler shift**, for the case in which the waves are observed in a direction parallel to ``\vec{𝐮}``.
Note that, unlike the classical formula, it does not distinguish between source motion and observer motion; the relativistic Doppler effect depends only on the relative speed ``u`` between the source and observer.
"""

# ╔═╡ 948ac9a6-8518-48b4-afe1-f42fc3713835
md"""
**Remark.**
Equation 2.22 assumes that the source and observer are separating.
If the source and obsever are approaching each other, replace ``u`` by ``-u`` in the formula.
"""

# ╔═╡ b65a39bd-28d6-4438-ab1b-5aa1e1ffe8d0
md"## The Lorentz Transformation"

# ╔═╡ c6dc2770-64c0-4d00-a01e-0bd3027a171e
md"""
**Remark.**
We have seen that the Galilean transformation of coordinates, time, and velocity is not consistent with Einstein's postulates.
Although the Galilean transformation agrees with our "common-sense" experience at low speeds, it does not agree with experiment at high speeds.
We therefore need a new set of transformation equations that replaces the Galilean set and that is capable of predicting relativistic effects such as time dilation, length contraction, velocity addition, and the Doppler shift.
"""

# ╔═╡ 2f6b3d33-b647-47ef-8d60-67e23369056a
md"""
**Definition.**
As before, we seek a transformation that enables observers ``O`` and ``O'`` in relative motion to compare their measurements of the space and time coordinates of the same event.
The transformation equations relate their measurements of ``O`` (namely, ``x,y,z,t``) to those of ``O'`` (namely, ``x',y',z',t'``).
This new transformation must have several properties: It must be linear (depending only on the first power of space and time coordinates); it must be consistent with Einstein's postulates; and it must reduce to the Galilean transformation when the relative speed between ``O`` and ``O'`` is the small.
We again assume that the velocity of ``O'`` relative to ``O`` is in the positive ``xx'`` direction.

The new transformation consistent with special relativity is called the **Lorentz transformation**.
Its equations are

$\begin{align*}
x' &= \frac{x - ut}{\sqrt{1 - u^2 / c^2}} \tag{2.23a} \\
y' &= y \tag{2.23b} \\
z' &= z \tag{2.23c} \\
t' &= \frac{t - (u/c^2)x}{\sqrt{1 - u^2/c^2}} \tag{2.23d}
\end{align*}$
"""

# ╔═╡ 232ac1b7-9f29-45c9-b58c-927c70189668
md"""
**Remark.**
It is often useful to write these equations in terms of intervals of space and time by replacing each coordinate by the corresponding interval (replace ``x`` by ``Δx``, ``x'`` by ``Δx'``, ``t`` by ``Δt'``, ``t'`` by ``Δt'``).
"""

# ╔═╡ 937a9800-c44c-42a6-8cad-71895c8a8c9a
md"""
**Remark.**
These equations are written assuming that ``O'`` moves away from ``O`` in the ``xx'`` direction.
If ``O'`` moves toward ``O``, replace ``u`` with ``-u`` in the equations.
"""

# ╔═╡ dfc892ee-b050-4e7e-a764-f28f78d2df56
md"""
**Remark.**
The first three equations reduce directly to the Galilean transformation for space coordinates, Eqs. 2.1, when ``u ≪ c``.
The fourth equation, which links the time coordinates, reduces to ``t' = t``, which is a fundamental postulate of the Galilean--Newtonian world.
"""

# ╔═╡ 48e1e6a3-e017-4770-8065-ece9cfbfe4f8
md"""
**Remark.**
We now use the Lorentz transformation equations to derive some of the predictions of special relativity.
The problems at the end of the chapter guide you in some other derivations.
The results derived here are identical with those we obtained previously using Einstein's postulates, which shows that the equations of the Lorentz transformation are consistent with the postulates of special relativity.
"""

# ╔═╡ 1ada1f94-abff-4d28-95de-61b3e8409834
md"### Length Contraction"

# ╔═╡ 968612e4-c1b0-453b-82be-2b23b2a52dde
md"""
**Example.**
A rod of length ``L_0`` is at rest in the reference frame of observer ``O'``.
The rod extends along the ``x'`` axis from ``x_1'`` to ``x_2'``; that is, ``O'`` measures the proper length ``L_0 = x_2' - x_1'``.
Observer ``O``, relative to whom the rod is in motion, measures the ends of the rod to be at coordinates ``x_1`` and ``x_2``.
For ``O`` to determine the length of the moving rod, ``O`` must make a simultaneous determination of ``x_1`` and ``x_2``, and then the length is ``L = x_2 - x_1``.
Suppose the first event is ``O'`` setting off a flash bulb at one end of the rod at ``x_1'`` and ``t_1'``, which ``O`` observes at ``x_1`` and ``t_1``, and the second event is ``O'`` setting off a flash bulb at the other end at ``x_2'`` and ``t_2'``, which ``O`` observes at ``x_2`` and ``t_2``.
The equations of the Lorentz transformation relate these coordinates, specifically,

$x_1' = \frac{x_1 - ut_1}{\sqrt{1 - u^2 / c^2}} \qquad x_2' = \frac{x_2 - ut_2}{\sqrt{1 - u^2/c^2}} \tag{2.24}$

Subtracting these equations, we obtain

$x_2' - x_1' = \frac{x_2 - x_1}{\sqrt{1 - u^2/c^2}} - \frac{u(t_2 - t_1)}{\sqrt{1 - u^2/c^2}} \tag{2.25}$

``O'`` must arrange to set off the flash bulbs so that the flashes appear to be simultaneous to ``O``.
(They will not be simultaneous to ``O'``, as we discuss later in this section.)
This enables ``O`` to make a simultaneous determination of the coordinates of the endpoints of the rod.
If ``O`` observes the flashes to be simultaneous, then ``t_2 = t_1``, and Eq. 2.25 reduces to

$x_2' - x_1' = \frac{x_2 - x_1}{\sqrt{1 - u^2/c^2}} \tag{2.26}$

With ``x_2' - x_1' = L_0`` and ``x_2 - x_1 = L``, this becomes

$L = L_0 \sqrt{1 - u^2/c^2} \tag{2.27}$

which is identical with Eq. 2.13, which we derived earlier using Einstein's postulates.
"""

# ╔═╡ db2cde4c-6079-442b-939b-606591401768
md"### Velocity Transformation"

# ╔═╡ ed8c6205-19c7-4181-99c1-886097807ef8
md"""
**Example.**
If ``O`` observes a particle to travel with velocity ``v`` (components ``v_x``, ``v_y``, ``v_z``), what velocity ``v'`` does ``O'`` observe for the particle?
The relationship between the velocities measured by ``O`` and ``O'`` is given by the **Lorentz velocity transformation**:

$v_x' = \frac{v_x - u}{1 - v_x u / c^2} \tag{2.28a}$

$v_y' = \frac{v_y \sqrt{1 - u^2 / c^2}}{1 - v_x u / c^2} \tag{2.28b}$

$v_z' = \frac{v_z \sqrt{1 - u^2 / c^2}}{1 - v_x u / c^2} \tag{2.28c}$

By solving Eq. 2.28a for ``v_x``, you can show that it is identical to Eq. 2.17, a result we derived previously based on Einstein's postulates.
Note that, in the limit of low speeds ``(u ≪ c)``, the Lorentz velocity transformation reduces to the Galilean velocity transformation, Eq. 2.2.
Note also that ``v_y' ≠ v_y``, even though ``y' = y``.
This occurs because of the way the Lorentz transformation handles the time coordinate.

We can derive these transformation equations for velocity from the Lorentz coordinate transformation.
By way of example, we derive the velocity transformation for ``v_y' = dy'/dt'``.
Differentiating the coordinate transformation ``y' = y``, we obtain ``dy' = dy``.
Similarly, differentiating the time coordinate transformation (Eq. 2.23d), we obtain

$dt' = \frac{dt - (u/c^2) \,dx}{\sqrt{1 - u^2 / c^2}}$

So,

$\begin{align*}
v_y' &= \frac{dy'}{dt'} = \frac{dy}{[dt - (u/c^2) \,dx] / \sqrt{1 - u^2 / c^2}} = \sqrt{1 - u^2 / c^2} \frac{dy}{dt - (u / c^2) \,dx} \\
&= \sqrt{1 - u^2 / c^2} \frac{dy/dt}{1 - (u/c^2) \,dx/dt} = \frac{v_y \sqrt{1 - u^2 / c^2}}{1 - uv_x / c^2}
\end{align*}$

Similar methods can be used to obtain the transformation equations for ``v_x'`` and ``v_z'``.
These derivations are left as exercises (Problem 16).
"""

# ╔═╡ 850b8519-8f5e-439a-b328-3e937de33e33
md"### Simultaneity and Clock Synchronization"

# ╔═╡ fa30edc3-93b0-474d-b205-7bc1ba403ec2
md"""
**Remark.**
Under ordinary circumstances, synchronizing one clock with another is a simple matter.
But for scientific work, where timekeeping at a precision below the nanosecond range is routine, clock synchronization can present some significant challenges.
At very least, we need to correct for the time that it takes for the signal showing the reading on one clock to be transmitted to the other clock.
However, for observers who are in motion with respect to each other, special relativity gives yet another way that clocks may appear to be out of synchronization.
"""

# ╔═╡ 740385df-b023-41e4-89ba-80cc416274c4
md"""
**Example.**
Consider the device shown in Figure 2.17.
Two clocks are located at ``x = 0`` and ``x = L``.
A flash lamp is located at ``x = L / 2``, and the clocks are set running when they receive the flash of light from the lamp.
The light takes the interval of time to reach the two clocks, so the clocks start together precisely at a time ``L / 2c`` after the flash is emitted, and the clocks are exactly synchronized.

Now let us examine the same situation from the point of view of the moving observer ``O'``.
In the frame of reference of ``O``, two events occur: the receipt of a light signal by clock 1 at ``x_1 = 0``, ``t_1 = L / 2c`` and the receipt of a light signal by clock 2 at ``x_2 = L``, ``t_2 = L / 2c``.
Using Eq. 2.23d, we find that ``O'`` observes clock 1 to receive its signal at

$t_1' = \frac{t_1 - (u/c^2) x_1}{\sqrt{1 - u^2 / c^2}} = \frac{L/2c}{\sqrt{1 - u^2 / c^2}} \tag{2.29}$

while clock 2 receives its signal at

$t_2' = \frac{t_2 - (u/c^2) x_2}{\sqrt{1 - u^2 / c^2}} = \frac{L/2c - (u/c^2) L}{\sqrt{1 - u^2 / c^2}} \tag{2.30}$

Thus ``t_2'`` is smaller than ``t_1'`` and clock 2 appears to receive its signal earlier than clock 1, so that the clocks start at times that differ by

$Δt' = t_1' - t_2' = \frac{uL/c^2}{\sqrt{1 - u^2 / c^2}} \tag{2.31}$

according to ``O'``.
Keep in mind that this is not a time dilation effect---time dilation comes from the first term of the Lorentz transformation (Eq. 2.23d) for ``t'``, while the lack of synchronization arises from the second term.
``O'`` observes both clocks to run slow, due to time dilation; ``O'`` also observes clock 2 to be ahead of clock 1.
"""

# ╔═╡ 199aff83-d95f-453f-8663-f45e277706da
md"""
**Remark.**
We therefore reach the following conclusion: two events that are simultaneous in one reference frame are not simultaneous in another reference frame moving with respect to the first, unless the two events occur at the same point in space.
(If ``L = 0``, Eq. 2.31 shows that that the clocks are synchronized in all reference frames.)
Clocks that appear to be synchronized in one frame of reference will not necessarily be synchronized in another frame of reference in relative motion.
"""

# ╔═╡ 229b8d41-283e-4840-9f23-a9bae839c2f6
md"## The Twin Paradox"

# ╔═╡ de58dde8-451d-4624-a1a8-e0a54d3c03f8
md"""
**Example.**
Suppose there is a pair of twins on the Earth.
One, whom we shall call Casper, remains on the Earth, while his twin sister Amelia sets off in a rocket ship on a trip to a distant planet.
Casper, based on his understanding of special relativity, knows that his sister's clocks will run slow relative to his own and that therefore she should be younger than he when she returns, as our discussion of time dilation would suggest.
However, recalling that discussion, we know that for two observers in relative motion, each thinks the other's clocks are running slow.
We could therefore study this problem from the point of view of Amelia, according to whom Casper and the Earth (accompanied by the solar system and galaxy) make a round-trip journey away from her and back again.
Under such circumstances, she will think it is her brother's clocks (which are now in motion relative to her own) that are running slow and will therefore expect her brother to be younger than she when they meet again.
While it is possible to disagree over whose clocks are running slow relative to his or her own, which is merely a problem of frames of reference, when Amelia returns to the Earth (or when Earth returns to Amelia), all observers must agree as to which twin has aged less rapidly.
This is the paradox---each twin expects the other to be younger.

The resolution of this paradox lies in considering the asymmetric role of the two twins.
The laws of special relativity apply only to inertial frames, those moving relative to one another at constant velocity.
We may supply Amelia's rockets with sufficient thrust so that they accelerate for a very short length of time, bringing the ship to a speed at which it can coast to the planet, and thus during her outward journey Amelia spends all but a negligible amount of time in a frame of reference moving at constant speed relative to Casper.
However, in order to return to the Earth, she must decelerate and reverse her motion.
Although this also may be done in a very short time interval, Amelia's return journey occurs in a completely different inertial frame than her outward journey.
It is Amelia's jump from one inertial frame to another that causes the asymmetry in the ages of the twins.
Only Amelia has the necessity of jumping to a new inertial frame to return, and therefore all observers will agree that it is Amelia who is "really" in motion, and that is her clocks that are "really" running slow; therefore, she is indeed the younger twin on her return.
"""

# ╔═╡ 6b7a6bea-245c-4481-a130-d5a1d81d31cb
md"""
**Example.**
Let us make this discussion more quantitiative with a numerical example.
We assume, as discussed above, that the acceleration and deceleration take negligible time intervals, so that all of Amelia's aging is done during the coasting.
For simplicity, we assume the distant planet is at rest relative to Earth; this does not change the problem, but it avoids the need to introduce yet another frame of reference.
Suppose the planet to be 6 light-years distant from Earth, and suppose Amelia travels at a speed of ``0.6c``.
Then according to Casper it takes his sister 10 years ``(10 \text{ years} × 0.6c = 6 \text{ light-years})`` to reach the planet and 10 years to return, and therefore she is gone for a total of 20 years.
(However, Casper doesn't know his sister has reached the planet until the light signal carrying news of her arrival reaches Earth.)
From the frame of reference of Amelia aboard the rocket, the distance to the planet is contracted by a factor of ``\sqrt{1 - (0.6)^2} = 0.8``, and is therefore ``0.8 × 6 \text{ light-years} = 4.8 \text{ light-years}``.
At a speed of ``0.6c``, Amelia will measure 8 years for the trip to the planet, for a total round trip time of 16 years.
Thus Casper ages 20 years while Amelia ages only 16 years and is indeed the younger on her return.

We can confirm this analysis by having Casper send a light signal to his sister each year on his birthday.
We know that the frequency of the signal as received by Amelia will be Doppler shifted.
During the outward journey, she will receive signals at the rate of

$(1/\text{year}) \sqrt{\frac{1 - u/c}{1 + u/c}} = 0.5/\text{year}$

During the return journey, the Doppler-shifted rate will be

$(1/\text{year}) \sqrt{\frac{1 + u/c}{1 - u/c}} = 0.5/\text{year}$

Thus for the first 8 years, during Amelia's trip to the planet, she receives 4 signals, and during the return trip of 8 years, she receives 16 signals, for a total of 20.
She receives 20 signals, indicating her brother has celebrated 20 birthdays during her 16-year journey.
"""

# ╔═╡ 8e7502a9-e3c9-4b24-a207-f1642f305dce
md"## Relativistic Dynamics"

# ╔═╡ 1f77d477-8668-40d1-87a8-4918f8efb326
md"## Conservation Laws in Relativistic Decays and Collisions"

# ╔═╡ 314c2884-d45b-4d07-a792-15611148568e
md"## Experimental Tests of Special Relativity"

# ╔═╡ ef516397-0de2-4491-8119-9fe170e4c57a
md"# The Particle-Like Properties of Electromagnetic Radiation"

# ╔═╡ 3f4bb529-8cb9-4fa8-8d54-e1fbbefc85cc
md"""
**Remark.**
We now turn to a discussion of *wave mechanics*, the second theory on which modern physics is based.
One consequence of wave mechanics is the breakdown of the classical distinction between particles and waves.
In this chapter, we consider the three early experiments that provided evidence that light, which we usually regard as a wave phenomenon, has properties that we normally associate with particles.
Instead of spreading its energy smoothly over a wave front, the energy is delivered in concentrated bundles like particles; a discrete bundle (*quantum*) of electromagnetic enregy is known as a **photon**.
"""

# ╔═╡ dd9fc6ea-90f5-4699-8e3c-e620170e4663
md"## Review of Electromagnetic Waves"

# ╔═╡ 97fb59b5-88b5-4a86-a2ff-399305ff837c
md"""
**Definition.**
A distribution of electric charges sets up an electric field ``\vec{𝐄}``, and current-carrying wires set up a magnetic field ``\vec{𝐁}``.
If the charges do not move and the currents do not change, then ``\vec{𝐄}`` and ``\vec{𝐁}`` are static fields that vary with location but not with time.
However, if the charges are accelerated and the currents vary with time, an **electromagnetic wave** is produced in which the ``\vec{𝐄}`` and ``\vec{𝐁}`` fields of the wave vary both with location and time.
"""

# ╔═╡ 85845132-daad-420a-aedc-6367b64fc914
md"""
**Definition.**
The mathematical expression that describes such a wave may have different forms, depending on the properties of the source of the wave and the medium through which the wave travels.
One special form is the **plane wave**, in which the wave fronts are planes.
(A point source, on the other hand, produces spherical waves, in which the wave fronts are spheres.)
A plane electromagnetic wave traveling in the positive ``z`` direction is described by the expressions

$\vec{𝐄} = \vec{𝐄}_0 \sin{(kz - \omega t)}, \qquad \vec{𝐁} = \vec{𝐁}_0 \sin{(kz - \omega t)} \tag{3.1}$

where the **wave number** ``k`` is found from the wavelength ``\lambda`` ``(k = 2\pi / \lambda)`` and the **angular frequency** ``\omega`` is found from the frequency ``f`` ``(\omega = 2\pi f)``.
Because ``\lambda`` and ``f`` are related by ``c = \lambda f``, ``k`` and ``\omega`` are also related by ``c = \omega / k``.

The polarization of the wave is represented by the vector ``\vec{𝐄}_0`` and the direction of propagation, the ``z`` axis in this case.
Once we specify the direction of travel and polarization ``\vec{𝐄}_0``, the direction of ``\vec{𝐁}_0`` is fixed by the requirements that ``\vec{𝐁}`` must be perpendicular to both ``\vec{𝐄}`` and the direction of travel and that the vector product ``\vec{𝐄} × \vec{𝐁}`` point in the direction of travel.
For example, if ``\vec{𝐄}_0`` is in the ``x`` direction (``\vec{𝐄}_0 = E_0 \hat{𝐢}``, where ``\hat{𝐢}`` is a unit vector in the ``x`` direction), then ``\vec{𝐁}_0`` must be in the ``y`` direction ``(\vec{𝐁}_0 = B_0 \hat{𝐣})``.
Moreover, the magnitude of ``\vec{𝐁}_0`` is determined by

$B_0 = \frac{E_0}{c} \tag{3.2}$

where ``c`` is the speed of light.
"""

# ╔═╡ 63973bb9-9708-4344-b719-8d7df6105505
md"""
**Definition.**
An electromagnetic wave transmits energy from one place to another; the energy flux is specified by the **Poynting vector** ``\vec{𝐒}``:

$\vec{𝐒} = \frac{1}{\mu_0} \vec{𝐄} × \vec{𝐁} \tag{3.3}$

For the plane wave, this reduces to

$\vec{𝐒} = \frac{1}{\mu_0} E_0 B_0 \sin^2{(kz - \omega t)} \hat{𝐤} \tag{3.4}$

where ``\hat{𝐤}`` is a unit vector in the ``z`` direction.
The Poynting vector has dimensions of power (energy per unit time) per unit area---for example, ``\text{J/s/m}^2`` or ``\text{W/m}^2``.
Figure 3.1 shows the orientation of the vectors ``\vec{𝐄}``, ``\vec{𝐁}``, and ``\vec{𝐒}`` for this special case.
"""

# ╔═╡ 4dee450d-ee14-4241-a1f0-a6630ab0c687
md"""
**Example.**
Let us imagine the following experiment.
We place a detector of electromagnetic radiation (a radio receiver or a human eye) at some point on the ``z`` axis, and we determine the electromagnetic power that this plane wave delivers to the receiver.
The receiver is oriented with its sensitive area ``A`` perpendicular to the ``z`` axis, so that the maximum signal is received; we can therefore drop the vector representation of ``\vec{𝐒}`` and work only with its magnitude ``S``.
The power ``P`` entering the receiver is then

$P = SA = \frac{1}{\mu_0} E_0 B_0 A \sin^2{(kz - \omega t)} \tag{3.5}$

which we can rewrite using Eq. 3.2 as

$P = \frac{1}{\mu_0 c} {E_0}^2 A \sin^2{(kz - \omega t)} \tag{3.6}$

There are two important features of this expression that you should recognize:

1. The intensity (the average power per unit area) is proportional to ``{E_0}^2``.
   This is a general property of waves: *the intensity is proportional to the square of the amplitude*.
    We will see later that this same property also characterizes the waves that describe the behavior of material particles.

2. The intensity fluctuates with time, with the frequency ``2f = 2(\omega / 2\pi)``.
   We don't usually observe this rapid fluctuation---visible light, for example, has a frequency of about ``10^{15}`` oscillations per second, and because our eye doesn't respond that quickly, we observe the time average of many (perhaps ``10^{13}``) cycles.
   If ``T`` is the observation time (perhaps ``10^{-2} \text{ s}`` in the case of the eye), then the average power is

   $P_{\text{av}} = \frac{1}{T} ∫_0^T P \,dt \tag{3.7}$

   and using E.q. 3.6 we obtain the intensity ``I``:

   $I = \frac{P_{\text{av}}}{A} = \frac{1}{2 \mu_0 c} {E_0}^2 \tag{3.8}$

   because the average value of ``\sin^2{\theta}`` is ``\frac{1}{2}``.
"""

# ╔═╡ fb47f246-871b-42ce-986e-201d9db945a4
md"### Interference and Diffraction"

# ╔═╡ 10720c13-dbf8-409d-900c-4d5141ba77f1
md"""
**Definition.**
The property that makes waves a unique physical phenomenon is the **principle of superposition**, which, for example, allows two waves to meet at a point, to cause a combined disturbance at the point that might be greater or lesser than the disturbance produced by either wave alone, and finally to emerge from the point of "collision" with all of the properties of each wave totally unchanged by the collision.
To appreciate this important distinction between material objects and waves, imagine trying that trick with two automobiles!
"""

# ╔═╡ 70be5a47-ba94-4c6e-9cf2-e01b868e7d28
md"""
**Definition.**
This special property of waves leads to the phenomena of **interference** and **diffraction**.
The simplest and best-known example of interference is **Young's double-slit experiment**, in which a monochromatic plane wave is incident on a barrier in which two narrow slits have been cut.
(This experiment was first done with light waves, but in face any wave will do as well, not only other electromagnetic waves, such as microwaves, but also mechanical waves, such as water waves or sound waves.
We assume that the experiment is being done with light waves.)
"""

# ╔═╡ 6f87034e-919e-4186-9c76-2942f148a21b
md"""
**Definition.**
**Constructive interference** occurs continually at the point on the screen that is exactly one wavelength further from one slit than from the other.
That is, if ``X_1`` and ``X_2`` are the distances from the point on the screen to the two slits, then a condition for maximum constructive interference is ``|X_1 - X_2| = \lambda``.
Constructive interference occurs when any wave crest from one slit arrives simultaneously with another from the other slit, whether it is the next, or the fourth, or the forty-seventh.
The general condition for complete constructive interference is that the difference between ``X_1`` and ``X_2`` is an integral number of wavelengths:

$|X_1 - X_2| = n \lambda \qquad n = 0, 1, 2, … \tag{3.9}$
"""

# ╔═╡ 78aa9a05-851e-49f2-a01f-69b5edcd3eea
md"""
**Definition.**
**Destructive interference** occurs when the two waves cancel, that is, whenever the distances ``X_1`` and ``X_2`` are such that the phase of one wave differs from the other by one-half cycle, or by one and one-half cycles, two and one-half cycles, and so forth:

$|X_1 - X_2| = \frac{1}{2} \lambda, \frac{3}{2} \lambda, \frac{5}{2} \lambda, … = \left(n + \frac{1}{2}\right) \lambda \qquad n = 0, 1, 2, … \tag{3.10}$
"""

# ╔═╡ 4d69384b-18c2-4e6a-b742-802960e73a60
md"""
**Definition.**
We can find the locations on the screen where the interference maxima occur in the following way.
Let ``d`` be the separation of the slits and let ``D`` be the distance from the slits to the screen.
If ``y_n`` is the distance from the center of the screen to the ``n``th maximum, then from the geometry of Figure 3.3 we find (assuming ``X_1 > X_2``)

${X_1}^2 = D^2 + \left(\frac{d}{2} + y_n\right)^2 \quad\text{ and }\quad {X_2}^2 = D^2 + \left(\frac{d}{2} - y_n\right)^2 \tag{3.11}$

Subtracting these equations and solving for ``y_n``, we obtain

$y_n = \frac{{X_1}^2 - {X_2}^2}{2d} = \frac{(X_1 + X_2)(X_1 - X_2)}{2d} \tag{3.12}$

In experiments with light, ``D`` is of the order 1 m, and ``y_n`` and ``d`` are typically at most 1 mm; thus ``X_1 ≅ D`` and ``X_2 ≅ D``, so ``X_1 + X_2 ≅ 2D``, and to a good approximation

$y_n = (X_1 - X_2) \frac{D}{d} \tag{3.13}$

Using Eq. 3.9 for the values of ``(X_1 - X_2)`` at the maxima, we find

$y_n = n \frac{\lambda D}{d} \tag{3.14}$
"""

# ╔═╡ 958768e7-e521-417d-bd8c-a310e82698ab
md"### Crystal Diffraction of X Rays"

# ╔═╡ da477136-b483-4360-af0d-8f6ba9358c56
md"""
**Definition.**
Another device for observing the interference of light waves is the **diffraction grating**, in which the wave fronts pass through a barrier that has *many* slits (often thousands or tens of thousands) and then recombine.
The operation of this device is illustrated in Figure 3.4; interference maxima corresponding to different wavelengths appear at different angles ``\theta``, according to

$d \sin{\theta} = n \lambda \tag{3.15}$

where ``d`` is the slit spacing and ``n`` is the order number of the maximum ``(n = 1, 2, 3, …)``.
"""

# ╔═╡ 396ebe14-31fe-488f-ae3b-0b8c3e4bcd5b
md"""
**Remark.**
The advantage of the diffraction grating is its superior resolution---it enables us to get very good separation of wavelengths that are close to one another, and thus it is very useful device for measuring wavelengths.
Notice, however, that in order to get reasonable valeus of the angle ``\theta``---for example, ``\sin{\theta}`` in the range of ``0.3``--``0.5``---must have ``d`` of the order of a few times the wavelength.
For visible light, this is not particularly difficult, but for radiations of very short wavelength, mechanical construction of a grating is not possible.
For example, for X rays with a wavelength of the order of 0.1 nm, we would need to construct a grating in which the slits were less than 1 nm apart, which is roughly the same as the spacing between the atoms of most materials.
"""

# ╔═╡ 29751f37-2615-46d4-a628-430feaad013f
md"## The Photoelectric Effect"

# ╔═╡ 6add877c-7356-44bc-a9c0-9de336b30aa3
md"### The Quantum Theory of the Photoelectric Effect"

# ╔═╡ 7c06f33b-d5fc-47f7-8d21-1dd2cca22218
md"## Thermal Radiation"

# ╔═╡ 8e9f7ef2-d3f0-4e9d-b677-18b495da67bf
md"### Classical Theory of Thermal Radiation"

# ╔═╡ 1c842080-fd66-42cd-b9f8-965f063c87a3
md"### Quantum Theory of Thermal Radiation"

# ╔═╡ 2b146adb-68f9-4f7d-af15-d1cc0e6b4cff
md"## The Compton Effect"

# ╔═╡ a65504d9-9d0b-4fdf-a2d0-148224ee0992
md"## Other Photon Processes"

# ╔═╡ 45985d13-00b4-4d90-8e24-56a7f9259d41
md"### Interactions of Photon with Atoms"

# ╔═╡ ad5fd5f0-11e0-4392-8934-a359ce095d2d
md"### Bremsstrahlung and X-Ray Production"

# ╔═╡ d6dde37e-606a-49cb-a89c-13b32858d709
md"### Pair Production and Annihilation"

# ╔═╡ 8cae7068-6e0b-418a-a364-706bc2c3ccc9
md"## Particles or Waves"

# ╔═╡ a9a8cc0c-0859-426e-8923-c78f147a284f
md"# The Wavelike Properties of Particles"

# ╔═╡ ca9b9032-ba0c-484f-80e8-46f7358c8458
md"""
**Remark.**
In classical physics, the laws describing the behavior of waves and particles are fundamentally different.
Projectiles obey particle-type laws, such as Newtonian mechanics.
Waves undergo interference and diffraction, which cannot be explained by the Newtonian mechanics associated with particles.
The energy carried by a particle is confined to a small region of space; a wave, on the other hand, distributes its energy throughout space in its wavefronts.
In describing the behavior of a particle, we often want to specify its location, bu this is not so easy to do for a wave.
How would you describe the exact location of a sound wave or a water wave?
"""

# ╔═╡ da762787-f937-4c05-a0a3-cb9d34ebca05
md"""
**Remark.**
In contrast to this clear distinction found in classical physics, quantum physics requires that particles sometimes obey the rules that we have previously established for waves, and we shall use some of the language associated with waves to describe particles.
The system of mechanics associated with quantum systems is sometimes called "wave mechanics" because it deals with the wavelike behavior of particles.
In this chapter, we discuss the experimental evidence in support of this wavelike behavior for particles such as electrons.
"""

# ╔═╡ d14cb746-b5e8-40a3-b6e1-fbf686271b0f
md"""
**Remark.**
As you study this chapter, notice the frequent references to such terms as the **probability** of the outcome of a measurement, the **average** of many repetitions of a measurement, and the **statistical** behavior of a system.
These terms are fundamental to quantum mechanics, and you cannot begin to understand quantum behavior until you feel comfortable with discarding such classical notions as fixed trajectories and certainty of outcome, while substituting the quantum mechnical notions of probability and statistically distributed outcomes.
"""

# ╔═╡ a2e7951d-9ebe-4107-9db0-a9bea13dc7e1
md"## De Broglie's Hypothesis"

# ╔═╡ 7e30d52f-bf49-490d-889e-a2141274b1df
md"""
**Definition.**
The **de Broglie wavelength** of a particle with momentum ``p`` is defined as

$\lambda = \frac{h}{p} \tag{4.1}$

where ``h`` is Planck's constant.
"""

# ╔═╡ 15249cae-ce55-4570-893e-008c945246fc
md"""
**Remark.**
Because of the smallness of ``h``, only for particles of atomic or nuclear size will the wave behavior be observable.
"""

# ╔═╡ 11409384-2770-40ba-9a84-6bdfdf8e393d
md"""
**Remark.**
The de Broglie wave of a particle shows itself when a wave-type experiment (such as diffraction) is performed on it.
The outcome of the wave-type experiment depends on this wavelength.
"""

# ╔═╡ 6d06fe76-f4c4-4743-9ef4-3be56fea786c
md"""
**Remark.**
There is no experiment that can be done to reveal the wave nature of macroscopic (laboratory-sized) objects.
"""

# ╔═╡ 4478ecab-e6d7-493a-add1-1835ddc0c680
md"## Experimental Evidence for de Broglie Waves"

# ╔═╡ d3e2a31a-5094-4271-b402-939e63176f62
md"""
**Definition.**
For a light of wavelength ``\lambda`` incident on a slit of width ``a``, the diffraction minima are located at angles given by

$a \sin{\theta} = n \lambda \qquad n = 1,2,3,… \tag{4.2}$

on either side of the central maximum.
Note that most of the light intensity falls in the central maximum.
"""

# ╔═╡ fb16c3a1-2a70-46ec-8e93-218578005f4d
md"""
**Remark.**
The indications of wave behavior come mostly from interference and diffraction experiments.
"""

# ╔═╡ 02670aca-5ca6-468c-abdd-e22dbbe23830
md"""
**Remark.**
The experiments that first verified de Broglie's hypothesis involve **electron diffraction**, not through an artifically constructed single slit but instead through the atoms of a crystal.

In an electron diffraction experiment, a beam of electrons is accelerated from rest through a potential difference ``ΔV``, acquiring a nonrelativistic kinetic energy ``K = e ΔV`` and a momentum ``p = \sqrt{2mK}``.
"""

# ╔═╡ 337b8219-01e6-4c83-879f-ff628e04883e
md"""
**Definition.**
The maxima for a diffraction grating occur at angles ``\phi`` such that the path difference between adjacent rays ``d \sin{\phi}`` is equal to a whole number of wavelengths:

$d \sin{\phi} = n \lambda \qquad n = 1,2,3,… \tag{4.3}$

where ``n`` is the order number of the maximum.
"""

# ╔═╡ 198024b2-4344-4176-aa27-83f22490328c
md"### Particle Diffraction Experiments"

# ╔═╡ 5273b935-d624-49a8-bc59-8ef1c3cd802e
md"### Double-Slit Experiments with Particles"

# ╔═╡ bf130256-9e34-489c-a588-f8b25af0b582
md"### Through Which Slit Does the Particle Pass?"

# ╔═╡ 9204e8ad-5af1-48f0-aa1b-32cbf53bd74e
md"## Uncertainty Relationships for Classical Waves"

# ╔═╡ 03ed56ef-a446-42eb-9f58-a5e916eba81e
md"### The Frequency-Time Uncertainty Relationship"

# ╔═╡ 11fe5635-fd11-4932-8987-88c4571c1927
md"## Heisenberg Uncertainty Relationships"

# ╔═╡ d0121f6b-fbcb-4952-b2b7-414d640e8545
md"### A Statistical Interpretation of Uncertainty"

# ╔═╡ b13d7aff-34cf-43dd-91ef-6949e4f9a14f
md"## Wave Packets"

# ╔═╡ 8bece320-2172-497e-8339-de2def7ee591
md"## The Motion of a Wave Packet"

# ╔═╡ 1e442501-f7fd-4956-95af-c27a10649582
md"### The Group Speed of de Broglie Waves"

# ╔═╡ 7d08a273-6ca8-409a-96ee-5fef6557f127
md"### The Spreading of a Moving Wave Packet"

# ╔═╡ 8b19e386-ed0c-4a7c-9385-50b15ba43b33
md"## Probability and Randomness"

# ╔═╡ ef25b98a-93d1-432e-8bb5-83e434551675
md"### The Probability Amplitude"

# ╔═╡ fc73b4ce-33d7-44d3-af18-45f17fadb1a6
md"# The Schrödinger Equation"

# ╔═╡ 96359e79-bdd4-4af9-bda6-3f4c281648a8
md"""
**Remark.**
The future behavior of a particle in classical (nonrelativistic, nonquantum) situation may be predicted with absolute certainty using Newton's laws.
If a particle interacts with its environment through a known force ``\vec{𝐅}`` (which might be associated with a potential energy ``U``), we can do the mathematics necessary to solve Newton's second law, ``\vec{𝐅} = d\vec{𝐩}/dt`` (a second-order, linear differential equation), and find the particle's location ``\vec{𝐫}(t)`` and velocity ``\vec{𝐯}(t)`` at all future times ``t``.
The mathematics may be difficult, and in fact it may not be possible to solve the equations in closed form (in which case an approximate solution can be obtained with the help of a computer).
Aside from any such mathematical difficulties, the physics of the problem consists of writing down the original equation ``\vec{𝐅} = d\vec{𝐩} / dt`` and interpreting its solutions ``\vec{𝐫}(t)`` and ``\vec{𝐯}(t)``.
For example, a satellite or planet moving under the influence of a ``1/r^2`` gravitational force can be shown, after the equations have been solved, to follow exactly an elliptical path.

In the case of nonrelativist quantum physics, the basic equation to be solved is a second-order differential equation known as the **Schrödinger equation**.
Like Newton's laws, the Schrödinger equation is written for a particle interacting with its environment, although we decscribe the interaction in terms of potential energy rather than the force.
Unlike Newton's laws, the Schrödinger equation does not give the trajectory of the particle; instead its solution gives the **wave function** of the particle, which carries information about the particle's wavelikie behavior.
In this chapter, we introduce the Schrödinger equation, obtain some of its solution for certain potential energies, and learn how to interpret those solutions.
"""

# ╔═╡ 62488045-6c74-4448-b50a-d6389e70312e
md"## Behavior of a Wave at a Boundary"

# ╔═╡ 992120a6-871b-47a9-b7d6-e84e33d28c10
md"""
**Remark.**
In studying wave motion, we often must analyze what occurs when a wave moves from one region or medium to a different region or medium in which the properties of the wave may change.
For example, when a light wave moves from air into glass, its wavelength and the amplitude of its electric field both deecrease.
At every such boundary, a portion of the incident wave intensity is transmitted into the second medium and a portion is reflected back into the first medium.
"""

# ╔═╡ 694b1b18-2790-4c2c-abfc-68ba5d8fc67d
md"### Penetration of the Reflected Wave"

# ╔═╡ 2cd39589-96ed-40b8-9dde-837660d788c2
md"""
**Remark.**
Another property of classical waves that carries over into quantum waves is penetration of a totally reflected wave into a forbidden region.
When a light wave is completely reflected from a boundary, an exponentially decreasing wave called the **evanscent wave** penetrates into the second medium.
"""

# ╔═╡ 67f62675-2843-4dd9-918c-b10971dce16b
md"### Continuity at the Boundaries"

# ╔═╡ 4120b980-b664-4f63-878a-7598e59d42b3
md"""
**Remark.**
When a wave such as a light wave or a water wave crosses a boundary as in Figure 5.1, the mathematical function that describes the wave must have two properties at. each boundary:

1. The wave function must be continuous.
2. The slope of the wave function must be continuous, except when the boundary height is infinite.
"""

# ╔═╡ 37f149b0-81c8-4d91-ac20-5d6a0a41bf01
md"""
**Remark.**
In this section, we have established several properties of classical waves that also apply to quantum waves:

1. When a wave crosses a boundary between two regions, part of the wave intensity is reflected and part is transmitted.

2. When a wave encounter a boundary to a region from which it is forbidden, the wave will penetrate perhaps by a few wavelengths before reflecting.

3. At a finite boundary, the wave and its slope are continuous.
   At an infinite boundary, the wave is continuous but its slope is discontinuous.
"""

# ╔═╡ fb7ab93a-00b8-4963-9e36-befcb17a8a97
md"## Confining a Particle"

# ╔═╡ c7b4eaa4-1b53-427a-8da1-8a2d188359e3
md"""
**Remark.**
A free particle (i.e., a particle on which no forces act anywhere) is by definition not confined, so it can be located anywhere.
It has, as we discussed in Chapter 4, a definite wavelength, momentum, and energy (for which we can choose any value).
"""

# ╔═╡ 71298d8b-db4a-433c-aaba-57add01588aa
md"""
**Remark.**
A confined particle, on the other hand, is represented by a wave packet that makes it likely to be found only in a region of space of size ``Δx``.
We can construct such a wave packet by adding together different sine or cosine waves to obtain the desired mathematical shape.
"""

# ╔═╡ 38b7aa01-f8b5-4988-a130-37ae9a51eeb9
md"### Applying the Uncertainty Principle to a Confined Particle"

# ╔═╡ edafcdb0-597c-405a-86ea-c22aa45e37b5
md"""
**Remark.**
In Chapter 4, we constructed wave packetse and showed how the uncertainty principle related the size of the wave packet to the range of wavelengths that was used in its construction.
Let's now see how the Heisenberg uncertainty relationships apply in the case of a confined particle.
"""

# ╔═╡ ff70034c-1db7-4bea-a12e-4bdf6e54e317
md"## The Schrödinger Equation"

# ╔═╡ eb177b7f-db37-4ddb-82e9-dd862a11f6c3
md"""
**Remark.**
The differential equation whose solution gives us the wave behavior of particles is called the **Schrödinger equation**.
It was developed in 1926 by Austrian physicist Erwin Schrödinger.
The equation cannot be derived from any previous laws or postulates; like Newton's equations of motion or Maxwell's equations of electromagnetism, it is a new and independent result whose correctness can be determined only by comparing its predictions with experimental results.
For nonrelativistic motion, the Schrödinger equation gives results that correctly account for observations at the atomic and subatomic level.
"""

# ╔═╡ 2a124958-ef71-4755-909c-4fe2e9622c77
md"### Probabilities and Normalization"

# ╔═╡ a03dc12a-19ad-4cf4-807e-7a1b9c5e4d1a
md"""
**Remark.**
The remaining steps in the procedure for applying the Schrödinger recipe depend on the physical interpretation of the solution to the differential equation.
Our original goal in solving the Schrödinger equation was to obtain the wave properties of the particle.
What does the amplitude of ``\psi(x)`` represent, and what is the physical variable that is waving?
It is certainly not a displacement, as in the case of a water wave or a wave on a stretched piano wire, nor is it a pressure wave, as in the case of sound.
*It is a very different kind of wave, whose squared absolute amplitude gives the probability for finding the particle in a given region of space*.
"""

# ╔═╡ 0a6ea00e-64c8-4ceb-b494-d2bca5299e03
md"## Applications of the Schrödinger Equation"

# ╔═╡ 53f17723-0ec1-49df-8eb0-18adf0b689fd
md"### Solutions for Constant Potential Energy"

# ╔═╡ 10137672-cd6a-4488-93a7-7d91c895b8d4
md"""
**Remark.**
First let's examine the solutions to the Schrödinger equation for the special case of a constant potential energy, equal to ``U_0``.
Then Eq. 5.5 becomes

$-\frac{\hbar^2}{2m} \frac{d^2 \psi}{dx^2} + U_0 \psi(x) = E\psi(x) \tag{5.14}$

or (assuming for now that ``E > U_0``)

$\frac{d^2 \psi}{dx^2} = -k^2 \psi(x) \quad\text{with}\quad k = \sqrt{\frac{2m(E - U_0)}{\hbar^2}}$

The parameter ``k`` in this equation is equal to the wave number ``2\pi/\lambda``.
"""

# ╔═╡ c63b7647-9db2-46a1-b29f-a9be4fb6e286
md"### The Free Particle"

# ╔═╡ d1d12af8-e3a5-45cb-a511-dcfe097bf1ba
md"""
**Remark.**
For a free particle, the force is zero and so the potential energy is constant.
We may choose any value for that constant, so for convenience we'll choose ``U_0 = 0``.
The solution is given by Eq. 5.16, ``\psi(x) = A \sin{kx} + B \cos{kx}``.
The energy of the particle is

$E = \frac{\hbar^2 k^2}{2m} \tag{5.19}$

Our solution has placed no restrictions on ``k``, so the energy is permitted to have any value (in the language of quantum physics, we say that the energy is *not* quantized).
We note that Eq. 5.19 is the kinetic energy of a particle with momentum ``p = \hbar k`` or equivalently, ``p = h / \lambda``.
This is as we should have expected, because the free particle can be represented by a de Broglie wave with any wavelength.
"""

# ╔═╡ 1b851ba2-e47c-4cd3-9531-342f0f87dda0
md"### Infinite Potential Energy Well"

# ╔═╡ cc339189-1006-42fd-825d-34d52952d0d0
md"""
**Remark.**
Now we'll consider the formal solution to the problem we discussed in Section 5.2: a particle is trapped in the region between ``x = 0`` and ``x = L`` by infinitely high potential energy barriers.
Imagine an apparatus like that of Figure 5.6, in which the particle moves freely in this region and makes elastic collisions with the perfectly rigid barriers that confine it.
This problem is sometimes called "a particle in a box."
For now we'll assume that the particle moves in only one dimension; later we'll expand to two and three dimensions.
"""

# ╔═╡ 352a9be7-ac82-4eed-84ac-ddc82d110683
md"### Finite Potential Energy Well"

# ╔═╡ afd4fbae-ae7a-4c4c-89e0-1232ccfb1b22
md"""
**Remark.**
Because the infinite potential energy well is an idealization of a technique for confining a particle, we should examine the solution when the barriers at the sides of the well are finite rather than infinite.
The potential energy well can be described by

$U(x) = \begin{cases}
0 & 0 ≤ x ≤ L \\
U_0 & \text{otherwise}
\end{cases} \tag{5.33}$

and is sketched in Figure 5.12.
We look for solutions in which the particle is confined to this well, and thus the energies that we deduce for the particle must be less than ``U_0``.
"""

# ╔═╡ bda97003-cbe2-4294-ba84-b5df9132c71d
md"### Two-Dimensional Infinite Potential Energy Well"

# ╔═╡ d9df3af8-6c45-4fdf-8eae-129f474f3ddf
md"## The Simple Harmonic Oscillator"

# ╔═╡ efee2499-afb9-48bb-97d9-cce19dcf510c
md"## Steps and Barriers"

# ╔═╡ ef7c25af-a1a3-4841-943c-8227257129b3
md"### Potential Energy Step, ``E > U_0``"

# ╔═╡ 68b800e5-fe05-412c-a0aa-d32cc0b02053
md"### Potential Energy Step, ``E < U_0``"

# ╔═╡ 79653eeb-1bb3-48a3-ad91-554123a9867e
md"### Potential Energy Barrier"

# ╔═╡ 7945716d-42d6-4159-80ce-417c4f04bce6
md"# The Rutherford-Bohr Model of the Atom"

# ╔═╡ 33d5058e-b4a3-4daf-b3e6-89ca38182658
md"""
**Remark.**
Our goal in this chapter is to understand some of the details of atomic structure that can be learned from experimental studies of atoms.
In particular, we discuss two types of experiments that are important in the development of our theory of atomic structure:

1. the scattering of charged particles by atoms, which tells us about the distribution of electric charge in atoms, and

2. the emission or absorption of radiation by atoms, which tells us about their excited states.
"""

# ╔═╡ 3aeb2022-1aa3-4aed-af22-951c43095aab
md"""
**Remark.**
We use the information obtained from these experiments to develop an **atomic model**, which helps us understand and explain the properties of atoms.
A model is usually an oversimplified picture of a more complex system, which provides some insight into its operation but may not be sufficiently detailed to explain all of its properties.
"""

# ╔═╡ d8a23dcd-6923-4540-9108-83c14ad64d61
md"""
**Remark.**
In this chapter, we discuss the experiments that led to the **Rutherford-Bohr** model (also known simply as the Bohr model), which is based on the familiar "planetary" structure in which the electrons orbit about the nucleus like planets about the Sun.
Even though this model is not strictly valid from the standpoint of wave mechanics, it does help us understand many atomic properties, especially the excited states of the simplest atom, hydrogen.
In Chapter 7, we show how wave mechanics changes our picture of the hydrogen atom, and in Chapter 8 we consider the structure of more complicated atoms.
"""

# ╔═╡ 904a0035-474e-4da0-af72-73587fa0d202
md"## Basic Properties of Atoms"

# ╔═╡ a38935b6-dbc4-4e1b-9f9b-4cfba41ec5ed
md"""
**Remark.**
Before we begin to construct a model of the atom, it is helpful to summarize some of the basic properties of atoms.

1. *Atoms are very small*, about 0.1 nm, (``0.1 × 10^{-9}`` m) in radius.

2. *Atoms are stable*---they do not spontaneously break apart into smaller pieces or collapse; therefore the internal forces that hold the atom together must be in equilibrium.

3. *Atoms contain negatively charged electrons, but are electrically neutral*.

4. *Atoms emit and absorb electromagnetic radiation*.
"""

# ╔═╡ 9bb07324-b11b-4475-85ae-5652bab779d4
md"## Scattering Experiments and the Thomson Model"

# ╔═╡ d046d755-efb3-4dc3-a03c-03df1d1e1f38
md"""
**Remark.**
An early model of the structure of the atom was proposed (in 1904) by J. J. Thomson, who was known for previous identification of the electron and measurement of its charge-to-mass ratio ``e/m``.
The Thomson model incorporates many of the known properties of atoms: size, mass, number of electrons, and electrical neutrality.
In this model, an atom contains ``Z`` electrons that are embedded in a uniform sphere of positive charge.
The total positive charge of the sphere is ``Ze``, the mass of the sphere is essentially the mass of the atom, and the radius ``R`` of the sphere is the radius of the atom.
As we will see, the Thomson model gives predictions that disagree with experiment, and so it is not the correct way of understanding the structure of atoms.
"""

# ╔═╡ 650cc28b-edf6-4cca-909e-4fb3e2a1b14f
md"### Scattering in the Thomson Model (Optional)"

# ╔═╡ 743fd219-6a9e-41d0-a1d2-f7e0c5790d71
md"## The Rutherford Nuclear Atom"

# ╔═╡ 54fb7e9a-7e97-446b-bfe1-432f86a19c17
md"""
**Remark.**
In analyzing the scatter of alpha particles, Rutherford concluded that the most likely way an alpha particle (``m`` = 4 u) can be deflected through large angles is by a *single* collision with a more massive object.
Rutherford therefore proposed that the charge and mass of the atom are concentrated at its center, in a region called the nucleus.
Figure 6.4 illustrates the scattering geometry in this case.
The projectile, of charge ``ze``, experiences a repulsive force due to the positively charged nucleus:

$F = \frac{1}{4\pi\epsilon_0} \frac{|q_1||q_2|}{r^2} = \frac{(ze)(Ze)}{4\pi\epsilon_0 r^2} \tag{6.6}$

The atomic electrons, with their small mass, do not appreciably affect the path of the projectile and we neglect their effect on the scattering.
We also assume that the nucleus is so much more massive than the projectile that it does not move during the scattering process; because no recoil motion is given to the nucleus, the initial and final kinetic energies ``K`` of the projectile are equal.
"""

# ╔═╡ 7f6451f2-fa82-4e56-b283-e1480494173b
md"""
**Remark.**
As Figure 6.4 shows, for each impact parameter ``b``, there is a certain scattering angle ``theta``, and we need the relationship between ``b`` and ``\theta``.
The projectile can be shown to follow a hyperbolic path; in polar coordinates ``r`` and ``\phi``, the equation of the hyperbola is

$\frac{1}{r} = \frac{1}{b} \sin{\phi} + \frac{zZe^2}{8\pi \epsilon_0 b^2 K} (\cos{\phi} - 1) \tag{6.7}$
"""

# ╔═╡ 5b7f8cc4-2aff-4503-87ea-d65e89bef3a3
md"""
**Remark.**
As shown in Figure 6.5, the initial position of the particle is ``\phi = 0``, ``r → ∞``, and the final position is ``\phi = \pi - \theta``, ``r → ∞``.
Using the coordinates at the final position, Eq. 6.7 reduces to

$b = \frac{zZe^2}{8\pi\epsilon_0 K} \cot{\frac{1}{2} \theta} = \frac{zZ}{2K} \frac{e^2}{4\pi\epsilon_0} \cot{\frac{1}{2} \theta} \tag{6.8}$
"""

# ╔═╡ c1dcd2cf-19f0-451f-af85-b0a19a734912
md"""
**Remark.**
We divide our study of the scattering of charged projectiles by nuclei (which is commonly called **Rutherford scattering**) into three parts:

1. calculation of fraction of projectiles scattered at angles greater than some value of ``\theta``,

2. the Rutherford scattering formula and its experimental verification, and

3. the closest approach of a projectile to the nucleus.
"""

# ╔═╡ 2e514f70-988e-463b-a812-d59408a27880
md"## Line Spectra"

# ╔═╡ 892b52fb-9fc9-4b79-9241-d1bb7acd455a
md"## The Bohr Model"

# ╔═╡ 2ce9b4b3-8de3-4f8e-8ceb-15b1d80b62b9
md"""
**Remark.**
Following Rutherford's proposal that the mass and positive charge are concentrated in a very small region at the center of the atom, the Danish physicist Niels Bohr in 1913 (while working in Rutherford's laboratory) suggested that the atom resembled a miniature planetary system, with the electrons circulating about the nuclear like planets circulating about the Sun.
The atom thus doesn't collapse under the influence of the electrostatic Coulomb force of the nucleus on the electrons for the same reason that the solar system doesn't collapse under the influence of the gravitational force of the Sun on the planets.
In both cases, the attractive force provides the centripetal acceleration necessary to maintain the orbital motion.
"""

# ╔═╡ 4f8743a6-8383-40c4-ac6d-87076bada854
md"""
**Remark.**
As we discuss later, the Bohr model does not give a correct view of the actual structure and properties of atoms, but it represents an important first step in achieving an understanding of atoms.
The correct view requires methods of quantum mechanics, which we discuss in Chapter 7.
"""

# ╔═╡ 89995565-488c-4028-8dca-3f8f59a85086
md"""
**Example.**
We consider for simplicity the hydrogen atom, with a single electron circulating about a nucleus that has a single positive charge, as in Figure 6.17.
The radius of the circular orbit is ``r``, and the electron (of mass ``m``) moves with constant tangential speed ``v``.
The attractive Coulomb force provides the centripetal acceleration ``v^2 / r``, so

$F = \frac{1}{4\pi\varepsilon_0} \frac{|q_1||q_2|}{r^2} = \frac{1}{4 \pi \varepsilon_0} \frac{e^2}{r^2} = \frac{mv^2}{r} \tag{6.22}$

Manipulating this equuation, we can find the kinetic energy of the electron (we are assuming the more massive nucleus to remain at rest---more about this later):

$K = \frac{1}{2} mv^2 = \frac{1}{8\pi \varepsilon_0} \frac{e^2}{r} \tag{6.23}$

The potential energy of the electron-nucleus system is the Coulomb potential energy:

$U = \frac{1}{4\pi\varepsilon_0} \frac{q_1 q_2}{r} = -\frac{1}{4\pi\varepsilon_0} \frac{e^2}{r} \tag{6.24}$

The total energy ``E = K + U`` is obtained by adding Eqs. 6.23 and 6.24:

$E = K + U = \frac{1}{8\pi\varepsilon_0} \frac{e^2}{r} + \left(-\frac{1}{4\pi\varepsilon_0} \frac{e^2}{r}\right) = -\frac{1}{8\pi\varepsilon_0} \frac{e^2}{r} \tag{6.25}$
"""

# ╔═╡ 50668142-4a0a-4e38-8b95-4b66e6adaf1d
md"""
**Remark.**
We have ignored one serious difficulty with this model thus far.
Classical physics requires that an accelerated electric charge, such as our orbiting electron, must continuously radiate electromagnetic energy.
As it radiates this energy, its total energy would decrease, the electron would spiral in toward the nucleus, and the atom would collapse.
To overcome this difficulty, Bohr made a bold and daring hypothesis---he proposed that there are certain special states of motion, called **stationary states**, in which the electron may exist without radiating electromagnetic energy.
In these states, according to Bohr, the angular momentum ``L`` of the electron takes values that are integer multiples of ``\hbar``.
In stationary states, the angular momentum of the electron may have magnitude ``\hbar, 2\hbar, 3\hbar, …``, but never such values as ``2.5 \hbar`` or ``3.1 \hbar```.
This is called the **quantization of angular momentum**.
"""

# ╔═╡ 65ab1c2d-137a-49a2-a089-bec941225791
md"""
**Remark.**
In circular orbit, the position vector ``\vec{𝐫}`` that locates the electron relative to the nucleus is always perpendicular to its linear momentum ``\vec{𝐩}``.
The angular momentum, which is defined as ``\vec{𝐋} = \vec{𝐫} × \vec{𝐩}``, has magnitude ``L = rp = mvr`` when ``\vec{𝐫}`` is perpendicular to ``\vec{𝐩}``.
Thus Bohr's postulate is

$mvhr = n\hbar \tag{6.26}$

where ``n`` is an integer ``(n = 1,2,3,…)``.
We can use this expression with Eq. 6.23 for the kinetic energy

$\frac{1}{2} mv^2 = \frac{1}{2} m\left(\frac{n\hbar}{mr}\right)^2 = \frac{1}{8\pi \varepsilon_0} \frac{e^2}{r} \tag{6.27}$

to find a series of allowed valeus of the radius ``r``:

$r_n = \frac{4\pi\varepsilon_0 \hbar^2}{me^2} n^2 = a_0 n^2 \qquad (n = 1,2,3,…) \tag{6.28}$

where the **Bohr radius** ``a_0`` is defined as

$a_0 = \frac{4\pi\varepsilon_0 \hbar^2}{me^2} = 0.0529 \text{ nm} \tag{6.29}$
"""

# ╔═╡ 58bc2dc2-71c1-490d-91b9-85b380ad358a
md"""
**Remark.**
This important result is very different from what we expect from classical physics.
A satellite may be placed into Earth orbit at any desired radius by boosting it to the appropriate altitude and then supplying the proper tangential speed.
This is not true for an electron's orbit---only certain radii are allowed by the Bohr model.
The radius of the electron's orbit may be ``a_0, 4a_0, 9a_0, 16a_0``, and so forth, but *never* ``3a_0`` or ``5.3a_0``.
"""

# ╔═╡ 40be2608-f063-473c-8fec-e67a3afd84fe
md"""
**Remark.**
Substituting Eq. 6.28 for ``r`` into Eq. 6.25 gives the energy:

$E_n = -\frac{me^4}{32\pi^2 {\varepsilon_0}^2 \hbar^2} \frac{1}{n^2} = \frac{-13.60 \text{ eV}}{n^2} \qquad (n = 1,2,3,…) \tag{6.30}$

The **energy levels** calculated from Eq. 6.30 are eshown in Figure 6.18.
The electron's energy is **quantized**---only certain energy ``E_1 = -13.60 \text{ eV}`` and orbits with a radius of ``r_1 = 0.0529 \text{ nm}``.
This state is the **ground state**.
The higher states (``n = 2`` with ``E_2 = -3.40 \text{ eV}``, ``n = 3`` with ``E_3 = -1.51 \text{ eV}``, etc.) are the **excited states**.
"""

# ╔═╡ 89e0b027-ea2e-42de-930a-f3b47cbcaf63
md"""
**Remark.**
The **excitation energy** of an excited state ``n`` is the energy above the ground state, ``E_n - E_1``.
Thus the first excited state ``(n = 2)`` has excitation energy

$ΔE = E_2 - E_1 = -3.40 \text{ eV} - (-13.60 \text{ eV}) = 10.20 \text{ eV}$

the second excited state has excitation energy

$ΔE = E_3 - E_1 = -1.51 \text{ eV} - (-13.60 \text{ eV}) = 12.09 \text{ eV}$

and so forth.
The excitation energy can also be regarded as the amount of energy that the atom must absorb for the electron to make an upward jump.
For example, if the atom absorbs an energy of ``10.20 \text{ eV}`` when the electron is in the ground state ``(n = 1)``, the electron will jump upward to the first excited state ``(n = 2)``.
"""

# ╔═╡ 751bb053-d8d8-4f3b-86a9-8be09869805e
md"""
**Remark.**
The magnitude of an electron's energy ``|E_n|`` is sometimes called its **binding energy**; for example, the binding energy of an electron in the ``n = 2`` state is ``3.40 \text{ eV}``.
If the atom absorbs an amount of energy equal to the binding energy of the electron, the electron will be removed from the atom and become a free electron.
The atom, minus its electron, is then called an **ion**.
The amount of energy needed to remove an electron from an atom is also called the **ionization energy**.
Usually the ionization energy of an atom is also indicates the energy to remove an electron from the ground state.
If the atom absorbs more energy than the minimum necessary to remove the electron, the excess energy appears as the kinetic energy of the now free electron.
"""

# ╔═╡ fe80632e-ad31-48d3-9301-ad9e2efc4caa
md"""
**Remark.**
The binding energy can also be regarded as the energy that is released when the atom is assembled from an electron and a nucleus that are initially separated by a large distance.
If we bring an electron from a large distance away (where ``E = 0``) and place it in orbit in the state ``n`` where its energy has the negative value ``E_n``, energy amount to ``|E_n|`` is released, usually in the form of one or more photons.
"""

# ╔═╡ 1d58e2f5-41fc-4deb-b3d1-fbaaf3602222
md"### The Hydrogen Wavelengths in the Bohr Model"

# ╔═╡ f8ecf968-683f-416e-b56e-9300b64144f6
md"""
**Remark.**
We previously diiscussed the emission and absorption spectra of atomic hydrogen, and our discussion of the Bohr model is not complete without and understanding of the origin of these spectra.
Bohr postulated that even though the electron doesn't radiate when it remains in any particular stationary state, it can emite radiation when it moves to a lower energy level.
In the lower level, the electron has less energy than in the original level, and the energy difference appears as a quantum of radiation whose energy ``hf`` is equal to the energy difference between levels.
That is, if the electron jumps from ``n = n_1`` to ``n = n_2``, as in Figure 6.19, a photon appears with energy

$hf = E_{n_1} - E_{n_2} \tag{6.31}$

or, using Eq. 6.30 for the energies,

$f = \frac{me^4}{64 \pi^3 {\varepsilon_0}^2 \hbar^3} \left(\frac{1}{{n_2}^2} - \frac{1}{{n_1}^2}\right) \tag{6.32}$

The wavelength of the emitted radiation is

$\lambda = \frac{c}{f} = \frac{64\pi^3 {\varepsilon_0}^2 \hbar^3 c}{me^4} \left(\frac{{n_1}^2 {n_2}^2}{{n_1}^2 - {n_2}^2}\right) = \frac{1}{R_{∞}} \left(\frac{{n_1}^2 {n_2}^2}{{n_1}^2 - {n_2}^2}\right)$

where ``R_{∞}`` is called the **Rydberg constant** and is given by

$R_{∞} = \frac{me^4}{64 \pi^3 {\varepsilon_0}^2 \hbar^3 c} \tag{6.34}$

The presently accepted numerical value is

$R_{∞} = 1.097373 × 10^7 \text{ m}^{-1}$
"""

# ╔═╡ 8cf76f41-d45a-4c0b-a434-88054d40eb30
md"### Atoms with ``Z > 1``"

# ╔═╡ 7fda0928-511e-4093-a8f1-fef0065e9b3a
md"## The Franck-Hertz Experiment"

# ╔═╡ 05ea3022-dc6f-40a4-a651-be24919f5c1f
md"""
**Example.**
Let us imagine the following experiment, which is performed with the apparatus shown schematically in Figure 6.21.
A filament heats the cathode, which then emits electrons.
These electrons are accelerated toward the grid by the potential difference ``V``, which we control.
Electrons pass through the grid and reach the plate if ``V`` exceeds ``V_0``, a small retarding voltage between the grid and the plate.
The current of electrons reaching the plate is measured using the ammeter ``A``.

Now suppose the tube is filled with atomic hydrogen gas at a low pressure.
As the voltage is increased from zero, more and more electrons reach the plate, and the current rises accordingly.
The electrons inside the tube may make collisions with atoms of hydrogen, *but lose no energy in these collisions*---the collisions are perfectly elastic.
The only way the electron can give up energy in a collision is if the electron has enough energy to cause the hydrogen atom to make a transition to an excited state.
Thus, when the energy of the electrons reaches and barely exceeds 10.2 eV (or when the voltage reaches 10.2 V), the electrons can make *inelastic* collisions, leaving 10.2 eV of energy with the atom (now in the ``n = 2`` level), and the original electron moves off with very little energy.
If it should pass through the grid, the electron might not have sufficient energy to overcome the small retarding potential and reach the plate.
Thus when ``V = 10.2 \text{ V}``, a drop in the current is observed.
As ``V`` is increased further, we begin to see the effects of multiple collisions.
That is, when ``V = 20.4 \text{ V}``, an electron can make an inelastic collision, leaving the atom in the ``n = 2`` state.
The electron loses 10.2 eV of energy in this process, and so it moves off after the collision with a remaining 10.2 eV of energy, which is sufficient to excite a second hydrogen atom in an inelastic collision.
Thus, if a drop in the current is observed at ``V``, similar drops are observed at ``2V, 3V, …``
"""

# ╔═╡ ca4c4b29-bf7b-41a9-a365-60b3124cc541
md"""
**Remark.**
This experiment should thus give rather direct evidence for the existence of atomic excited states.
"""

# ╔═╡ b25a14eb-1ad4-4acc-acb6-14131f0ac477
md"## The Correspondence Principle"

# ╔═╡ 87841a5b-c63e-4a91-a44a-6b69e2da2c7a
md"## Deficiencies of the Bohr Model"

# ╔═╡ 884286bb-e377-4110-bff0-9a64803f7652
md"""
**Remark.**
The Bohr model gives us a picture of how electrons move about the nucleus, and many of our attempts to explain the behavior of atoms refer to this picture, even though it is not strictly correct.
Our presentation ignored two effects that must be included to improve the accuracy of the model.
Other deficiencies in the model cannot be so easily fixed, because they are inconsistent with the correct quantum-mechanical picture, which is presented in Chapter 7.

1. **Motion of the Proton.**

2. **Wavelengths in Air.**

3. **Angular Momentum.**
   A serious failure of the Bohr model is that it gives incorrect predictions for the angular momentum of the electron.
   In Bohr's theory, the orbital angular momentum is quantized in integer multiples of ``\hbar``, which is correct.
   However, for the ground state of hydrogen, the Bohr theory gives ``L = \hbar``, while experiment clearly shows ``L = 0``.

4. **Uncertainty.**
   Another deficiency of the model is that it violates thte uncertainty relationship.
   Suppose the electron orbits in the ``xy`` plane.
   In this case we know exactly its ``z`` coordinate and the ``z`` component of its momentum.
   Such an atom would therefore violate the uncertainty relationship ``Δz Δp_z ≥ \hbar``.
   In fact, as we discuss in Chapter 7, quantum mechanics introduces a degree of "fuziness" to the behavior of electrons in atoms that is not consistent with any orbit in a single plane.
"""

# ╔═╡ afa0c5d3-f30d-40c6-9db1-11b6c6406df4
md"# The Hydrogen Atom in Wave Mechanics"

# ╔═╡ edc50589-9487-4b85-8f4c-56c6bfef455d
md"""
**Remark.**
In this chapter, we study the solutions of the Schrödinger equation for the hydrogen atom.
We will see that these solutions, which lead to the same energy levels calculated in the Bohr model, differ from the Bohr model by allowing for the uncertainty in localizing the electron.
"""

# ╔═╡ d467c716-e8d0-4314-bef3-b5eaa902fcd8
md"""
**Remark.**
Other deficiencies of the Bohr model are not so easily eliminated by solving the Schrödinger equation.
First, the so-called "fine structure" of the spectral lines (the splitting of the lines into close-lying doublets) cannot be explained by our solutions; the proper explanation of this effect requires the introduction of a new property of the electron, the *intrinsic spin*.
Second, the mathematical difficulties of solving the Schrödinger equation for atoms containing two or more electrons are formidable, so we restrict our discussion in this chapter to one-electron atoms, in order to see how wave mechanics enables us to understand some basic atomic properties.
In Chapter 8, we discuss the structure of many-electron atoms.
"""

# ╔═╡ d194d57c-483e-47d3-95c5-b3864e0070d1
md"## A One-Dimensional Atom"

# ╔═╡ 108c9d06-b636-495c-83fd-52503ef5c2fa
md"""
**Remark.**
Quantum mechanics gives us a view of the structure of the hydrogen atom that is very different from the Bohr model.
In the Bohr model, the electron moves about the proton in circular orbit.
Quantum mechanics, on the other hand, does not allow a fixed radius or a fixed orbital plane but instead describes the electron in terms of a probability density, which leads to an uncertainty in locating the electron.
"""

# ╔═╡ 863c3f9a-6682-4249-9e40-54b07a8d42cc
md"""
**Remark.**
To analyze the hydrogen atom according to quantum mechanics, we must solve the Schrödinger equation for the Coulomb potential energy of the proton and the electron:

$U(r) = -\frac{e^2}{4\pi \varepsilon_0 r} \tag{7.1}$

Eventually we will discuss the solutions to this three-dimensional problem for the hydrogen atom using spherical polar coordinates, but for now let's look at the simpler one-dimensional problem in which a proton is fixed at the origin ``(x = 0)`` and an electron moves along the positive ``x`` axis.
(This doesn't represent a real atom, but it does show how some properties of electron wave functions in atoms emerge from solving the Schrödinger equation.)
"""

# ╔═╡ 07f84890-3bb6-4f48-a454-c5e19b3ddac0
md"""
**Remark.**
In one dimension, the Schrödinger equation for an electron with potential energy ``U(x) = -e^2 / 4 \pi \varepsilon_0 x`` would then be

$-\frac{\hbar^2}{2m} \frac{d^2 \psi}{dx^2} - \frac{e^2}{4 \pi \varepsilon_0 x} \psi(x) = E \psi(x) \tag{7.2}$

For a bound state, the wave function must fall to zero as ``x → ∞``.
Moreover, in order for the second term on the left side to remain finite at ``x = 0``, the wave function must be zero at ``x = 0``.
The simplest function that satisfies both of these requirements is ``\psi(x) = Axe^{-bx}``, where ``A`` is the normalization constant.
By substituting this trial wave function into Eq. 7.2, we find a solution when ``b = me^2 / 4 \pi \varepsilon_0 \hbar^2 = 1 / a_0`` (where ``a_0`` is the Bohr radius defined in Eq. 6.29).
The energy corresponding to this wave function is ``E = -\hbar^2 b^2 / 2m = -me^4 / 32 \pi^2 {\varepsilon_0}^2 \hbar^2``, which happens by chance to be identical to the energy of the ground state in the Bohr model (Eq. 6.30 for ``n = 1``).
"""

# ╔═╡ 2ea002de-345d-4035-87ab-fb6115852614
md"""
**Remark.**
Figure 7.1a shows this wave function and its corresponding probability density ``|\psi(x)|^2``.
There is clearly an uncertainty in specifying the location of the electron.
The most probable region to find the electron is near ``x = a_0``, but there is a nonzero probability for the electron to be anywhere in the range ``0 < x < ∞``.
This is very different from the Bohr model, in which the distance between the proton and electron is fixed at the value.
"""

# ╔═╡ 46dd626e-50ab-4087-a799-03f67461bed4
md"## Angular Momentum in the Hydrogen Atom"

# ╔═╡ f8d8a871-7e11-4a26-bb6c-e9121fd1c951
md"""
**Remark.**
Angular momentum played a significant role in Bohr's analysis of the structure of the hydrogen atom.
Bohr was able to obtain the correct energy levels by assuming that in the orbit with quantum number ``n``, the angular momentum of the electron is equal to ``n\hbar``.
Bohr's idea about the "quantization of angular momentum" turned out to have some correct features, but his analysis is not consistent with the actual quantum mechanical nature of angular momentum.
"""

# ╔═╡ 7baf63aa-f249-4cb5-b882-789f6cc5e123
md"### Angular Momentum of Classical Orbits"

# ╔═╡ 9e4d27fc-3d65-4126-8c48-c5bb5864f82c
md"""
**Remark.**
Before considering the angular momentum of an orbiting electron, it is helpful to review how angular momentum affects classical orbits, such as those of planets or comets about the Sun.
Classically, the angular momentum of a particle is represented by the vector ``\vec{𝐋} = \vec{𝐫} × \vec{𝐩}``, where ``\vec{𝐫}`` is the position vector that locates the particle and ``\vec{𝐩}`` is its linear momentum.
The direction of ``\vec{𝐋}`` is perpendicular to the plane of the orbit.
Along with the energy, the angular momentum remains constant as the planet orbits.
"""

# ╔═╡ 78857555-314f-4786-b61a-0c638d04b213
md"""
**Remark.**
The total energy of the orbital motion determines the average distance of the planet from the Sun.
For a given total energy, many different orbits are possible, from the nearly circular orbit of the Earth to the highly elongated elliptical orbits of the comets.
These orbits differ in their angular momentum ``L``, which for a given energy is largest for the circular orbit and smallest for the elongated ellipse.
Figure 7.2 shows a variety of planetary orbits having the same total energy but different angular momentum.
The complete specification of the orbit requires that we give not only the magnitude of the angular momentum vector but also its direction; this direction identifies the plane of the orbit.
To completely describe the angular momentum vector requires three numbers; for example, we might give the three components of ``\vec{𝐋}(L_x,L_y,L_z)``.
Equivalently, we might give the magnitude ``L`` of the vector and two angular coordinates that give its direction (similar to latitude and longitude on a sphere).
"""

# ╔═╡ 8b8a88a8-5a01-48de-9996-1c3b69b169c6
md"### Angular Momentum in Quantum Mechanics"

# ╔═╡ 7f1f2340-0096-4b8c-835f-9d62c5d5245f
md"""
**Remark.**
Quantum mechanics gives us a very different view of angular momentum.
The angular momentum properties of a three-dimensional wave function are described by two quantum numbers.
"""

# ╔═╡ b20b35f0-b3f9-4692-80f8-a3a57779c5f9
md"""
**Remark.**
The first is the **angular momentum number** ``l``.
This quantum number determines the length of the angular momentum vector:

$|\vec{𝐋}| = \sqrt{l(l + 1) \hbar} \qquad (l = 0, 1, 2, …) \tag{7.5}$

Note that this is very different from the Bohr condition ``|\vec{𝐋}| = n\hbar``.
In particular, it is possible for the quantum vector to have a length of zero, but in the Bohr model the minimum length is ``\hbar``.
"""

# ╔═╡ 3b9934a6-a9be-417e-b5a5-d556341416e5
md"""
**Remark.**
The second number that we use to describe angular momentum in quantum mechanics is the **magnetic quantum number ``m_l``**.
This quantum number tells us about one component of the angular momentum vector, which we usually choose to be the ``z`` component.
The relationship between the ``z`` component of ``\vec{𝐋}`` and the magnetic quantum number is

$L_z = m_l \hbar \qquad (m_l = 0, ±1, ±2, …, ±l) \tag{7.6}$

Note that for each value of ``l`` there are ``2l + 1`` possible values of ``m_l``.
"""

# ╔═╡ a25ab78a-2d3f-4ac1-8669-8507b15553f4
md"""
**Remark.**
Unlike the classical angular momentum vector, for which we provide an exact specification by giving three numbers, the quantum angular momentum is described by *only two* numbers.
Clearly two numbers cannot completely identify a vector in three-dimensional space, so something is missing from our description of the quantum angular momentum.
As we discuss later, this missing part of the description of the quantum angular momentum vector is directly related to the application of the uncertainty principle to angular momentum.
"""

# ╔═╡ d61ba806-836a-485b-9bf8-4d8be2c0eaf9
md"""
**Remark.**
The components of the vector ``\vec{𝐋}`` for ``l = 2`` are illustrated in Figure 7.3.
Each orientation in space of the vector ``\vec{𝐋}`` corresponds to a different ``m_l`` value.
The polar angle ``\theta`` that the vector ``\vec{𝐋}`` makes with the ``z`` axis can be found by referring to the figure.
With ``L_z = |\vec{𝐋}| \cos{\theta}``, we have

$\cos{\theta} = \frac{L_z}{|\vec{𝐋}|} = \frac{m_l}{\sqrt{l(l + 1)}} \tag{7.7}$

using Eq. 7.6 for ``L_z`` and Eq. 7.5 for ``|\vec{𝐋}|``.
"""

# ╔═╡ aa4037fd-7486-43df-ad9e-aaac1fd9f82d
md"""
**Remark.**
This behavior represents a curious aspect of quantum mechanics called **spatial quantization**---only certain orientations of angular momentum vectors are allowed.
The number of these orientations is equal to ``2l + 1`` (the number of different possible ``m_l`` values) and the magnitudes of their successive ``z`` components always differ by ``\hbar``.
For example, angular momentum state with ``l = 1`` can have ``m_l`` values of ``+1``, ``0``, or ``-1`` (corresponding to ``z`` components ``L_z = +\hbar, 0, -\hbar``) and thus ``\cos{\theta} = +1 / \sqrt{2}``, ``0``, or ``-1 / \sqrt{2}``.
The ``\vec{𝐋}`` vector in this casae can have one of only three possible orientations relative to the ``z`` axis, corresponding to angles ``45^∘``, ``90^∘``, or ``135^∘``.
This is in contrast to a classical angular momentum vector, which can have any possible orientation in space; that is, the angle between a classical angular momentum vector and the ``z`` axis can take any value between ``0^∘`` and ``180^∘``.
"""

# ╔═╡ d7b1040f-6eb8-4f39-b7f2-6753289ba457
md"""
**Example 7.3**
Compute the length of the angular momentum vectors that represent the orbital motion of an electron in a quantum state with ``l = 1`` and in another state with ``l = 2``.

*Solution.*
Equation 7.5 gives the relationship between the length of a vector and the angular momentum quantum number ``l``.
For ``l = 1``,

$|\vec{𝐋}| = \sqrt{1(1 + 1) \hbar} = \sqrt{2} \hbar$

and for ``l = 2``,

$|\vec{𝐋}| = \sqrt{2(2 + 1)} \hbar = \sqrt{6} \hbar$
"""

# ╔═╡ 77c2d141-dcd9-4652-b257-37940ac05517
md"""
**Example 7.4**
What are the possible ``z`` components of the vector ``\vec{𝐋}`` that represents the orbital angular momentum of a state with ``l = 2``?

*Solution.*
The possible ``m_l`` values for ``l = 2`` are ``+2, +1, 0, -1, -2``, and so the ``\vec{𝐋}`` vector can have any of five possible ``z`` components: ``L_z = 2\hbar, \hbar, 0, -\hbar, -2\hbar``.
The length of the vector ``\vec{𝐋}``, as we found previously, is ``\sqrt{6} \hbar``.
"""

# ╔═╡ 51f6568c-82a3-4c72-9a29-c4b4fbc6712f
md"### The Angular Momentum Uncertainty Relationship"

# ╔═╡ c0322426-f47e-440f-9327-60504001623d
md"## The Hydrogen Atom Wave Functions"

# ╔═╡ 5d14c309-3196-48f8-a497-7b7fff9fbb8f
md"""
**Remark.**
To find the complete spatial description of the electron in a hydrogen atom, we must obtain three-dimensional wave functions.
The Schrödinger equation in three-dimensional Cartesian coordinates has the following form:

$-\frac{\hbar^2}{2m} \left(\frac{∂^2 \psi}{∂x^2} + \frac{∂^2 \psi}{∂y^2} + \frac{∂^2 \psi}{∂z^2}\right) + U(x,y,z) \psi(x,y,z) = E\psi(x,y,z) \tag{7.9}$

where ``\psi`` is a function of ``x``, ``y``, and ``z``.
The usual procedure for solving a partial differential equation of this type is to separate the variables by replacing a function of three variables with the product of three functions of one variable---for example, ``\psi(x,y,z) = X(x) Y(y) Z(z)``.
However, the Coulomb potential energy (Eq. 7.1) written in Cartesian coordinates, ``U(x,y,z) = -e^2 / 4\pi \varepsilon_0 \sqrt{x^2 + y^2 + z^2}``, does not lead to a separable solution.

For this calculation, it is more convenient to work in spherical polar coordinates ``(r, \theta, \phi)`` instead of Cartesian coordinates ``(x,y,z)``.
The variables of spherical polar coordinates are illustrated in Figure 7.5.
This simplification in the solution is at the expense of an increased complexity of the Schrödinger equation, which becomes

$\begin{align*}
-\frac{\hbar^2}{2m} \left[\frac{∂^2 \psi}{∂r^2} + \frac{2}{r} \frac{∂\psi}{∂r} + \frac{1}{r^2 \sin{\theta}} \frac{∂}{∂\theta} \left(\sin{\theta} \frac{∂\psi}{∂\theta}\right) + \frac{1}{r^2 \sin^2{\theta}} \frac{∂^2 \psi}{∂\phi^2}\right] \tag{7.10} \\
+ \, U(r) \psi(r,\theta,\phi) = E\psi(r, \theta, \phi)
\end{align*}$

where now ``\psi`` is a function of the spherical polar coordinates ``r``, ``\theta``, and ``\phi``.
When the potential energy depends only on ``r`` (and not on ``\theta`` or ``\phi``), as is the case for the Coulomb potential energy, we can find solutions that are separable and can be factored as

$\psi(r, \theta, \phi) = R(r) \Theta(\theta) \Phi(\phi) \tag{7.11}$

where the **radial function** ``R(r)``, the **polar function** ``\Theta(\theta)``, and the **azimuthal function** ``\Phi(\phi)`` are each functions of a single variable.
This procedure gives three differential equations, each of a single variable ``(r, \theta, \phi)``.

The quantum state of a particle that moves in a potential energy that depends only on ``r`` can be described by angular momentum quantum numbers ``l`` and ``m_l``.
The polar and azimuthal solutions are given by combinations of standard trigonometric functions.
The remaining radial function is then obtained from solving the radial equation:

$-\frac{\hbar^2}{2m} \left(\frac{d^2 R}{dr^2} + \frac{2}{r} \frac{dR}{dr}\right) + \left(-\frac{e^2}{4\pi\epsilon_0 r} + \frac{l(l + 1) \hbar^2}{2mr^2}\right) R(r) = ER(r) \tag{7.12}$

The mass that appears in this equation is the **reduced mass** of the proton-electron system defined in Eq. 6.44.
"""

# ╔═╡ 99c96e95-30cd-4051-baf6-9bc580b5c99a
md"### Quantum Numbers and Wave Functions"

# ╔═╡ 25c9263e-cd9c-4c16-94a9-50ae1e0a7e24
md"""
**Remark.**
When we solve a three-dimensional equation such as the Schrödinger equation, three parameters emerge in a natural way as indices or labels fo the solutions, just as the single index ``n`` emerged from our solution of the one-dimensional infinite well in Section 5.4.
These indices are the three **quantum numbers** that label the solutions.
The three quantum numbers that emerge from the solutions and their allowed values are as follows:

$\begin{align*}
n &&&\text{principal quantum number} &&1,2,3,… \\
l &&&\text{angular momentum quantum number} &&0,1,2,…,n-1 \\
m_l &&&\text{magnetic quantum number} &&0,±1,±2,…,±l
\end{align*}$

The principal quantum number ``n`` is identical to the quantum number ``n`` that we obtained in the Bohr model.
It determines the quantized energy levels:

$E_n = -\frac{me^4}{32 \pi^2 {\varepsilon_0}^2 \hbar^2} \frac{1}{n^2} \tag{7.13}$

which is identical to Eq. 6.30.
Note that the energy depends only on ``n`` and not on the other quantum numbers ``l`` or ``m_l``.
The permitted values of the angular momentum quantum number ``l`` are limited by ``n`` (``l`` ranges from ``0`` to ``n - 1``) and those of the magnetic quantum number ``m_l`` are limited by ``l``.
"""

# ╔═╡ 70632c83-8690-47cd-a0a3-3601e817749e
md"### Probability Densities"

# ╔═╡ f9266f97-466a-4542-83c9-78c05ad53f32
md"""
**Remark.**
As we learned in Chapter 5, the probability of finding the electron in any spatial interval is determined by the square of the wave function.
For the hydrogen atom, ``|\psi(r, \theta, \phi)|^2`` gives the **volume probability density** (probability per unit volume) at the location ``(r, \theta, \phi)``.
To compute the actual probability of finding the electron, we multiply the probability per unit volume by the volume element ``dV`` located at ``(r,\theta,\phi)``.
In spherical polar coordinates (see Figure 7.8), the volume element is

$dV = r^2 \sin{\theta} \,dr \,d\theta \,d\phi \tag{7.15}$

and therefore the probability to find the electron in the volume element at that location is

$|\psi_{n,l,m_l}(r,\theta,\phi)|^2 \, dV = |R_{n,l}(r)|^2 |\Theta_{l,m_l} (\theta)|^2 r^2 \sin{\theta} \,dr \,d\theta \,d\phi \tag{7.16}$
"""

# ╔═╡ 8e0ede16-43f9-405c-8601-3fa654d2b902
md"## Radial Probability Densities"

# ╔═╡ 281df74d-6940-4672-a7ca-f121218ec631
md"""
**Remark.**
Instead of asking about the complete probability density to locate the electron, we might want to know the probability to find the electron at a particular distance from the nucleus, no matter what the values of ``\theta`` and ``\phi`` might be.
That is, imagine a thin spherical shell of radius ``r`` and thickness ``dr``.
What is the probability to find the electron in the shell between spheres of radius ``r`` and ``r + dr``?
We define the **radial probability density** ``P(r)`` so that the probability to find the electron within that shell is ``P(r) \,dr``.
We can determine the radial probability from the complete probability (Eq. 7.16) by integrating over the ``\theta`` and ``\phi`` coordinates.
In effect, this adds up the probabilities for the volume elements at a given ``r`` for all ``\theta`` and ``\phi``.

$P(r) \,dr = |R_{n,l}(r)|^2 r^2 \,dr ∫_0^{\pi} |\Theta_{l,m_l}(\theta)|^2 \sin{\theta} \,d\theta ∫_0^{2\pi} |\Phi_{m_l}(\phi)|^2 \,d\phi \tag{7.17}$

The ``\theta`` and ``\phi`` integrals are each equal to unity, because each of the functions ``R``, ``\Theta``, and ``\Phi`` is individually normalized.
Thus the radial probability density is

$P(r) = r^2 |R_{n,l}(r)|^2 \tag{7.18}$

Figure 7.10 shows this function for several of the lowest levels of hydrogen.
"""

# ╔═╡ 13b5eb3b-8ecb-43eb-a500-a60b91bcc72e
md"## Angular Probability Densities"

# ╔═╡ a076cba8-f8fd-4f1d-a4ab-55a29694857d
md"""
**Remark.**
In this section, we consider the angular part of the probability density, which is obtained from the squared magnitudes of the angular parts of the wave function:

$P(\theta, \phi) = |\Theta_{l,m_l}(\theta) \Phi_{m_l}(\phi)|^2 \tag{7.19}$

Figure 7.11 shows the angular probability densities for the ``l = 0`` and ``l = 1`` wave functions listed in Table 7.1.
"""

# ╔═╡ 73aec65e-0660-4175-974e-b27c14a7d8d3
md"## Intrinsic Spin"

# ╔═╡ 2cffd050-c514-4b73-a50b-ffda11c16811
md"""
**Remark.**
One way of observing spatial quantization is to place the atom in an externally applied magnetic field.
From the interaction between the magnetic field and the **magnetic dipole moment** of the atom (which is related to the electron's orbital angular momentum), it is possible to observe the separate components of ``\vec{𝐋}`` and also to determine ``l`` by counting the number of ``z`` components (which, as we have seen, is equal to ``2l + 1``).
However, when this experiment is done, a surprising result emerges that indicates an unexpected property of the electron, known as **intrinsic spin**.
"""

# ╔═╡ effeccdf-d10f-4704-a167-763a79e1fcf9
md"### Orbital Magnetic Dipole Moments"

# ╔═╡ c396b03a-6dd8-46a9-a12f-5e29fe6b6c39
md"""
**Remark.**
Figure 7.12 shows a classical magnetic dipole moment, which might be produced by a current loop or the orbital motion of a charged object.
The classical magnetic dipole moment ``\vec{𝛍}`` is defined as a vector whose magnitude is equal to the product of the circulating current and the area enclosed by the orbital loop.
The direction of ``\vec{𝛍}`` is perpendicular to the plane of the orbit, determined by the right-hand rule---with the fingers in the direction of the conventional (positive) current, the thumb indicates the direction of ``\vec{𝛍}``, as shown in Figure 7.12, for a circulating negative charge like an electron.
"""

# ╔═╡ 711a5f68-d2f0-417c-a391-56ebf2e7045b
md"""
**Remark.**
As we have seen, quantum mechanics forbids exact knowledge of the direction of ``\vec{𝐋}`` and therefore of ``\vec{𝛍}``.
Figure 7.13 suggests the relationship between ``\vec{𝐋}`` and ``\vec{𝛍}`` that is consistent with quantum mechanics.
Only the ``z`` components of these vectors can be specified.
Because the electron has a negative charge, ``\vec{𝐋}`` and ``\vec{𝛍}`` have ``z`` components of opposite signs.
"""

# ╔═╡ 848b1e80-5ef4-444b-aa9c-f70018d57040
md"""
**Remark.**
We can use the Bohr model with a circular orbit to obtain the relationship between ``\vec{𝐋}`` and ``\vec{𝛍}``, which turns out to be identical with the correct quantum mechanical result.
We regard the circulating electron as a circular loop of current ``i = dq/dt = q/T``, where ``q`` is the charge of the electron ``(-e)`` and ``T`` is the time for one circuit around the loop.
If the electron moves with speed ``v = p/m`` around a loop of radius ``r``, then ``T = 2\pi r / v = 2\pi r m / p``.
The magnitude of the magnetic moment is

$\mu = iA = \frac{q}{2\pi rm / p} \pi r^2 = \frac{q}{2m} rp = \frac{q}{2m} |\vec{𝐋}| \tag{7.20}$

with ``|\vec{𝐋}| = rp``.
Writing Eq. 7.20 in terms of vectors and putting ``-e`` for the electronic charge, we obtain

$\vec{𝛍}_L = -\frac{e}{2m} \vec{𝐋} \tag{7.21}$

The negative sign, which is present because the electron has a negative charge, indicates that the vectors ``\vec{𝐋}`` and ``\vec{𝛍}_L`` point in opposite directions.
The subscript ``L`` on ``\vec{𝛍}_L`` reminds us that this magnetic moment arises from the **orbital** angular momentum ``\vec{𝐋}`` of the electron.
"""

# ╔═╡ 9fba6fc6-9557-4730-8bd3-8dfac9b9fca2
md"""
**Remark.**
The ``z`` component of the magnetic moment is

$\mu_{L,z} = -\frac{e}{2m} L_z = -\frac{e}{2m} m_l \hbar = -\frac{e \hbar}{2m} m_l = -m_l \mu_B \tag{7.22}$

The quantity ``e\hbar / 2m`` is defined to be the **Bohr magneton**

$\mu_B = \frac{e\hbar}{2m} \tag{7.23}$

The value of ``\mu_B`` is

$\mu_B = 9.274 × 10^{-24} \text{ J/T}$

The Bohr magneton is a convenient unit for expressing atomic magnetic moments, which typically have values of the order ``\mu_B``.
"""

# ╔═╡ bafd28e1-983e-4834-9429-c4bb197ece22
md"### A Dipole in an External Field"

# ╔═╡ b2830c29-2c29-4666-88ba-3bf5869a4a81
md"### The Stern-Gerlach Experiment"

# ╔═╡ a6a0223d-7f85-4260-aa87-63465f077adf
md"## Energy Levels and Spectroscopic Notation"

# ╔═╡ e702e0e8-5c40-45ae-8023-acfb87919d1f
md"""
**Remark.**
We previously described all of the possible electronic states in hydrogen by three quantum numbers ``(n, l, m_l)``, but as we have seen, a fourth property of the electron, the intrinsic angular momentum or **spin**, requires the introduction of a fourth quantum number.
We don't need to specify the spin ``s``, because it is always ``\frac{1}{2}`` (we regard it as a fundamental property of the electron, like its electric charge or its mass), but we must specify the value of the quantum number ``m_s`` (``+1/2`` or ``-1/2``), which tells us about the ``z`` component of the spin.
Thus, the complete description of the state of an electron in an atom requires the four quantum numbers ``(n, l, m_l, m_s)``.
"""

# ╔═╡ d62d9424-de5e-4089-8443-7ebf658d67ba
md"## *The Zeeman Effect"

# ╔═╡ cb8411ea-e8c9-4b6f-8209-4e22d7751312
md"## *Fine Structure"

# ╔═╡ e0d465df-efb2-42a7-a362-0c8ab62241d0
md"# Many-Electron Atoms"

# ╔═╡ b2d0f220-0f01-432b-b3a1-7530eb3456db
md"""
**Remark.**
Physicists often attack complex problems by trying to separate the more important parts from the less important.
For example, in analyzing the motion of the Earth in the Solar System, we can start by ignoring all bodies other than the Sun.
With this simplification, we find that the Earth moves about the Sun in an elliptical orbit.
Now we can account for the effect of the Moon, which introduces a slight "wobble" about the ellipse.
Finally, we can introduce the much weaker effect of the gravitational pull of the other planets.
"""

# ╔═╡ 0c2b252b-39c1-4b0d-8fdb-ec21d893809e
md"""
**Remark.**
It is tempting to try to use a similar approach to understsand the motion of electrons in atoms with more than one electron.
Unfortunately, we can't analyze the motion of an electron in an atom with more than one electron by separating out the more and less influential forces.
For example, in a neutral atom with atomic number ``Z``, each electron experiences an electrostatic force due to the nucleus with a charge of ``+Ze``, but it also experiences an electrostatic force due to all the other electrons with a total charge of ``-(Z - 1)e``.
The effect of the nucleus is comparable to the effect of the other electrons, which can't be analyzed as a small correction.
"""

# ╔═╡ e5467916-097d-4c86-9bef-ba51ee1dde5b
md"""
**Remark.**
We are thus required to consider simultaneously the effect of the nucleus and each of the other electrons.
The problem of the mutual interactions of three or more objects is an example of what physicists call the **many-body problem**.
Exact, closed-forms to the Schrödinger equation cannot be found for such problems.
The solutions must be obtained numerically using a computer.
In this chapter, we consider an approximate set of energy levels for many-electron atoms, and we try to understand some of the properties of atoms (chemical, electrical, magnetic, optical, etc.) based on those energy levels.
"""

# ╔═╡ d8aecfe1-ab8c-4cff-9b8f-9a4fd1403400
md"## The Pauli Exclusion Principle"

# ╔═╡ 82575946-7d1b-440a-8e69-8ee98cb05aca
md"""
**Remark.**
Let's begin by considering how the ``Z`` electrons in an atom might occupy the atomic energy levels.
As a first guess, we might expect that all ``Z`` electrons will eventually cascade down to the lowest energy level, the ``1s`` state.
If this were correct, we would expect the properties of the atom to vary rather smoothly compared with its neighbors having ``Z ± 1`` electrons.
Indeed, certain of the properties of atoms, such as the energies of the emitted X rays, show this smooth variation.
However, other properties do not vary in this way and thus are not consistent with this model of all electrons in the same level.
For example, neon (with ``Z = 10``) is an **inert gas**; it is practically unreactive and does not form chemical compounds under most conditions.
Its neighbors, fluorine ``(Z = 9)`` and sodium ``(Z = 11)``, are among the most reactive of the elements and under most conditions will combine with other substances, sometimes violently.
As another example, nickel ``(Z = 28)`` is strongly magnetic (ferromagnetic) and, for a metal, does not have a particularly large conductivity.
The next element, copper ``(Z = 29)``, is an excellent electrical conductor but is not magnetic.
Such wide variations in properties between neighboring elements suggest that it is not correct to assume that all electrons occupy the same energy level.
"""

# ╔═╡ 61d03fa7-b238-4544-b0b2-0d6ce5b6d9d3
md"""
**Remark.**
The rule that prevents all of the electrons in an atom from falling into the ``1s`` level was proposed by Wolfgang Pauli in 1925, based on a study of the transitions that are present, and those that are expected but *not* present, in the emission spectra of atoms.
Simply stated, the **Pauli exclusion principle** is as follows:

*No two electrons in a single atom can have the same set of quantum numbers ``(n,l,m_l,m_s)``.*

The Pauli principle is the most important rule governing the structure of atoms, and no study of the properties of atoms can be attempted without a thorough understanding of this principle.
"""

# ╔═╡ 0949ca88-1f6a-455f-a8c3-a12a6211c1e2
md"""
**Example.**
To illustrate how the Pauli principle works, consider the structure of helium ``(Z = 2)``.
The first electron in helium, in the ``1s`` ground state, has quantum numbers ``n = 1``, ``l = 0``, ``m_l = 0``, ``m_s = +½`` or ``-½``.
The second electron can have the same ``n``, ``l``, and ``m_l``, but it cannot have the same ``m_s``, because the exclusion principle would be violated.
Thus, if the first ``1s`` electron has ``m_s = +½``, the second ``1s`` electron must have ``m_s = -½``.
Now consider an atom of lithium ``(Z = 3)``.
Just as with helium, the first two electrons will have quantum numbers ``(n,l,m_l,m_s) = (1,0,0,+½)`` and ``(1,0,0,-½)``.
According to the exclusion principle, the third electron cannot have the same set of quantum numbers as the first two, so it *cannot go into the ``n = 1`` level*, because there are only two different sets of quantum numbers available in the ``n = 1`` level, and both of those sets have already been used.
The third electron must therefore go into one of the ``n = 2`` levels, and experiments indicate that the ``2s`` level is the next available.
Without the Pauli principle, lithium would have three electrons in the ``1s`` level; with the Pauli principle, we expect that lithium has two electrons in the ``1s`` level and one electron in the ``2s`` level.
These two different possible structures for lithium would give very different physical properties, and the physical properties of lithium indicate that the structure with one electron in the ``2s`` is the correct one.
"""

# ╔═╡ d7311757-9c79-4d01-b383-46accaa7b74f
md"## Electronic States in Many-Electron Atoms"

# ╔═╡ b98bd327-8396-48c7-bdd0-3ee778bc5881
md"""
**Remark.**
Figure 8.1 illustrates the result of an approximate calculation of the order of the filling of energy levels in many-electron atoms as the atomic number ``Z`` increases.
The ``1s`` level is always the lowest energy level to be filled, and the ``2s`` and ``2p`` levels are fairly close in energy.
The ``2s`` level always lies a bit lower in energy than the ``2p`` level, and so the ``2s`` level is filled before ``2p``.
(The fine-structure splitting is very small on the scale of this diagram.)
We can understand why the ``2s`` level lies lower in energy if we recall Example 7.7 and Figure 7.10.
An electron in the ``2s`` level has a greater probability to be found at small radii compared with an electron in the ``2p`` level.
(Penetrating close to the nucleus, the ``2s`` electron also is attracted by the full nuclear charge ``+Ze``, while the ``2p`` electron spends most of its time beyond the orbits of the ``1s`` electrons where it is attracted by an effective charge that is less than the full charge of the nucleus.
We'll discuss this effect, which is called **electron screening**, in Section 8.3)
These two effects---closer penetration to the nucleus and screening---are reponsible for the tighter binding of the ``2s`` electrons compared with the ``2p`` electrons.
"""

# ╔═╡ ab4d88cc-54aa-4667-8675-298ad506a69a
md"### The Periodic Table"

# ╔═╡ 6331398a-92fe-48f5-af9f-0a34012ad12e
md"""
**Remark.**
Figure 8.2 shows the periodic table, which is an orderly array of the chemical elements, listed in order of increasing atomic number ``Z`` and arranged in such a way that the vertical columns, called **groups**, contain elements with rather similar physical and chemical properties.
In this section, we discuss the way in which the filling of electronic subshells helps us understand the arrangement of the periodic table.
In later sections, we examine some of the physical and chemical properties of the elements.
"""

# ╔═╡ e822de3e-dfb5-4404-8e23-51f52e0eceeb
md"""
**Remark.**
In attempting to understand the ordering of subshells and the periodic table, we must follow two rules for filling the electronic subshells:

1. The capacity of each subshell is ``2(2l + 1)``.
   (This is of course just another way of stating the Pauli exclusion principle.)

2. The electrons occupy the lowest energy states available.
"""

# ╔═╡ 0b532cdd-4b81-4bcb-9512-7caad6bbcac4
md"""
**Remark.**
To indicate the electron configuration of each element, we use a notation in which the identity of the subshell and the number of electrons in it are listed.
The identity of the subshell is indicated in the usual way, and the number of electrons in that subshell is indicated by a superscript.
Thus, hydrogen has the configuration ``1s^1``, for one electron in the ``1s`` shell, and helium has the configuration ``1s^2``.
Helium has both a filled subshell (the ``1s``) and a closed major shell (the ``K`` shell), and thus is an extraordinarily stable and inert element.
With lithium ``(Z = 3)``, we begin to fill the ``2s`` subshell; lithium has the configuration ``1s^2 2s^1``.
With beryllium ``(Z = 4, 1s^2 2s^2)``, the ``2s`` subshell is full, and the next element must begin filling the ``2p`` subshell (boron, ``Z = 5``, ``1s^2 2s^2 2p^1``).
The ``2p`` subshell has a capacity of six electrons, and with neon ``(Z = 10, 1s^2 2s^2 2p^6)``, both the ``2p`` subshell and the ``L`` shell ``(n = 2)`` are complete.
"""

# ╔═╡ bd1b4843-4a2d-4333-afdc-1497093dea5f
md"## Outer Electrons: Screening and Optical Transitions"

# ╔═╡ 34c651d1-1b6c-4e37-92cf-352cdb382e7b
md"""
**Remark.**
The electronic configurations of the alkali elements (those in the first column of the periodic table) all show a single ``s`` electron outside an inert gas core.
These elements are very reactive, meaning they can easily give up the ``s`` electron to another element to form a chemical bond.
For example, lithium ``(1s^2 2s^1)`` readily gives up its ``2s`` electron to form the positive ion ``\text{Li}^+``.
"""

# ╔═╡ 9d1e1cb9-3700-48b4-815f-415b464b4d47
md"""
**Remark.**
It may at first seem somewhat surprising that ``\text{Li}`` gives up its electron so easily.
The ionization energy of ``\text{Li}`` is ``5.39 \text{ eV}``.
This is *smaller* than the ionization energy of hydrogen ``(13.6 \text{ eV})``, even though from Eq. 6.38 we might expect that the energies of electrons in atoms should increase in proportion to ``Z^2``.
"""

# ╔═╡ 5cd68dfe-3f48-4af7-b25b-8eb1232016f1
md"""
**Remark.**
We can understand this effect from the diagram of Figure 8.3.
The lithium atom can be roughly characterized by an inner atomic shell consisting of two ``1s`` electrons and a single electron in the ``2s`` subshell.
As was the case in the one-electron atoms we considered in the ``2s`` subshell.
"""

# ╔═╡ f5707e46-7e79-4b68-9b51-ba5d3d4307a9
md"### Optical Transitions"

# ╔═╡ 2bcee4c7-1387-43ce-8c51-a8a9b51500aa
md"## Properties of the Elements"

# ╔═╡ bda2a729-6a04-477f-8b90-5acdf8207be8
md"### Inert Gases"

# ╔═╡ f499a2f2-6745-4b1b-9416-71fd8a3930c8
md"### ``p``-Subshell Elements"

# ╔═╡ e260ab70-eacc-47fe-94c7-89227b830c00
md"### ``s``-Subshell Elements"

# ╔═╡ 15f9007f-11c8-49d0-adfe-216ab70f12e6
md"### Transition Metals"

# ╔═╡ 1277710a-6068-4889-9868-ebc2fa190d13
md"### Lanthanides (Rare Earths)"

# ╔═╡ 6f30091f-a630-448e-ac64-08902c0b4177
md"### Actinides"

# ╔═╡ 0e8b3cad-de54-477f-a62d-2c416fc8a08e
md"## Inner Electrons: Absorption Edges and X Rays"

# ╔═╡ a1301025-25e8-4106-8795-11e8c20d1ef4
md"### X-Ray Transitions"

# ╔═╡ 9e127cd3-3de3-4eda-9064-e4d53dd15a1f
md"### Moseley's Law"

# ╔═╡ 58e0a276-f655-4e7d-8e82-938d8e5e9ae7


# ╔═╡ 91678a4d-d104-46c2-8126-a1f79fc4ca1b
md"## Addition of Angular Momenta"

# ╔═╡ f579c905-cbbe-4c68-ae4e-736a8ddb8c39
md"## Lasers"

# ╔═╡ 6aab7c4d-a3eb-4a4a-9a1c-38060147209e
md"# Molecular Structure"

# ╔═╡ dba40f96-779f-4ab8-8d84-579ec266acb7
md"""
**Remark.**
In this chapter we consider the combination of atoms into molecules, the excited states of molecules, and the ways that molecules can absorb and emit radiation.
From a variety of experiments we learn that the spacing of atoms in molecules is of the order 0.1 nm and that the binding energy of an atom in a molecule is of the order of electron-volts.
This spacing and binding energy are characteristics of electronic orbits, which suggests that the forces that bind molecules together originate with the electrons.
The negatively charged electrons provide the binding that overcomes the Coulomb repulsion of the positively charged nuclei of the atoms in the molecule.
"""

# ╔═╡ 7ffdbf89-2b61-4715-9ef3-b5f063346cd8
md"## The Hydrogen Molecule"

# ╔═╡ aba3e0f9-5c63-4abe-a209-c0291fd62028


# ╔═╡ a19b2c25-29a1-4e0b-a783-7debc83d4f54
md"""
**Remark.**
Let's first look at how the wave functions of the atomic electrons can lead to the binding together of atoms into stable molecules.
"""

# ╔═╡ 53dbb8c7-4950-42d2-ae3c-756271e72911
md"### Binding Energy of ``\text{H}_2^+``"

# ╔═╡ 034cef2b-3a77-41fc-a45f-8f35530a73c0
md"""
**Remark.**
There are two contributions to the energy of the ``\text{H}_2^+`` molecule: the Coulomb repulsion of the two positively charged protons for each other and the attraction of the combination of the two protons for the negatively charged electron.
"""

# ╔═╡ af391063-3b07-47b6-8ba4-5ee4d75be3ca
md"### The ``\text{H}_2`` Molecule"

# ╔═╡ 3171f54c-7c62-489c-8c48-a4c93310beed
md"""
**Remark.**
Suppose we have two hydrogen atoms separated by a very large distance.
Associated with each atom there is a ``1s`` electronic state, at an energy of ``-13.6 \text{ eV}``, because the atoms are so far apart that there is no interaction between the electrons.
As we bring the atoms closer together to form a ``\text{H}_2`` molecule, the electron wave functions begin to overlap, so that the electrons are "shared" between the two atoms.
As we have seen in the previous discussion, this can occur in such a way that the two electron wave functions *add* in the region between the two protons, giving a stable moleculle, or *subtract*, leading to no stable molecule.
The separate, individual electronic states of the atoms now become *molecular* states.
"""

# ╔═╡ 5abbd52d-94cd-499a-b70d-5dd396d073ea
md"## Covalent Bonding in Molecules"

# ╔═╡ 66cd6051-5958-4f19-98f4-d6b0450ae00f
md"""
**Remark.**
The sharing of electrons in a molecule such as ``\text{H}_2`` is the origin of the **covalent** bond; this type of bonding occurs commonly in molecules containing two identical atoms, in which case it is called **homoplanar** or **homonuclear** bonding.
"""

# ╔═╡ 1b0f0a2d-1600-4440-8106-906e2b80de45
md"""
**Remark.**
The essential features of covalent bonding are as follows:

1. As two atoms are brought together, the electrons interact and the separate atomic states and energy levels are transformed into molecular states.

2. In one of the molecular states, the electron wave functions overlap in such a way as to give a *lower* energy than the separated atoms had; this is the bonding state that leads to the formation of stable molecules.

3. The other molecular state (the antibonding state) has an increased energy relative to the separated atoms and does not lead to the formation of stable molecules.

4. The restrictions of the Pauli principle apply to molecular states just as they do to atomic states; each molecular state has a maximum occupancy of two electrons, corresponding to the two different orientations of electron spin.
"""

# ╔═╡ bc28d5ad-4933-45c6-ad2f-85d7adff1e38
md"### ``pp`` Covalent Bonds"

# ╔═╡ 5e037518-8e56-468e-8b0b-fba5bc066ce4
md"""
**Remark.**
Consider what happens when we bring together two ``p``-shell atoms, whose probability distributions are each similar to Figure 9.7.
We assume that the atoms approach along the ``x`` axis, as shown in Figure 9.8.
As the atoms are brought together, the ``p_x`` states overlap (Figure 9.9a), giving (if the two wave functions add) an increased electron charge density between the two nuclei and contributing to the bonding of the atoms in the molecule.
There is a much weaker overlap between the ``p_y`` states (Figure 9.9b) and also between the ``p_z`` states (which are not shown in the figure).
Because the overlap of the ``p_y`` states is not along the line connecting the nuclei, there are components to the binding force that oppose one another, and only a much smaller resultant force acts along the line connecting the nuclei (Figure 9.9b).
In addition, there is less overlap of the ``p_y`` states.
The net result is that the ``p_y`` states (and also the ``p_z`` states) are less effective in binding the molecule than the ``p_x`` states.
"""

# ╔═╡ 61bf657d-640f-4750-8d4a-549489fb8a1d
md"### ``sp`` Molecular Bonds"

# ╔═╡ e3166355-5ec3-497d-afdd-dee7c78be366
md"### ``sp`` Hybrid States"

# ╔═╡ 507e99e9-7f3d-4c1b-80cc-45426b46c756
md"## Ionic Bonding"

# ╔═╡ 1e14384b-de4b-4c40-8d2d-e2dbf936b1dd
md"""
**Remark.**
In covalent bonding, as we have seen, the bonding electrons do not belong to any particular atom in the molecule, but rather are shared among the atoms.
It is also possible to form a molecule that results from the extreme opposite case in which valence electrons are not shared but instead spend all of their time in the neighborhood of only one of the atoms of the molecule.
Consider the ionic molecule NaCL.
Suppose we have a neutral sodium atom ``(1s^2 2s^2 2p^6 3s^1)``, with one ``3s`` electron outside of a filled shell, and a neutral chlorine atom ``(1s^2 2s^2 2p^6 3s^2 3p^5)``, which lacks one electron from a filled ``3p`` shell.
To remove the outer electron from Na requires ``5.14 \text{ eV}``, the **ionization energy** of ``\text{Na}``, and we are left with a positively charged ``\text{Na}^+`` ion.
If we then attach that electron to the ``\text{Cl}`` atom, creating a negatively charged ``\text{Cl}^-`` ion, the energy *released* is ``3.61 \text{ eV}``, the **electron affinity** of ``\text{Cl}``.
The energy is released because the filled ``3p`` shell is an especially stable configuration, which is energetically very favorable.
Thus, if we borrow ``5.14 \text{ eV}`` to ionize the ``\text{Na}``, we get back immediately ``3.61 \text{ eV}`` by attaching the electron to the ``\text{Cl}``.
We can get back the remaining ``1.53 \text{ eV} (= 5.14 \text{ eV} - 3.61 \text{ eV})`` by moving the ``\text{Na}^+`` and ``\text{Cl}^-`` close enough together that their Coulomb potential energy is ``-1.53 \text{ eV}``.
The separation distance corresponding to this potential energy is found from the potential energy equation, ``U = q_1 q_2 / 4\pi \epsilon_0 R``:

$R = -\frac{e^2}{4 \pi \epsilon_0} \frac{1}{U} = \frac{1.44 \text{ eV} ⋅ \text{nm}}{1.53 \text{ eV}} = 0.941 \text{ nm}$

That is, as long as the ``\text{Cl}^-`` and ``\text{Na}^+`` are closer together than ``0.941 \text{ nm}``, the Coulomb attraction will supply enough energy to overcome the difference between the ionization energy of ``\text{Na}`` and the electron affinity of ``\text{Cl}``.
Put another way, ``\text{Na}^+`` and ``\text{cl}^-`` *ions* separated by less than ``0.941 \text{ nm}`` have a more stable configuration than neutral ``\text{Na}`` and ``\text{Cl}`` *atoms*.
"""

# ╔═╡ 570b2331-14a7-44a4-99d8-c08434cb8b9a
md"""
**Remark.**
An empirical way to characterize the relative ionic character of a molecule is based on the **electric dipole moment** of the molecule.
An electric dipole, as illustrated in Figure 9.20, consists of two charges ``+q`` and ``-q`` separated by a distance ``r``.
The electric dipole moment of this arrangement is defined as

$p = qr \tag{9.4}$

In a purely covalent molecule, there is no excess charge on either atom, so in effect ``q = 0`` and the dipole moment is expected to be zero.
"""

# ╔═╡ ed65c72c-7217-4095-a872-d07fc56066f2
md"## Molecular Vibrations"

# ╔═╡ 18a347d7-3691-4ab7-bba9-74a8c21f0ff8
md"""
**Remark.**
So far we have considered the properties of molecules based on the configurations of their electrons.
The electrons largely determine the strength of the molecular bonds and their geometry.
Molecules can absorb or emit energy by changing the configuration of their electrons, just as atoms can do.
However, molecules can also absorb or emit energy, generally in much smaller quantities, in other ways.
One way is for the atoms in a molecule to vibrate about their equilibrium positions, just like two objects connected by a spring.
Another way is for the atoms to rotate about the center of mass of the molecule.
We consider molecular vibrations in this section and rotations in the next section.
The vibrational and rotational energies are often unique to particular molecules and can serve as a kind of "fingerprint" in identifying simple molecules.
"""

# ╔═╡ 5a2bd524-31b2-4538-b536-acb1d484ca51
md"### Vibrations in Quantum Mechanics"

# ╔═╡ 00bc21d1-f0eb-4340-bdc8-fe323cdad464
md"""
**Remark.**
A classical vibrating system such as an object of mass ``m`` on a spring of force constant ``k`` has an oscillation frequency ``\omega = \sqrt{k / m}``.
(here we are dealing with the angular or circular frequency ``\omega = 2\pi f``, measured in radians/second.)
The oscillator has potential energy ``U = \frac{1}{2} kx^2``, and with maximum amplitude ``x_m`` its (constant) total energy is ``E = \frac{1}{2} k{x_m}^2``.
For the classical oscillator, there are no restrictions on the total energy or the oscillator frequency---any value of the energy is allowed, and the frequency and energy can be varied independently.
"""

# ╔═╡ 049295c2-f35c-4841-afd2-bedd2490a501
md"""
**Remark.**
As we learned in Chapter 5, the quantum oscillator behaves very differently.
Only certain values of the energy are allowed.
The allowed energy values, for an oscillator that can move in only one dimension, are

$E_N = \left(N + \frac{1}{2}\right) h \omega = \left(N + \frac{1}{2}\right) hf \qquad N = 0,1,2,3,… \tag{9.6}$

where ``\omega`` is the classical oscillator frequency.
The ground-state energy is ``\frac{1}{2} h\omega = \frac{1}{2} hf``, and the excited states are equally spaced with energy differences of ``h \omega = hf``.
Figure 9.22 shows the excited states of a one-dimensional quantum oscillator.
Note that the ground state does not have ``E = 0``; this is a consequence of the uncertainty principle--an oscillator with ``E = 0`` would have a displacement of exactly zero and also a momentum of exactly zero, which would violate the position--momentum form of the uncertainty principle.
The minimum energy of ``\frac{1}{2} hf`` is often called the **zero-point energy**, and it can have observable consequences (see Problem 36).
"""

# ╔═╡ 08cbf140-ab1e-4bdb-8105-7fd5af943c6d
md"""
**Remark.**
The oscillator can emit electromagnetic radiation in jumps to lower states, or it can absorb radiation in jumps to higher states.
However, the jumps cannot occur in arbitrary steps.
**The allowed transitions are those that change ``N`` by one unit.**
This restriction is called a **selection rule** and applies only to transitions that occur through the emission or absorption of electromagnetic radiation.

$\text{Vibrational selection rule:} \qquad ΔN = ±1 \tag{9.7}$

Other causes of jumps, such as collisions, are not subject to this restriction.
"""

# ╔═╡ 588a57f4-9ffd-4441-b3c8-b1e18dde6976
md"### Vibrating Diatomic Molecules"

# ╔═╡ f618e856-69c0-49ab-b58d-9162da7cfd43
md"""
**Remark.**
A molecule with more than two atoms can vibrate in many different ways, so for simplicity we'll consider only molecules with two atoms.
Figure 9.23 shows a representation of the two atoms in a diatomic molecule, which oscillate so that the center of mass remains fixed.
"""

# ╔═╡ 55c9a3e8-4856-44aa-ba5b-5f9ea3a5d16f
md"""
**Remark.**
To calculate the frequencies of the emitted transitions, we must know the mass ``m`` and the effective force constant ``k``.
Because both atoms in the molecule are participating in the vibration, the vibrating mass is not the mass of either atom alone but instead is a combination of both masses.
Let the masses of the two atombs be ``m_1`` and ``m_2``.
As they both pass through the equilbrium positions, the total energy of the molcule is only kinetic energy, so

$E_T = \frac{1}{2} m_1 {v_1}^2 + \frac{1}{2} m_2 {v_2}^2 = \frac{{p_1}^2}{2m_1} + \frac{{p_2}^2}{2m_2} \tag{9.8}$
"""

# ╔═╡ bbc01caa-e4e0-4995-b40d-7da9c6c1efc0
md"## Molecular Rotations"

# ╔═╡ 19d4d7dd-9078-4e9f-92b7-52e8b172f8cf
md"### Rotations in Quantum Mechanics"

# ╔═╡ 5e61d669-bb73-41f8-a3b6-c8112cedddb5
md"### Rotating Diatomic Molecules"

# ╔═╡ 00dcb4c0-efde-4a6d-af1e-b8d1b7bc7e6c
md"## Molecular Spectra"

# ╔═╡ b6145bdc-1950-4f60-b405-2d2844139a69
md"# Statistical Physics"

# ╔═╡ d49a9ca8-8649-434e-b900-e98290f91d92
md"""
**Remark.**
Many physics experiments are analyzed as if the interactions take place in single isolated events.
The emission of light from a gas at low density, Rutherford scattering, and Compton scattering are examples of experiments that can be analyzed this way.
On the other hand, consider the addition of energy to a gas in a container by raising its temperature.
We know how the average energy of the atoms will change, but we can't analyze the behavior of individual atoms.
"""

# ╔═╡ a9f902a4-79d2-494e-9ac4-b015ddfeeee1
md"""
**Remark.**
This sharing of energy among the many parts of a system cannot be simply discussed in terms of single isolated events.
The analysis of such **cooperative** phenomena requires the techniques of **statistical physics**, in which we are concerned not with the calculating the *exact* outcome of single isolated events, but with predicting the *average* outcome of many cooperative events, based on the **statistical distribution** of the possible outcomes.
"""

# ╔═╡ dfaf192d-7984-4bc5-80b7-f73971233f1f
md"""
**Remark.**
In this chapter, we discuss the laws of statistical physics, and we illustrate some systems that are governed by *classical* statistics and some others that require *quantum* statistics.
These statistical concepts are necessary to understsand the bulk properties of matter, which are discussed briefly in this chapter and more extensively in Chapter 11.
"""

# ╔═╡ 478ef33c-c405-4e9e-bd8d-a429617d490a
md"## Statistical Analysis"

# ╔═╡ c25f4993-2694-4d7b-9b44-5f0f7cf50192
md"""
**Remark.**
When we pass an electric current through a tube containing a low-density gas, such as mercury vapor, light is emitted.
An electron pushed to an excited state of an atom returns to the ground state with the emission of one or more photons.
In the case of mercury vapor, we see individual photons corresponding to green light, blue light, orange light, and so forth.
Each photon has a definite wavelength and corresponds to a transition between two levels of definite energies.
Aside from the effect of the uncertainty principle, the wavelengths are "sharp."
If we analyze the light with a high-resolution device such as a diffraction grating, the resulting spectrum (Figure 10.1) shows the sharpness of the spectral lines.
We can understand this spectrum based on our knowledge of the excited states of a single mercury atom; as long as the density of the gas is low, the number of atoms in the tube does not affect the observed spectrum.
We treat the light emitted by this collection of atoms as if the individual emissions occur singly and in isolation.
"""

# ╔═╡ 1a39bac9-68da-4c49-9b22-d1b8aff801ff
md"""
**Remark.**
Consider now the contrasting case of the tungsten filament of an ordinary incandescent light bulb.
Figure 10.2 shows the spectrum in this case, which has the continuous distribution of wavelengths that we call "white" light.
All wavelengths are present, not just a finite number.
Isolated tungsten atoms, like those of mercury, emit light at a finite number of discrete, well-defined wavelengths, but in a solid tungsten filament the cooperative effect of other nearby atoms changes the energy levels and makes the spectrum continuous.
Even though the mercury vapor and the tungsten filament may contain roughly the same number of atoms, in one case we can ignore the prescence of the other atoms, while in the other case we must consider the mutual influence of many or all of the atoms in the sample.
"""

# ╔═╡ 14742c4b-6a32-4534-9b98-30e40248697f
md"""
**Remark.**
There are two ways to approach the analysis of a complex system.
The first is to specify the set of **microscopic** properties, such as the position and velocity of each atom.
For even a small system containing perhaps ``10^{15}`` atoms, this is obviously a hopeless task.
The second way is to recognize that such a description is not only impossibly complex, it is also unnecessary because it provides far more detail than is useful.
We can understand and predict the behavior of systems containing many particles in terms of a few **macroscopic** properties, such as the temperature or the pressure of a gas.
The development of relationships between microscopic and macroscopic properties was one of the great triumphs of 19th-century physics.
In the case of a gas confined to a container, for example, kinetic theory gives the relationship between the microscopic motion of the molecules and the macroscopic temperature and pressure.
"""

# ╔═╡ 955374cc-9cad-4ce2-acd5-b43cf50dc42d
md"""
**Remark.**
More generally, we can make a *statistical* analysis by counting the number of different arrangements of the microscopic properties of a system.
For example, consider the distribution of 2 units of energy to a "gas" of four identical but distinguishable particles.
Each particle can acquire energy only in integral units (in analogy with the simple harmonic oscillator).
How can these four particles share the 2 units of energy?
One way is for one particle to have the entire 2 units.
There are four different ways to accomplish this distribution, corresponding to choosing each of the four particles to take the 2 units of energy.
Another way to distribute the energy is to give two different particles 1 unit each.
There are six ways to accomplish this distribution (Table 10.1).
Each possible energy distribution is called a **macrostate**---a state of the system that can be observed through the measurement of a macroscopic property such as the temperature.
In our simple system, there are two macrostates: macrostate ``A`` in which one particle has 2 units of energy, and macrostate ``B`` in which two particles each have 1 unit of energy.
The different arrangements of microscopic variables corresponding to a single macrostate are called **microstates**.
In our system, there are four microstates corresponding to macrostate ``A`` and six microstates corresponding to macrostate ``B``.
The number of microstates corresponding to a given macrostate is called the **multiplicity** ``W``.
For our system, ``W_A = 4`` and ``W_B = 6``.
"""

# ╔═╡ 35817ffd-ab40-4f3f-a513-c3118b125209
md"## Classical and Quantum Statistics"

# ╔═╡ 03dbe0eb-8789-4b6e-bcf2-e6ff71826a15
md"""
**Example.**
To illustrate the differences between classical and quantum statistics, we first consider another example similar to the one of the previous section: the distribution of a total of six energy units to a collection of five identical but distinguishable oscillator-like particles, each of which can absorb energy in equal increments of 1 unit.
Instead of a tabulation similar to Table 10.1, the energy distribution is illustrated in Figure 10.3.
There are 10 macrostates labeled ``A`` through ``J``.
Each dot indicates a particle with a certain energy; for instance, in macrostate ``B`` there are three particles with energy ``E = 0``, one with ``E = 1``, and one with ``E = 5``.
The multiplicity of each macrostate (the number of microstates) can be worked out in tabular form, or it can be calculated directly using standard methods from permutation theory:

$W = \frac{N!}{{N_0}! {N_1}! {N_2}! {N_3}! {N_4}! {N_5}! {N_6}!} \tag{10.1}$

where ``N`` is the total number of particles and ``N_E`` is the number with energy ``E``.
"""

# ╔═╡ 73cef4b6-94da-4acb-bd6d-e32e356f6be2
md"""
**Remark.**
The results of this calculation are an example of a more general approach that gives the total number of microstates when ``N`` distinguishable particles share ``Q`` integral units of energy:

$W_{\text{total}} = \frac{(N + Q - 1)!}{Q! (N - 1)!} \tag{10.2}$

so for our case we expect the total number of microstates to be ``10! / 6! 4! = 210``, in agreement with the total of the values of ``W`` given in Figure 10.3.
"""

# ╔═╡ 11e04c39-2620-4b30-9d4b-02a85821485a
md"""
**Remark.**
As we did previously, let us calculate the probability to measure any particular value of the energy of a particle.
This can be done by considering a collection of all 210 possible microstates and counting the number of times each value of the energy appears.
Symbolically,

$p(E) = \frac{\sum_i N_i W_i}{N \sum_i W_i} \tag{10.3}$

where ``N_i`` represents the number of particles with energy ``E`` in each particular macrostate.
The sums are carried out over all of the macrostates (10 in the case of Figure 10.3).
"""

# ╔═╡ d7d32dad-2c82-4556-b884-52e3661e6f44
md"""
**Remark.**
Table 10.2 gives the probabilities associated with measuring each of the possible energies.
Note that the probability decreases with increasing energy.
The probabilities are plotted in Figure 10.4.
The smooth curve is an exponential of the form ``p ∝ e^{-\beta E}``, where ``\beta`` is a constant chosen to fit the data.
You can see that the decrease of ``p`` with increasing ``E`` is approximately exponential.
"""

# ╔═╡ 95a16734-31c3-46d6-aa0f-81e00e4b1742
md"""
**Remark.**
This example represents the application of classical statistics.
Although real systems composed of many particles have too many macrostates and microstates to tabulate, we can analyze their properties by determining the distribution function that describes how the energy is shared among the parts of a system.
Later in this chapter, we discuss the application of classical statistics to the distribution of energies of the molecules of a gas.
Our experience with this simple example serves as a useful guide: The true classical distribution function turns out to be an exponential of the form ``e^{-\beta E}``.
However, there are other phenomena, such as the electrical conductivity and heat capacity of metals, the behavior of liquid helium, and thermal radiation, which cannot be successfully analyzed using classical statistics.
For these phenomena, we must use the methods of **quantum statistics**.
"""

# ╔═╡ ce2714cd-51c5-42ee-b9eb-1e21c7a08a68
md"""
**Remark.**
Why should classical statistics differ from quantum statistics?
Two of the assumptions made in the example of this section are inconsistent with basic principles of quantum physics:

1. **In quantum physics, identical particles must be treated as indistinguishable**.
   In calculating the multiplicty of the macrostates, we assumed the classical particles to be identical but distinguishable.
   That is, the particles are numbered 1 through 5 (or carry other distinguishing marks).
   In macrostate ``A``, for instance, it is possible to distinguish the microstate in which particle 1 has ``E = 6`` from the microstate in which particle 2 has ``E = 6``, so we count each of these as separate microstates in determining the multiplicity of 5.
   If we regard the particles as indistinguishable quantum particles (such as electrons or photons), we can't tell the difference between these microstates.
   If we can't *observe* the five microstates of ``A`` as separate arrangements, we can't *count* them as separate arrangements.
   For identical quantum particles, the multiplicty of each macrostate becomes exactly 1.

2. **Quantum mechanics can impose limits on the maximum number of particles that can be assigned to any particular state**.
   For example, suppose that the particles in our example are electrons.
   The Pauli principle forbids two electrons in a system from being in the same state of motion (or having the same set of quantum numbers).
   Electrons can have spin up or spin down, so if there are no other quantum numbers associated with these energy states, there can be no more than two electrons in any energy state.
   For electrons, macrostates ``A,B,C,F,G,H,`` and ``J`` are forbidden, because in each one there are more than two particles in the same energy state.
"""

# ╔═╡ f8d487f5-9c1d-4187-9224-02329118ed85
md"## The Density of States"

# ╔═╡ 3fbd8ccd-2df9-4b1c-ae33-f2d5ece4d46a
md"""
**Remark.**
We have seen in the previous sections how the multiplicity of a state determines the probability to find a system in that state.
We are now going to extend that concept to more complicated systems.
"""

# ╔═╡ a3370749-5f0b-4839-ac0a-e9bc66c99ffd
md"""
**Remark.**
Our ultimate goal is to calculate the number of particles with any given value of the energy ``E``.
This number is in part determined by the distribution function ``f(E)``.
However, the calculation must also take into account that there may be many states available at the energy ``E``.
This additional factor is related to the multiplicity of microstates that we have considered in systems with small numbers of particles.
In effect, to find the number of occupied states, we combine the number of available states with the probability that each state is occupied.
"""

# ╔═╡ 0e935059-28f2-4bbd-8ec7-5109fec17b95
md"""
**Remark.**
The degeneracy factor and the distribution function can be combined to enable us to calculate the number of particles in the system have a certain value of discrete energy ``E_n``:

$N_n = d_n f(E_n) \tag{10.4}$

where ``d_n`` is the degeneracy of the level at energy ``E_n``.
The distribution function ``f(E_n)`` is properly normalized to ensure that the total number of particles in our system is ``N``:

$N = \sum N_n = \sum d_n f(E_n) \tag{10.5}$

where the sum is carried out over all the states (although often in practice the distribution function ``f`` decreases so rapidly for increasing ``E`` that it is sufficiently accurate to include only a few terms in the summation).
"""

# ╔═╡ 8c6423c3-2371-4036-bdc4-2db7b6e0a4e4
md"""
**Remark.**
For this analysis we treat ``E`` as a continuous variable.
(Of course, we know the states are discrete, but there are so many of them and they are so close together that this is really a very good approximation.)
We define the **density of states** ``g(E)`` so that ``g(E) \,dE`` is the number of available states per unit volume in the interval ``dE`` at energy ``E`` (or between ``E`` and ``E + dE``).
The number of **populated** states in that interval is determined by the density of states factor and the distribution function:

$dN = N(E) \,dE = V g(E) f(E) \,dE \tag{10.6}$

where ``V`` is the volume of the system (which must be included because the density of states is the number of states *per unit volume*).
Again we'll assume that the distribution function is properly normalized so that the number of particles in the system is fixed at ``N``:

$N = ∫ dN = ∫_0^{∞} N(E) \,dE = V ∫_0^∞ g(E) f(E) \,dE \tag{10.7}$

Be sure to remember the difference between ``N`` and ``N(E)``.
The symbol ``N`` represents the total number of particles in the system, while ``N(E)`` represents the number *per unit energy interval* at energy ``E``.
That is, ``N`` is a pure number, while ``N(E)`` is a function of ``E`` and has units of ``(\text{energy})^{-1}``.
"""

# ╔═╡ 525a3061-a116-4f05-b90c-5cc81084c6c6
md"### Density of States in a Gas of Particles"

# ╔═╡ 78699f4b-e7a9-44cc-965b-d5fb3e136aa7
md"""
**Remark.**
We'll first discuss the density of states in a "gas" of particles, such as electrons or molecules.
This turns out to be a useful concept in numerous applications.
For example, the space around a hot metal filament is filled with a cloud of emitted electrons.
In a solid metal conductor such as copper, each atom contributes one loosely bound electron to the electric current; because these electrons belong to the material as a whole rather than to individual atoms, it is appropriate to treat the electrons as a gas in the metal.
The same calculation applies, as we shall see, to an ordinary molecular gas such as nitrogen.
"""

# ╔═╡ 0149057c-93b2-4fe0-adb5-f4ae5969bff0
md"### Density of States in a Gas of Photons"

# ╔═╡ 1e92137a-d3f9-488d-9c33-3e4f277ddd6d
md"""
**Remark.**
Let's consider now a gas of photons.
Imagine a cavity such as we discussed in Section 3.3: a hollow metal box of volume ``V`` with walls at temperature ``T``.
The box (in the form of a cube with each side of length ``L``) is filled with photons having a range of energies from ``0`` to ``∞`` (with an equivalent range of frequencies or wavelengths).
"""

# ╔═╡ d6946486-1a5b-4ba2-87a6-587e95ca3e9c
md"## The Maxwell-Boltzmann Distribution"

# ╔═╡ 836b1953-4dae-4731-a3c2-013b6d481dea
md"""
**Remark.**
Next we must consider the possible forms of the distribution function ``f(E)``, which describes how the available states at energy ``E`` are populated.
We'll begin by considering a classical system, in which the density is relatively low.
In practice, this means that the average spacing between the particles is large compared with their de Broglie wavelength.
The individual particles may have quantized energy levels, such as the excited states of atoms or molecules, but the overall system does not show quantum behavior.
This limit works perfectly well to describe gases under ordinary conditions of temperature and pressure.
"""

# ╔═╡ ae055a7f-9fe3-4482-a88a-13327962d724
md"""
**Definition.**
The distribution function that applies in this case is the **Maxwell-Boltzmann distribution**, which is given by

$f_{\text{MB}}(E) = A^{-1} e^{-E/kT} \tag{10.16}$

for a system in thermal equilibrium at temperature ``T``.
(Here ``k`` is the Boltzmann constant.)
As the energy increases, the occupation probability drops off exponentially.
We have included a normalization constant ``A^{-1}``, which helps ensure that the total number of particles in the system is fixed at ``N``.
(The reason for writing the normalization constant as ``A^{-1}`` rather than simply ``A`` will become apparent later in this chapter.)
"""

# ╔═╡ 0155a961-5ea6-4924-9c16-b401896c9ac0
md"""
**Remark.**
Let's apply the Maxwell--Boltzmann distribution to find the number of molecules having energy between ``E`` and ``E + dE`` in a gas at temperature ``T`` that fills a container of volume ``V`` with a total of ``N`` molecules.
From Eq. 10.5, we have (using thte density of states from Eq. 10.12)

$\begin{align*}
dn &= N(E) \,dE = Vg(E) f_{\text{MB}}(E) \,dE \\
&= A^{-1} \frac{4\pi V(2s + 1) \sqrt{2} (mc^2)^{3/2}}{(hc)^3} E^{1/2} e^{-E/kT} dE \tag{10.17}
\end{align*}$

The normalization constant is determined by the condition that the total number of molecules, obtained as in Eq. 10.7 by integrating over all energies, must be ``N``:

$\begin{align*}
N &= ∫ dN = ∫_0^∞ N(E) \,dE \\
&= A^{-1} \frac{4\pi V(2s + 1) \sqrt{2} (mc^2)^{3/2}}{(hc)^3} ∫_0^∞ E^{1/2} e^{-E/kT} dE \tag{10.18}
\end{align*}$

The definite integral is a standard form, and carrying out the integration gives ``A^{-1} = N(hc)^3 / V(2s + 1)(2\pi mc^2 kT)^{3/2}``.
We obtain for the energy distribution of gas molecules

$N(E) = V g(E) f_{\text{MB}}(E) = \frac{2N}{\sqrt{\pi} (kT)^{3/2}} E^{1/2} e^{-E/kT} \tag{10.19}$

which is identical to Eq. 1.23.
This equation is the **Maxwell--Boltzmann energy distribution**.
"""

# ╔═╡ 95ea0a3c-2da6-4646-9c0f-3e3c77556f5e
md"### The Distribution of Molecular Speeds"

# ╔═╡ b3c4dc5f-8970-44a3-b8dd-dfe106652553
md"""
**Remark.**
From an experimental standpoint, it is often easier to measure the distribution of speeeds than the distribution of energies.
"""

# ╔═╡ a1a6bd50-ea93-46cb-9cbe-5e77f1fd3e81
md"### Doppler Broadening of Spectral Lines"

# ╔═╡ f8a9100f-e225-4e97-9b5e-dc1a91bb1e33
md"""
**Remark.**
Atoms at rest are expected to emit very sharp, narrow spectral lines; this "natural line width" is usually determined by the uncertainty principle ``ΔE Δt ∼ \hbar``, which makes the energy of the atomic excited states somewhat uncertain due to their finite lifetimes.
Because the atoms of a gas are in motion, the frequency or wavelength of the light emitted by the atoms often can be Doppler shifted (see Eq. 2.22).
Even if the container of gas is at rest relative to the observer, some of the molecules are moving toward the observer and will show an increased frequency, while others are moving away and will show a decreased frequency.
As a result of the thermal motion, the spectral lines are broadened and show a width that can be much larger than the natural width.
"""

# ╔═╡ c9366439-4fc2-401b-a4c0-935bc8896364
md"## Quantum Statistics"

# ╔═╡ ae4bd2e2-1ec3-4cb5-b47f-393407ea1e19
md"""
**Remark.**
As we discussed in Section 10.2, the distribution functions for indistinguishable particles of quantum physics are different from those of classical physics.
Because of the unusual behavior of quantum systems, we must have separate distribution functions for particles that do not obey the Pauli principle (such as photons).
We will not derive these distribution functions, but merely state them and discuss some of their properties and their applications.
"""

# ╔═╡ 6532c7f0-4578-4347-9310-0cde17aaebe4
md"""
**Remark.**
Particles that do not obey the Pauli principle are those with integral spins (0, 1, 2, …, in units of ``\hbar``).
Their statistical properties are determined by the **Bose--Einstein distribution function**:

$f_{\text{BE}}(E) = \frac{1}{A_{\text{BE}} e^{E / kT} - 1} \tag{10.31}$

Particles described by this distribution are known collectively as **bosons**.
The constant ``A_{\text{BE}}`` serves as a kind of normalization constant, in analogy with the factor ``A`` in the Maxwell--Boltzmann distribution (and the comparison shows why we included this factor as ``A^{-1}`` in Eq. 10.16).
"""

# ╔═╡ 59917cd4-e468-4d67-9fca-7221bb073c95
md"""
**Remark.**
Particles of half-integral spin ``\left(\frac{1}{2}, \frac{3}{2}, …\right)`` that obey the Pauli principle, such as electrons or protons, are described by the **Fermi--Dirac distribution function**:

$f_{\text{FD}}(E) = \frac{1}{A_{\text{FD}} e^{E / kT} + 1} \tag{10.32}$

These particles are known collectively as **fermions**.
"""

# ╔═╡ 6bb5e6d7-0085-477f-b898-77e746dc5d51
md"""
**Remark.**
How the minor change in sign in the denominator between ``f_{\text{BE}}`` and ``f_{\text{FD}}`` gives such a radical change in the form of the distribution function is not immediately obvious, and to show the differences we need to know more about the normalization constant ``A_{\text{FD}}``, which is not a constant but depends on ``T``.
For the Bose--Einstein distribution, in most cases of practical interest ``A_{\text{BE}}`` is ``e^{E / kT}`` dominates the temperature dependence.
However, for the Fermi--Dirac distribution, ``A_{\text{FD}}`` is strongly dependent on ``T``, and the dependence is usually approximately exponential, so ``A_{\text{FD}}`` is written as

$A_{\text{FD}} = e^{-E_F / kT} \tag{10.33}$

and the Fermi--Dirac distribution becomes

$f_{\text{FD}} = \frac{1}{e^{(E - E_F) / kT} + 1} \tag{10.34}$

where ``E_F`` is called the **Fermi energy**.
"""

# ╔═╡ 830ce9d2-479d-4d3f-bd2a-228ade9b34f2
md"""
**Remark.**
Let us look qualitatively at the differences between ``f_{\text{BE}}`` and ``f_{\text{FD}}`` at low temperatures.
For the Bose--Einstein distribution, assuming for the moment ``A_{\text{BE}} = 1``, in the limit of small ``T`` the exponential factor becomes large for large ``E``, and so ``f_{\text{BE}} → 0`` for states with large energies.
The only energy levels that have any real chance of being populated are those with ``E = 0``, for which the exponential factor approaches 1, the denominator becomes very small, and ``f_{\text{BE}} → ∞``.
Thus when ``T`` is small, all of the particles in the system try to occupy the lowest energy state.
This effect is known as "Bose--Einstein condensations," and we will see that it has some rather startling consequences.
"""

# ╔═╡ 8aa61b93-3402-4d8d-a21c-c91e45bce8fb
md"""
**Remark.**
This effect is not possible for fermions, such as electrons.
We know that the electrons in an atom, for example, do not all occupy the lowest energy state, no matter what the temperature.
Let us see how the Fermi--Dirac distribution function prevents this.
"""

# ╔═╡ 27d89f41-9370-4c40-9f69-77969f5c8840
md"### Limit of Classical Statistics"

# ╔═╡ bb645bd5-9889-436e-af33-72662003cad4
md"""
**Remark.**
Under what circumstances can we treat a system classically rather than according to the laws of quantum mechanics?
The quantum behavior can be neglected if the de Broglie wavelength of a particle is much smaller than the physical separation between the particles.
That is, no particle lies within the wave packet of its neighbors.
If we take ``kT`` as a representative measure of the kinetic energy of a particle in a collection of particles as temperature ``T``, then with ``p^2 / 2m = kT`` we obtain the de Broglie wavelength as

$\lambda = \frac{h}{p} = \frac{h}{\sqrt{2mkT}} = \frac{hc}{\sqrt{2mc^2 kT}} \tag{10.35}$

The density ``N / V`` gives the number of particles per unit volume, and so the average spacing ``d`` between particles is about ``(N / V)^{-1/3}``.
The condition for the applicability of classical physics is then ``\lambda ≪ d`` or ``\lambda / d ≪ 1``, which gives

$\frac{\lambda}{d} = \frac{hc/\sqrt{2mc^2 kT}}{(N/V)^{-1/3}} = \frac{hc(N/V)^{1/3}}{\sqrt{2mc^2 kT}} ≪ 1 \tag{10.36}$

The normalization constant we found from Eq. 10.18 for the Maxwell--Boltzmann distribution can be written as

$A^{-1} = \frac{N(hc)^3}{V(2s + 1)(2\pi mc^2 kT)^{3/2}} = \frac{1}{(2s + 1)\pi^{3/2}} \left[\frac{hc(N/V)^{1/3}}{\sqrt{2mc^2kT}}\right]^3 \tag{10.37}$

The quantity in brackets on the right is just ``\lambda / d`` from Eq. 10.36.
Apart from some small factors of order unity, Eq. 10.36 is equivalent to requiring that the normalization constant of the Maxwell--Boltzmann distribution is small: ``A^{-1} ≪ 1``, or that the number of **occupied** states in the gas is much smaller than the number of **available** states.
"""

# ╔═╡ 62e48db9-0ac8-4e5a-bad8-f8c52a07a9b6
md"## Applications of Bose-Einstein Statistics"

# ╔═╡ f75a3bbd-2b36-4f12-94c7-b7d0c82d6d6b
md"### Thermal Radiation"

# ╔═╡ 22c96cbc-aaa3-4341-8511-02dab9d4b6d8
md"""
**Remark.**
As we did in our discussion of thermal radiation in Chapter 3, we consider a cavity filled with electromagnetic radiation.
For this calculation, we assume that the box is filled with a "gas" of photons.
Photons have spin 1, so they are bosons and obey Bose--Einstein statistics.
"""

# ╔═╡ fad7ff5a-ba68-4bde-b841-3fbe07d2520f
md"### Liquid Helium"

# ╔═╡ d2b1be95-dff7-48e9-a5c3-82c02e478831
md"""
**Remark.**
One of the most remarkable substances we can study in the laboratory is liquid helium.
"""

# ╔═╡ fa2d61d6-743e-4b95-ab64-1f5eb2b97104
md"### Bose--Einstein Condensation"

# ╔═╡ 4feded32-c1b3-49f8-b914-165f10347297
md"""
**Remark.**
Let's consider the expression for the total number of particles of a system of bosons in a volume ``V``.
We can treat the bosons as a quantum system similar to the electron gas---particles with wave functions that vanish at the boundaries of the volume.
The density of states is then given by Eq. 10.12 (with the spin-dependent factor ``2s + 1`` set equal to 1 because all the spins are aligned by the magnetic field at low temperature), and the total numbers of particles in the volume ``V`` is then

$\begin{align*}
N &= ∫ dN = ∫_0^∞ N(E) \,dE = ∫_0^∞ V g(E) f_{\text{BE}}(E) \,dE \\
&= \frac{4\pi \sqrt{2} V m^{3/2}}{h^3} ∫_0^∞ \frac{E^{1/2}}{A_{\text{BE}} e^{E/kT} - 1} \tag{10.43}
\end{align*}$

Previously our approach to an equation of this type was to evaluate the integral and solve the resulting equation for the constant ``A``, which provides the normalization to make the total number of particles equal to ``N``.
That procedure poses some difficulties for this integral, so we'll try a different approach: we'll see what Eq. 10.43 tells us about the *maximum* number of particles that can be accommodated in the volume ``V``.
Because ``A_{\text{BE}}`` is a pure number that is always ``≥ +1`` (otherwise the denominator of ``f_{\text{BE}}`` could become negative, which makes no sense for a distribution function), we can find this maximum value by making the denominator in the integral as small as possible, that is, by putting ``A_{\text{BE}} = 1``.
The resulting integral has the value ``1.306\pi^{1/2} (kT)^{3/2}``, and the maximum number of particles is then

$N = 2.612 V \left(\frac{2\pi m k T}{h^2}\right)^{3/2} \tag{10.44}$

It appears that we can violate this maximum limit by either (1) putting more particles into the volume ``V`` than Eq. 10.44 permits or (2) lowering the temperature (and thus reducing the maximum ``N``) so that the actual number of particles in the system becomes greater than the maximum limit given by Eq. 10.44 for that temperature.
How can we still refer to a "maximum" number of particles in these cases?
"""

# ╔═╡ 65f38da8-0c20-4369-817f-90559fe6f33e
md"""
**Remark.**
To resolve this apparent difficulty, we must look more carefully at what happens for ``E = 0``.
Clearly, the Bose--Einstein distribution function ``f_{\text{BE}}(E)`` becomes infinite for ``E = 0`` when ``A_{\text{BE}} = 1``.
The integral in Eq. 10.43 doesn't blow up at ``E = 0`` because the numerator ``E^{1/2}`` is zero at ``E = 0``.
But there is something very wrong with that restriction, which requires that the density of states (Eq. 10.12) be zero at ``E = 0``.
Our system must have a ground state, so there is at least one state at ``E = 0``.
This contradicts the calculation which puts ``g(0) = 0``.
"""

# ╔═╡ 718a0c93-ca8a-4247-827e-7d96096a6184
md"""
**Remark.**
If we try to put more particles into the system than the maximum given by Eq. 10.44 (or equivalently if we try to reduce the temperature below its limit for a given N)
"""

# ╔═╡ fcd87150-bd4b-4e5c-ba3e-a602511d3143
md"## Applications of Fermi--Dirac Statistics"

# ╔═╡ 96501456-4230-48eb-a85d-c33d50fa4842
md"""
**Remark.**
Now let's consider some applications of Fermi--Dirac statistics.
We'll discuss several different systems consisting of spin-½ particles: electrons in metals, electrons and neutrons in stars, and ``{}^3\text{He}`` in liquid ``{}^3\text{He}``.
"""

# ╔═╡ 4922060a-fcbd-4933-add6-b6aec2af16b7
md"### The Free Electron Model of Metals"

# ╔═╡ 6a33f58e-a491-4b81-865f-e99028f3d151
md"### White Dwarf Stars"

# ╔═╡ bba83659-e12c-4de6-8595-b27668e63cc1
md"### The Heat Capacity of Dilute Solutions of ³He in ⁴He"

# ╔═╡ cdabf544-67c3-4f5f-bc2a-b3112d618801
md"# Solid-State Physics"

# ╔═╡ b2ce72ba-963d-4983-a7bc-ae81d7c454fc
md"""
**Remark.**
In this chapter, we study the way atoms or molecules combine to make solids.
In particular, we discuss how the principles of quantum mechanics are essential in understanding the properties of solids.
"""

# ╔═╡ 318d2076-2317-4228-bf3d-e9637ceae90a
md"""
**Remark.**
At first thought, there seem to be so many different solids that to classify them and form some general rules for their properties would appear to be a hopeless task.
A book you are reading is made of paper and cloth, held together by a glue made from resins, once liquid and now solid.
Your desk might be made of wood, metal, or plastic; your chair might be made of similar materials, and might perhaps be covered with cloth, leather, or plastic fabric and contain fiber or synthetic foam padding.
Around you, there might be many books and papers, pencils made of wood and metal and graphite, rubber erasers, pens or metal and plastic.
A plastic body and a liquid crystal display surround the semiconductors that lie at the heart of your calculator or computer, your cell phone, and your portable multimedia player.
Looking out through a glass window, you see structures made of wood, bricks, concrete, or metal, selected for strength, utility, or attractiveness.
Each of these solids has a characteristic color, texture, strength, hardness, or ductility; it has a certain measurable electrical conductivity, heat capacity, thermal conductivity, magnetic susceptibility, and melting point; it has certain characterstic emission or absorption spectra in the visible, infrared, ultraviolet, or other regions of the electromagnetic spectrum.
"""

# ╔═╡ 7e490035-9361-4c85-9002-148fc0dfb959
md"""
**Remark.**
It is a fair generalization to say that all of these properties depend on two features of the structure of the material: the type of atoms or molecules of which the substance is made, and the way those atoms or molecules of which the substance is made, and the way those atoms or molecules are joined or stacked together to make the solid.
It is the formidable task of the **solid-state** (or **condensed-matter**) **physicist** or **physical chemist** to try to relate the structure of materials to their observed physical or chemical properties.
"""

# ╔═╡ 0d17f0bb-510d-4a94-a2a4-dd09319efe92
md"""
**Remark.**
Quantum mechanics plays a fundamental role in determining properties of the solid: mechanical, electrical, thermal, magnetic, optical, and so forth.
In this chapter, we illustrate the application of quantum mechanics to the study of solids by studying some of their thermal, electrical, and magnetic properties.
"""

# ╔═╡ 2261217d-df4c-4a5e-8379-6ef654ea22a7
md"## Crystal Structures"

# ╔═╡ 10e8969e-51e0-4d96-9ab0-73ff367de10f
md"""
**Remark.**
Our discussion will concentrate on materials in which the atoms or molecules occupy regular or periodic sites; this structure is called a **lattice**, and materials with this structure are called **crystals**.
Crystalline materials include many metals, chemical salts, and semiconductors.
One property that distinguishes crystals is their **long-range order**---once we begin constructing the lattice in one location, we determine the placement of atoms that are quite far away.
In this respect, the crystal is like a brick wall, in which the bricks are stacked in a periodic array and the placement of a brick is predetermined by the original arrangement of bricks far away compared with the size of a brick.
(By contrast, **amorphous** materials such as glass or paper have no long-range order, and their structure is more similar to a pile of bricks than to a brick wall.)
"""

# ╔═╡ 13603cf2-053a-4011-98a0-f41d711538ae
md"""
**Remark.**
Solid crystals can be classified by the cohesive forces that are responsible for holding the lattice together, as well as by the shape of the arrangement of the atoms in the lattice.
We'll look at a few different ways that atoms can be bound together in solids.
"""

# ╔═╡ 7f01cb9b-0ff7-473b-b9ca-aa41754c607d
md"### Ionic Solids"

# ╔═╡ 1d75a3bf-d1f2-48e3-a6e7-ac96ea6bb4b7
md"""
**Remark.**
As we learned in Chapter 9, the cohesive forces in ionic molecules originate from the electrostatic attraction between a closed-shell ion, such as ``\text{Na}^+``, and another closed-shell ion, such as ``\text{Cl}^-``.
Ionic materials can also form solids readily, because a ``\text{Na}^+`` ion can simultaneously attract many ``\text{Cl}^-`` ions to itself, thereby building up a solid structure.
The ions are held together by electrostatic forces, so we might suppose that the more negative ions there are around a positive ion, the more stable and strong the solid will be.
(Covalent bonds, on the other hand, involve specific electron wave functions and so are limited in the number of near neighbors that can participate in the bonding.)
"""

# ╔═╡ 1cec5274-8b87-4f48-b9de-6446c5d6e4f1
md"""
**Remark.**
Ionic solids are crystalline, rather than amorphous, because we can pack ions together more efficiently in a regular array than in a random arrangement.
(The same is true for bricks: in a regular array, there are more bricks per unit volume than in a random pile, and their average separation is smaller.)
"""

# ╔═╡ 45804549-7a12-47d0-9f14-29ada458de25
md"""
**Remark.**
The simplest type of crystal lattice is the **cubic** lattice, in which we imagine the atoms to be placed at the corners of a succession of cubes that cover the volume of the crystal.
Figure 11.1 shows the basic cubic structure.
This type of stacking is not the most efficient, because there are large gaps at the center of each face of the cube, and also in the middle of the cube itself.
We get a better stacking arrangement, which has more atoms per unit volume, if we place another atom either at the center of each face of the cube or at the center of the body of the cube.
These two lattices are known as **face-centered cubic (fcc)** and **body-centered cubic (bcc)** and are illustrated in Figures 11.2 and 11.3.
"""

# ╔═╡ cb1fcf61-993a-4d65-8be3-ca537a45eef2
md"""
**Remark.**
The fcc lattice gives a slightly more efficient packing (more atoms per unit volume) and so it is usually the most stable structure.
However, atoms do not stack like hard spheres, and often the bcc structure is preferred.
These two crystal types, fcc and bcc, also occur for materials other than ionic solids, such as certain metals.
"""

# ╔═╡ 0fec1a49-85e5-453c-8fcd-d0303c5db4a8
md"""
**Remark.**
A common material that has the fcc lattice structure is NaCl, and for that reason the fcc lattice is often called the **NaCl structure**.
In order to have the atoms attract one another, we must alternate ``\text{Na}^+`` and ``\text{Cl}^-`` ions, as is shown in Figure 11.4.
In this illustration, you can see how the atoms pack together just like hard spheres in contact.
Notice that a given ``\text{Na}^+`` ion is attracted by six close ``\text{Cl}^-`` neighbors and does not "belong to" any single ``\text{Cl}^-`` ion.
**It is therefore wrong to consider ionic solids as being composed of molecules.**
"""

# ╔═╡ b0aac8c7-b4ca-4e22-abe8-97e0a2d436fa
md"""
**Remark.**
A typical bcc structure is ``\text{CsCl}``, as shown in Figure 11.5, and so the bcc lattice is often known as the ``\textbf{CsCl}`` **structure**.
In this case, each ion is surrounded by 8 neighbors of the opposite charge.
"""

# ╔═╡ ac52c66e-15af-452c-9c96-04a948fe3b1c
md"""
**Remark.**
Each ``\text{Na}^+`` ion in the ``\text{NaCl}`` structure is surrounded at a distance ``R`` by 6 ``\text{Cl}^-`` ions exerting attractive electrostatic forces.
At the slightly larger distance of ``R \sqrt{2}`` from each ``\text{Na}^+`` ion are 12 ``\text{Na}^+`` ions exerting repulsive forces, and at the still greater distance of ``R \sqrt{3}`` there are 8 ``\text{Cl}^-`` ions exerting attractive forces.
To find the total Coulomb potential energy ``U_C``, we can continue in this way to add the alternating attractive and repulsive contributions:

$\begin{align*}
U_C &= \sum \frac{q_1 q_2}{4\pi \epsilon_0 r} = \frac{e^2}{4\pi \epsilon_0} \left(-6 \frac{1}{R} + 12 \frac{1}{R \sqrt{2}} - 8\frac{1}{R \sqrt{3}} + ⋯\right) \\
&= -\frac{e^2}{4\pi \epsilon_0} \frac{1}{R} \left(6 - \frac{12}{\sqrt{2}} + \frac{8}{\sqrt{3}} - ⋯\right) = -\alpha \frac{e^2}{4\pi\epsilon_0} \frac{1}{R} \tag{11.1}
\end{align*}$

where ``\alpha``, called the **Madelung constant**, is the factor in parentheses in Eq. 11.1:

$\alpha = 6 - \frac{12}{\sqrt{2}} + \frac{8}{\sqrt{3}} - ⋯ \tag{11.2}$

This quantity depends only on the geometry of the lattice and is evaluated by summing the slowly converging series of alternating positive and negative terms.
The result is

$\alpha = 1.7476 \qquad \text{(fcc or NaCl lattice)}$

For the bcc lattice, a similar calculation gives

$\alpha = 1.7627 \qquad \text{(bcc or CsCl lattice)}$
"""

# ╔═╡ 24b156a7-75b2-454f-b652-7f7b4712808b
md"### Covalent Solids"

# ╔═╡ 5cd2bfe5-7266-4cf9-a871-22ae5bd7fc06
md"""
**Remark.**
As we discussed in Chapter 9, carbon forms molecules by covalent bonding of its four outer electrons in ``sp^3`` hybrid orbits.
Such bonds are highly *directional*, and we have seen how it is possible to calculate the angle between the bonds based on the symmetry of the bonding configuration.
Solid carbon, in the form of diamond, is an example of a solid in which the interatomic forces are also of a covalent nature.
As in a molecule, the four equivalent ``sp^3`` hybrid states participate in covalent bonds, and because they are equivalent they must make equal angles with one another.
The manner in which this is done is shown in Figure 11.7.
A central carbon atom is covalently bound to four other carbons that occupy four corners of a cube as shown.
The angle between the bonds is ``109.5^\circ``, as it was in the covalently bonded molecules.
"""

# ╔═╡ 1a1a63aa-1e69-4cf5-aa2a-94edf9413237
md"""
**Remark.**
Figure 11.8 illustrates how the solid structure characteristic of diamond is constructed of such bonds.
Each carbon has four close neighbors with which it shares electrons in covalent bonds.
The basic structure is known as **tetrahedral**, and many compounds have a similar structure as a result of covalent bonding.
Table 11.2 shows some of these compounds.
The cohesive energy is the energy required to dismantle the solid into individual atoms.
The structure is also known as the **zinc sulfide** or **zinc blende** structure.
"""

# ╔═╡ 3d73acf7-effd-4318-8ee7-ccd8ed3c42b4
md"""
**Remark.**
Some of the covalent solids listed in Table 11.2 have bond energies larger than those of ionic solids.
Substances such as diamond and silicon carbide are particularly hard.
Other covalent solids with structures similar to carbon are silicon and germanium; the structure of these solids is responsible for their behavior as semiconductors.
"""

# ╔═╡ 4ba0135d-8595-443c-83c3-719eba5c1d79
md"""
**Remark.**
The covalent solids do not have the same similarity of characteristics that ionic solids do, and so we cannot make the same generalizations.
Carbon, in the diamond structure, has a large bond energy and is therefore very hard and transparent to visible light; germanium and tin have similar structures, but are metallic in appearance and highly reflective.
Carbon (as diamond) has an extremely high melting point (4000 K); germanium and tin melt at much lower temperatures more characteristics of ordinary metals.
Some (like diamond) are extremely poor electrical conductors, while others (such as Si, Ge, and Sn) can conduct electricity but not nearly as well as most metals.
Of course, these differences depend on the actual bond energy in the solid, which in turn depends on the type of atoms of which the solid is made.
Those solids with large bond energies are hard, have high melting points, are poor electrical and thermal conductors, and are transparent to visible light.
Those solids with small bond energies may have very different properties.
"""

# ╔═╡ bc1d728a-25e1-42e0-9705-d4a222d58381
md"### Metallic Bonds"

# ╔═╡ 69948597-f948-4ff0-8316-9d5c13d8d0f2
md"""
**Remark.**
The valence electrons in a metal are usually rather loosely bound, and frequently the electronic shells are only partially filled, so that metals tend not to form covalent bonds.
The basic structure of metals is a "sea" or "gas" of approximately free electrons surrounding a lattice of positive ions.
The metal is held together by the attractive force between each individual metal ion and the electron gas.
"""

# ╔═╡ 03b3abbf-6a27-42d0-ae65-c43a95e1b2d1
md"""
**Remark.**
The most common crystal structures of metallic solids are fcc, bcc, or a third type known as **hexagonal close-packed (hcp)**.
The hcp structure is shown in Figure 11.9; like the fcc structure, it is a particularly efficient way of packing atoms together.
"""

# ╔═╡ 2416b821-f66d-4484-a6c2-ac56b913f72f
md"### Molecular Solids"

# ╔═╡ 1d542aba-a30b-4395-9e0d-f1624c004ae7
md"""
**Remark.**
None of the solids we have discussed so far can be considered as composed of individual molecules.
It is, however, possible for molecules to exert forces on one another and to bind together in solids.
The electrons in a molecule are already shared in **molecular** bonds, so there are no available electrons to participate in ionic, covalent, or metallic bonds with other molecules.
Moreover, molecules are electrically neutral, so there are no Coulomb forces involved.
Molecular solids are held together by much weaker forces, which generally depend on the **electric dipole moments** of the molecules.
Because these forces are much weaker than the internal forces that hold a molecule together, a molecule *can* retain its identity in a molecular solid.
"""

# ╔═╡ 424cbffe-ce0a-40c6-a5f7-1a1f237c2236
md"## The Heat Capacity of Solids"

# ╔═╡ 258040e0-16c8-40cc-9270-1ed4688d4b1c
md"""
**Remark.**
Just as we discussed in Chapter 1 for the heat capacity of gases, the heat capacity of solids provides another example of the breakdown of classical statistical mechanics and the need for a more detailed theory based on quantum mechanics.
(You might find it helpful to review the classical calculation of the heat capacity for gases in Section 1.3.)
"""

# ╔═╡ b4accddb-7560-4de5-898a-281ec7437e34
md"""
**Remark.**
Let's first consider what classical thermodynamics predicts for the heat capacity of a solid.
In contrast to a gas, an atom in a solid occupies a specific position in the lattice, so no translational motion is possible.
Thus, there are no degrees of freedom corresponding to the translational motion.
The atom can move only by vibrating about its equilibrium position in the lattice.
We can imagine the atom to behave as if it were connected to all of its closest neighbors by springs.
It can vibrate in any of the three coordinate directions independently of the other two---the initial displacements of the springs in the ``x``, ``y``, and ``z`` directions can be chosen independently, and the initial velocities in each direction can be set independently of one another.
Consequently, there are 6 degrees of freedom in this situation---2 degrees of freedom (corresponding to the vibrational potential and kinetic energies) for each of the three directions.
According to the equipartition theorem, the average energy for each degree of freedom is ``\frac{1}{2} kT``, so the average energy per atom is ``6 \times \frac{1}{2} kT = 3kT``.
The total internal energy of one mole (``N_A`` atoms) would then be ``E_{\text{int}} = 3N_A kT = 3RT`` (where ``R = N_A k`` is the universal gas constant), and the corresponding molar heat capacity is

$C = \frac{ΔE_{\text{int}}}{ΔT} = 3R = 24.9 \text{ J/mol ⋅ K} \tag{11.8}$

This is the expected value of the molar heat capacity of solids based on classical statistical mechanics and is known as the **law of Dulong and Petit**.
"""

# ╔═╡ bc370fc3-1bf8-47f2-8a95-34617a9a7d75
md"""
**Remark.**
How well does this prediction compare with experiment?
Table 11.4 shows some values of the molar heat capacities at room temperature (approximately 300 K) and at 100 K and 25 K for some metallic elements.
There is good agreement with the Dulong and Petit prediction at room temperature.
"""

# ╔═╡ edbd26d1-dbe8-485c-91a6-9594218641f9
md"""
**Remark.**
We can treat the electrons in a metal as a Fermi gas.
In deriving Eq. 10.63 for the heat capacity, the only assumption we made was that ``kT ≪ E_F``.
For most metals, ``E_F`` is a few eV and even at room temperature ``kT`` is only ``0.025 \text{ eV}``, so the approximation should be pretty good.
Let's rewrite Eq. 10.63 for one mole of a substance ``(N = N_A)`` as follows:

$C = \frac{\pi^2 k^2 N_A T}{2E_F} = \frac{\pi^2}{2} \frac{R k T}{E_F} \tag{11.9}$

where ``R = 8.31 \text{ J/mole} ⋅ \text{K}``.
Equation 11.9 is written as if each atom of the lattice contributes one electron gas, so that ``N`` (the number of electrons) is equal to ``N_A`` (for one mole of atoms).
If, for example, the metal had a valence of 2, then we would have ``N = 2N_A``.
"""

# ╔═╡ 85a77056-f3ed-4a9d-9cb2-70c9f163f2e9
md"### Einstein Theory of Heat Capacity"

# ╔═╡ 89f46f42-89eb-438a-891c-ae44a42b12f9
md"""
**Remark.**
In an ordinary solid, most of the physical properties originate either with the valence electrons or with the latticework of atoms.
Electrical conductivity, for example, originates with the valence electrons, while the propagation of mechanical waves is due to the lattice of atoms.
The heat capacities of solids have contributions from both lattice and conduction electrons; at all but the lowest temperatures, the lattice contribution is dominant.
"""

# ╔═╡ 1308d859-deed-4343-a980-0d3edbb1bf9b
md"""
**Remark.**
The explanation for the failure of classical physics to account for the heat capacity of solids was first given by Einstein, who assumed that the *oscillations* (not the atoms) of the solid obeyed Bose-Einstein statistics.
Just as electromagnetic waves are analyzed as "particles" (quanta of electromagnetic energy, or photons) that obey Bose-Einstein statistics, so are mechanical or acoustic waves analyzed as "particles" (quanta of vibrational energy, called **phonons**) that also obey Bose-Einstein statistics.
Einstein made the simplifying assumption that all of the phonons (oscillations) have the same frequency.
"""

# ╔═╡ baf3c96f-add3-4f48-bf5f-8b2f01f4439e
md"""
**Remark.**
We have seen in Chapter 5 that a quantized oscillator has an energy of ``\hbar \omega\left(n + \frac{1}{2}\right)``.
Each additional value of ``n`` represents an additional phonon; to go from a vibrational energy of ``\frac{5}{2} \hbar \omega`` to ``\frac{7}{2} \hbar \omega`` we must "create" a phonon of energy ``\hbar \omega``.
One mole of the solid contains ``N_A`` atoms and thus ``3N_A`` oscillators.
The density of states (number of states per unit volume) is thus ``3N_A / V``, and the integral of Eq. 10.7 is evaluated only at the single energy ``E = \hbar \omega`` (because all phonons have energy ``\hbar \omega``).
Using the Bose-Einstein distribution, the number of phonons is then ``N = 3N_A/(e^{\hbar \omega / kT} - 1)``, and the total internal energy of the solid is the number of phonons times the energy of each phonon:

$E_{\text{int}} = N \hbar \omega = 3N_A \hbar \omega \frac{1}{e^{\hbar \omega / kT} - 1} \tag{11.10}$

The heat capacity can be found from ``dE_{\text{int}} / dT``:

$\begin{align*}
C &= \frac{dE_{\text{int}}}{dT} = 3 N_A \hbar \omega \frac{(e^{\hbar \omega / kT}) (\hbar \omega / kT^2)}{(e^{\hbar \omega / kT} - 1)^2} \\
&= 3R \left(\frac{\hbar \omega}{kT}\right)^2 \frac{e^{\hbar \omega / kT}}{(e^{\hbar \omega / kT} - 1)^2} = 3R \left(\frac{T_E}{T}\right)^2 \frac{e^{T_E / T}}{(e^{T_E / T} - 1)^2} \tag{11.11}
\end{align*}$

where we have replace ``\hbar \omega / k`` with the parameter ``T_E``, called the **Einstein temperature**.
The vibrational energy ``\hbar \omega`` (or the Einstein temperature ``T_E``) is an adjustable parameter of the theory and takes different values for different materials.
Typically, ``T_E`` is of the order of several hundred kelvins.
"""

# ╔═╡ 8bbca29c-b12b-4abd-a404-9cf416f2aa18
md"""
**Remark.**
When ``T`` is small, the exponential term in the denominator dominates, and ``C ∝ e^{-T_E/T}``, so indeed ``C`` approaches ``0`` for small ``T``, in agreement with experiment.
Figure 11.12 shows the molar heat capacity of Cu compared with the behavior predicted by Eq. 11.11, with ``T_E = 225 \text{ K}`` giving the best fit to the data.
As you can see, the agreement is reasonably good.
However, even though the shape of the theoretical curve matches the overall trend of the data, it fails to do a good job at accounting for the behavior at the lowest temperatures (the data approach zero more slowly than the theory predicts).
"""

# ╔═╡ aeae7686-fb97-4bed-9532-0c97babccfca
md"""
**Remark.**
In this calculation, we have oversimplified by assuming all of the oscillations to have the same frequency.
A better calculation, which was first done in 1912 by Peter Debye, assumes a distribution of frequencies with a density of states given by an expression of the same form as that for the "photon gas" of blackbody radiation; the predicted low temperature behavior is then

$C = \frac{12\pi^4}{5} R \left(\frac{T}{T_D}\right)^3 \tag{11.12}$

where ``T_D`` is a parameter of theory known as the **Debye temperature**, which is different for different materials.
"""

# ╔═╡ 3844bd82-1d69-4bf7-850d-6e2e15d37dcb
md"""
**Remark.**
At the lowest temperatures, we therefore can identify two terms in the heat capacity: a term due to the electrons, which is linear in the temperature (Eq. 11.9), and another term due to the lattice vibrations of the atoms, which is proportional to ``T^3``.
Combining these two terms, we then expect the low-temperature heat capacity to be of the form ``C = aT + bT^3``, where ``a`` is the coefficient of ``T`` in Eq. 11.9 and ``b`` is the coefficient of ``T^3`` in Eq. 11.12.
As ``T`` approaches ``0``, the ``T^3`` term drops off more rapidly than the linear term, so at the very lowest temperatures we expect the electrons to have a more significant contribution.
We can turn this equation into a linear graph and identify both contributions by writing ``C/T = a + bT^2`` and plotting ``C/T`` as a function of ``T^2``, which should give a straight line of slope ``b`` and ``y``-intercept ``a``.
Figure 11.13 shows the results for copper.
The data do indeed fall on a straight line, in excellent agreement with the Debye theory.
If the electronic part of the heat capacity were not present (that is, if there were only the lattice contribution from Eq. 11.12), then the line would go through the origin and the intercept would be zero.
So the intercept tells us about the lattice contribution and depends on the Debye temperature.
"""

# ╔═╡ 213f8770-55ec-4110-a096-ab387aa87c62
md"## Electrons in Metals"

# ╔═╡ 47d4127c-79b6-4b52-9c74-28a550147938
md"""
**Remark.**
In metals, each atom contributes one or more loosely bound electrons to an "electron gas" of nearly free electrons that can easily move throughout the metal.
In analogy with an ordinary molecular gas, these electrons move freely and experience forces only when they scatter from the ion cores in the lattice.
For now, we'll assume the distribution of occupied electron states is determined by the density of states for the electron gas and the Fermi--Dirac distribution function.
In the next section, we will see that a more detailed analysis of the properties of the interaction of the electrons with the atoms of the lattice forbids certain ranges of energy values, but we'll ignore that effect for this discussion.
With these assumptions, we can use the electron gas model to study many of the properties of metals, such as electrical conduction, heat capacity, and heat conduction.
"""

# ╔═╡ 67b8ea4b-9706-447a-a1dd-1648f1e8ac04
md"### Eletrical Conduction"

# ╔═╡ eab81d7c-823f-4959-8a7b-531683c01614
md"""
**Remark.**
When an electric field ``\vec{𝐄}`` is applied to a metal, a current flows in the direction of the field.
The flow of charges is described in terms of a **current density** ``\vec{𝐣}``, the current per unit cross-sectional area.
In an ordinary metal, the current density is proportional to the applied electric field:

$\vec{𝐣} = \sigma \vec{𝐄} \tag{11.15}$

where the proportionality constant ``\sigma`` is the **electrical conductivity** of the material.
We would like to understand the conductivity in terms of the properties of the metal.
"""

# ╔═╡ 33601d0a-a0db-4b11-984c-38ce65953525
md"""
**Remark.**
The free electrons in our electron gas experience a force ``\vec{𝐅} = -e\vec{𝐄}`` and a corresponding acceleration ``-e\vec{𝐄} / m``.
We observe that in a conductor the current is constant in time, so the increase in velocity from the electric field must be opposed, in this case by collisions with the lattice.
This model of conduction in metals views the electrons as accelerated by the field only for short intervals, following which they are slowed by collisions.
The net result is that the electrons acquire on the average a steady **drift velocity** ``\vec{𝐯}_d``, given by the acceleration times the average time ``\tau`` between collisions:

$\vec{𝐯}_d = \frac{-e\vec{𝐄}}{m} \tau \tag{11.16}$

The magnitude of the current density is determined by the number of charge carriers and their average speed:

$\vec{𝐣} = -ne \vec{𝐯}_d \tag{11.17}$

where ``n`` is the density of electrons available for conduction.
Substituting for the drift velocity, we obtain

$\vec{𝐣} = \frac{ne^2 \tau}{m} \vec{𝐄} \tag{11.18}$

and the conductivity is therefore

$\sigma = \frac{ne^2 \tau}{m} \tag{11.19}$

The unknown factor in Eq. 11.19 is the time between collisions, which we can express as

$\tau = \frac{l}{v_{\text{av}}} \tag{11.20}$

where ``l`` is the **mean free path** of the electrons, the average distance the electrons travel between collisions, and ``v_{\text{av}}`` is their average speed through the lattice.
(Note that this speed is *not* the same as drift speed, which is the small increment of speed that comes about from applying the electric field.)
"""

# ╔═╡ 20b3ff0c-bba5-4add-a35a-c7285535aa7f
md"### Quantum Theory of Electrical Conduction"

# ╔═╡ 520bedec-2128-4ee6-9189-729ba4616516
md"""
**Remark.**
Figure 11.16a represents the Fermi distribution of electron velocities in the metal.
Like the Fermi energy distribution, it is flat at ``v = 0`` and it falls to zero near the Fermi velocity ``v_F``, but (unlike the energy distribution) it has positive and negative branches because the electrons can move in either direction.
When an electric field is applied, all electrons acquire on the average an additional velocity distribution to the left (opposite the field direction), as shown in Figure 11.16b.
Even though the entire distribution shifts, the net effect of applying the electric field is centered on a small number of electrons in the vicinity of ``v_F``.
The electric field causes some electron states near ``v_F`` in the direction of ``\vec{𝐄}`` to become unoccupied, while an equal number of states near ``v_F`` in a direction opposite to ``\vec{𝐄}`` become occupied.
"""

# ╔═╡ 655cf40b-5010-4f92-aee0-bc590f51092c
md"""
**Remark.**
The only electrons afffected by the field are those in a narrow interval near the Fermi energy.
These electrons are moving with a speed ``v_F = \sqrt{2E_F / m}``, which for copper with ``E_F = 7.03 \text{ eV}`` works out to be ``1.57 × 10^6 \text{ m/s}``.
This speed is about an order of magnitude larger than the speed we found in Example 11.4, which would give us a shorter average time between collisions and hence a *smaller* conductivity.
This seems to make the disagreement between theory and experiment even worse!
Moreover, the Fermi energy is nearly independent of temperature, so the speed of electrons near the Fermi energy should likewise not change with temperature, nor should the conductivity.
"""

# ╔═╡ 17010074-fdcf-456a-8d44-8d242c24577a
md"## Band Theory of Solids"

# ╔═╡ ddbfe97c-d971-428a-9464-a5f86d9a2586
md"""
**Remark.**
The model of treating a conductor as a gas of free electrons has taken us a long way toward understanding the properties of materials, but to gain a deeper understanding we must consider the interaction of the electrons with the atoms of the lattice.
We'll see that this interaction leads to a profound difference between the electron energies of the free electron gas (continuous from zero up to the Fermi energy) and the electron energies in an interacting system (an alternating series of allowed and forbidden energy regions).
"""

# ╔═╡ c896dd19-64e1-4a9b-a729-f358630f3c8c
md"""
**Remark.**
When two identical atoms, such as sodium, are very far apart, the electronic levels in one are not affected by the presence of the other.
The ``3s`` electron of each atom has a single energy with respect to its nucleus.
As we bring the atoms closer together, the electron wave functions begin to overlap, and two different ``3s`` levels form, depending on whether the two wave functions add or subtract.
This effect is responsible for molecular binding, as discussed in Section 9.2.
Figure 11.19 shows a representation of the energy levels.
"""

# ╔═╡ c7305908-323f-4ff1-85b5-3986d2ac31b0
md"""
**Remark.**
As we bring together more atoms, the same sort of effect occurs.
When the sodium atoms are far apart, all ``3s`` electrons have the same energy, and as we begin to move them together, the energy levels begin to "split."
The situation for five atoms is shown in Figure 11.20.
There are now five energy levels that result from the five overlapping electron wave functions.
As the number of atoms is increased to very large numbers that characterize an ordinary piece of metal (perhaps ``10^{22}`` atoms), the levels become so numerous and so close together that we can no longer distinguish the individual levels, as shown in Figure 11.21.
We can regard the ``N`` atoms as forming an almost continuous **band** of energy levels.
Because those levels were identified with the ``3s`` atomic levels of sodium, we refer to the ``3s`` **band**.
"""

# ╔═╡ 91ed17cf-0ccc-4e0d-8098-8a694443d886
md"""
**Remark.**
Each energy band in a solid with ``N`` atoms has a total of ``N`` individual levels.
Each level can hold ``2(2l + 1)`` electrons (corresponding to the two different orientations of the electron spin and the ``2l + 1`` orientations of the electron orbital angular momentum) so that the capacity of each band is ``2(2l + 1)N`` electrons.
"""

# ╔═╡ 1f73806c-45c4-42fc-b2e8-dfb4bd82da0f
md"""
**Remark.**
Figure 11.22 shows a more complete representation of the energy bands in sodium metal.
The ``1s``, ``2s``, and ``2p`` bands are each full; the ``1s`` and ``2s`` bands each contain ``2N`` electrons and the ``2p`` band contains ``6N`` electrons.
The ``3s`` band *could* accommodate ``2N`` electrons as well; however, each of the ``N`` atoms contributes only one ``3s`` electron to the solid, and so there is a total of only ``N`` ``3s`` electrons available.
The ``3s`` band is therefore half full.
Above the ``3s`` band is a ``3p`` band, which could hold ``6N`` electrons, but which is completely empty.
"""

# ╔═╡ e8feb282-3c6e-420c-ab1d-ecb2c4a2ed56
md"""
**Remark.**
The situation we have described is the ground state of sodium metal.
When we add energy to the system (thermal or electrical energy, for example), the electrons can move from the filled states to any of the empty states.
In this case, electrons from the partially full ``3s`` band can absorb a small amount of energy and move to empty ``3s`` states within the ``3s`` band, or they can absorb a larger amount of energy and move to the ``3p`` band.
"""

# ╔═╡ a784776a-040f-4bb2-8263-8a442c479e3c
md"""
**Remark.**
We can describe this situation in a more correct way using the Fermi-Dirac distribution.
At a temperature of ``T = 0 \text{ K}``, all electron levels below the Fermi energy ``E_F`` are filled and all levels above the Fermi energy are empty.
In the case of sodium, the Fermi energy is in the middle of the ``3s`` band, because all eletcron levels below that energy are occupied (Figure 11.23).
At higher temperatures, the Fermi energy gives the level at which the occupation probability is 0.5; the Fermi energy does not change significantly as we increase the temperature, but the occupation probability of the levels above ``E_F`` is no longer zero.
Figure 11.24 shows a situation in which the thermal excitation of electrons leads to a small population of the ``3p`` band and some vacant states in the ``2p`` band.
"""

# ╔═╡ 1a3063d3-e6bb-4bd2-8ad1-3aa8b12895ea
md"""
**Remark.**
Sodium is an example of a substance that is a good electrical conductor.
When we apply a very modest potential difference, of the order of 1 V, electrons can easily absorb energy because there are ``N`` unoccupied states within the ``3s`` band, all within an energy of about ``1 \text{ eV}``.
Electrons gain energy as they are accelerated by the applied voltage, and they are therefore free to move as long as there are many unoccupied states within the accessible energy range.
In sodium, there are ``N`` relatively free elecrtons that can easily move to ``N`` unoccupied energy states, and sodium is therefore a good conductor.
"""

# ╔═╡ b9043988-e4b1-44bc-a3f8-d351558710ce
md"""
**Remark.**
The band structure of sodium, in which the Fermi level lies in the middle of a band, is characteristic of many good electrical conductors.
A completely different situation occurs when the Fermi level lies in the gap between two bands, so that the band below ``E_F`` is completely full and the band above is completely empty.
If the gap energy ``E_g`` is large compared with ``kT``, then even though the Fermi-Dirac distribution spreads as the temperature is raised, it doesn't spread enough to result in a significant population of states in the upper band (called the **conduction band**) or a significant number of empty states in the lower band, called the **valence band**.
This situation is shown in Figure 11.25.
There are many electrons in the valence band available for electrical conduction, but there are few empty states for them to move through, so they do not contribute to the electrical conductivity.
There are many empty states in the conduction band, but at ordinary temperatures there are so few electrons in that band that their contribution to the electrical conductivity is also very small.
These substances are classified as **insulators** and in general they have two properties: a large energy gap (a few electron-volts) between the valence and conduction bands, and a Fermi level that is in the gap between the bands (i.e., a filled valence band and an empty conduction band).
"""

# ╔═╡ cca14e06-defb-4614-b394-f9b52072ff44
md"""
**Remark.**
A material with the same basic structure but a much smaller energy gap (1 eV or less) shows quite different behavior.
These materials are known as **semiconductors**.
Figure 11.26 shows a representation of such a substance at ordinary temperatures.
There are now many electrons in the conduction band, and of course many empty states accessible to them, so that they can conduct relatively easily.
There are also many empty states in the valence band, so that some of the electrons in the valence band can also contribute to the electrical conductivity by moving about through those states.
We consider these two mechanisms of electrical conduction in detail in Section 11.6.
For now we note two characteristic properties of semiconductors that relate directly to the band structure as shown in Figure 11.26.
(1) Because thermal excitation across the gap is relatively probable, the electrical conductivity of semiconductors depends more strongly on temperature than the electrical conductivity of insulators or conductors.
(2) It is possible to alter the structure of these materials, by adding impurities in very low concentration, in such a way that the Fermi energy changes and may move up toward the conduction band or down toward the valence band.
This process, known as **doping**, can have a great effect on the conductivity of a semiconductor.
"""

# ╔═╡ 46de0475-c92e-4fdf-9366-58f7fb97829d
md"### Graphene"

# ╔═╡ 08719c7e-6922-411b-82a5-19d9ce8951e0
md"""
**Remark.**
In addition to metal, semiconductors, and insulators, there is another type of solid with yet a different characteristic band structure: semimetals.
In a semimetal, the valence and conduction bands join or have a small overlap (and thus a band gap of zero), but in contrast to metals there is a very small density of states at the Fermi level.
The elements arsenic, antimoney, bismuth, and carbon in the form of graphite are examples of semimetals.
"""

# ╔═╡ 3600d9c8-19c6-4884-b81b-49ca65347ab7
md"### *Justification of Band Theory"

# ╔═╡ 09032419-71ba-470d-976c-555786d28bc7
md"""
**Remark.**
The band theory of solids has had great success in accounting for the properties of metals, insulators, and semiconductors.
In this section, we consider a different approach to band theory that is based on the quantum mechanics of an electron moving through a lattice of ions.
In analogy with solutions to the Schrödinger equation discussed in Chapter 5, in which an electron in a potential energy well shows discrete energy levels, we will see that an electron in a periodic potential energy provided by a latitce of ions can show energy bands.
"""

# ╔═╡ c4d3e1b4-8b06-4057-afd1-883202cd0206
md"## Superconductivity"

# ╔═╡ 62ef0d32-3c7e-4ba7-8eb6-4f7c420bbcb7
md"""
**Remark.**
At low temperatures, the resistivity of a metal (the inverse of its conductivity) is nearly constant.
As the temperature of a material is lowered, the lattice contribution to the resistivity decreases while the impurity contribution remains approximately constant, and as we approach ``T = 0 \text{ K}`` the resistivity should approach a constant value.
Many metals, known as **normal** metals, behave in this way, as illustrated in Figure 11.17.
"""

# ╔═╡ 2e548d1f-8603-4584-b8e1-fe37bcc55b2b
md"""
**Remark.**
The behavior of another class of metals is quite different.
These metals behave normally as the temperature is decreased, but at some critical temperature ``T_c`` (which depends on the properties of the metal), the resistivity drops suddenly to zero, as shown in Figure 11.34.
These materials are known as **superconductors**.
The resistivity of a superconductor is not merely very small at temperatures below ``T_c``; it vanishes!
Such materials can conduct electric currents even in the absence of an applied voltage, and the conduction occurs with no ``i^2 R`` (joule heating losses).
"""

# ╔═╡ 029c2351-9ba4-4934-af12-5fba569677ad
md"### Josephson Effect"

# ╔═╡ b7e79924-55dc-420c-83eb-42590a73404f
md"""
**Remark.**
Imagine a thin layer of insulating material sandwiched between two identical superconductors.
The insulating layer is thin enough that the electron pairs can tunnel through from one superconductor to another.
This is a typical case of one-dimensional barrier penetration, such as we discussed in Chapter 5.
"""

# ╔═╡ 62f77b2d-2d80-4d6f-a28c-51c230d5d253
md"## Intrinsic and Impurity Semiconductors"

# ╔═╡ e5be2eba-7ec2-42ee-be78-af7d70b086e7
md"""
**Remark.**
A semiconductor is a material with an energy gap ``E_g`` of order ``1 \text{ eV}`` between the valence band and the conduction band.
At ``T = 0``, all states in the valence band are full and all states in the conduction band are empty; recall that the Fermi-Dirac distribution is a step function at ``T = 0`` and gives an occupation probability of exactly ``1`` for all states below ``E_F`` and exactly ``0`` for all states above ``E_F``.
As the temperature is raised, however, some states above ``E_F`` are occupied and some states below ``E_F`` are empty.
At room temperature, the relationship between the Fermi energy, the valence and conduction bands, and the electron energy distribution might be as shown in Figure 11.26.
"""

# ╔═╡ 84b90900-906f-40eb-9992-85b4252e67ad
md"""
**Remark.**
The energy levels formed by valence-5 impurities are known as **donor states** and the impurity is known as a **donor**, because electrons are "donated" to the conduction band.
A semiconductor that has been doped with donor impurities is known as an **n-type** semiconductor, because the conductivity is due mostly to the negative electrons.
"""

# ╔═╡ 18adf265-d109-45b8-8524-237563443576
md"""
**Remark.**
The energy levels formed by valence-3 impurities are known as **acceptor states**, because they can "accept" electrons from the valence band.
A material that has been doped with acceptor impurities is known as a **p-type** semiconductor, because the conductivity is due mostly to the positively charged holes.
(Remember that ``n``-type and ``p``-type materials are both **electrically neutral** because they are made from neutral atoms.
The designations ``n`` and ``p`` refer only to the charge carriers, not to the material itself.
Depending on whether we add or remove electrons, ``n``-type and ``p``-type materials can become either negatively or positively charged).
"""

# ╔═╡ e028a81c-15b3-494c-b217-fe3e6ec063b3
md"## Semiconductor Devices"

# ╔═╡ 3ebec178-f0be-41fc-820a-1cf56a401df5
md"### The ``p``--``n`` Junction"

# ╔═╡ ed752189-b4ea-41c3-a45e-c81ccee52ff6
md"""
**Remark.**
When a ``p``-type semiconductor is placed in contact with an ``n``-type semiconductor (Figure 11.44) electrons flow from the ``n``-type material into the ``p``-type material, until equilibrium is established.
This equilibrium occurs when the Fermi energies in the two substances become identical.
"""

# ╔═╡ 9f118c70-ac2a-44b0-a664-6fc650f1cd49
md"### The Tunnel Diode"

# ╔═╡ a4503c6a-f43b-4357-b0fc-9b39785cbabb
md"""
**Remark.**
When the ``p`` and ``n`` regions are very heavily doped, the depletion layer becomes much narrower, perhaps 10 nm, and the energy diagram might look like Figure 11.50.
When a small forward bias is applied, there is now a third contribution to the current---an electron from the conduction band of the ``n`` region can "tunnel" through the forbidden region directly into the valence band of the ``p`` region.
This process of course depends on the wave nature of the electron and is an example of the type of barrier penetration we have discussed previously, in Section 5.6.
The narrow depletion layer makes the process possible.
The wavelength of an electron near the Fermi surface is about 1 nm, and if the thickness of the depletion layer were many orders of magnitude larger than this tunneling would be unlikely to occur.
"""

# ╔═╡ 7736e804-5eda-4e20-928d-d4868bdd6f1d
md"### Photodiodes"

# ╔═╡ 5164b229-7feb-455a-9d2e-e013c37fce1b
md"""
**Remark.**
A photodiode is a ``p``-``n`` junction whose operation involves the emission or absorption of light.
These devices operate on principles similar to ordinary atoms.
An electron in the valence band can absorb a photon and make a transition to the conduction band.
Photons of visible light have energies of order 2 to 3 eV, so a semiconductor with its gap of order 1 eV is just right for such a transition.
Conversely, an excited electron from the conduction band can drop back down to the valence band, emitting a photon in the process.
"""

# ╔═╡ 2578e597-e0ef-4061-96a7-2fc09d0543dc
md"## Magnetic Materials"

# ╔═╡ bd498024-08d4-4823-8d03-a79c59eca8fb
md"""
**Remark.**
One final example of the application of quantum physics to solids concerns the magnetic behavior of materials.
The magnetic susceptibility of atoms was discussed briefly in Section 8.4 (see Figure 8.10).
Most atoms have permanent magnetic dipole moments, due either to the spin or orbital angular momentum of the electrons (or both).
"""

# ╔═╡ 25482b12-df18-4df1-a2dd-f502e00e2ee3
md"### Paramagnetism of Electron Gas"

# ╔═╡ ae28a01e-aa68-497f-8920-339fcf4a52e9
md"""
**Remark.**
Let's begin by investigating the magnetic behavior of an electron gas.
"""

# ╔═╡ a77025d6-9bfe-423c-b8de-88d9a637883a
md"### Paramagnetism of Atoms and Ions"

# ╔═╡ 3b5ce7f7-2755-4dea-b969-efc206139704
md"""
**Remark.**
Instead of the free electrons, let's consider the contribution of the atoms or ions to the paramagnetism.
"""

# ╔═╡ 9c87a4f7-cad4-4f99-bbe1-58719cd323ff
md"### Ferromagnetism"

# ╔═╡ d4f20c07-416c-4aec-9e3a-5aa7f9205529
md"""
**Remark.**
In some materials, the individual magnetic dipoles of the ions can align with one another even in the absence of an external magnetic field.
"""

# ╔═╡ 7c8a1f1b-f3a9-4334-8f3c-75dd66f4c6d8
md"# Nuclear Structure and Radioactivity"

# ╔═╡ 938b7b1f-84b9-4b14-99fd-1daa7323243a
md"""
**Remark.**
The nucleus lies at the center of the atom, occupying only ``10^{-15}`` of its volume but providing the electrical force that holds the atom together.
Within the nucleus there are ``Z`` positive charges.
To keep these charges from flying apart, the nuclear force must supply an attraction that overcomes their electrical repulsion.
This nuclear force is the strongest of the known forces; it provides nuclear binding energies that are millions of times stronger than atomic binding energies.
"""

# ╔═╡ d8a736c8-65fd-4b14-a459-e909258d2662
md"""
**Remark.**
There are many similarities between atomic structure and nuclear structure, which will make our study of the properties of the nucleus somewhat familiar.
Nuclei are subject to the laws of quantum physics.
They have ground and excited states and emit photons in transitions between the excited states.
Just like atomic states, nuclear states can be labeled by their angular momentum.
"""

# ╔═╡ 027d3322-606f-4028-8443-50b7825b73f2
md"""
**Remark.**
There are, however, two major differences between the study of atomic and nuclear properties.
In atomic physics, the electrons experience the force provided by an external agent, the nucleus; in nuclear physics, there is no such external agent.
In contrast to atomic physics, in which we can often consider the interactions among the electrons as a perturbation to the primary interaction between electrons and nucleus, in nuclear physics the mutual interaction of the nuclear constituents is just what provides the nuclear force, so we cannot treat this complicated many-body problem as a correction to a single-body problem.
We therefore cannot avoid the mathematical difficulties in the nuclear case, as we did in the atomic case.
"""

# ╔═╡ 51a79bca-e975-4818-95be-35fe246183f5
md"""
**Remark.**
The second difference between atomic and nuclear physics is that we cannot write the nuclear force in a simple form like the Coulomb force.
There is no closed-form analytical expression that can be written to describe the mutual forces of the nuclear constituents.
"""

# ╔═╡ cf3af24a-23b9-48ae-ba8f-2e5a0ccd176b
md"""
**Remark.**
In spite of these difficulties, we can learn a great deal about the properties of the nucleus by studying the interactions between different nuclei, the radioactive decay of nuclei, and the properties of some nuclear constituents.
In this chapter and the next, we describe these studies and how we learn about the nucleus from them.
"""

# ╔═╡ f58f4f3d-8a8d-49f2-878f-76e611bcc7bd
md"## Nuclear Constituents"

# ╔═╡ ba0f4f35-ceac-4f3e-955d-e5018a7bbf99
md"""
**Remark.**
The work of Rutherford, Bohr, and their contemporaries in the years between 1911 and 1920 showed that the positive charge of the atom is confined in a very small nuclear region at the center of the atom, that the nucleus in an atom of atomic number ``Z`` has a charge of ``+Ze``, and that the nucleus provides most (99.9%) of the atomic mass.
It was also known that the masses of the atoms (measured in atomic mass units) were very nearly integers; a glance at Appendix D confirms this observation, usually to within about 0.1%.
We call this integer ``A`` the **mass number**.
It was therefore reasonable to suppose that nuclei are composed of a number ``A`` of more fundamental units whose mass is very close to ``1 \text{ u}``.
Because the only particle known at that time with a mass close to ``1 \text{ u}`` was the proton (the nucleus of hydrogen, with a mass of ``1.0073 \text{ u}`` and a charge of ``+e``), it was postulated (incorrectly, as we shall see) that the nucleus of an atom of mass number ``A`` contained ``A`` protons.
"""

# ╔═╡ 6adb82f1-7975-4dc2-8e12-a029e547e9c5
md"""
**Remark.**
Such a nucleus would have a nuclear charge of ``Ae`` rather than ``Ze``; because ``A > Z`` for all atoms heavier than hydrogen, this model gives too much positive charge to the nucleus.
This difficulty was removed by the **proton--electron model**, in which it was postulated (again incorrectly) that the nucleus also contained ``(A - Z)`` electrons.
Under these assumptions, the nuclear mass would be about ``A`` times the mass of the proton (because the mass of the electrons is negligible) and the nuclear electric charge would be ``A(+e) + (A - Z)(-e) = Ze``, in agreement with experiment.
However, this model leads to several difficulties.
First, as we discovered in Chapter 4 (see Example 4.9), the presence of electrons in the nucleus is not consistent with the uncertainty principle, which would require those electrons to have unreasonably large ``(∼ 19 \text{ MeV})`` kinetic energies.
"""

# ╔═╡ 50ed4e08-eac7-4a6d-bc2b-e117ceced463
md"""
**Remark.**
A more serious problem concerns the total **intrinsic spin** of the nucleus.
From measurements of the *very* small effect of the nuclear magnetic moment on the atomic transitions (called the **hyperfine splitting**), we know that the proton has an intrinsic spin of ½, just like the electron.
Consider an atom of deuterium, sometimes known as "heavy hydrogen."
It has a nuclear charge of ``+e``, just like ordinary hydrogen, but a mass of two units, twice of ordinary hydrogen.
The proton--electron nuclear model would then require that the deuterium *nucleus* contain two protons and one electron, giving a net mass of two units and a net charge of one.
Each of these three particles has a spin of ½, and the rules for adding angular momenta in quantum mechanics would lead to a spin of deuterium of either ½ or 3/2.
However, the measured total spin of deuterium is 1.
For these and other reasons, the hypothesis that electrons are nuclear constituent must be discarded.
"""

# ╔═╡ 1f6330e5-298a-476e-a12e-7026bdeff035
md"""
**Remark.**
The resolution of this dilemma came in 1932 with the discovery of the **neutron**, a particle of roughly the same mass as the proton (actually about 0.1% more massive) but having no electric charge.
According to the **proton--neutron** model, a nucleus consists of ``Z`` protons and ``(A - Z)`` neutrons, giving a total charge of ``Ze`` and a total mass of roughly ``A`` times the mass of the proton, because the proton and neutron masses are roughly the same.
"""

# ╔═╡ c71379d0-dc5e-429d-819b-d0a643c8a9e2
md"""
**Remark.**
The proton and neutron are, except for their electric charges, very similar to each other, and so they are classified together as **nucleons**.
Some properties of the two nucleons are listed in Table 12.1.
"""

# ╔═╡ 391c8723-2128-4fe4-8df2-ee776a7d0258
md"""
**Remark.**
The chemical properties of any element depend on its atomic number ``Z``, but not on its mass number ``A``.
It is possible to have two different nuclei with the same ``Z`` but with different ``A`` (that is, with the same number of protons but different numbers of neutrons).
Atoms of these nuclei are identical in all their chemical properties, differing only in mass and in those properties that depend on mass.
Nuclei with the same ``Z`` but different ``A`` are called **isotopes**.
Hydrogen, for example, has three isotopes: ordinary hydrogen ``(Z = 1, A = 1)``, deuterium ``(Z = 1, A = 2)``, and tritium ``(Z = 1, A = 3)``.
All of these are indicated by the chemical symbol ``\text{H}``.
When we discuss nuclear properties it is important to distinguish among the different isotopes.
We do this by indicating, along with the chemical symbol, the atomic number ``Z``, the mass number ``A``, and the **neutron number** ``N = A - Z`` in the following format:

${}_Z^A X_N$

where ``\text{X}`` is any chemical symbol.
The chemical symbol and the atomic number ``Z`` give the same information, so it is not necessary to include both of them in the isotope label.
Also, if we specify ``Z`` then we don't need to specify *both* ``N`` and ``A``.
It is sufficient to give only the chemical symbol and ``A``.
The three isotopes of hydrogen would be indicated as ``{}_1^1 \text{H}_0``, ``{}_1^2 \text{H}_1``, and ``{}_1^3 \text{H}_2``, or more compactly as ``{}^1 \text{H}``, ``{}^2 \text{H}``, and ``{}^3 \text{H}``.
In Appendix D you will find a list of isotopes and some of their properties.
"""

# ╔═╡ 4a1b33c7-4775-4bb8-86d4-30a1bfdd22c8
md"## Nuclear Sizes and Shapes"

# ╔═╡ 2885c9a2-10f5-4d54-93ee-74c7a0d55c17
md"""
**Remark.**
Like atoms, nuclei lack a hard surface or an easily definable radius.
In fact, different types of experiments can often reveal different values of the radius for the same nucleus.
"""

# ╔═╡ 7d07aab9-c1df-445f-800a-e5548b81ee1c
md"""
**Remark.**
From a variety of experiments, we know some general features of the nuclear density.
Its variation with the nuclear radius is shown in Figure 12.1.
Because the nuclear force is the strongest of the forces, we might expect that this strong force would cause the protons and neutrons to congregate at the center of the nucleus, giving an increasing density in the central region.
However, Figure 12.1 shows that this is not the case---the density remains quite uniform.
This gives some important clues about the short range of the nuclear force, as we discuss in Section 12.4.
"""

# ╔═╡ 80a355fc-0638-4d23-a9c7-2bbfa8603edf
md"""
**Remark.**
Another interesting feature of Figure 12.1 is that the density of a nucleus seems not to depend on the mass number ``A``; very light nuclei, such as ``{}^{12}\text{C}``, have roughly the same central density as very heavy nuclei, such as ``{}^{200} \text{Bi}``.
Stated another way, the number of protons and neutrons per unit volume is approximately constant over the entire range of nuclei:

$\frac{\text{number of neutrons and protons}}{\text{volume of nucleus}} = \frac{A}{\frac{4}{3} \pi R^3} ≅ \text{constant}$

assuming the nucleus to a be a sphere of radius ``R``.
Thus, ``A ∝ R^3``, which suggests a proportionality between the nuclear radius ``R`` and the cube root of the mass number: ``R ∝ A^{1/3}`` or, defining a constant of proportionality ``R_0``,

$R = R_0 A^{1/3} \tag{12.1}$

The constant ``R_0`` must be determined by experiment, and a typical experiment might be to scatter charged particles (alpha particles or electrons, for example) from the nucleus and to infer the radius of the nucleus frrom the distribution of scatter particles.
From such experiments, we know the value of ``R_0`` is approximately ``1.2 × 10^{-15} \text{ m}``.
(The exact value depends, as in the case of atomic physics, on exactly how we define the radius, the values of ``R_0`` usually range from ``1.0 × 10^{-15} \text{ m}`` to ``1.5 × 10^{-15} \text{ m}``.)
The length ``10^{-15} \text{ m}`` is 1 femtometer (fm), but physicists often refer to this length as one fermi, in honor of the Italian-American physicist Enrico Fermi.
"""

# ╔═╡ fa7590e3-47df-42c7-b14f-d4a676f41642
md"## Nuclear Masses and Binding Energies"

# ╔═╡ 2eb13741-3f5a-4059-9b7d-e6a86e16cb81
md"""
**Remark.**
Suppose we have a proton and an electron at rest separated by a large distance.
The total energy of this system is the total rest energy of the two particles, ``m_p c^2 + m_e c^2``.
Now we let the two particles come together to form a hydrogen atom in its ground state.
In the process, several photons are emitted, the *total* energy of which is ``13.6 \text{ eV}``.
The total energy of this system is the rest energy of the hydrogen atom, ``m(\text{H}) c^2``, plus the total photon energy, ``13.6 \text{ eV}``.
Conservation of energy demands that the total energy of the system of isolated particles must equal the total energy of atom plus photons: ``m_e c^2 + m_p c^2 = m(\text{H}) c^2 + 13.6 \text{ eV}``, which we write as

$m_e c^2 + m_p c^2 - m(\text{H}) c^2 = 13.6 \text{ eV}$

That is, the rest energy of the combined system (the hydrogen atom) is less than the rest energy of its constituents (an electron and a proton) by ``13.6 \text{ eV}``.
This energy difference is the **binding energy** of the atom.
We can regard the binding energy as either the "extra" energy we obtain when we assemble an atom from its components or else the energy we must supply to disassemble the atom into its components.
"""

# ╔═╡ 6999c6ba-5644-4157-94bd-5b170fef383f
md"""
**Remark.**
Nuclear binding energies are calculated in a similar way.
Consider, for example, the nucleus of deuterium, ``{}^2_1 \text{H}_1``, which is composed of one proton and one neutron.
The nuclear binding energy of deuterium is the difference between the total rest energy of the constituents and the rest energy of their combination:

$B = m_n c^2 + m_p c^2 - m_D c^2 \tag{12.2}$

where ``m_D`` is the mass of the deuterium nucleus.
To finish the calculation, we replace the nuclear masses ``m_p`` and ``m_D`` with the corresponding *atomic* masses: ``m({}^1\text{H})c^2 = m_p c^2 + m_e c^2 - 13.6 \text{ eV}`` and ``m({}^2\text{H})c^2 = m_D c^2 + m_e c^2 - 13.6 \text{ eV}``.
Substituting into Eq. 12.2, we obtain

$\begin{align*}
B &= m_n c^2 + [m({}^1 \text{H})c^2 - m_e c^2 + 13.6 \text{ eV}] - [m({}^2 \text{H})c^2 - m_e c^2 + 13.6 \text{ eV}] \\
&= [m_n + m({}^1 \text{H}) - m({}^2 \text{H})]c^2
\end{align*}$

Notice that the electron mass cancels in this calculation.
For deuterium, we then have

$B = (1.008665 \text{ u} + 1.007825 \text{ u} - 2.014102 \text{ u})(931.5 \text{ MeV/u}) = 2.224 \text{ MeV}$

Here we use ``c^2 = 931.5 \text{ MeV/u}`` to convert mass units to energy units.
"""

# ╔═╡ 231a1ed3-ac44-4aa7-81b8-c9f6e3807880
md"""
**Remark.**
Let's generalize this process to calculate the binding energy of a nucleus ``\text{X}`` of mass number ``A`` with ``Z`` protons and ``N`` neutrons.
Let ``m_\text{X}`` represent the mass of this nucleus.
The binding energy of the nucleus is, by analogy with Eq. 12.2, the difference between the nuclear rest energy and the total rest energy of its constituents (``N`` neutrons and ``Z`` protons):

$B = Nm_n c^2 + Zm_p c^2 - m_\text{X} c^2 \tag{12.3}$
"""

# ╔═╡ 75e68202-a825-438d-a610-bcd2a8d1162d
md"""
**Remark.**
Substituting atomic masses for the nuclear masses ``m_p`` and ``m_\text{X}``, we obtain an expression for the total binding energy of any nucleus ``{}_Z^A \text{X}_N``:

$B = [N m_n + Zm({}_1^1 \text{H}_0) - m({}_Z^A \text{X}_N)] c^2 \tag{12.4}$
"""

# ╔═╡ dae07321-e1f3-408c-90e2-6f6980e84338
md"### Proton and Neutron Separation Energies"

# ╔═╡ 13b89d0b-e996-4bba-b48c-192986635fe9
md"""
**Remark.**
If we add the ionization energy ``E_i \, (13.6 \text{eV})`` to a hydrogen atom, we obtain a hydrogen ion ``\text{H}^+`` and a free electron.
In terms of the rest energies of the particles, we can write this process as ``E_i + m(\text{H})c^2 = m(\text{H}^+) c^2 + m_e c^2``.
If we generalize to an arbitrary element ``\text{X}``, this becomes ``E_i + m(\text{X}) c^2 = m(\text{X}^+) c^2 + m_e c^2``, or

$\text{X} → \text{X}^+ + e^-: \quad E_i = m(\text{X}^+) c^2 + m_e c^2 - m(\text{X}) c^2 = [m(\text{X}^+) + m_e - m(\text{X})]c^2$

In the case of element ``\text{X}``, the ionization energy gives the smallest amount of energy necessary to remove an electron from an atom, and we saw in Figure 8.8 how the ionization energy provides important information about the properties of atoms.
"""

# ╔═╡ 7bee79c1-a5a1-41fb-a39e-b75d0df7e55f
md"""
**Remark.**
For nuclei, a process similar to ionization consists of removing the least tightly bound proton or neutron from the nucleus.
The energy required to remove the least tightly bound proton is called the **proton separation energy ``S_p``**.
If we add energy ``S_p`` to a nucleus ``{}_Z^A \text{X}_N``, we obtain the nucleus ``{}_{Z-1}^{A-1} \text{X}'_N`` and a free proton.
In analogy with the atomic case, we can write the separation energy as

${}_Z^A \text{X}_N → {}_{Z-1}^{A_1} \text{X}'_N + p: \qquad S_p = [m({}_{Z-1}^{A-1}) \text{X}'_N + m({}^1 \text{H}) - m({}_Z^A \text{X}_N)] c^2 \tag{12.5}$

using atomic masses.
Similarly, if we add the **neutron separation energy ``S_n``** to nucleus ``{}_Z^A \text{X}_N``, we obtain the nucleus ``{}_Z^{A-1} \text{X}_{N-1}`` and a free neutron:

${}_Z^A \text{X}_N → {}_Z^{A-1} \text{X}_{N-1} + n: \qquad S_n = [m({}_Z^{A-1}\text{X}_{N-1}) + m_n - m({}_Z^A \text{X}_N)]c^2 \tag{12.6}$

Proton and neutron separation energies are typically in the range of ``5``--``10 \text{ MeV}``.
It is no coincidence that this energy is about the same as the average binding energy per nucleon.
The total binding energy ``B`` of a nucleus is the energy needed to take it apart into ``Z`` free protons and ``N`` free neutrons.
This energy is the sum of ``A`` proton and neutron separation energies.
"""

# ╔═╡ 09c6e5a8-3477-4d48-8a64-2a09cc0ff203
md"## The Nuclear Force"

# ╔═╡ 3f468450-a985-483d-9d5c-26ce0647105d
md"""
**Remark.**
Our successful experience with using the simplest atom, hydrogen, to gain insights into atomic structure suggests that we should begin our study of the nuclear force by looking at the simplest system in which that force operates---the deuterium nucleus, which consists of one proton and one neutron.
For example, we might hope to learn something about the nuclear force from the photons emitted in transitions between the excited states of this nucleus.
Unfortunately, this strategy does not work---deuterium has **no nuclear excited states**.
When we bring a proton and an electron together to form a hydrogen atom, many photons may be emitted as the electron drops into its ground state; from this spectrum we learn the energies of the excited states.
When we bring a proton and neutron together to form a deuterium nucleus, only one photon (of energy ``2.224 \text{ MeV}``) is emitted as the system drops directly into its ground state.
"""

# ╔═╡ 6b6dd073-a2cb-4ae3-8f09-94449e8d5524
md"## Quantum States In Nuclei"

# ╔═╡ 39325ff9-9f09-4bdb-bba2-b651fb6c332e
md"""
**Remark.**
Ideally, we would like to solve the Schrödinger equation using the nucelar potential energy.
This process, if it were possible, would give us a set of energy levels for the protons and neutrons that we could then compare with experiment (just as we did for the energy levels of electrons in atoms).
Unfortunately, we cannot carry through this program for several reasons: the nuclear potential energy cannot be expressed in a convenient analytical form, and it is not possible to solve the nuclear many-body problem except by approximation.
"""

# ╔═╡ e5bf441a-bf7a-411a-bbba-421cf9b60b88
md"### Quantum States and Radioactive Decay"

# ╔═╡ bdd1563e-6051-48cc-9e9a-5566ab9451ba
md"""
**Remark.**
Figure 12.10 shows the protons and neutrons near the top of their potential energy wells.
Note that we can add energy to the nucleus that is less than the proton or neutron separation energies.
In the rergion between ``E = -S_n`` or ``-S_p`` and ``E = 0`` are the nuclear excited states in which a proton or a neutron can absorb energy and move from its ground state to one of the unocupied higher states.
As was the case with atoms, the nucleus can make transitions from excited states to lower excited states or to the ground state by photon emission.
In the case of nuclei, those photons are called **gamma rays** and have typical energies of ``0.1 \text{ MeV}`` to a few ``\text{MeV}``.
"""

# ╔═╡ e01f8e7c-e141-4c08-967c-851fb81e4660
md"## Radioactive Decay"

# ╔═╡ c51393de-d2de-4cf5-b23c-bcae6b8380f1
md"""
**Remark.**
Figure 12.11 shows a plot of all the known nuclei, with stable nuclei indicated by dark points.
For the lighter stable nuclei, the neutron and proton numbers are roughly equal.
However, for the heavy stable nuclei, the factor ``Z(Z - 1)`` in the Coulomb repulsion energy grows rapidly, so extra neutrons are required to supply the additional binding energy needed for stability.
For this reason, all heavy stable nuclei have ``N > Z``.
"""

# ╔═╡ 771f6c80-c555-4d07-ad57-ef738f590daf
md"""
**Remark.**
Most of the nuclei represented in Figure 12.11 are unstable, which means that they transform themselves into more stable nuclei by changing their ``Z`` and ``N`` through **alpha decay** (emission of ``{}^4 \text{He}``) or **beta decay** (changing a neutron to a proton or a proton to a neutron).
Nuclei are unstable in excited states, which can transition to ground states through **gamma decay** (emission of photons).
The decay processes (alpha, beta, and gamma decay) are examples of the general subject of **radioactive decay**.
In the remainder of this section, we establish some of the basic properties of radioactive decay, and in the following sections we treat alpha, beta, and gamma decay separately.
"""

# ╔═╡ aba26d13-7e59-452f-812f-b2afa918f56a
md"""
**Remark.**
The rate at which unstable radioactive nuclei decay in a sample of material is called the **activity** of the sample.
The greater the activity, the more nuclear decays per second.
(The activity has nothing to do with the *kind* of decays or of radiations emitted by the sample, or with the *energy* of the emitted radiations.
The activity is determined only by the *number* of decays per second.)
"""

# ╔═╡ 800aaa72-8bfe-4f85-8e96-410d94761bdd
md"""
**Remark.**
The basic unit for measuring activity is the **curie**.
Originally, the curie was defined as the activity of one gram of radium; that definition has since been replaced by a more convenient one:

$1 \text{ curie (Ci)} = 3.7 × 10^{10} \text{ decays/s}$

One curie is quite a large activity, and so we work more often with units of millicurie (mCi), equal to ``10^{-3} \text{ Ci}``, and microcurie ``(\mu\text{Ci})``, equal to ``10^{-6} \text{ Ci}``.
Consider a sample with a mass of a few grams, containing the order of ``10^{23}`` atoms.
If the activity were as large as ``1 \text{ Ci}``, about ``10^{10}`` of the nuclei in the sample would decay every second.
We could also say that for any one nucleus, the probability of decaying during each second is about ``10^{10} / 10^{23}`` or ``10^{-13}``.
This quantity, the decay probability per nucleus per second, is called the **decay constant** (represented by the symbol ``\lambda``).
We assume that ``\lambda`` is a small number, and that it is constant in time for any particular material---the probability of any one nucleus decaying doesn't depend on the age of the sample.
The activity ``a`` depends on the number ``N`` of radioactive nuclei in the sample and also on the probability ``\lambda`` for each nucleus to deca:

$a = \lambda N \tag{12.9}$

whih is equivalent to decays/s = decays/s per nucleus × number of nuclei.
"""

# ╔═╡ b298f699-e700-43b4-ab05-99a1a5861edc
md"### Conservation Laws in Radioactive Decays"

# ╔═╡ 93809796-672b-4521-b75c-036db9eb81bb
md"""
**Remark.**
Our studdy of radioactive decays and nuclear reactions reveals that nature is not arbitrary in selecting the outcome of decays or reactions, but rather that certain laws limit the possible outcomes.
We call these laws **conservation laws**, and we believe these laws give us important insights into the fundamental workings of nature.
Several of these conservation laws are applied to radioactive decay processes.
"""

# ╔═╡ c0bb6b02-c6a5-45a8-95b7-58208fd05ca9
md"#### Conservation of Energy"

# ╔═╡ cf34b620-c6f0-48f7-ad09-8f2f9fbcd2a1
md"#### Conservation of Linear Momentum"

# ╔═╡ d26db994-ece7-4aac-8ab4-d46b2fbc280e
md"#### Conservation of Angular Momentum"

# ╔═╡ e3d1e33d-849f-4a2f-8307-8dda77b177ac
md"#### Conservation of Electric Charge"

# ╔═╡ e6d76b22-7439-40b2-a87d-4df4214ad4f6
md"#### Conservation of Nucleon Number"

# ╔═╡ 2097529f-3b85-4f22-842d-39f707abd0a8
md"## Alpha Decay"

# ╔═╡ 0f4c1817-01d9-414e-8b3c-e3bb0171edc9
md"""
**Remark.**
In alpha decay, an unstable nucleus disintegrates into a lighter nucleus and an alpha particle (a nucleus of ``{}^4 \text{He}``), according to

${}_Z^A \text{X}_N → {}_{Z-2}^{A-4} \text{X}'_{N-2} + {}_2^4 \text{He}_2 \tag{12.19}$

where ``\text{X}`` and ``\text{X}'`` represent different nuclei.
For example, ``{}_{88}^{226} \text{Ra}_{138} → {}_{86}^{222} \text{Rn} + {}_2^4 \text{He}_2``.
"""

# ╔═╡ 9cfd32f3-ae6d-4644-a524-62fbd836f94d
md"### Quantum Theory of Alpha Decay"

# ╔═╡ 01d686d8-a0b5-4f89-b581-f907e163b572
md"""
**Remark.**
Alpha decay is an example of quantum-mechanical barrier penetration, as we discussed in Chapter 5.
Suppose it is energetically possible for two neutrons and two protons to form an alpha particle, as represented in Figure 12.10.
The alpha particle is trapped inside the nucleus by a barrier due to the Coulomb energy.
The height of this barrier ``U_B`` is the Coulomb potential energy of the alpha particle and daughter nucleus at the radius ``R``:

$U_B = \frac{1}{4\pi\varepsilon_0} \frac{q_1 q_2}{r} = \frac{2(Z - 2) e^2}{4\pi\varepsilon_0 R} \tag{12.24}$

which gives 30 to 40 MeV for a typical heavy nucleus.
Here ``q_1 = 2e`` is the electric charge of the alpha particle, and ``q_2 = (Z - 2)e`` is the electric charge of the nucleus after the decay, which is responsible for the Coulomb force.
"""

# ╔═╡ 61a9f759-d3b2-4a8b-9fbb-fbf34a186b3b
md"## Beta Decay"

# ╔═╡ 2fc4a8f8-1423-4509-943f-ba35b93712ac
md"""
**Remark.**
In beta decay a neutron in the nucleus changes into a proton (or a proton into a neutron); ``Z`` and ``N`` each change by one unit, but ``A`` doesn't change.
The emitted particles, which were called beta particles when first observed in 1898, were soon identified as electrons.
In the most basic beta decay process, a free neutrons decays into a proton and an electron: n → p + e (plus a third particle, as we discuss later).
"""

# ╔═╡ bceb38ff-60a2-4e65-bd8c-8755785be466
md"## Gamma Decay and Nuclear Excited States"

# ╔═╡ 20a49496-c0db-4a1c-a23f-4eba555dde74
md"""
**Remark.**
Following alpha or beta decay, the final nucleus may be left in an excited state.
Just as an atom does, the nucleus will reach its ground state after emitting one or more photons, known as nuclear gamma rays.
The energy of each photon is the energy difference between the initial and final nuclear states, less a negligibly small correction for the recoil kinetic energy of the nucleus.
The energies of emitted gamma rays are typically in the range of 100 keV to a few MeV.
Nuclei can likewise be excited from the ground state to an excited state by absorbing a photon of the appropriate energy, in a process similar to the resonant absorption by atomic states.
"""

# ╔═╡ 376cfd7d-63d0-4e15-b304-5dc059ee04dc
md"### Nuclear Excited States"

# ╔═╡ 1387795c-fc27-4678-9a18-871602940d4a
md"""
**Remark.**
The study of nuclear gamma emission is an important tool of the nuclear physicist; the energies of the gamma rays can be measured with great precision, and they provide a powerful means of deducing the energies of the excited states of nuclei.
This type of **nuclear spectroscopy** is very similar to the methods of molecular spectroscopy discussed in Chapter 9.
In fact, the nuclear excited states can be formed in ways that are similar to molecular excited states:

1. **Proton or Neutron Excitation**

2. **Nuclear Vibrations**

3. **Nuclear Rotations**
"""

# ╔═╡ 2b538785-68fc-4c20-8a73-2bbe9c5c3405
md"### *Nuclear Resonance"

# ╔═╡ 2976987c-b706-4222-9dfe-db5e9b7c2a4f
md"""
**Remark.**
One way of studying atomic systems is to do **resonance** experiments.
In such experiments, radiation from a collection of atoms in an excited state is incident on a collection of identical atoms in their ground state.
The ground-state atoms can absorb the photons and jump to the corresponding excited state.
However, as we have seen, the emitted photon energy is less than the transition energy by the recoil kinetic energy ``K_R``; moreover, it is less than the photon energy required for resonance by ``2K_R``, because the *absorbing* atom must recoil also.
The absorption experiment is still possible, because the excited states don't have "exact" energies---a state with a mean lifetime ``\tau`` has an energy uncertainty ``ΔE`` that is given by the uncertainty relationship: ``ΔE \tau ∼ \hbar``.
That is, the state lives on the average for a time ``\tau``, and during that time we can't determine its energy to an accuracy less than ``ΔE``.
For typical atomic states, ``\tau ∼ 10^{-8} \text{ s}``, so ``ΔE ∼ 10^{-7} \text{ eV}``.
Because ``K_R``, which is of the order of ``10^{-10} \text{ eV}``, is much less than the width ``ΔE``, the "shift" caused by the recoil is not large, and the widths of the emitting and absorbing atomic states cause sufficient overlap for the absorption process to occur.
Figure 12.22 illustrates this case.
"""

# ╔═╡ 80f5573b-c5e8-44e4-b690-7508cb664fc6
md"## Natural Radioactivity"

# ╔═╡ 6b826f29-9505-48e6-aca4-76ceaae1fced
md"""
**Remark.**
All of the elements beyond the very lightest (hydrogen and helium) were produced by nuclear reactions in the interiors of stars.
These reactions produce not only stable elements, but radioactive ones as well.
Most radioactive elements have half-lives that are much smaller than the age of Earth (about ``4.5 × 10^9 \text{ y}``), so those radioactive elements that may have been present when the Earth was formed have decayed to stable elements.
However, a few of the radioactive elements created long ago have half-lives that are as large as or even greater than the age of the Earth.
These elements can still be observed to undergo radioactive decay and account for part of the background of **natural radioactivity** that surrounds us.
"""

# ╔═╡ 1dda5d9a-ef0c-4394-9c7e-4bc73b51d16f
md"# Nuclear Reactions and Applications"

# ╔═╡ ddddb6e0-cc1b-4b39-ba3f-806cda8819a2
md"""
**Remark.**
The knowledge of the nucleus that we can obtain from studying radioactive decays is limited, because only certain radioactive processes occur in nature, only certain isotopes are made in those processes, and only certain excited states of nuclei (those that happen to follow radioactive decays) can be studied.
Nuclear reactions, however, give us a controllable way to study *any* nuclear species and to select any excited states of that species.
"""

# ╔═╡ 25dad69d-8573-47e6-bb2d-242c0cc87e4a
md"""
**Remark.**
In this chapter we discuss some of the different nuclear reactions that can occur, and we study the properties of those reactions.
Two nuclear reactions are of particular importance: fission and fusion.
We pay special attention to those processes and we discuss how they are useful as sources of energy (or, more correctly, as **converters** of nuclear energy into thermal or electrical energy).
"""

# ╔═╡ 3997bfc9-f4af-49e5-b0db-2be92b9177f1
md"""
**Remark.**
We conclude our study of nuclear physics with an introduction to some of the ways that methods of nuclear physics can be applied to problems in a variety of different areas.
"""

# ╔═╡ 21c8c055-5c75-43e7-a550-aa70c6b2d758
md"## Types of Nuclear Reactions"

# ╔═╡ f82e2130-dcb3-45c7-9f83-54c3bb959c22
md"""
**Remark.**
In a typical nuclear reaction laboratory experiment, a beam of particles of type ``x`` is incident on a target containing nuclei of type ``X``.
After the reaction, an outgoing particle ``y`` is observed in the laboratory, leaving a residual nucleus ``Y``.
Symbolically, we write the reaction as

$x + X → y + Y$

For example,

${}_1^2 \text{H}_1 + {}_{29}^{63} \text{Cu}_{34} → \text{n} + {}_{30}^{64} \text{Zn}_{34}$

Like a chemical reaction, a nuclear reaction must be balanced---the total number of protons must be the same before and after the reaction, and also the total number of neutrons must remain the same.
In the example above, there are 30 protons on each side and 35 neutrons on each side.
(The forces responsible for nuclear beta decay can change neutrons into protons or protons into neutrons, but these forces act on a typical time scale of at least ``10^{-10} \text{ s}``.
The projectile and target nuclei are within the range of one another's nuclear forces for an interval of at most ``10^{-20} \text{ s}``, so there is not enough time for this type of proton--neutron conversion to take place.)
The protons and neutrons can be rearranged among the reacting nuclei, but their numbers cannot change.
"""

# ╔═╡ 591cb6a9-9754-4730-9182-622583f6641f
md"""
**Remark.**
In nuclear reaction experiments, we usually measure two basic properties of the particle ``y``: its energy and its probability to emerge at a certain angle with a certain energy.
We look briefly at these two types of measurements.

1. **Measuring the particle energy**

2. **Measuring the reaction probability**
"""

# ╔═╡ 5d96a623-00eb-4f69-b62a-4e5c6456172b
md"### The Reaction Cross Section"

# ╔═╡ 7b1d8c5b-010b-45cb-8936-1b567c3cf9b6
md"""
**Remark.**
Reaction probabilities usually expressed in terms of the **cross section**, which is a sort of effective area presented by the target nucleus to that projectile for a specific reaction, for all possible energies and directions of travel of the outgoing particle ``y``.
The larger the reaction probability, the larger is the corresponding cross section.
In general, the cross section depends on the energy of the incident particle, ``K_X``.
"""

# ╔═╡ acc337b2-ad40-46bf-9a58-65e7d0d521cc
md"## Radioisotope Production in Nuclear Reactions"

# ╔═╡ dba025e1-c08d-479c-91a1-167063f39182
md"""
**Remark.**
Often we use nuclear reactions to produce radioactive isotopes.
In this procedure, a stable (nonradioactive) isotope ``X`` is irradiated with the particle ``x`` to form the radioactive isotope ``Y``; the outgoing particle ``y`` is of no interest and is not observed.
In this case we don't observe the individual particles ``Y`` as they are produced in the reaction; instead, we irradiate the target to produce some number of radioactive ``Y`` nuclei that remain within the target.
After the irradiation we observe decay of the nuclei ``Y``.
"""

# ╔═╡ 1f30bcaa-3b31-42a7-8802-33d688288a75
md"## Low-Energy Reaction Kinematics"

# ╔═╡ 7e6b0f3b-20ff-4f37-b4f4-b2d596d60347
md"""
**Remark.**
We assume for this discussion that the velocities of the nuclear particles are sufficiently small that we can use nonrelativistic kinematics.
We consider a projectile ``x`` moving with momentum ``\vec{𝐩}_x``, and kinetic energy ``K_X``.
The target is at rest, and the reaction products have momenta ``\vec{𝐩}_y`` and ``\vec{𝐩}_Y`` and kinetic energies ``K_y`` and ``K_Y``.
The particles ``y`` and ``Y`` are emitted at angles ``\theta_y`` and ``\theta_Y`` with respect to the direction of the incident beam.
Figure 13.5 illustrates this reaction.
We assume that the resultant nucleus ``Y`` is not observed in the laboratory (if it is a heavy nucleus, moving relatively slowly, it generally stops within the target).
"""

# ╔═╡ 69cdae52-1c54-491a-b90d-4950754cc18b
md"## Fission"

# ╔═╡ a5e9f5c5-9459-4647-96d8-047316897e19
md"""
**Remark.**
The massive nucleus ``{}^{254} \text{Cf} (Z = 98)`` can be produced in accelerators by collisions between suitably chosen projectiles and targets.
This nucleus is of special interest because it is also produced in supernova explosions, and knowledge of its properteis provides a key to understanding the formation of the elements in stars, as we discuss later in this chapter.
``{}^{254} \text{Cf}`` is radioactive, decaying with a half-life of 60.5 d.
The ``Q`` values for positive and negative beta decay of ``{}^{254} \text{Cf}`` are both negative, so that mode of decay is not available.
Alpha decay is energetically possible but the Coulomb barrier is very high, making that decay mode improbable.
Instead, ``{}^{254} \text{Cf}`` decays by splitting into two pieces of much smaller masses---for example,

${}_{98}^{254} \text{Cf}_{156} → {}_{54}^{140} \text{Xe}_{86} + {}_{44}^{110} \text{Ru}_{66} + 4\text{n}$

This mode of decay is known as **nuclear fission**.
Fission can occur as a spontaneous radioactive decay process for a relatively small number of massive nuclei, and it can also be induced in other nuclei by adding energy to make the nucleus less stable.
In addition to the two fission fragments, some neutrons are usually emitted in the fission process.
"""

# ╔═╡ 454217b8-ba00-4a82-9e89-7ab9db4659db
md"### Energy Released in Fission"

# ╔═╡ a11988eb-804c-4130-b63c-971c8a10910b
md"### Induced Fission"

# ╔═╡ a9f832d2-3605-4f18-aa9a-65f6fb7a2a21
md"### Electrical Power from Fission"

# ╔═╡ 446ae174-03e1-492f-8a79-53f85be47774
md"### Fission Reactors"

# ╔═╡ 959bd829-f176-4ebf-b2df-3f1f97e9aea1
md"### A Naturally Occurring Fission Reactor"

# ╔═╡ 8f499e77-0c0e-4900-81f4-a28b86bf1d75
md"## Fusion"

# ╔═╡ eb052b81-287b-42e1-bff6-1d6599efba20
md"""
**Remark.**
Energy may also be released in nuclear reactions in the process of fusion, in which two light nuclei combine to form a heavier nucleus.
The energy released in this process is the excess binding energy of the heavy nucleus compared with the lighter nuclei; from Figure 12.4, we see that this process can release energy as long as the final nucleus is less massive than about ``A = 60``.
"""

# ╔═╡ 83092c82-8b52-4021-aa33-0175c6032c85
md"### Fusion Processes in Stars"

# ╔═╡ 5320b026-c14a-4a99-bfd5-72a6a051ff3f
md"### Fusion Reactors"

# ╔═╡ 3ae0c473-0211-4936-bd14-c08edcdb9225
md"### Fusion Reactor Design"

# ╔═╡ 4feff33f-bd37-4dca-8958-53789f4f4f8c
md"## Nucleosynthesis"

# ╔═╡ 9c7e6d63-e082-4312-b5d1-6f1a8ef0da80
md"""
**Remark.**
After a star's hydrogen has been converted to helium through fusion reactions, gravitational collapse can occur that raises the temperature of the core of the star from about ``10^7 \text{ K}`` to about ``10^8 \text{ K}``.
At this point there is enough thermal kinetic energy to overcome the Coulomb repulsion of the helium nuclei, and helium fusion can begin.
In this process three ``{}^4 \text{He}`` are converted into ``{}^{12} \text{C}`` by the two-step process

$\begin{align*}
{}^4 \text{He} + {}^4 \text{He} &→ {}^8 \text{Be} \\
{}^8 \text{Be} + {}^4 \text{He} &→ {}^{12} \text{C}
\end{align*}$

The first reaction is endothermic, with a ``Q`` value of ``92 \text{ keV}``.
The nucleus ``{}^8\text{Be}`` is unstable and decays back into two alpha particles in a time of the order of ``10^{-16} \text{ s}``.
Even so, the Boltzmann factor ``e^{-ΔE / kT}`` suggest that at ``10^8 \text{ K}`` there will be a small concentration of ``{}^8 \text{Be}``.
The second reaction has a particularly large cross section; in spite of the rapid breakup of ``{}^8 \text{Be}``, there is still a good chance to form ``{}^{12} \text{C}``.
The net ``Q`` value for the process is ``7.3 \text{ MeV}``, or about ``0.6 \text{ MeV}`` per nucleon, much less than the ``6.7 \text{ MeV}`` per nucleon produced by hydrogen burning.
"""

# ╔═╡ 2c72b33b-dd9f-455c-8b06-fd4bd0a0cab7
md"""
**Remark.**
Once enough ``{}^{12}\text{C}`` has formed in the core, other alpha particle reactions become possible, such as

$\begin{align*}
{}^{12}\text{C} + {}^4\text{He} &→ {}^{16}\text{O} \\
{}^{16}\text{O} + {}^4\text{He} &→ {}^{20}\text{Ne} \\
{}^{20}\text{Ne} + {}^4\text{He} &→ {}^{24}\text{Mg}
\end{align*}$

Each of these reactions is exothermic, releasing a few MeV of energy and contributing to the star's energy production.
At still higher temperature ``(10^9 \text{ K})`` carbon burning and oxygen burning begin:

$\begin{align*}
{}^{12}\text{C} + {}^{12}\text{C} &→ {}^{20}\text{Ne} + {}^4\text{He} \\
{}^{16}\text{O} + {}^{16}\text{O} &→ {}^{28}\text{Si} + {}^4\text{He}
\end{align*}$

Eventually ``{}^{56}\text{Fe}`` is reached, at which point no further energy is gained by fusion (Figure 12.4).
"""

# ╔═╡ 4387cf0e-962d-42ff-9bde-fd5cf628efbf
md"## Applications of Nuclear Physics"

# ╔═╡ e2db7f84-d871-4907-bff3-540b2c90f19c
md"""
**Remark.**
In this chapter, we have discussed how fission and fusion reactions can be used to generate electrical power, and in the previous chapter we discussed how the radioactive decay of various isotopes can be used to date the historical origin of material containing those isotopes.
These are but a few of the many ways that nuclear decays and reactions can be applied to the solution of practical problems.
In this section we discuss briefly some other applications of the techniques of nuclear physics.
"""

# ╔═╡ ba781d5f-e9ce-4d71-8db9-cd120506213f
md"### Neutron Activation Analysis"

# ╔═╡ a430d32c-a7bc-4ba3-942c-f1863d3bc1fa
md"""
**Remark.**
Nearly every radioactive isotope emits characteristic gamma rays, and many chemical elements can be identified by their gamma-ray spectra.
For example, when ``{}^{59}\text{Co}`` (the only stable isotope of cobalt) is placed in a flux of neutrons (such as is found near the core of a reactor), neutron absorption results in the production of the radioactive isotope ``{}^{60}\text{Co}``, which beta decays with a half-life of 5.27 years.
"""

# ╔═╡ 0d80c4c2-f52d-4235-af75-62df0b3ac90a
md"### Medical Radiation Physics"

# ╔═╡ f5095848-80e5-4c4d-ad50-5d8078fa6e3e
md"### Alpha-Scattering Applications"

# ╔═╡ cd96f14d-d446-44b3-88df-15dceaea1d79
md"### Superheavy Elements"

# ╔═╡ b84fd6aa-2e56-4058-b731-7f70a48d3816
md"# Elementary Particles"

# ╔═╡ eaf572d0-fd22-46a6-ae66-1abe2e857213
md"""
**Remark.**
The search for the basic building blocks of nature has occupied the thoughts of scientific investigators since the Greeks introduced the idea of atomism 2500 years ago.
"""

# ╔═╡ bc75159b-c645-4d86-965b-68c5c01f45b5
md"## The Four Basic Forces"

# ╔═╡ 24c92f02-d754-4081-a3fa-20112cb1796e
md"""
**Remark.**
All of the known forces in the universe can be grouped into four basic types.
In order of increasing strength, these are: *gravitation*, the *weak interaction*, *electromagnetism*, and the *strong interaction*.

1. **The Gravitational Interaction**
   Gravity is of course exceedingly important in our daily lives, but on the scale of fundamental interactions between particles in the subatomic realm, it is of no importance at all.
   To give a relative figure, the gravitational force between two protons just touching at their surfaces is about ``10^{-38}`` of the strong force between them.

2. **The Weak Interaction**
   The weak interaction is responsible for nuclear beta decay (see Section 12.8) and other similar decay processes involving fundamental particles.
   It does not play a major role in the binding of nuclei.
   The weak force between two neighboring protons is about ``10^{-7}`` of the strong force between them, and the range of the weak force is on the scale of ``0.001 \text{ fm}``.

3. **The Electromagnetic Interaction**
   Electromagnetism is important in the structure and the interactions of the fundamental particles.
   For example, some particles interact or decay primarily through this mechanism.
   Electromagnetic forces are of infinite range, but the shielding effect generally diminishes their effect for ordinary objects.
   Many common macroscopic forces (such as friction, air resistance, drag, and tension) are ultimately due to electromagnetic forces at the atomic level.

4. **The Strong Force**
   The strong force, which is responsible for the binding of nuclei, is the dominant one in the reactions and decays of most of the fundamental particles.
"""

# ╔═╡ 0d3e88dc-de33-4018-b519-55c4f5de268e
md"""
**Table 14.1 The Four Basic Forces**

| Type | Range | Relative Strength | Characteristic Time | Typical Particles |
|------|-------|-------------------|---------------------|-------------------|
| Strong | 1 fm | 1 | ``< 10^{-22}`` s | π, K, n, p |
| Electromagnetic | ∞ | ``10^{-2}`` | ``10^{-14}``--``10^{-20}`` s | e, μ, π, K, n, p |
| Weak | ``10^{-3}`` fm | ``10^{-7}`` | ``10^{-8}``--``10^{-13}`` s | All |
| Gravitational | ∞ | ``10^{-38}`` | Years | All |
"""

# ╔═╡ 6a3ed4f1-5ff9-4559-8399-fa4e44bd6b13
md"""
**Table 14.2 The Field Particles**

| Type | Field Particle | Symbol | Charge (e) | Spin (ħ) | Rest Energy (GeV) |
|---|---|---|---|---|---|
| Strong | Gluon | g | 0 | 1 | 0 |
| Electromagnetic | Photon | γ | 0 | 1 | 0 |
| Weak | Weak boson | W⁺,W⁻,Z⁰ | ±1,0 | 1,1 | 80.4,91.2 |
| Gravitational | Graviton |  | 0 | 2 | 0 |
"""

# ╔═╡ 12ec139e-bae3-4a85-8837-cb2af05485d7
md"## Classifying Particles"

# ╔═╡ 9550de58-6db4-4417-8fcc-eb07ae8c5f6d
md"""
**Remark.**
One way of studying the elementary particles is to classify them into different categories based on certain behaviors or properties and then to look for similarities or common characteristics among the classifications.
We have already classified some particles in Table 14.1 according to the types of forces through which they interact.
Another way of classifying them might be according to their masses.
In the early days of particles physics, it was observed that the lightest particles (including electrons, muons, and neutrinos) showed one type of behavior, the heaviest group (including protons and neutrons) showed a different behavior, and a middle group (such as pions and kaons) showed a still different behavior.
The names originally given to these groups are based on the Greek words for light, middle, and heavy: **leptons** for the light particles, **mesons** for the middle group, and **baryons** for the heavier particles.
Even though the classification by mass is now obsolete (leptons and mesons have been discovered that are more massive than protons or neutrons), we keep the original names, which now describe instead a group or *family* of particles with similar properties.
When we compare our first two ways of classifying particles, we find an interesting result: The leptons do not interact through the strong force, but the mesons and baryons do.
"""

# ╔═╡ 8f6ed342-92b4-42e9-8288-8de9d4e8d8d3
md"### Antiparticles"

# ╔═╡ efdf9f55-c92b-4b9c-a6df-63e021261e31
md"""
**Remark.**
One additional property that is used to classify a particle is the nature of its **antiparticle**.
Every particle has an antiparticle, which is identical to the particle in such properties as mass and lifetime, but differs from the particle in the sign of its electric charge (and in the sign of certain other properties, as we discuss later).
"""

# ╔═╡ c154023e-6a16-4b19-b41f-2d51145db429
md"### Three Families of Particles"

# ╔═╡ 5ccb27d5-60be-438e-b52a-44cc18536173
md"## Conservation Laws"

# ╔═╡ e99d40ff-758f-45bf-95ce-a331996b5df6
md"""
**Remark.**
In the decays and reactions of elementary particles, conservation laws provide a way to understand why some processes occur and others are not observed, even though they are expected on the basis of other considerations.
"""

# ╔═╡ f8ca843c-71a3-42a5-8194-1c7afe645a27
md"### Lepton Number Conservation"

# ╔═╡ 30ca8654-74c5-4d92-bf92-2daf6b44b79b
md"""
**Remark.**
In negative beta decay, we always find an antineutrino emitted, never a neutrino.
Conversely, in positron beta decay, it is the neutrino that is always emitted.
We account for these processes by assigning each particle a **lepton number** ``L``.
The electron and neutrino are assigned lepton numbers of ``+1``, and the positron and antineutrino are assigned lepton numbers of ``-1``; all mesons and baryons are assigned lepton numbers of zero.
"""

# ╔═╡ 00b36724-3fee-42b8-b07f-ee822dfd4bd4
md"### Baryon Number Conservation"

# ╔═╡ 23c26ecc-46d9-438e-b0bd-170c3bee6825
md"""
**Remark.**
Baryons are subject to a similar conservation law.
All baryons are assigned a baryon number ``B = +1``, and all antibaryons are assigned ``B = -1``.
All baryons (mesons and leptons) have ``B = 0``.
"""

# ╔═╡ 3afe84d3-7bd4-40e2-82d2-2e28ea2b8d62
md"### Strangeness Conservation"

# ╔═╡ a0bd1e96-88fb-4633-8988-986f2bae76bb
md"""
**Remark.**
The number of mesons that can be created or destroyed in decays or reactions is not subject to a conservation law like the number of leptons or baryons.
"""

# ╔═╡ 8a2cd9a4-220c-4ceb-8aee-106f3f264823
md"## Particle Interactions and Decays"

# ╔═╡ 2ecb7182-d0eb-45c6-87ad-287a4db7d7b0
md"""
**Remark.**
In this section, we briefly summarize the properties of the elementary particles and how they are measured.
"""

# ╔═╡ 688e2608-8032-4606-91f3-a1188c9d7495
md"### Detecting Particles"

# ╔═╡ 1a0b2e81-bc9c-44e1-a5f3-968f24a97aa3
md"""
**Remark.**
Observing the products of these reactions, which may involve dozens of high-energy charged and uncharged particles, poses a great technological problem for the experimenter.
"""

# ╔═╡ 3c915d65-6953-43d9-9a28-ddb26342f831
md"## Energy and Momentum in Particle Decays"

# ╔═╡ da58ff56-ef79-4589-9917-e73f2ee7b635
md"## Energy and Momentum in Particle Reactions"

# ╔═╡ b2be10d8-65dc-4c3a-b569-2edead2556eb
md"### Threshold Energy"

# ╔═╡ 9fa6c141-1c72-4e4b-b9f6-062fb067bcf7
md"## The Quark Structure of Mesons and Baryons"

# ╔═╡ 88c8017e-712b-4fda-b714-9d5f52dd7fe9
md"### Quarkonium"

# ╔═╡ ab10dc5a-f5c2-4b9a-925b-ddd460dae123
md"## The Standard Model"

# ╔═╡ 4d1de95c-fd9f-421f-883c-3aea417d34d9
md"# Cosmology: The Origin and Fate of the Universe"

# ╔═╡ 8f89183e-0970-431b-ba97-96fa22e7c07e
md"## The Expansion of the Universe"

# ╔═╡ 54bf2b18-6548-430a-9b13-39f424452088
md"### Hubble's Law"

# ╔═╡ 9444b9bf-bdf6-40b3-8c7e-cdf4c92d45b1
md"## The Cosmic Microwave Background Radiation"

# ╔═╡ 8bb88c7a-c6be-4e68-a23b-26700ff09c94
md"## Dark Matter"

# ╔═╡ faf0b2f1-d11a-42ca-bb86-642d2f56d610
md"## The General Theory of Relativity"

# ╔═╡ ad44a1e4-960e-4dd5-ae91-7be738d253de
md"## Tests of General Relativity"

# ╔═╡ 65036b46-b82e-4baa-a160-1b77288be451
md"### Deflection of Starlight"

# ╔═╡ fe3f0732-dffb-4a80-98ef-992ec237dc5d
md"### Delay of Radar Echoes"

# ╔═╡ 858b8bdd-79af-4544-bddd-ef934fd4d8d5
md"### Precession of Perihelion of Mercury"

# ╔═╡ 58e265aa-057a-4cbc-ac8e-b60bc5824ec4
md"### Gravitational Radiation"

# ╔═╡ 4ccc3b6c-9ef9-4882-8c3c-ce113ea43fcd
md"## Stellar Evolution and Black Holes"

# ╔═╡ fafb9d4a-e0c3-4e22-af5e-bb67a90c7c37
md"### Black Holes"

# ╔═╡ 33fe9620-054e-40dd-92eb-8c30c1ebd3a7
md"## Cosmology and General Relativity"

# ╔═╡ cb97c401-91ce-4bfd-8022-c353eacd1422
md"## The Big Bang Cosmology"

# ╔═╡ f0439fc8-fe04-4cca-b888-5156723d6c97
md"## The Formation of Nuclei and Atoms"

# ╔═╡ d07ea45c-b8b1-4554-9ba5-3c0ed5c8817e
md"## Experimental Cosmology"

# ╔═╡ be063e7a-f7ab-483f-9e59-58c5e54de407
md"### Matter and Antimatter"

# ╔═╡ df78edd1-e503-4958-b083-003d076715ec
md"### Helium Abundance"

# ╔═╡ 76de991b-1889-4993-b43f-f5e0bc1c2b36
md"### The Horizon Problem"

# ╔═╡ fdc7e602-9d43-491f-b1b4-94281ce96945
md"### The Composition and Age of the Universe"

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.34"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0-beta1"
manifest_format = "2.0"
project_hash = "e766545f1b4ef968b5991d6a702e32de0b70adeb"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "024fe24d83e4a5bf5fc80501a314ce0d1aa35597"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "0.5.0+0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

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

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.0+0"

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

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "13468f237353112a01b2d6b32f3d0f80219944aa"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.2.2"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.8.0"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "8979e9802b4ac3d58c503a20f2824ad67f9074dd"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.34"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

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
version = "1.0.0"

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
# ╟─88a4cffe-7564-11ec-1a0e-4f386d9e3ed3
# ╟─e71f411b-a81b-43ab-bc17-4f91956c7754
# ╟─4aaafe20-f5f9-4cea-a0a7-cc198c52ff36
# ╟─920f965a-f147-42bd-af96-2741264d58f0
# ╟─bdb37144-3ec1-4011-a19f-e153fa40ed00
# ╟─dccb0fa6-b310-4deb-af17-82b53c1b63b7
# ╟─7bc66048-abd7-48ba-af15-fd650354230a
# ╟─de0e4252-cce2-4c97-94ed-50d99b8c3bd9
# ╟─50ca895f-d621-4ee8-b430-be1629290457
# ╟─3879bed9-17e8-414d-9b18-1a5af17852f3
# ╟─fc4c587a-23ba-4e28-8efa-3614bfce19d2
# ╟─8ebeba73-c4ec-4a77-be9f-bf614c584d58
# ╟─1c036a24-14b6-465b-954f-ec873e72bfce
# ╟─db9814f4-4e94-4d5a-a6de-22071552168a
# ╟─a08e152e-10c2-4b40-827a-376e909c37b3
# ╟─63d7a79a-dc8e-40b6-9b13-544a1a8ab901
# ╟─eff77360-2f02-47bf-9254-ee7ad4ab7eb7
# ╟─7f98aa9f-70ff-40a6-8938-c9e8c18e7f1f
# ╟─343dbe20-43db-4cb8-a881-09b24ac84b51
# ╟─24a8736c-799f-4b6e-9af8-59b08c1fa175
# ╟─30723a24-ca20-43cd-bac4-1f5e3d07bf6e
# ╟─9b428d66-5058-4def-9b11-5b4570780db6
# ╟─58d35e8e-77b8-4018-b2c8-d14804b1a6b4
# ╟─5569af2e-4df9-4b3b-988a-62c75c4547ee
# ╟─a615b43d-f75e-44f2-8425-e5d4567469ae
# ╟─cafd1baa-dcc4-4eda-9006-ea0d8c540886
# ╟─2ab1e92b-ae48-436e-8d91-a05624eae649
# ╟─96615d08-c72d-4bd6-bb3c-5fc2ea828085
# ╟─67b23133-d90a-45c6-b438-c3b3417f9ede
# ╟─e199612c-4d89-4576-89f9-9776f3a35e88
# ╟─07914220-fd51-41de-b136-b95041fed751
# ╟─a8998f41-50c8-472e-88fe-17585a4a99f4
# ╟─724e2048-818f-49aa-ae96-47f1bb5a327f
# ╟─95efdadf-414d-43c5-927d-5ae42a74a9cd
# ╟─5b700809-bf0e-4e98-b9dc-083233678742
# ╟─493374b6-3f59-424e-8499-c460c89a805a
# ╟─a5edd239-67e0-4b38-ab07-debbfc476040
# ╟─c7a73959-9ab8-4eb0-8c60-17075b710741
# ╟─4fb60a96-8200-4558-ab03-af6b640d831d
# ╟─cf3e3a39-8071-48d7-941f-fa2df5c24c8b
# ╟─c655ca2d-42d2-449e-99ef-a49e21b77a76
# ╟─b0e44f22-210e-4be7-a27f-fa3626cc2d74
# ╟─63f38947-8341-4ae6-af1b-cd91ea2ccf11
# ╟─c04aaf8c-0b71-4257-86d7-d5c048e34a1e
# ╟─92bda6f2-84ae-43d1-8f08-2c9964cf4be5
# ╟─c846e115-241a-4152-9d90-842e390b2a75
# ╟─16222e54-3327-4a11-919e-9f2d1485c967
# ╟─c0f6dd98-f45e-49e6-80ce-4286b605215f
# ╟─7d68f020-b82f-4010-8099-a4279737de7f
# ╟─c8bafaa8-09cc-4490-88de-a43266cee632
# ╟─26455e8b-715d-4a3e-8da5-b60c4edda480
# ╟─203a8c2c-4624-4003-aa32-80b4ecf45569
# ╟─49ac354b-d22b-494c-86df-6b25355d4af4
# ╟─8c8abde5-a603-46dd-b4cf-f3f3f1b8edc7
# ╟─545cc12e-58c1-4113-9ca9-c515a6f43e98
# ╟─5ea36696-efae-4080-8c11-437d424c6ef3
# ╟─0a5cb747-6aaa-4095-8b53-323e9027bdfa
# ╟─abe192ab-5b25-4dd9-ba02-35298b6280bd
# ╟─63e4903e-d0b5-41ab-821f-1645bd0140ff
# ╟─0bb97977-9453-438a-8489-da1285c6e56b
# ╟─a7208b6e-858f-48b2-b489-abe1c7eb117b
# ╟─2e3e360d-b2b7-41cc-88cf-aee39b8a3ca8
# ╟─6063907d-46ba-49c4-8a3b-082f5e289ed4
# ╟─28cb153a-b34d-422a-8b94-e7ffe595aa04
# ╟─292f82c1-57cf-40d7-aa37-24235846dbea
# ╟─eacd8290-637d-4e2e-a117-cbb560830620
# ╟─27804728-9e84-4d24-b179-9fc4256a9c3b
# ╟─bb9d02b2-d7b7-4130-a8f4-9f0902ad4d43
# ╟─948ac9a6-8518-48b4-afe1-f42fc3713835
# ╟─b65a39bd-28d6-4438-ab1b-5aa1e1ffe8d0
# ╟─c6dc2770-64c0-4d00-a01e-0bd3027a171e
# ╟─2f6b3d33-b647-47ef-8d60-67e23369056a
# ╟─232ac1b7-9f29-45c9-b58c-927c70189668
# ╟─937a9800-c44c-42a6-8cad-71895c8a8c9a
# ╟─dfc892ee-b050-4e7e-a764-f28f78d2df56
# ╟─48e1e6a3-e017-4770-8065-ece9cfbfe4f8
# ╟─1ada1f94-abff-4d28-95de-61b3e8409834
# ╟─968612e4-c1b0-453b-82be-2b23b2a52dde
# ╟─db2cde4c-6079-442b-939b-606591401768
# ╟─ed8c6205-19c7-4181-99c1-886097807ef8
# ╟─850b8519-8f5e-439a-b328-3e937de33e33
# ╟─fa30edc3-93b0-474d-b205-7bc1ba403ec2
# ╟─740385df-b023-41e4-89ba-80cc416274c4
# ╟─199aff83-d95f-453f-8663-f45e277706da
# ╟─229b8d41-283e-4840-9f23-a9bae839c2f6
# ╟─de58dde8-451d-4624-a1a8-e0a54d3c03f8
# ╟─6b7a6bea-245c-4481-a130-d5a1d81d31cb
# ╠═8e7502a9-e3c9-4b24-a207-f1642f305dce
# ╟─1f77d477-8668-40d1-87a8-4918f8efb326
# ╠═314c2884-d45b-4d07-a792-15611148568e
# ╟─ef516397-0de2-4491-8119-9fe170e4c57a
# ╟─3f4bb529-8cb9-4fa8-8d54-e1fbbefc85cc
# ╟─dd9fc6ea-90f5-4699-8e3c-e620170e4663
# ╟─97fb59b5-88b5-4a86-a2ff-399305ff837c
# ╟─85845132-daad-420a-aedc-6367b64fc914
# ╟─63973bb9-9708-4344-b719-8d7df6105505
# ╟─4dee450d-ee14-4241-a1f0-a6630ab0c687
# ╟─fb47f246-871b-42ce-986e-201d9db945a4
# ╟─10720c13-dbf8-409d-900c-4d5141ba77f1
# ╟─70be5a47-ba94-4c6e-9cf2-e01b868e7d28
# ╟─6f87034e-919e-4186-9c76-2942f148a21b
# ╟─78aa9a05-851e-49f2-a01f-69b5edcd3eea
# ╟─4d69384b-18c2-4e6a-b742-802960e73a60
# ╟─958768e7-e521-417d-bd8c-a310e82698ab
# ╟─da477136-b483-4360-af0d-8f6ba9358c56
# ╟─396ebe14-31fe-488f-ae3b-0b8c3e4bcd5b
# ╟─29751f37-2615-46d4-a628-430feaad013f
# ╟─6add877c-7356-44bc-a9c0-9de336b30aa3
# ╟─7c06f33b-d5fc-47f7-8d21-1dd2cca22218
# ╟─8e9f7ef2-d3f0-4e9d-b677-18b495da67bf
# ╟─1c842080-fd66-42cd-b9f8-965f063c87a3
# ╟─2b146adb-68f9-4f7d-af15-d1cc0e6b4cff
# ╟─a65504d9-9d0b-4fdf-a2d0-148224ee0992
# ╟─45985d13-00b4-4d90-8e24-56a7f9259d41
# ╟─ad5fd5f0-11e0-4392-8934-a359ce095d2d
# ╟─d6dde37e-606a-49cb-a89c-13b32858d709
# ╟─8cae7068-6e0b-418a-a364-706bc2c3ccc9
# ╟─a9a8cc0c-0859-426e-8923-c78f147a284f
# ╟─ca9b9032-ba0c-484f-80e8-46f7358c8458
# ╟─da762787-f937-4c05-a0a3-cb9d34ebca05
# ╟─d14cb746-b5e8-40a3-b6e1-fbf686271b0f
# ╟─a2e7951d-9ebe-4107-9db0-a9bea13dc7e1
# ╟─7e30d52f-bf49-490d-889e-a2141274b1df
# ╟─15249cae-ce55-4570-893e-008c945246fc
# ╟─11409384-2770-40ba-9a84-6bdfdf8e393d
# ╟─6d06fe76-f4c4-4743-9ef4-3be56fea786c
# ╟─4478ecab-e6d7-493a-add1-1835ddc0c680
# ╟─d3e2a31a-5094-4271-b402-939e63176f62
# ╟─fb16c3a1-2a70-46ec-8e93-218578005f4d
# ╟─02670aca-5ca6-468c-abdd-e22dbbe23830
# ╟─337b8219-01e6-4c83-879f-ff628e04883e
# ╟─198024b2-4344-4176-aa27-83f22490328c
# ╟─5273b935-d624-49a8-bc59-8ef1c3cd802e
# ╟─bf130256-9e34-489c-a588-f8b25af0b582
# ╟─9204e8ad-5af1-48f0-aa1b-32cbf53bd74e
# ╟─03ed56ef-a446-42eb-9f58-a5e916eba81e
# ╟─11fe5635-fd11-4932-8987-88c4571c1927
# ╟─d0121f6b-fbcb-4952-b2b7-414d640e8545
# ╟─b13d7aff-34cf-43dd-91ef-6949e4f9a14f
# ╟─8bece320-2172-497e-8339-de2def7ee591
# ╟─1e442501-f7fd-4956-95af-c27a10649582
# ╟─7d08a273-6ca8-409a-96ee-5fef6557f127
# ╟─8b19e386-ed0c-4a7c-9385-50b15ba43b33
# ╟─ef25b98a-93d1-432e-8bb5-83e434551675
# ╟─fc73b4ce-33d7-44d3-af18-45f17fadb1a6
# ╟─96359e79-bdd4-4af9-bda6-3f4c281648a8
# ╟─62488045-6c74-4448-b50a-d6389e70312e
# ╟─992120a6-871b-47a9-b7d6-e84e33d28c10
# ╟─694b1b18-2790-4c2c-abfc-68ba5d8fc67d
# ╟─2cd39589-96ed-40b8-9dde-837660d788c2
# ╟─67f62675-2843-4dd9-918c-b10971dce16b
# ╟─4120b980-b664-4f63-878a-7598e59d42b3
# ╟─37f149b0-81c8-4d91-ac20-5d6a0a41bf01
# ╟─fb7ab93a-00b8-4963-9e36-befcb17a8a97
# ╟─c7b4eaa4-1b53-427a-8da1-8a2d188359e3
# ╟─71298d8b-db4a-433c-aaba-57add01588aa
# ╟─38b7aa01-f8b5-4988-a130-37ae9a51eeb9
# ╟─edafcdb0-597c-405a-86ea-c22aa45e37b5
# ╟─ff70034c-1db7-4bea-a12e-4bdf6e54e317
# ╟─eb177b7f-db37-4ddb-82e9-dd862a11f6c3
# ╟─2a124958-ef71-4755-909c-4fe2e9622c77
# ╟─a03dc12a-19ad-4cf4-807e-7a1b9c5e4d1a
# ╟─0a6ea00e-64c8-4ceb-b494-d2bca5299e03
# ╟─53f17723-0ec1-49df-8eb0-18adf0b689fd
# ╟─10137672-cd6a-4488-93a7-7d91c895b8d4
# ╟─c63b7647-9db2-46a1-b29f-a9be4fb6e286
# ╟─d1d12af8-e3a5-45cb-a511-dcfe097bf1ba
# ╟─1b851ba2-e47c-4cd3-9531-342f0f87dda0
# ╟─cc339189-1006-42fd-825d-34d52952d0d0
# ╟─352a9be7-ac82-4eed-84ac-ddc82d110683
# ╟─afd4fbae-ae7a-4c4c-89e0-1232ccfb1b22
# ╟─bda97003-cbe2-4294-ba84-b5df9132c71d
# ╟─d9df3af8-6c45-4fdf-8eae-129f474f3ddf
# ╟─efee2499-afb9-48bb-97d9-cce19dcf510c
# ╟─ef7c25af-a1a3-4841-943c-8227257129b3
# ╟─68b800e5-fe05-412c-a0aa-d32cc0b02053
# ╟─79653eeb-1bb3-48a3-ad91-554123a9867e
# ╟─7945716d-42d6-4159-80ce-417c4f04bce6
# ╟─33d5058e-b4a3-4daf-b3e6-89ca38182658
# ╟─3aeb2022-1aa3-4aed-af22-951c43095aab
# ╟─d8a23dcd-6923-4540-9108-83c14ad64d61
# ╟─904a0035-474e-4da0-af72-73587fa0d202
# ╟─a38935b6-dbc4-4e1b-9f9b-4cfba41ec5ed
# ╟─9bb07324-b11b-4475-85ae-5652bab779d4
# ╟─d046d755-efb3-4dc3-a03c-03df1d1e1f38
# ╟─650cc28b-edf6-4cca-909e-4fb3e2a1b14f
# ╟─743fd219-6a9e-41d0-a1d2-f7e0c5790d71
# ╟─54fb7e9a-7e97-446b-bfe1-432f86a19c17
# ╟─7f6451f2-fa82-4e56-b283-e1480494173b
# ╟─5b7f8cc4-2aff-4503-87ea-d65e89bef3a3
# ╟─c1dcd2cf-19f0-451f-af85-b0a19a734912
# ╟─2e514f70-988e-463b-a812-d59408a27880
# ╟─892b52fb-9fc9-4b79-9241-d1bb7acd455a
# ╟─2ce9b4b3-8de3-4f8e-8ceb-15b1d80b62b9
# ╟─4f8743a6-8383-40c4-ac6d-87076bada854
# ╟─89995565-488c-4028-8dca-3f8f59a85086
# ╟─50668142-4a0a-4e38-8b95-4b66e6adaf1d
# ╟─65ab1c2d-137a-49a2-a089-bec941225791
# ╟─58bc2dc2-71c1-490d-91b9-85b380ad358a
# ╟─40be2608-f063-473c-8fec-e67a3afd84fe
# ╟─89e0b027-ea2e-42de-930a-f3b47cbcaf63
# ╟─751bb053-d8d8-4f3b-86a9-8be09869805e
# ╟─fe80632e-ad31-48d3-9301-ad9e2efc4caa
# ╟─1d58e2f5-41fc-4deb-b3d1-fbaaf3602222
# ╟─f8ecf968-683f-416e-b56e-9300b64144f6
# ╟─8cf76f41-d45a-4c0b-a434-88054d40eb30
# ╟─7fda0928-511e-4093-a8f1-fef0065e9b3a
# ╟─05ea3022-dc6f-40a4-a651-be24919f5c1f
# ╟─ca4c4b29-bf7b-41a9-a365-60b3124cc541
# ╟─b25a14eb-1ad4-4acc-acb6-14131f0ac477
# ╟─87841a5b-c63e-4a91-a44a-6b69e2da2c7a
# ╟─884286bb-e377-4110-bff0-9a64803f7652
# ╟─afa0c5d3-f30d-40c6-9db1-11b6c6406df4
# ╟─edc50589-9487-4b85-8f4c-56c6bfef455d
# ╟─d467c716-e8d0-4314-bef3-b5eaa902fcd8
# ╟─d194d57c-483e-47d3-95c5-b3864e0070d1
# ╟─108c9d06-b636-495c-83fd-52503ef5c2fa
# ╟─863c3f9a-6682-4249-9e40-54b07a8d42cc
# ╟─07f84890-3bb6-4f48-a454-c5e19b3ddac0
# ╟─2ea002de-345d-4035-87ab-fb6115852614
# ╟─46dd626e-50ab-4087-a799-03f67461bed4
# ╟─f8d8a871-7e11-4a26-bb6c-e9121fd1c951
# ╟─7baf63aa-f249-4cb5-b882-789f6cc5e123
# ╟─9e4d27fc-3d65-4126-8c48-c5bb5864f82c
# ╟─78857555-314f-4786-b61a-0c638d04b213
# ╟─8b8a88a8-5a01-48de-9996-1c3b69b169c6
# ╟─7f1f2340-0096-4b8c-835f-9d62c5d5245f
# ╟─b20b35f0-b3f9-4692-80f8-a3a57779c5f9
# ╟─3b9934a6-a9be-417e-b5a5-d556341416e5
# ╟─a25ab78a-2d3f-4ac1-8669-8507b15553f4
# ╟─d61ba806-836a-485b-9bf8-4d8be2c0eaf9
# ╟─aa4037fd-7486-43df-ad9e-aaac1fd9f82d
# ╟─d7b1040f-6eb8-4f39-b7f2-6753289ba457
# ╟─77c2d141-dcd9-4652-b257-37940ac05517
# ╟─51f6568c-82a3-4c72-9a29-c4b4fbc6712f
# ╟─c0322426-f47e-440f-9327-60504001623d
# ╟─5d14c309-3196-48f8-a497-7b7fff9fbb8f
# ╟─99c96e95-30cd-4051-baf6-9bc580b5c99a
# ╟─25c9263e-cd9c-4c16-94a9-50ae1e0a7e24
# ╟─70632c83-8690-47cd-a0a3-3601e817749e
# ╟─f9266f97-466a-4542-83c9-78c05ad53f32
# ╟─8e0ede16-43f9-405c-8601-3fa654d2b902
# ╟─281df74d-6940-4672-a7ca-f121218ec631
# ╟─13b5eb3b-8ecb-43eb-a500-a60b91bcc72e
# ╟─a076cba8-f8fd-4f1d-a4ab-55a29694857d
# ╟─73aec65e-0660-4175-974e-b27c14a7d8d3
# ╟─2cffd050-c514-4b73-a50b-ffda11c16811
# ╟─effeccdf-d10f-4704-a167-763a79e1fcf9
# ╟─c396b03a-6dd8-46a9-a12f-5e29fe6b6c39
# ╟─711a5f68-d2f0-417c-a391-56ebf2e7045b
# ╟─848b1e80-5ef4-444b-aa9c-f70018d57040
# ╟─9fba6fc6-9557-4730-8bd3-8dfac9b9fca2
# ╟─bafd28e1-983e-4834-9429-c4bb197ece22
# ╟─b2830c29-2c29-4666-88ba-3bf5869a4a81
# ╟─a6a0223d-7f85-4260-aa87-63465f077adf
# ╟─e702e0e8-5c40-45ae-8023-acfb87919d1f
# ╟─d62d9424-de5e-4089-8443-7ebf658d67ba
# ╟─cb8411ea-e8c9-4b6f-8209-4e22d7751312
# ╟─e0d465df-efb2-42a7-a362-0c8ab62241d0
# ╟─b2d0f220-0f01-432b-b3a1-7530eb3456db
# ╟─0c2b252b-39c1-4b0d-8fdb-ec21d893809e
# ╟─e5467916-097d-4c86-9bef-ba51ee1dde5b
# ╟─d8aecfe1-ab8c-4cff-9b8f-9a4fd1403400
# ╟─82575946-7d1b-440a-8e69-8ee98cb05aca
# ╟─61d03fa7-b238-4544-b0b2-0d6ce5b6d9d3
# ╟─0949ca88-1f6a-455f-a8c3-a12a6211c1e2
# ╟─d7311757-9c79-4d01-b383-46accaa7b74f
# ╟─b98bd327-8396-48c7-bdd0-3ee778bc5881
# ╟─ab4d88cc-54aa-4667-8675-298ad506a69a
# ╟─6331398a-92fe-48f5-af9f-0a34012ad12e
# ╟─e822de3e-dfb5-4404-8e23-51f52e0eceeb
# ╟─0b532cdd-4b81-4bcb-9512-7caad6bbcac4
# ╟─bd1b4843-4a2d-4333-afdc-1497093dea5f
# ╟─34c651d1-1b6c-4e37-92cf-352cdb382e7b
# ╟─9d1e1cb9-3700-48b4-815f-415b464b4d47
# ╟─5cd68dfe-3f48-4af7-b25b-8eb1232016f1
# ╟─f5707e46-7e79-4b68-9b51-ba5d3d4307a9
# ╟─2bcee4c7-1387-43ce-8c51-a8a9b51500aa
# ╟─bda2a729-6a04-477f-8b90-5acdf8207be8
# ╟─f499a2f2-6745-4b1b-9416-71fd8a3930c8
# ╟─e260ab70-eacc-47fe-94c7-89227b830c00
# ╟─15f9007f-11c8-49d0-adfe-216ab70f12e6
# ╟─1277710a-6068-4889-9868-ebc2fa190d13
# ╟─6f30091f-a630-448e-ac64-08902c0b4177
# ╟─0e8b3cad-de54-477f-a62d-2c416fc8a08e
# ╟─a1301025-25e8-4106-8795-11e8c20d1ef4
# ╟─9e127cd3-3de3-4eda-9064-e4d53dd15a1f
# ╠═58e0a276-f655-4e7d-8e82-938d8e5e9ae7
# ╟─91678a4d-d104-46c2-8126-a1f79fc4ca1b
# ╟─f579c905-cbbe-4c68-ae4e-736a8ddb8c39
# ╟─6aab7c4d-a3eb-4a4a-9a1c-38060147209e
# ╟─dba40f96-779f-4ab8-8d84-579ec266acb7
# ╟─7ffdbf89-2b61-4715-9ef3-b5f063346cd8
# ╠═aba3e0f9-5c63-4abe-a209-c0291fd62028
# ╟─a19b2c25-29a1-4e0b-a783-7debc83d4f54
# ╟─53dbb8c7-4950-42d2-ae3c-756271e72911
# ╟─034cef2b-3a77-41fc-a45f-8f35530a73c0
# ╟─af391063-3b07-47b6-8ba4-5ee4d75be3ca
# ╟─3171f54c-7c62-489c-8c48-a4c93310beed
# ╟─5abbd52d-94cd-499a-b70d-5dd396d073ea
# ╟─66cd6051-5958-4f19-98f4-d6b0450ae00f
# ╟─1b0f0a2d-1600-4440-8106-906e2b80de45
# ╟─bc28d5ad-4933-45c6-ad2f-85d7adff1e38
# ╟─5e037518-8e56-468e-8b0b-fba5bc066ce4
# ╟─61bf657d-640f-4750-8d4a-549489fb8a1d
# ╟─e3166355-5ec3-497d-afdd-dee7c78be366
# ╟─507e99e9-7f3d-4c1b-80cc-45426b46c756
# ╟─1e14384b-de4b-4c40-8d2d-e2dbf936b1dd
# ╟─570b2331-14a7-44a4-99d8-c08434cb8b9a
# ╟─ed65c72c-7217-4095-a872-d07fc56066f2
# ╟─18a347d7-3691-4ab7-bba9-74a8c21f0ff8
# ╟─5a2bd524-31b2-4538-b536-acb1d484ca51
# ╟─00bc21d1-f0eb-4340-bdc8-fe323cdad464
# ╟─049295c2-f35c-4841-afd2-bedd2490a501
# ╟─08cbf140-ab1e-4bdb-8105-7fd5af943c6d
# ╟─588a57f4-9ffd-4441-b3c8-b1e18dde6976
# ╟─f618e856-69c0-49ab-b58d-9162da7cfd43
# ╟─55c9a3e8-4856-44aa-ba5b-5f9ea3a5d16f
# ╟─bbc01caa-e4e0-4995-b40d-7da9c6c1efc0
# ╟─19d4d7dd-9078-4e9f-92b7-52e8b172f8cf
# ╟─5e61d669-bb73-41f8-a3b6-c8112cedddb5
# ╟─00dcb4c0-efde-4a6d-af1e-b8d1b7bc7e6c
# ╟─b6145bdc-1950-4f60-b405-2d2844139a69
# ╟─d49a9ca8-8649-434e-b900-e98290f91d92
# ╟─a9f902a4-79d2-494e-9ac4-b015ddfeeee1
# ╟─dfaf192d-7984-4bc5-80b7-f73971233f1f
# ╟─478ef33c-c405-4e9e-bd8d-a429617d490a
# ╟─c25f4993-2694-4d7b-9b44-5f0f7cf50192
# ╟─1a39bac9-68da-4c49-9b22-d1b8aff801ff
# ╟─14742c4b-6a32-4534-9b98-30e40248697f
# ╟─955374cc-9cad-4ce2-acd5-b43cf50dc42d
# ╟─35817ffd-ab40-4f3f-a513-c3118b125209
# ╟─03dbe0eb-8789-4b6e-bcf2-e6ff71826a15
# ╟─73cef4b6-94da-4acb-bd6d-e32e356f6be2
# ╟─11e04c39-2620-4b30-9d4b-02a85821485a
# ╟─d7d32dad-2c82-4556-b884-52e3661e6f44
# ╟─95a16734-31c3-46d6-aa0f-81e00e4b1742
# ╟─ce2714cd-51c5-42ee-b9eb-1e21c7a08a68
# ╟─f8d487f5-9c1d-4187-9224-02329118ed85
# ╟─3fbd8ccd-2df9-4b1c-ae33-f2d5ece4d46a
# ╟─a3370749-5f0b-4839-ac0a-e9bc66c99ffd
# ╟─0e935059-28f2-4bbd-8ec7-5109fec17b95
# ╟─8c6423c3-2371-4036-bdc4-2db7b6e0a4e4
# ╟─525a3061-a116-4f05-b90c-5cc81084c6c6
# ╟─78699f4b-e7a9-44cc-965b-d5fb3e136aa7
# ╟─0149057c-93b2-4fe0-adb5-f4ae5969bff0
# ╟─1e92137a-d3f9-488d-9c33-3e4f277ddd6d
# ╟─d6946486-1a5b-4ba2-87a6-587e95ca3e9c
# ╟─836b1953-4dae-4731-a3c2-013b6d481dea
# ╟─ae055a7f-9fe3-4482-a88a-13327962d724
# ╟─0155a961-5ea6-4924-9c16-b401896c9ac0
# ╟─95ea0a3c-2da6-4646-9c0f-3e3c77556f5e
# ╟─b3c4dc5f-8970-44a3-b8dd-dfe106652553
# ╟─a1a6bd50-ea93-46cb-9cbe-5e77f1fd3e81
# ╟─f8a9100f-e225-4e97-9b5e-dc1a91bb1e33
# ╟─c9366439-4fc2-401b-a4c0-935bc8896364
# ╟─ae4bd2e2-1ec3-4cb5-b47f-393407ea1e19
# ╟─6532c7f0-4578-4347-9310-0cde17aaebe4
# ╟─59917cd4-e468-4d67-9fca-7221bb073c95
# ╟─6bb5e6d7-0085-477f-b898-77e746dc5d51
# ╟─830ce9d2-479d-4d3f-bd2a-228ade9b34f2
# ╟─8aa61b93-3402-4d8d-a21c-c91e45bce8fb
# ╟─27d89f41-9370-4c40-9f69-77969f5c8840
# ╟─bb645bd5-9889-436e-af33-72662003cad4
# ╟─62e48db9-0ac8-4e5a-bad8-f8c52a07a9b6
# ╟─f75a3bbd-2b36-4f12-94c7-b7d0c82d6d6b
# ╟─22c96cbc-aaa3-4341-8511-02dab9d4b6d8
# ╟─fad7ff5a-ba68-4bde-b841-3fbe07d2520f
# ╟─d2b1be95-dff7-48e9-a5c3-82c02e478831
# ╟─fa2d61d6-743e-4b95-ab64-1f5eb2b97104
# ╟─4feded32-c1b3-49f8-b914-165f10347297
# ╟─65f38da8-0c20-4369-817f-90559fe6f33e
# ╟─718a0c93-ca8a-4247-827e-7d96096a6184
# ╟─fcd87150-bd4b-4e5c-ba3e-a602511d3143
# ╟─96501456-4230-48eb-a85d-c33d50fa4842
# ╟─4922060a-fcbd-4933-add6-b6aec2af16b7
# ╟─6a33f58e-a491-4b81-865f-e99028f3d151
# ╟─bba83659-e12c-4de6-8595-b27668e63cc1
# ╟─cdabf544-67c3-4f5f-bc2a-b3112d618801
# ╟─b2ce72ba-963d-4983-a7bc-ae81d7c454fc
# ╟─318d2076-2317-4228-bf3d-e9637ceae90a
# ╟─7e490035-9361-4c85-9002-148fc0dfb959
# ╟─0d17f0bb-510d-4a94-a2a4-dd09319efe92
# ╟─2261217d-df4c-4a5e-8379-6ef654ea22a7
# ╟─10e8969e-51e0-4d96-9ab0-73ff367de10f
# ╟─13603cf2-053a-4011-98a0-f41d711538ae
# ╟─7f01cb9b-0ff7-473b-b9ca-aa41754c607d
# ╟─1d75a3bf-d1f2-48e3-a6e7-ac96ea6bb4b7
# ╟─1cec5274-8b87-4f48-b9de-6446c5d6e4f1
# ╟─45804549-7a12-47d0-9f14-29ada458de25
# ╟─cb1fcf61-993a-4d65-8be3-ca537a45eef2
# ╟─0fec1a49-85e5-453c-8fcd-d0303c5db4a8
# ╟─b0aac8c7-b4ca-4e22-abe8-97e0a2d436fa
# ╟─ac52c66e-15af-452c-9c96-04a948fe3b1c
# ╟─24b156a7-75b2-454f-b652-7f7b4712808b
# ╟─5cd2bfe5-7266-4cf9-a871-22ae5bd7fc06
# ╟─1a1a63aa-1e69-4cf5-aa2a-94edf9413237
# ╟─3d73acf7-effd-4318-8ee7-ccd8ed3c42b4
# ╟─4ba0135d-8595-443c-83c3-719eba5c1d79
# ╟─bc1d728a-25e1-42e0-9705-d4a222d58381
# ╟─69948597-f948-4ff0-8316-9d5c13d8d0f2
# ╟─03b3abbf-6a27-42d0-ae65-c43a95e1b2d1
# ╟─2416b821-f66d-4484-a6c2-ac56b913f72f
# ╟─1d542aba-a30b-4395-9e0d-f1624c004ae7
# ╟─424cbffe-ce0a-40c6-a5f7-1a1f237c2236
# ╟─258040e0-16c8-40cc-9270-1ed4688d4b1c
# ╟─b4accddb-7560-4de5-898a-281ec7437e34
# ╟─bc370fc3-1bf8-47f2-8a95-34617a9a7d75
# ╟─edbd26d1-dbe8-485c-91a6-9594218641f9
# ╟─85a77056-f3ed-4a9d-9cb2-70c9f163f2e9
# ╟─89f46f42-89eb-438a-891c-ae44a42b12f9
# ╟─1308d859-deed-4343-a980-0d3edbb1bf9b
# ╟─baf3c96f-add3-4f48-bf5f-8b2f01f4439e
# ╟─8bbca29c-b12b-4abd-a404-9cf416f2aa18
# ╟─aeae7686-fb97-4bed-9532-0c97babccfca
# ╟─3844bd82-1d69-4bf7-850d-6e2e15d37dcb
# ╟─213f8770-55ec-4110-a096-ab387aa87c62
# ╟─47d4127c-79b6-4b52-9c74-28a550147938
# ╟─67b8ea4b-9706-447a-a1dd-1648f1e8ac04
# ╟─eab81d7c-823f-4959-8a7b-531683c01614
# ╟─33601d0a-a0db-4b11-984c-38ce65953525
# ╟─20b3ff0c-bba5-4add-a35a-c7285535aa7f
# ╟─520bedec-2128-4ee6-9189-729ba4616516
# ╟─655cf40b-5010-4f92-aee0-bc590f51092c
# ╟─17010074-fdcf-456a-8d44-8d242c24577a
# ╟─ddbfe97c-d971-428a-9464-a5f86d9a2586
# ╟─c896dd19-64e1-4a9b-a729-f358630f3c8c
# ╟─c7305908-323f-4ff1-85b5-3986d2ac31b0
# ╟─91ed17cf-0ccc-4e0d-8098-8a694443d886
# ╟─1f73806c-45c4-42fc-b2e8-dfb4bd82da0f
# ╟─e8feb282-3c6e-420c-ab1d-ecb2c4a2ed56
# ╟─a784776a-040f-4bb2-8263-8a442c479e3c
# ╟─1a3063d3-e6bb-4bd2-8ad1-3aa8b12895ea
# ╟─b9043988-e4b1-44bc-a3f8-d351558710ce
# ╟─cca14e06-defb-4614-b394-f9b52072ff44
# ╟─46de0475-c92e-4fdf-9366-58f7fb97829d
# ╟─08719c7e-6922-411b-82a5-19d9ce8951e0
# ╟─3600d9c8-19c6-4884-b81b-49ca65347ab7
# ╟─09032419-71ba-470d-976c-555786d28bc7
# ╟─c4d3e1b4-8b06-4057-afd1-883202cd0206
# ╟─62ef0d32-3c7e-4ba7-8eb6-4f7c420bbcb7
# ╟─2e548d1f-8603-4584-b8e1-fe37bcc55b2b
# ╟─029c2351-9ba4-4934-af12-5fba569677ad
# ╟─b7e79924-55dc-420c-83eb-42590a73404f
# ╟─62f77b2d-2d80-4d6f-a28c-51c230d5d253
# ╟─e5be2eba-7ec2-42ee-be78-af7d70b086e7
# ╟─84b90900-906f-40eb-9992-85b4252e67ad
# ╟─18adf265-d109-45b8-8524-237563443576
# ╟─e028a81c-15b3-494c-b217-fe3e6ec063b3
# ╟─3ebec178-f0be-41fc-820a-1cf56a401df5
# ╟─ed752189-b4ea-41c3-a45e-c81ccee52ff6
# ╟─9f118c70-ac2a-44b0-a664-6fc650f1cd49
# ╟─a4503c6a-f43b-4357-b0fc-9b39785cbabb
# ╟─7736e804-5eda-4e20-928d-d4868bdd6f1d
# ╟─5164b229-7feb-455a-9d2e-e013c37fce1b
# ╟─2578e597-e0ef-4061-96a7-2fc09d0543dc
# ╟─bd498024-08d4-4823-8d03-a79c59eca8fb
# ╟─25482b12-df18-4df1-a2dd-f502e00e2ee3
# ╟─ae28a01e-aa68-497f-8920-339fcf4a52e9
# ╟─a77025d6-9bfe-423c-b8de-88d9a637883a
# ╟─3b5ce7f7-2755-4dea-b969-efc206139704
# ╟─9c87a4f7-cad4-4f99-bbe1-58719cd323ff
# ╟─d4f20c07-416c-4aec-9e3a-5aa7f9205529
# ╟─7c8a1f1b-f3a9-4334-8f3c-75dd66f4c6d8
# ╟─938b7b1f-84b9-4b14-99fd-1daa7323243a
# ╟─d8a736c8-65fd-4b14-a459-e909258d2662
# ╟─027d3322-606f-4028-8443-50b7825b73f2
# ╟─51a79bca-e975-4818-95be-35fe246183f5
# ╟─cf3af24a-23b9-48ae-ba8f-2e5a0ccd176b
# ╟─f58f4f3d-8a8d-49f2-878f-76e611bcc7bd
# ╟─ba0f4f35-ceac-4f3e-955d-e5018a7bbf99
# ╟─6adb82f1-7975-4dc2-8e12-a029e547e9c5
# ╟─50ed4e08-eac7-4a6d-bc2b-e117ceced463
# ╟─1f6330e5-298a-476e-a12e-7026bdeff035
# ╟─c71379d0-dc5e-429d-819b-d0a643c8a9e2
# ╟─391c8723-2128-4fe4-8df2-ee776a7d0258
# ╟─4a1b33c7-4775-4bb8-86d4-30a1bfdd22c8
# ╟─2885c9a2-10f5-4d54-93ee-74c7a0d55c17
# ╟─7d07aab9-c1df-445f-800a-e5548b81ee1c
# ╟─80a355fc-0638-4d23-a9c7-2bbfa8603edf
# ╟─fa7590e3-47df-42c7-b14f-d4a676f41642
# ╟─2eb13741-3f5a-4059-9b7d-e6a86e16cb81
# ╟─6999c6ba-5644-4157-94bd-5b170fef383f
# ╟─231a1ed3-ac44-4aa7-81b8-c9f6e3807880
# ╟─75e68202-a825-438d-a610-bcd2a8d1162d
# ╟─dae07321-e1f3-408c-90e2-6f6980e84338
# ╟─13b89d0b-e996-4bba-b48c-192986635fe9
# ╟─7bee79c1-a5a1-41fb-a39e-b75d0df7e55f
# ╟─09c6e5a8-3477-4d48-8a64-2a09cc0ff203
# ╟─3f468450-a985-483d-9d5c-26ce0647105d
# ╟─6b6dd073-a2cb-4ae3-8f09-94449e8d5524
# ╟─39325ff9-9f09-4bdb-bba2-b651fb6c332e
# ╟─e5bf441a-bf7a-411a-bbba-421cf9b60b88
# ╟─bdd1563e-6051-48cc-9e9a-5566ab9451ba
# ╟─e01f8e7c-e141-4c08-967c-851fb81e4660
# ╟─c51393de-d2de-4cf5-b23c-bcae6b8380f1
# ╟─771f6c80-c555-4d07-ad57-ef738f590daf
# ╟─aba26d13-7e59-452f-812f-b2afa918f56a
# ╟─800aaa72-8bfe-4f85-8e96-410d94761bdd
# ╟─b298f699-e700-43b4-ab05-99a1a5861edc
# ╟─93809796-672b-4521-b75c-036db9eb81bb
# ╠═c0bb6b02-c6a5-45a8-95b7-58208fd05ca9
# ╠═cf34b620-c6f0-48f7-ad09-8f2f9fbcd2a1
# ╠═d26db994-ece7-4aac-8ab4-d46b2fbc280e
# ╠═e3d1e33d-849f-4a2f-8307-8dda77b177ac
# ╠═e6d76b22-7439-40b2-a87d-4df4214ad4f6
# ╟─2097529f-3b85-4f22-842d-39f707abd0a8
# ╟─0f4c1817-01d9-414e-8b3c-e3bb0171edc9
# ╟─9cfd32f3-ae6d-4644-a524-62fbd836f94d
# ╟─01d686d8-a0b5-4f89-b581-f907e163b572
# ╟─61a9f759-d3b2-4a8b-9fbb-fbf34a186b3b
# ╟─2fc4a8f8-1423-4509-943f-ba35b93712ac
# ╟─bceb38ff-60a2-4e65-bd8c-8755785be466
# ╟─20a49496-c0db-4a1c-a23f-4eba555dde74
# ╟─376cfd7d-63d0-4e15-b304-5dc059ee04dc
# ╟─1387795c-fc27-4678-9a18-871602940d4a
# ╟─2b538785-68fc-4c20-8a73-2bbe9c5c3405
# ╟─2976987c-b706-4222-9dfe-db5e9b7c2a4f
# ╟─80f5573b-c5e8-44e4-b690-7508cb664fc6
# ╟─6b826f29-9505-48e6-aca4-76ceaae1fced
# ╟─1dda5d9a-ef0c-4394-9c7e-4bc73b51d16f
# ╟─ddddb6e0-cc1b-4b39-ba3f-806cda8819a2
# ╟─25dad69d-8573-47e6-bb2d-242c0cc87e4a
# ╟─3997bfc9-f4af-49e5-b0db-2be92b9177f1
# ╟─21c8c055-5c75-43e7-a550-aa70c6b2d758
# ╟─f82e2130-dcb3-45c7-9f83-54c3bb959c22
# ╟─591cb6a9-9754-4730-9182-622583f6641f
# ╟─5d96a623-00eb-4f69-b62a-4e5c6456172b
# ╟─7b1d8c5b-010b-45cb-8936-1b567c3cf9b6
# ╟─acc337b2-ad40-46bf-9a58-65e7d0d521cc
# ╟─dba025e1-c08d-479c-91a1-167063f39182
# ╟─1f30bcaa-3b31-42a7-8802-33d688288a75
# ╟─7e6b0f3b-20ff-4f37-b4f4-b2d596d60347
# ╟─69cdae52-1c54-491a-b90d-4950754cc18b
# ╟─a5e9f5c5-9459-4647-96d8-047316897e19
# ╟─454217b8-ba00-4a82-9e89-7ab9db4659db
# ╟─a11988eb-804c-4130-b63c-971c8a10910b
# ╟─a9f832d2-3605-4f18-aa9a-65f6fb7a2a21
# ╟─446ae174-03e1-492f-8a79-53f85be47774
# ╟─959bd829-f176-4ebf-b2df-3f1f97e9aea1
# ╟─8f499e77-0c0e-4900-81f4-a28b86bf1d75
# ╟─eb052b81-287b-42e1-bff6-1d6599efba20
# ╟─83092c82-8b52-4021-aa33-0175c6032c85
# ╟─5320b026-c14a-4a99-bfd5-72a6a051ff3f
# ╟─3ae0c473-0211-4936-bd14-c08edcdb9225
# ╟─4feff33f-bd37-4dca-8958-53789f4f4f8c
# ╟─9c7e6d63-e082-4312-b5d1-6f1a8ef0da80
# ╟─2c72b33b-dd9f-455c-8b06-fd4bd0a0cab7
# ╟─4387cf0e-962d-42ff-9bde-fd5cf628efbf
# ╟─e2db7f84-d871-4907-bff3-540b2c90f19c
# ╟─ba781d5f-e9ce-4d71-8db9-cd120506213f
# ╟─a430d32c-a7bc-4ba3-942c-f1863d3bc1fa
# ╟─0d80c4c2-f52d-4235-af75-62df0b3ac90a
# ╟─f5095848-80e5-4c4d-ad50-5d8078fa6e3e
# ╟─cd96f14d-d446-44b3-88df-15dceaea1d79
# ╟─b84fd6aa-2e56-4058-b731-7f70a48d3816
# ╟─eaf572d0-fd22-46a6-ae66-1abe2e857213
# ╟─bc75159b-c645-4d86-965b-68c5c01f45b5
# ╟─24c92f02-d754-4081-a3fa-20112cb1796e
# ╟─0d3e88dc-de33-4018-b519-55c4f5de268e
# ╟─6a3ed4f1-5ff9-4559-8399-fa4e44bd6b13
# ╟─12ec139e-bae3-4a85-8837-cb2af05485d7
# ╟─9550de58-6db4-4417-8fcc-eb07ae8c5f6d
# ╟─8f6ed342-92b4-42e9-8288-8de9d4e8d8d3
# ╟─efdf9f55-c92b-4b9c-a6df-63e021261e31
# ╟─c154023e-6a16-4b19-b41f-2d51145db429
# ╟─5ccb27d5-60be-438e-b52a-44cc18536173
# ╟─e99d40ff-758f-45bf-95ce-a331996b5df6
# ╟─f8ca843c-71a3-42a5-8194-1c7afe645a27
# ╟─30ca8654-74c5-4d92-bf92-2daf6b44b79b
# ╟─00b36724-3fee-42b8-b07f-ee822dfd4bd4
# ╟─23c26ecc-46d9-438e-b0bd-170c3bee6825
# ╟─3afe84d3-7bd4-40e2-82d2-2e28ea2b8d62
# ╟─a0bd1e96-88fb-4633-8988-986f2bae76bb
# ╟─8a2cd9a4-220c-4ceb-8aee-106f3f264823
# ╟─2ecb7182-d0eb-45c6-87ad-287a4db7d7b0
# ╟─688e2608-8032-4606-91f3-a1188c9d7495
# ╟─1a0b2e81-bc9c-44e1-a5f3-968f24a97aa3
# ╟─3c915d65-6953-43d9-9a28-ddb26342f831
# ╟─da58ff56-ef79-4589-9917-e73f2ee7b635
# ╟─b2be10d8-65dc-4c3a-b569-2edead2556eb
# ╟─9fa6c141-1c72-4e4b-b9f6-062fb067bcf7
# ╟─88c8017e-712b-4fda-b714-9d5f52dd7fe9
# ╟─ab10dc5a-f5c2-4b9a-925b-ddd460dae123
# ╟─4d1de95c-fd9f-421f-883c-3aea417d34d9
# ╟─8f89183e-0970-431b-ba97-96fa22e7c07e
# ╟─54bf2b18-6548-430a-9b13-39f424452088
# ╟─9444b9bf-bdf6-40b3-8c7e-cdf4c92d45b1
# ╟─8bb88c7a-c6be-4e68-a23b-26700ff09c94
# ╟─faf0b2f1-d11a-42ca-bb86-642d2f56d610
# ╟─ad44a1e4-960e-4dd5-ae91-7be738d253de
# ╟─65036b46-b82e-4baa-a160-1b77288be451
# ╟─fe3f0732-dffb-4a80-98ef-992ec237dc5d
# ╟─858b8bdd-79af-4544-bddd-ef934fd4d8d5
# ╟─58e265aa-057a-4cbc-ac8e-b60bc5824ec4
# ╟─4ccc3b6c-9ef9-4882-8c3c-ce113ea43fcd
# ╟─fafb9d4a-e0c3-4e22-af5e-bb67a90c7c37
# ╟─33fe9620-054e-40dd-92eb-8c30c1ebd3a7
# ╟─cb97c401-91ce-4bfd-8022-c353eacd1422
# ╟─f0439fc8-fe04-4cca-b888-5156723d6c97
# ╟─d07ea45c-b8b1-4554-9ba5-3c0ed5c8817e
# ╟─be063e7a-f7ab-483f-9e59-58c5e54de407
# ╟─df78edd1-e503-4958-b083-003d076715ec
# ╟─76de991b-1889-4993-b43f-f5e0bc1c2b36
# ╟─fdc7e602-9d43-491f-b1b4-94281ce96945
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
