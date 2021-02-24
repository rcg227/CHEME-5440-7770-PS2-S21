function calculate_transcription_kinetics(t::Float64, x::Array{Float64,1}, problem::Dict{String,Any})::Float64

    # initailzie -
    transcription_rate = 0.0
    
    # alias -
    mRNA = x[1]
    G = x[2]
    σ70 = x[3]

    # get parameters from problem dictionary -
    saturation_constant_KX = problem["saturation_constant_KX"]
    time_constant_tau_X = problem["time_constant_tau_X"]
    RNAP_T = problem["RANP_concentration_total"]
    kE_X = problem["elongation_constant_kEX"]

    # TODO: compute the transcription rate -
    # ...

    # return -
    return transcription_rate
end

function calculate_mRNA_degradation_kinetics(t::Float64, x::Array{Float64,1}, problem::Dict{String,Any})::Float64

    # alias -
    mRNA = x[1]
    G = x[2]
    σ70 = x[3]
    
    # get the mRNA degradation constant -
    mRNA_degradation_constant = problem["mRNA_degradation_constant"]

    # return -
    return (mRNA_degradation_constant*mRNA)
end