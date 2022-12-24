### A Pluto.jl notebook ###
# v0.18.0

using Markdown
using InteractiveUtils

# ╔═╡ 191263ca-c656-4ae2-8007-7189e09dddfa
begin
	using Statistics

	md"""
	# Error Analysis Homework

	Eric Nguyen
	"""
end

# ╔═╡ 8275f443-9838-40e9-956f-eef135b5ab49
let
	using Unitful
	data = [x*u"m/s^2" for x ∈ [9.81, 9.79, 9.84, 9.81, 9.75, 9.79, 9.83]]
	oldresiduals = [(x - mean(data)) |> u"m/s^2" for x ∈ data]
	residuals = ustrip.(round.(typeof(1u"mm/s^2"), oldresiduals))

md"""
**Solution.**
The table is

| Gravity ``g / (\text{m/s}^2)`` | Residual ``d / (\text{mm/s}^2)`` | Squared residual ``(d / (\text{mm/s}^2))^2`` |
|----------------------------|----------|------------------|
| 9.81 | $(residuals[1]) | $(residuals[1]^2) |
| 9.79 | $(residuals[2]) | $(residuals[2]^2) |
| 9.84 | $(residuals[3]) | $(residuals[3]^2) |
| 9.81 | $(residuals[4]) | $(residuals[4]^2) |
| 9.75 | $(residuals[5]) | $(residuals[5]^2) |
| 9.79 | $(residuals[6]) | $(residuals[6]^2) |
| 9.83 | $(residuals[7]) | $(residuals[7]^2) |
|mean = 9.80 | | sum = $(sum(residuals.^2)) |

$s^2 = \frac{1}{n} \sum {d_i}^2 = \frac{5343}{7} × 10^{-6} \text{ m/s}^2 \implies s ≈ 0.028 \text{ m/s}^2$

$\sigma = s \sqrt{\frac{n}{n - 1}} ≈ (0.028) \sqrt{\frac{7}{6}} = 0.030$

$\sigma_m = \frac{\sigma}{\sqrt{n}} ≈ \frac{0.030}{\sqrt{7}} = 0.011$

$g = 9.8 ± 0.011$
"""
end

# ╔═╡ bbb7af50-8429-11ec-0536-89c8ee8ef53f
md"""
### Problem 1

In an undergraduate practical class in the Cavendish Laboratory there was an experiment, originally devised by Searle, to measure the Young modulus ``E`` for steel by applying a known load to a rod and measuring the deflection by an optical method based on Newton's rings.
Although ingenious and capable of considerable precision in the hands of a skilled experimenter, such as Searle himself, the results obtained by the students were found to have a considerable scatter.
The experiment was therefore replaced by one in which a horizontal steel beam was supported near its ends, and the deflection when a known load was applied at the centre was measured directly by a dial indicator.

The values obtained for ``E`` by the last 10 students who did the Newton's rings experiment and by the first 10 who did the dial indicator experiment are given below.
The values are in units of ``10^{11} \text{ N m}^{-2}``.
Newton's rings experiment 1.90, 2.28, 1.74, 2.27, 1.67, 2.01, 1.60, 2.18, 2.18, 2.00.
Dial indicator experiment 2.01, 2.05, 2.03, 2.07, 2.04, 2.02, 2.09, 2.09, 2.04, 2.03.

For each set of values, calculate the mean value of ``E``, and estimate the standard error in the mean.
Do the results indicate any systematic difference in the two experimental methods?
"""

# ╔═╡ ed7208bb-e14e-41e4-9d4a-166351120059
md"""
**Solution.**
The standard error in the mean is

$\sigma_m = \frac{\sigma}{\sqrt{n}}$
"""

# ╔═╡ 61dd1ff9-0572-44eb-bcb6-60f817cda684
# Newton's rings experiment
let
	data = [1.90, 2.28, 1.74, 2.27, 1.67, 2.01, 1.60, 2.18, 2.18, 2.00]
	:μ => mean(data), :σm => std(data) / sqrt(length(data))
end

# ╔═╡ 757376c8-6099-4ab1-b5bd-0be6c5a13747
# Dial indicator experiment
let
	data = [2.01, 2.05, 2.03, 2.07, 2.04, 2.02, 2.09, 2.09, 2.04, 2.03]
	:μ => mean(data), :σm => std(data) / sqrt(length(data))
end

# ╔═╡ 804c8682-c094-4a93-a29c-2ce3738f7c0f
md"""
Indeed, the results indicate a significant systematic difference in the two experimental methods.
The dial indicator experiment is clearly a much more precise experiment due to the smaller standard error in the mean.
"""

# ╔═╡ 1ffe488a-6b4c-4128-bc90-6ab459350f5b
md"""
### Problem 2

A group of students measure ``g``, the acceleration due to gravity, with a compound pendulum and obtain the following values in units of ``\text{m/s}^2``.

9.81, 9.79, 9.84, 9.81, 9.75, 9.79, 9.83.

Set out the values as in Table 3.2, and calculate the mean and the residuals.
Hence estimate ``\sigma``.
Give the best estimate of ``g``, together with its error, for the group.
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
Statistics = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
Unitful = "1986cc42-f94f-5a68-af5c-568840ba703d"

[compat]
Unitful = "~1.10.1"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.1"
manifest_format = "2.0"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

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

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

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
# ╟─191263ca-c656-4ae2-8007-7189e09dddfa
# ╟─bbb7af50-8429-11ec-0536-89c8ee8ef53f
# ╟─ed7208bb-e14e-41e4-9d4a-166351120059
# ╠═61dd1ff9-0572-44eb-bcb6-60f817cda684
# ╠═757376c8-6099-4ab1-b5bd-0be6c5a13747
# ╟─804c8682-c094-4a93-a29c-2ce3738f7c0f
# ╟─1ffe488a-6b4c-4128-bc90-6ab459350f5b
# ╟─8275f443-9838-40e9-956f-eef135b5ab49
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
