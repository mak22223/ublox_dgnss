# UBX-SEC-SIG (0x27 0x09) - Signal security information
std_msgs/Header header  # Header timestamp should be acquisition time

# Constants for Jamming States
uint8 JAM_UNKNOWN = 0
uint8 JAM_NO_JAMMING = 1
uint8 JAM_WARNING = 2
uint8 JAM_CRITICAL = 3

# Constants for Spoofing States
uint8 SPF_UNKNOWN = 0
uint8 SPF_NO_SPOOFING = 1
uint8 SPF_SPOOFING_INDICATED = 2
uint8 SPF_SPOOFING_AFFIRMED = 3

# Fields
uint8 version          # Message version

# Information related to jamming/interference
uint8 jam_det_enabled  # Flag indicates whether jamming/interference detection is enabled
uint8 jamming_state    # Jamming/interference state

# Information related to GNSS spoofing
uint8 spf_det_enabled  # Flag indicates whether spoofing detection is enabled
uint8 spoofing_state   # Spoofing state

# uint8[1] reserved_0    # Reserved

uint8 jam_num_cent_freqs  # The number of center frequencies with jamming information

JamStateCentFreq[] jam_state_cent_freqs  # Jamming state of given center frequencies