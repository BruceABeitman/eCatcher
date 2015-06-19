.class public Lcom/glympse/android/lib/StaticConfig;
.super Ljava/lang/Object;
.source "StaticConfig.java"


# static fields
.field public static final ACTIVITY_UPDATE_INTERVAL:J = 0x7530L

.field public static final AVATAR_COMPRESSION_QUALITY:I = 0x50

.field public static final BATCH_MAXIMUM_ENDPOINTS:I = 0x10

.field public static final BATTERY_LEVEL_DELTA:I = 0x2

.field public static BUILD_NAME:Ljava/lang/String; = null

.field public static final CALENDAR_REFRESH_INTERVAL:J = 0x927c0L

.field public static final CALENDAR_SNAPSHOT_DURATION:J = 0x36ee800L

.field public static final CALENDAR_SNAPSHOT_LOOKBACK:J = 0x36ee80L

.field public static final CLIENT_API_BUGFIX:I = 0x0

.field public static final CLIENT_API_BUILD:I = 0x44

.field public static final CLIENT_API_ITER:I = 0x0

.field public static final CLIENT_API_MAJOR:I = 0x2

.field public static final CLIENT_API_MINOR:I = 0xd

.field public static final CLIENT_API_STATUS:I = 0x0

.field public static final CONTACTS_MAX_MERGE_SPAN:I = 0x10

.field public static final DEBUG_LOG_LEVEL:I = 0x7

.field public static final DEBUG_VIEW_ENABLED:Z = true

.field public static final ETA_DISTANCE_FILTER:I = 0x96

.field public static final ETA_UPDATE_INTERVAL:J = 0xea60L

.field public static final FILE_LOG_LEVEL:I = 0x7

.field public static final GROUP_UPDATES_GET_RATE:I = 0xea60

.field public static final HISTORY_LOOKBACK_DEFAULT:J = 0x9a7ec800L

.field public static final HISTORY_RECENTLY_SENT:J = 0xdbba00L

.field public static final HTTP_API_STATUS_RETRIES:I = 0x4

.field public static final HTTP_IMAGE_DOWNLOAD_RETRIES:I = 0x5

.field public static final HTTP_IMAGE_UPLOAD_RETRIES:I = 0xc

.field public static final HTTP_MAX_OS_CONNECT_TIMEOUT:I = 0x6d60

.field public static final HTTP_OS_READ_TIMEOUT:I = 0x6d60

.field public static final HTTP_TIMEOUT_BUFFER:I = 0x7d0

.field public static final HTTP_UPLOAD_DIAGNOSTICS_RETRIES:I = 0x1

.field public static final IDLE_GET_RATE:I = 0x1d4c0

.field public static final IMAGE_CACHE_CLEANUP_INTERVAL:J = 0x9a7ec800L

.field public static final INITIAL_POST_RATE:I = 0x7530

.field public static final INVITE_LIFETIME:J = 0xa4cb800L

.field public static final LOCATIONS_CHUNK_SIZE:I = 0x262

.field public static final MAX_AVATAR_SIZE:I = 0x140

.field public static final MAX_DIAGNOSTICS_EVENTS_PER_TICKET:I = 0x100

.field public static final MAX_DISK_IMAGE_CACHE_SIZE:I = 0x64

.field public static final MAX_LOGSIZE_WITHOUT_WIFI:I = 0x100000

.field public static final MAX_MEMORY_IMAGE_CACHE_SIZE:I = 0x50

.field public static final MAX_NICKNAME_LENGTH:I = 0x40

.field public static final MAX_PENDING_TRACK:J = 0xa4cb800L

.field public static final MAX_RECENT_CACHE_SIZE:I = 0x80

.field public static final MAX_SHORT_TICKET_DURATION:I = 0xea60

.field public static final MAX_TICKET_DURATION:I = 0xdbba00

.field public static final MEMORY_IMAGE_CACHE_SIZE_THRESHOLD:I = 0x78

.field public static final MIN_GET_RATE:I = 0x1388

.field public static final MOTD_MIN_INTERVAL:J = 0x5265c00L

.field public static final MOTD_NET_ERRORS:J = 0x1eL

.field public static final MOTD_RETRIES:J = 0x5L

.field public static final NETWORK_ERRORS_BEFORE_STATE_CHANGE:J = 0x3L

.field public static final PLATFORM_DEACTIVATE_DELAY:J = 0x7d0L

.field public static final PLATFORM_WATCHDOG_INTERVAL:J = 0x7530L

.field public static final POST_RATE_PERIOD:I = 0x1d4c0

.field public static final PUSH_TOKEN_EXPIRATION_TIME:J = 0x240c8400L

.field public static final SERVER_GET_RATE:J = 0x1388L

.field public static final SMS_SENT_TIMEOUT_THRESHOLD:I = 0x2710

.field public static final TICKET_CANCELLATION_TIMEOUT:I = 0xea60

.field public static final TICKET_CANCELLATION_TIMER:Z = false

.field public static final TICKET_EXPIRATION_TIMER_BUFFER:J = 0xfaL

.field public static final TICKET_EXPIRATION_TO_COMPLETION:I = 0x1d4c0


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static API_STATUS_URL_PATH()Ljava/lang/String;
    .registers 1

    const-string v0, "ping"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static BASE_URL_SUFFIX()Ljava/lang/String;
    .registers 1

    const-string v0, "/v2/"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static HTTP()Ljava/lang/String;
    .registers 1

    const-string v0, "http://"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static HTTPS()Ljava/lang/String;
    .registers 1

    const-string v0, "https://"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static LOG_URL()Ljava/lang/String;
    .registers 1

    const-string v0, "https://upload.glympse.com/"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SNAPSHOT_BASE_URL()Ljava/lang/String;
    .registers 1

    const-string v0, "snapshot.glympse.com"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canAbortNetworkRequest()Z
    .registers 2

    invoke-static {}, Lcom/glympse/android/hal/Platform;->getOsName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
