### A Pluto.jl notebook ###
# v0.17.7

using Markdown
using InteractiveUtils

# ╔═╡ 3f1ed811-773e-41f4-9de7-eeb25a0f99e1
using Unitful

# ╔═╡ 79a3559c-87b2-11ec-33dc-07080db95ebe
md"""
### Example 3.1

A single crystal of table salt (NaCl) is irradicated with a beam of X rays of wavelength 0.250 nm, and the first Bragg reflection is observed at an angle of ``26.3^∘``.
What is the atomic spacing of NaCl?

**Solution.**
Solving Bragg's law for the spacing ``d``, we have

$d = \frac{n \lambda}{2 \sin{\theta}} = \frac{0.250 \text{ nm}}{2 \sin{26.3^∘}} = 0.282 \text{ nm}$
"""

# ╔═╡ fe6ad116-a6c9-44cc-a8f2-bb0fcfdc1b46
let
	n = 1
	λ = 0.250u"nm"
	θ = 26.3
	d = (n * λ) / 2sind(θ)
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
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
# ╠═3f1ed811-773e-41f4-9de7-eeb25a0f99e1
# ╟─79a3559c-87b2-11ec-33dc-07080db95ebe
# ╠═fe6ad116-a6c9-44cc-a8f2-bb0fcfdc1b46
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
