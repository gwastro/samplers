echo $TEST
echo $SAMPLER
OMP_NUM_THREADS=1 pycbc_inference \
--config-file tests/${TEST}.ini sampler_configs/${SAMPLER}.ini \
--nprocesses=1 \
--output-file ${TEST}_${SAMPLER}.hdf \
--seed 0 \
--force \
--verbose

pycbc_validate_test_posterior \
--input-file ${TEST}_${SAMPLER}.hdf \
--output-file ${TEST}_${SAMPLER}.png \
--p-value-threshold .001 \
--ind-samples 1000
