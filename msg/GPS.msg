# GPS status flags
uint32 GPS_STATUS_FIX_TYPE_NO_FIX               = 0
uint32 GPS_STATUS_FIX_TYPE_DEAD_RECKONING_ONLY  = 256
uint32 GPS_STATUS_FIX_TYPE_2D_FIX               = 512
uint32 GPS_STATUS_FIX_TYPE_3D_FIX               = 768
uint32 GPS_STATUS_FIX_TYPE_GPS_PLUS_DEAD_RECK   = 1024
uint32 GPS_STATUS_FIX_TYPE_TIME_ONLY_FIX        = 1280
uint32 GPS_STATUS_FIX_TYPE_RESERVED1            = 1536
uint32 GPS_STATUS_FIX_TYPE_RESERVED2            = 1792
uint32 GPS_STATUS_FIX_RTK_SINGLE                = 3560
uint32 GPS_STATUS_FIX_RTK_FLOAT                 = 2816
uint32 GPS_STATUS_FIX_RTK_FIX                   = 3072
uint32 GPS_STATUS_FIX_MASK                      = 7936
uint32 GPS_STATUS_FIX_BIT_OFFSET                = 8

uint32 GPS_STATUS_FLAGS_FIX_OK                         = 65536      # Within limits (e.g. DOP & accuracy)
uint32 GPS_STATUS_FLAGS_DGPS_USED                      = 131072     # Differential GPS (DGPS) used.
uint32 GPS_STATUS_FLAGS_RTK_FIX_AND_HOLD               = 262144     # RTK feedback on the integer solutions to drive the float biases towards the resolved integers
uint32 GPS_STATUS_FLAGS_RTK_POSITION_ENABLED           = 1048576    # RTK precision positioning mode enabled
uint32 GPS_STATUS_FLAGS_STATIC_MODE                    = 2097152    # Static mode
uint32 GPS_STATUS_FLAGS_RTK_COMPASSING_ENABLED         = 4194304    # RTK moving base mode enabled
uint32 GPS_STATUS_FLAGS_RTK_RAW_GPS_DATA_ERROR         = 8388608    # RTK error: observations or ephemeris are invalid or not received (i.e. RTK differential corrections)
uint32 GPS_STATUS_FLAGS_RTK_BASE_DATA_MISSING          = 16777216   # RTK error: Either base observations or antenna position have not been received.
uint32 GPS_STATUS_FLAGS_RTK_BASE_POSITION_MOVING       = 33554432   # RTK error: base position moved when it should be stationary
uint32 GPS_STATUS_FLAGS_RTK_BASE_POSITION_INVALID      = 50331648   # RTK error: base position is invalid or not surveyed well
uint32 GPS_STATUS_FLAGS_RTK_BASE_POSITION_MASK         = 50331648   # RTK error: base position error bitmask
uint32 GPS_STATUS_FLAGS_RTK_POSITION_VALID             = 67108864   # RTK precision position is valid on GPS1 (i.e. < 20cm accuracy)
uint32 GPS_STATUS_FLAGS_RTK_COMPASSING_VALID           = 134217728  # RTK moving base heading is valid on GPS2
uint32 GPS_STATUS_FLAGS_RTK_COMPASSING_BASELINE_BAD    = 8192
uint32 GPS_STATUS_FLAGS_RTK_COMPASSING_BASELINE_UNSET  = 16384
uint32 GPS_STATUS_FLAGS_RTK_COMPASSING_MASK            = 138436608  # (GPS_STATUS_FLAGS_RTK_COMPASSING_ENABLED | GPS_STATUS_FLAGS_RTK_COMPASSING_VALID | GPS_STATUS_FLAGS_RTK_COMPASSING_BASELINE_BAD | GPS_STATUS_FLAGS_RTK_COMPASSING_BASELINE_UNSET)
uint32 GPS_STATUS_FLAGS_GPS_NMEA_DATA                  = 32768      # 1 = Data from NMEA message
uint32 GPS_STATUS_FLAGS_MASK                           = 268427264
uint32 GPS_STATUS_FLAGS_BIT_OFFSET                     = 16

Header header
uint32 week                             # GPS number of weeks since January 6th, 1980 
int8 num_sat                            # Number of satellites used in solution
uint32 fix_type                         # Fix type, one of STATUS_FIX_TYPE flags
int32 cno                               # Average of all non-zero satellite carrier to noise ratios, signal strengths (dBHz)
float64 latitude                        # Latitude (degrees)
float64 longitude                       # Longitude (degrees)
float64 altitude                        # Height above ellipsoid (not MSL) (m)
geometry_msgs/Vector3 posEcef           # Position (m) in ECEF
geometry_msgs/Vector3 velEcef           # Velocity (m/s) in ECEF
float32 hMSL                            # Height above MSL
float32 hAcc                            # Horizontal accuracy
float32 vAcc                            # Vertical accuracy
float32 sAcc                            # Speed accuracy (m/s)
float32 pDop                            # Position Dilution of Precision (m)	

