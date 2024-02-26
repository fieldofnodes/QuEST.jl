module QuEST

    
    using QuEST_jll
    using Clang
    using JuliaFormatter
    using LinearAlgebra
    using TensorOperations
    
export 
    c_shift_index,
    ComplexMatrixN,
    bindArraysToStackComplexMatrixN,
    phaseGateType,
    QASMLogger,
    ComplexArray,
    pauliOpType,
    QComplex,
    complex,
    qComplex, 
    ComplexMatrix2,
    ComplexMatrix4,
    QVector,
    qVector,
    vector,
    phaseFunc,
    bitEncoding,
    PauliHamil,
    DiagonalOp,
    SubDiagonalOp,
    Qureg,
    QuESTEnv,
    createQureg,
    createDensityQureg,
    createCloneQureg,
    destroyQureg,
    createComplexMatrixN,
    destroyComplexMatrixN,
    initComplexMatrixN,
    createPauliHamil,
    destroyPauliHamil,
    createPauliHamilFromFile,
    initPauliHamil,
    createDiagonalOp,
    destroyDiagonalOp,
    syncDiagonalOp,
    initDiagonalOp,
    initDiagonalOpFromPauliHamil,
    createDiagonalOpFromPauliHamilFile,
    setDiagonalOpElems,
    applyDiagonalOp,
    calcExpecDiagonalOp,
    createSubDiagonalOp,
    destroySubDiagonalOp,
    diagonalUnitary,
    applyGateSubDiagonalOp,
    applySubDiagonalOp,
    reportState,
    reportStateToScreen,
    reportQuregParams,
    reportPauliHamil,
    getNumQubits,
    getNumAmps,
    initBlankState,
    initZeroState,
    initPlusState,
    initClassicalState,
    initPureState,
    initDebugState,
    initStateFromAmps,
    setAmps,
    setDensityAmps,
    setQuregToPauliHamil,
    cloneQureg,
    phaseShift,
    controlledPhaseShift,
    multiControlledPhaseShift,
    controlledPhaseFlip ,
    multiControlledPhaseFlip,
    sGate,
    tGate,
    createQuESTEnv,
    destroyQuESTEnv,
    syncQuESTEnv,
    syncQuESTSuccess,
    reportQuESTEnv,
    getEnvironmentString,
    copyStateToGPU,
    copyStateFromGPU,
    copySubstateToGPU,
    copySubstateFromGPU,
    getAmp,
    getRealAmp,
    getImagAmp,
    getProbAmp,
    getDensityAmp,
    calcTotalProb,
    compactUnitary,
    unitary,
    rotateX,
    rotateY,
    rotateZ,
    rotateAroundAxis,
    controlledRotateX,
    controlledRotateY,
    controlledRotateZ,
    controlledRotateAroundAxis,
    controlledCompactUnitary,
    controlledUnitary,
    multiControlledUnitary,
    pauliX,
    pauliY,
    pauliZ,
    hadamard,
    controlledNot,
    multiControlledMultiQubitNot,
    multiQubitNot,
    controlledPauliY,
    calcProbOfOutcome,
    calcProbOfAllOutcomes,
    collapseToOutcome,
    measure,
    measureWithStats,
    calcInnerProduct,
    calcDensityInnerProduct,
    seedQuESTDefault,
    seedQuEST,
    getQuESTSeeds,
    startRecordingQASM,
    stopRecordingQASM,
    clearRecordedQASM,
    printRecordedQASM,
    writeRecordedQASMToFile,
    mixDephasing,
    mixTwoQubitDephasing,
    mixDepolarising,
    mixDamping,
    mixTwoQubitDepolarising,
    mixPauli,
    mixDensityMatrix,
    calcPurity,
    calcFidelity,
    swapGate,
    sqrtSwapGate,
    multiStateControlledUnitary,
    multiRotateZ,
    multiRotatePauli,
    multiControlledMultiRotateZ,
    multiControlledMultiRotatePauli,
    calcExpecPauliProd,
    calcExpecPauliSum,
    calcExpecPauliHamil,
    twoQubitUnitary,
    controlledTwoQubitUnitary,
    multiControlledTwoQubitUnitary,
    multiQubitUnitary,
    controlledMultiQubitUnitary,
    multiControlledMultiQubitUnitary,
    mixKrausMap,
    mixTwoQubitKrausMap,
    mixMultiQubitKrausMap,
    mixNonTPKrausMap,
    mixNonTPTwoQubitKrausMap,
    mixNonTPMultiQubitKrausMap,
    calcHilbertSchmidtDistance,
    setWeightedQureg,
    applyPauliSum,
    applyPauliHamil,
    applyTrotterCircuit,
    applyMatrix2,
    applyMatrix4,
    applyMatrixN,
    applyGateMatrixN,
    applyMultiControlledGateMatrixN,
    applyMultiControlledMatrixN,
    invalidQuESTInputError,
    applyPhaseFunc,
    applyPhaseFuncOverrides,
    applyMultiVarPhaseFunc,
    applyMultiVarPhaseFuncOverrides,
    applyNamedPhaseFunc,
    applyNamedPhaseFuncOverrides,
    applyParamNamedPhaseFunc,
    applyParamNamedPhaseFuncOverrides,
    applyFullQFT,
    applyQFT,
    applyProjector,
    unsafe_load_state_vec,
    make_QuEST_matrix,
    make_QuEST_matrix_2x2,
    make_QuEST_matrix_4x4,
    make_QuEST_matrix_NxN,
    pauliX_matrix,
    pauliY_matrix,
    pauliZ_matrix,
    hadamard_matrix,
    create_state_vec_zero_state,
    apply_hadamard_to_state_vector_at_target_index,
    DensityMatrix,
    StateVector,
    state_type,
    get_qureg_matrix,
    per_qubit_partial_trace,
    get_partial_trace,
    get_per_qubit_trace
   
    include("C/quest_julia_c_wrapper.jl")
    include("utils.jl")
    include("quantum_state.jl")
    include("partial_trace.jl")
end
