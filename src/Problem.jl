function generate_problem_dictionary(path_to_parameters_file::String)::Dict{String,Any}

    # initialize -
    problem_dictionary = Dict{String,Any}()

    try

        # load the TOML parameters file -
        toml_dictionary = TOML.parsefile(path_to_parameters_file)

        # setup the initial condition array -
        initital_condition_array = [
            0.0 ;   # 1 mRNA
            0.0 ;   # TODO: gene concentration goes here -
            0.0 ;   # 3 I = we'll fill this in the execute script 
        ]


        # TODO: calculate the mRNA_degradation_constant 
        # mRNA_degradation_constant = ....

        # TODO: VMAX for transcription -
        # VMAX = ...

        # TODO: Stuff that I'm forgetting?

        # --- PUT STUFF INTO problem_dictionary ---- 
        problem_dictionary["transcription_time_constant"] = toml_dictionary["transcription_time_constant"]
        problem_dictionary["initital_condition_array"] = initital_condition_array

        # return -
        return problem_dictionary
    catch error
        throw(error)
    end
end