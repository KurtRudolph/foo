package test

import "github.com/ipcf/t"
import "github.com/ipcf/foo"

test: t.Test & {
	describe: "package foo ": {
		subject: foo.Bar
		it: "should accept foo": {
			assert: valid: value: "foo"
		}
		it: "should reject baz": {
			assert: invalid: value: "baz"
		}
		it: "should accept foobar": {
			assert: valid: value: "foobar"
		}
	}
}
