package test

import "github.com/ipcf/testing"

import "github.com/ipcf/foo"

testing.T & {
	test: "foo.Bar": {
		[testing.NumDot]: subject: foo.Bar
		"0": assert: ok:     "foo"
		"1": assert: notOk:  "foobar" // will fail
		"2": assert: ok:     "bar"
		"3": assert: ok:     "barfoo"
		"4": assert: ok:     "barfoo"
		"5": assert: ok:     "barfoofoobarfoo"
		"6": assert: notOk:  ""
		"7": assert: notOk:  "bar1"
		"8": assert: notOk:  "1bar"
		"9": assert: notOk:  int
		"10": assert: notOk: null
		"11": assert: notOk: {}
	}
}
