package testvalidate

import (
	"os"
	"path/filepath"
	"testing"

	test_structure "github.com/gruntwork-io/terratest/modules/test-structure"

	"github.com/stretchr/testify/require"
)

// TestValidateAllTerraformModulesAndExamples recursively finds all modules and examples (by default) subdirectories in
// the repo and runs Terraform InitAndValidate on them to flush out missing variables, typos, unused vars, etc
func TestValidateAllTerraformModulesAndExamples(t *testing.T) {
	t.Parallel()

	cwd, err := os.Getwd()
	require.NoError(t, err)

	opts, optsErr := test_structure.NewValidationOptions(filepath.Join(cwd, "../.."), []string{}, []string{})
	require.NoError(t, optsErr)

	test_structure.ValidateAllTerraformModules(t, opts)
}
