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
		it: "should accepts only strings with foo bar in them": [
			{assert: valid: value:   "foobar"},
			{assert: invalid: value: "baz"},
			{assert: valid: value:   "foo"},
			{assert: invalid: value: 5},
			{assert: invalid: value: null},
			{assert: invalid: value: float},
			{assert: invalid: value: []},
			{assert: invalid: value: {}},
		]
		describe: "array of describe tests": [
			{
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
					it: "should accepts only strings with foo bar in them": [
						{assert: valid: value:   "foobar"},
						{assert: invalid: value: "baz"},
						{assert: valid: value:   "foo"},
						{assert: invalid: value: 5},
						{assert: invalid: value: null},
						{assert: invalid: value: float},
						{assert: invalid: value: []},
						{assert: invalid: value: {}},
					]
				}
			},
		]
	}
}
