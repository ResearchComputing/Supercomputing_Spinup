##################################################################
#
#       Example:  Hello World (1)
#       
#       This example demonstrates how to initialize communication
#       and retrieve basic information about the number of active
#       processes, process rank, etc. By Nick Featherstone.

def main():
    """
    Parallel Hello World
    """

    from mpi4py import MPI  #importing MPI initializes the MPI library (similar to MPI_Init)
    import sys

    # The program is now running parallel
    num_proc  = MPI.COMM_WORLD.Get_size() # The number of processes
    my_rank   = MPI.COMM_WORLD.Get_rank() # The rank of this process (ranges from 0 to num_proc-1)
    node_name = MPI.Get_processor_name()  # The name of the node

    sys.stdout.write(
        "  Hello from node %s, rank %d out of %d processes.\n"
        % (node_name, my_rank, num_proc))

    # Once we're finished, we call Disconnect.  
    # No further calls to MPI can be made once MPI_Finalize is invoked.
    #MPI.Finalize()
main()

