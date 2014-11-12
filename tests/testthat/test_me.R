test_that("case is ignored", {
	expect_equal(gday("canucks"), gday("CANUCKS"))
})
