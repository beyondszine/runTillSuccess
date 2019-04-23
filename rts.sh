# constants for success value of your program, just in case its not standard '0'.
# Delay between consecutive tries if it fails due to any reason.  
# m_result is random number given other than success value.

function rts() {
    m_result="100"
    SUCCESS_VALUE="0"
    DELAY_BETWEEN_TRIES_SECONDS=5

    if [ -z "$1" ]
    then
        echo "No command provided!"
    else
        echo "Your given command is: $1"
        echo "Sequential command queued is $2"
    fi

    echo "Running your given command till it gets succeed!"
    echo $m_result,$SUCCESS_VALUE

    while [ "$m_result" -ne "$SUCCESS_VALUE" ]
    do
        eval $1
        m_result=$?
        echo "Current return value yet not SUCCESS"
        sleep $DELAY_BETWEEN_TRIES_SECONDS
    done
    echo "Command executed successfully!" 
    eval $2
}