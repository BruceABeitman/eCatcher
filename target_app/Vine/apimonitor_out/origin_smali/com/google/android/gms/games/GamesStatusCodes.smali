.class public final Lcom/google/android/gms/games/GamesStatusCodes;
.super Ljava/lang/Object;


# static fields
.field public static final STATUS_ACHIEVEMENT_NOT_INCREMENTAL:I = 0xbba

.field public static final STATUS_ACHIEVEMENT_UNKNOWN:I = 0xbb9

.field public static final STATUS_ACHIEVEMENT_UNLOCKED:I = 0xbbb

.field public static final STATUS_ACHIEVEMENT_UNLOCK_FAILURE:I = 0xbb8

.field public static final STATUS_APP_MISCONFIGURED:I = 0x8

.field public static final STATUS_CLIENT_RECONNECT_REQUIRED:I = 0x2

.field public static final STATUS_GAME_NOT_FOUND:I = 0x9

.field public static final STATUS_INTERNAL_ERROR:I = 0x1

.field public static final STATUS_INTERRUPTED:I = 0xe

.field public static final STATUS_INVALID_REAL_TIME_ROOM_ID:I = 0x1b5a

.field public static final STATUS_LICENSE_CHECK_FAILED:I = 0x7

.field public static final STATUS_MATCH_ERROR_ALREADY_REMATCHED:I = 0x1969

.field public static final STATUS_MATCH_ERROR_INACTIVE_MATCH:I = 0x1965

.field public static final STATUS_MATCH_ERROR_INVALID_MATCH_RESULTS:I = 0x1968

.field public static final STATUS_MATCH_ERROR_INVALID_MATCH_STATE:I = 0x1966

.field public static final STATUS_MATCH_ERROR_INVALID_PARTICIPANT_STATE:I = 0x1964

.field public static final STATUS_MATCH_ERROR_LOCALLY_MODIFIED:I = 0x196b

.field public static final STATUS_MATCH_ERROR_OUT_OF_DATE_VERSION:I = 0x1967

.field public static final STATUS_MATCH_NOT_FOUND:I = 0x196a

.field public static final STATUS_MILESTONE_CLAIMED_PREVIOUSLY:I = 0x1f40

.field public static final STATUS_MILESTONE_CLAIM_FAILED:I = 0x1f41

.field public static final STATUS_MULTIPLAYER_DISABLED:I = 0x1773

.field public static final STATUS_MULTIPLAYER_ERROR_CREATION_NOT_ALLOWED:I = 0x1770

.field public static final STATUS_MULTIPLAYER_ERROR_INVALID_MULTIPLAYER_TYPE:I = 0x1772

.field public static final STATUS_MULTIPLAYER_ERROR_INVALID_OPERATION:I = 0x1774

.field public static final STATUS_MULTIPLAYER_ERROR_NOT_TRUSTED_TESTER:I = 0x1771

.field public static final STATUS_NETWORK_ERROR_NO_DATA:I = 0x4

.field public static final STATUS_NETWORK_ERROR_OPERATION_DEFERRED:I = 0x5

.field public static final STATUS_NETWORK_ERROR_OPERATION_FAILED:I = 0x6

.field public static final STATUS_NETWORK_ERROR_STALE_DATA:I = 0x3

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPERATION_IN_FLIGHT:I = 0x1b5f

.field public static final STATUS_PARTICIPANT_NOT_CONNECTED:I = 0x1b5b

.field public static final STATUS_QUEST_NOT_STARTED:I = 0x1f43

.field public static final STATUS_QUEST_NO_LONGER_AVAILABLE:I = 0x1f42

.field public static final STATUS_REAL_TIME_CONNECTION_FAILED:I = 0x1b58

.field public static final STATUS_REAL_TIME_INACTIVE_ROOM:I = 0x1b5d

.field public static final STATUS_REAL_TIME_MESSAGE_SEND_FAILED:I = 0x1b59

.field public static final STATUS_REAL_TIME_ROOM_NOT_JOINED:I = 0x1b5c

.field public static final STATUS_REQUEST_UPDATE_PARTIAL_SUCCESS:I = 0x7d0

.field public static final STATUS_REQUEST_UPDATE_TOTAL_FAILURE:I = 0x7d1

.field public static final STATUS_SNAPSHOT_COMMIT_FAILED:I = 0xfa3

.field public static final STATUS_SNAPSHOT_CONFLICT:I = 0xfa4

.field public static final STATUS_SNAPSHOT_CONTENTS_UNAVAILABLE:I = 0xfa2

.field public static final STATUS_SNAPSHOT_CREATION_FAILED:I = 0xfa1

.field public static final STATUS_SNAPSHOT_FOLDER_UNAVAILABLE:I = 0xfa5

.field public static final STATUS_SNAPSHOT_NOT_FOUND:I = 0xfa0

.field public static final STATUS_TIMEOUT:I = 0xf


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusString(I)Ljava/lang/String;
    .registers 5

    sparse-switch p0, :sswitch_data_ba

    const-string v0, "Status code (%d) not found!"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    :sswitch_14
    const-string v0, "STATUS_OK"

    goto :goto_13

    :sswitch_17
    const-string v0, "STATUS_INTERNAL_ERROR"

    goto :goto_13

    :sswitch_1a
    const-string v0, "STATUS_CLIENT_RECONNECT_REQUIRED"

    goto :goto_13

    :sswitch_1d
    const-string v0, "STATUS_NETWORK_ERROR_STALE_DATA"

    goto :goto_13

    :sswitch_20
    const-string v0, "STATUS_NETWORK_ERROR_NO_DATA"

    goto :goto_13

    :sswitch_23
    const-string v0, "STATUS_NETWORK_ERROR_OPERATION_DEFERRED"

    goto :goto_13

    :sswitch_26
    const-string v0, "STATUS_NETWORK_ERROR_OPERATION_FAILED"

    goto :goto_13

    :sswitch_29
    const-string v0, "STATUS_LICENSE_CHECK_FAILED"

    goto :goto_13

    :sswitch_2c
    const-string v0, "STATUS_APP_MISCONFIGURED"

    goto :goto_13

    :sswitch_2f
    const-string v0, "STATUS_GAME_NOT_FOUND"

    goto :goto_13

    :sswitch_32
    const-string v0, "STATUS_INTERRUPTED"

    goto :goto_13

    :sswitch_35
    const-string v0, "STATUS_TIMEOUT"

    goto :goto_13

    :sswitch_38
    const-string v0, "STATUS_RESOLVE_STALE_OR_NO_DATA"

    goto :goto_13

    :sswitch_3b
    const-string v0, "STATUS_AUTH_ERROR_HARD"

    goto :goto_13

    :sswitch_3e
    const-string v0, "STATUS_AUTH_ERROR_USER_RECOVERABLE"

    goto :goto_13

    :sswitch_41
    const-string v0, "STATUS_AUTH_ERROR_UNREGISTERED_CLIENT_ID"

    goto :goto_13

    :sswitch_44
    const-string v0, "STATUS_AUTH_ERROR_API_ACCESS_DENIED"

    goto :goto_13

    :sswitch_47
    const-string v0, "STATUS_PLAYER_OOB_REQUIRED"

    goto :goto_13

    :sswitch_4a
    const-string v0, "STATUS_REQUEST_UPDATE_PARTIAL_SUCCESS"

    goto :goto_13

    :sswitch_4d
    const-string v0, "STATUS_REQUEST_UPDATE_TOTAL_FAILURE"

    goto :goto_13

    :sswitch_50
    const-string v0, "STATUS_ACHIEVEMENT_UNLOCK_FAILURE"

    goto :goto_13

    :sswitch_53
    const-string v0, "STATUS_ACHIEVEMENT_UNKNOWN"

    goto :goto_13

    :sswitch_56
    const-string v0, "STATUS_ACHIEVEMENT_NOT_INCREMENTAL"

    goto :goto_13

    :sswitch_59
    const-string v0, "STATUS_ACHIEVEMENT_UNLOCKED"

    goto :goto_13

    :sswitch_5c
    const-string v0, "STATUS_SNAPSHOT_NOT_FOUND"

    goto :goto_13

    :sswitch_5f
    const-string v0, "STATUS_SNAPSHOT_CREATION_FAILED"

    goto :goto_13

    :sswitch_62
    const-string v0, "STATUS_SNAPSHOT_CONTENTS_UNAVAILABLE"

    goto :goto_13

    :sswitch_65
    const-string v0, "STATUS_SNAPSHOT_COMMIT_FAILED"

    goto :goto_13

    :sswitch_68
    const-string v0, "STATUS_SNAPSHOT_CONFLICT"

    goto :goto_13

    :sswitch_6b
    const-string v0, "STATUS_MULTIPLAYER_ERROR_CREATION_NOT_ALLOWED"

    goto :goto_13

    :sswitch_6e
    const-string v0, "STATUS_MULTIPLAYER_ERROR_NOT_TRUSTED_TESTER"

    goto :goto_13

    :sswitch_71
    const-string v0, "STATUS_MULTIPLAYER_ERROR_INVALID_MULTIPLAYER_TYPE"

    goto :goto_13

    :sswitch_74
    const-string v0, "STATUS_MULTIPLAYER_DISABLED"

    goto :goto_13

    :sswitch_77
    const-string v0, "STATUS_MATCH_ERROR_INVALID_PARTICIPANT_STATE"

    goto :goto_13

    :sswitch_7a
    const-string v0, "STATUS_MATCH_ERROR_INACTIVE_MATCH"

    goto :goto_13

    :sswitch_7d
    const-string v0, "STATUS_MATCH_ERROR_OUT_OF_DATE_VERSION"

    goto :goto_13

    :sswitch_80
    const-string v0, "STATUS_MATCH_ERROR_INVALID_MATCH_RESULTS"

    goto :goto_13

    :sswitch_83
    const-string v0, "STATUS_MATCH_ERROR_ALREADY_REMATCHED"

    goto :goto_13

    :sswitch_86
    const-string v0, "STATUS_MATCH_NOT_FOUND"

    goto :goto_13

    :sswitch_89
    const-string v0, "STATUS_MATCH_ERROR_LOCALLY_MODIFIED"

    goto :goto_13

    :sswitch_8c
    const-string v0, "STATUS_REAL_TIME_CONNECTION_FAILED"

    goto :goto_13

    :sswitch_8f
    const-string v0, "STATUS_REAL_TIME_MESSAGE_SEND_FAILED"

    goto :goto_13

    :sswitch_92
    const-string v0, "STATUS_INVALID_REAL_TIME_ROOM_ID"

    goto/16 :goto_13

    :sswitch_96
    const-string v0, "STATUS_PARTICIPANT_NOT_CONNECTED"

    goto/16 :goto_13

    :sswitch_9a
    const-string v0, "STATUS_REAL_TIME_ROOM_NOT_JOINED"

    goto/16 :goto_13

    :sswitch_9e
    const-string v0, "STATUS_REAL_TIME_INACTIVE_ROOM"

    goto/16 :goto_13

    :sswitch_a2
    const-string v0, "STATUS_REAL_TIME_SERVICE_NOT_CONNECTED"

    goto/16 :goto_13

    :sswitch_a6
    const-string v0, "STATUS_OPERATION_IN_FLIGHT"

    goto/16 :goto_13

    :sswitch_aa
    const-string v0, "STATUS_MILESTONE_CLAIMED_PREVIOUSLY"

    goto/16 :goto_13

    :sswitch_ae
    const-string v0, "STATUS_MILESTONE_CLAIM_FAILED"

    goto/16 :goto_13

    :sswitch_b2
    const-string v0, "STATUS_QUEST_NO_LONGER_AVAILABLE"

    goto/16 :goto_13

    :sswitch_b6
    const-string v0, "STATUS_QUEST_NOT_STARTED"

    goto/16 :goto_13

    :sswitch_data_ba
    .sparse-switch
        0x0 -> :sswitch_14
        0x1 -> :sswitch_17
        0x2 -> :sswitch_1a
        0x3 -> :sswitch_1d
        0x4 -> :sswitch_20
        0x5 -> :sswitch_23
        0x6 -> :sswitch_26
        0x7 -> :sswitch_29
        0x8 -> :sswitch_2c
        0x9 -> :sswitch_2f
        0xe -> :sswitch_32
        0xf -> :sswitch_35
        0x1f4 -> :sswitch_38
        0x3e8 -> :sswitch_3b
        0x3e9 -> :sswitch_3e
        0x3ea -> :sswitch_41
        0x3eb -> :sswitch_44
        0x5dc -> :sswitch_47
        0x7d0 -> :sswitch_4a
        0x7d1 -> :sswitch_4d
        0xbb8 -> :sswitch_50
        0xbb9 -> :sswitch_53
        0xbba -> :sswitch_56
        0xbbb -> :sswitch_59
        0xfa0 -> :sswitch_5c
        0xfa1 -> :sswitch_5f
        0xfa2 -> :sswitch_62
        0xfa3 -> :sswitch_65
        0xfa4 -> :sswitch_68
        0x1770 -> :sswitch_6b
        0x1771 -> :sswitch_6e
        0x1772 -> :sswitch_71
        0x1773 -> :sswitch_74
        0x1964 -> :sswitch_77
        0x1965 -> :sswitch_7a
        0x1967 -> :sswitch_7d
        0x1968 -> :sswitch_80
        0x1969 -> :sswitch_83
        0x196a -> :sswitch_86
        0x196b -> :sswitch_89
        0x1b58 -> :sswitch_8c
        0x1b59 -> :sswitch_8f
        0x1b5a -> :sswitch_92
        0x1b5b -> :sswitch_96
        0x1b5c -> :sswitch_9a
        0x1b5d -> :sswitch_9e
        0x1b5e -> :sswitch_a2
        0x1b5f -> :sswitch_a6
        0x1f40 -> :sswitch_aa
        0x1f41 -> :sswitch_ae
        0x1f42 -> :sswitch_b2
        0x1f43 -> :sswitch_b6
    .end sparse-switch
.end method
