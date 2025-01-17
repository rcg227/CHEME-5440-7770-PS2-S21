function calculate_transcription_kinetics(t::Float64, x::Array{Float64,1}, problem::Dict{String,Any})::Float64

    # initailzie -
    transcription_rate = 0.0

    # alias -
    mRNA = x[1]
    G = x[2]
    σ70 = x[3]

    # get parameters from problem dictionary -
    KX = problem["transcription_saturation_constant"]
    tau_X = problem["transcription_time_constant"]
    Vmax_X = problem["VMAX"]
    #Vmax_X = problem["maximum_transcription_velocity"] (given, but did not match definition from Problem.jl)


    # TODO: compute the transcription rate -
    transcription_rate = Vmax_X*(G/((tau_X*KX)+(1+tau_X)*G))

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
