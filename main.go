package main

import (
	"fmt"
	"runtime"

	"github.com/spf13/cobra"
)

func main() {
	var rootCmd = &cobra.Command{
		Use:   "rando",
		Short: "System-related commands",
		Long:  "System-related commands such as CPU and memory information",
	}

	var cpusCmd = &cobra.Command{
		Use:   "cpus",
		Short: "Print the number of CPUs",
		Run: func(cmd *cobra.Command, args []string) {
			fmt.Printf("Number of CPUs: %d\t[runtime.NumCPU()]\n", runtime.NumCPU())
		},
	}

	rootCmd.AddCommand(cpusCmd)

	if err := rootCmd.Execute(); err != nil {
		fmt.Println(err)
	}
}
