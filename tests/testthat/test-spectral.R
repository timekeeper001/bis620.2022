
test_that(
  "The accel_plot() is correct for time-series data.",
  {
    data(ukb_accel)
    p <- spectral_signature(ukb_accel[1:100, ], take_log = TRUE)
    vdiffr::expect_doppelganger("first-100-samples", p)
  }
)
