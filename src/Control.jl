function calculate_transcriptional_control_array(t::Float64,x::Array{Float64,1}, problem::Dict{String,Any})::Float64

    # initialize -
    u_variable = 0.0
    
    # alias elements of the species vector -
    mRNA = x[1]
    G = x[2]
    σ70 = x[3]

    # get stuff from the problem dictionary -
    𝝙G_1 = problem["𝝙G_1"]
    𝝙G_2 = problem["𝝙G_2"]
    R = problem["ideal_gas_constant_R"]
    T_K = problem["temperature_K"]
    KD = problem["dissociation_constant"]
    n = problem["cooperativity_parameter"]

    # TODO: write u-varible function here 
    # ...

    # return -
    return u_variable
end