OMP_NUM_THREADS=1 pycbc_inference \
--config-file ${TEST}.ini ${SAMPLER}.ini \
--nprocesses=1 \
--output-file ${TEST}-${SAMPLER}.hdf \
--seed 0 \
--force \
--verbose
