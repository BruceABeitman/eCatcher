.class public Lcom/facebook/katana/service/api/methods/ApiLogging;
.super Landroid/content/BroadcastReceiver;
.source "ApiLogging.java"
.field private static final API_DATA_ERROR_PARAM:Ljava/lang/String; = ",\"api_data_ec\":"
.field private static final API_EC_IO_EXCEPTION:I = 0x79
.field private static final API_EC_MALFORMED_JSON:I = 0x78
.field private static final API_ERROR_LOGGING_PARAM:Ljava/lang/String; = ",\"api_error\":"
.field private static final API_IO_ERROR_PARAM:Ljava/lang/String; = ",\"api_io_ec\":"
.field public static volatile API_LOG_RATIO:I = 0x0
.field public static final ARGS_LOGGING_PARAM:Ljava/lang/String; = "\",\"args\":\""
.field private static BASE_LOGGING_URL:Ljava/lang/String; = null
.field private static final DATA_LOGGING_PARAM:Ljava/lang/String; = ",\"data\":"
.field private static final DEVICE_HTTP_PARAM:Ljava/lang/String; = "&device="
.field private static final ELAPSED_LOGGING_PARAM:Ljava/lang/String; = "\",\"elapsed\":"
.field private static final END_TIME_PARAM:Ljava/lang/String; = ",\"end_time\":"
.field private static final ERROR_LOGGING_END:Ljava/lang/String; = "}"
.field private static final ERROR_LOGGING_START:Ljava/lang/String; = "{\"lid\":"
.field private static final FREQUENCY_PARAM:Ljava/lang/String; = ",\"frequency\":"
.field private static final GENERIC_ERROR_LOGGING_PARAM:Ljava/lang/String; = ",\"error\":"
.field private static final LOG_ID_API_HIT:I = 0x6a
.field private static final LOG_ID_BATCH:I = 0x69
.field private static final LOG_ID_SESSION:I = 0x6c
.field private static final LOG_ID_TRX_HIT:I = 0x6b
.field public static final METHOD_LOGGING_PARAM:Ljava/lang/String; = ",\"method\":\""
.field private static final OPERATOR_HTTP_PARAM:Ljava/lang/String; = "&carrier="
.field private static final PAYLOAD_PARAM:Ljava/lang/String; = "payload"
.field private static final START_TIME_PARAM:Ljava/lang/String; = ",\"start_time\":"
.field private static final TAG:Ljava/lang/String; = "LogClass"
.field private static final TOTAL_API_COUNT_PARAM:Ljava/lang/String; = ",\"api_count\":"
.field private static final TOTAL_TRX_COUNT_PARAM:Ljava/lang/String; = ",\"trx_count\":"
.field private static final TRX_IO_ERROR_PARAM:Ljava/lang/String; = ",\"trx_io_ec\":"
.field public static volatile TRX_LOG_RATIO:I = 0x0
.field private static final URL_LOGGING_PARAM:Ljava/lang/String; = ",\"url\":\""
.field private static apiCount:Ljava/util/concurrent/atomic/AtomicInteger;
.field private static apiNetworkErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;
.field private static apiPayloadErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;
.field public static deviceName:Ljava/lang/String;
.field private static endTime:J
.field public static needsFlush:Z
.field public static operatorName:Ljava/lang/String;
.field private static rng:Ljava/util/Random;
.field private static sb:Ljava/lang/StringBuilder;
.field private static startTime:J
.field private static trxCount:Ljava/util/concurrent/atomic/AtomicInteger;
.field private static trxErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;
.field  errorCode:I
.field  ex:Ljava/lang/Exception;
.method static constructor <clinit>()V
.registers 3
const/4 v2, 0x0
const/4 v1, 0x0
const-string v0, "http://www.facebook.com/impression.php?id=350685531728&lid=105"
sput-object v0, Lcom/facebook/katana/service/api/methods/ApiLogging;->BASE_LOGGING_URL:Ljava/lang/String;
const/16 v0, 0x3e8
sput v0, Lcom/facebook/katana/service/api/methods/ApiLogging;->API_LOG_RATIO:I
const/16 v0, 0xbb8
sput v0, Lcom/facebook/katana/service/api/methods/ApiLogging;->TRX_LOG_RATIO:I
new-instance v0, Ljava/util/Random;
invoke-direct {v0}, Ljava/util/Random;-><init>()V
sput-object v0, Lcom/facebook/katana/service/api/methods/ApiLogging;->rng:Ljava/util/Random;
sput-boolean v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->needsFlush:Z
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
sput-object v0, Lcom/facebook/katana/service/api/methods/ApiLogging;->apiCount:Ljava/util/concurrent/atomic/AtomicInteger;
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
sput-object v0, Lcom/facebook/katana/service/api/methods/ApiLogging;->trxCount:Ljava/util/concurrent/atomic/AtomicInteger;
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
sput-object v0, Lcom/facebook/katana/service/api/methods/ApiLogging;->apiNetworkErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
sput-object v0, Lcom/facebook/katana/service/api/methods/ApiLogging;->apiPayloadErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
sput-object v0, Lcom/facebook/katana/service/api/methods/ApiLogging;->trxErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;
sput-object v2, Lcom/facebook/katana/service/api/methods/ApiLogging;->deviceName:Ljava/lang/String;
sput-object v2, Lcom/facebook/katana/service/api/methods/ApiLogging;->operatorName:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x800
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
sput-object v0, Lcom/facebook/katana/service/api/methods/ApiLogging;->sb:Ljava/lang/StringBuilder;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/facebook/katana/service/api/methods/ApiLogging;->errorCode:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiLogging;->ex:Ljava/lang/Exception;
return-void
.end method
.method public static flush(Landroid/content/Context;)V
.registers 8
const/4 v6, 0x0
sget-boolean v3, Lcom/facebook/katana/service/api/methods/ApiLogging;->needsFlush:Z
if-eqz v3, :cond_b1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
sput-wide v3, Lcom/facebook/katana/service/api/methods/ApiLogging;->endTime:J
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "{\"lid\":"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v3, 0x6c
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v3, ",\"trx_io_ec\":"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget-object v3, Lcom/facebook/katana/service/api/methods/ApiLogging;->trxErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I
move-result v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v3, ",\"api_io_ec\":"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget-object v3, Lcom/facebook/katana/service/api/methods/ApiLogging;->apiNetworkErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I
move-result v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v3, ",\"api_data_ec\":"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget-object v3, Lcom/facebook/katana/service/api/methods/ApiLogging;->apiPayloadErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I
move-result v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v3, ",\"trx_count\":"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget-object v3, Lcom/facebook/katana/service/api/methods/ApiLogging;->trxCount:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I
move-result v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v3, ",\"api_count\":"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget-object v3, Lcom/facebook/katana/service/api/methods/ApiLogging;->apiCount:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I
move-result v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v3, ",\"start_time\":"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget-wide v3, Lcom/facebook/katana/service/api/methods/ApiLogging;->startTime:J
invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const-string v3, ",\"end_time\":"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget-wide v3, Lcom/facebook/katana/service/api/methods/ApiLogging;->endTime:J
invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const-string v3, "}"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
new-instance v2, Landroid/content/ContentValues;
invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V
const-string v3, "session_id"
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v3, "start_time"
sget-wide v4, Lcom/facebook/katana/service/api/methods/ApiLogging;->startTime:J
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string v3, "end_time"
sget-wide v4, Lcom/facebook/katana/service/api/methods/ApiLogging;->endTime:J
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string v3, "api_log"
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
sget-object v3, Lcom/facebook/katana/provider/LoggingProvider;->SESSIONS_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
sput-boolean v6, Lcom/facebook/katana/service/api/methods/ApiLogging;->needsFlush:Z
:cond_b1
return-void
.end method
.method public static load(Landroid/content/Context;)V
.registers 11
const/4 v9, 0x0
const-string v3, " "
sget-object v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->deviceName:Ljava/lang/String;
if-nez v1, :cond_4c
new-instance v1, Ljava/lang/StringBuilder;
sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v2, " "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Landroid/os/Build;->HOST:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->deviceName:Ljava/lang/String;
:cond_4c
sget-object v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->operatorName:Ljava/lang/String;
if-nez v1, :cond_62
const-string v1, "phone"
invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v8
check-cast v8, Landroid/telephony/TelephonyManager;
invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->operatorName:Ljava/lang/String;
:cond_62
const-string v1, "alarm"
invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/AlarmManager;
new-instance v7, Landroid/content/Intent;
const-class v1, Lcom/facebook/katana/service/api/methods/ApiLogging;
invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-static {p0, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v6
const/4 v1, 0x2
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
const-wide/16 v4, 0x2710
add-long/2addr v2, v4
const-wide/32 v4, 0x2932e00
invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
sget-object v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->apiCount:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
sget-object v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->apiNetworkErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
sget-object v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->apiPayloadErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
sget-object v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->trxCount:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
sget-object v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->trxErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
sput-wide v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->startTime:J
return-void
.end method
.method public static logAction(Ljava/lang/StringBuilder;)V
.registers 10
const-string v8, "LogClass"
:try_start_2
new-instance v7, Ljava/lang/StringBuilder;
const/16 v1, 0x800
invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v1, "payload"
invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v1, 0x3d
invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/16 v1, 0x5b
invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
const/16 v1, 0x5d
invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/16 v1, 0xa
invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/16 v1, 0xa
invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v1, "LogClass"
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
new-instance v2, Ljava/io/ByteArrayInputStream;
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
new-instance v0, Lcom/facebook/katana/service/api/methods/HttpOperation;
new-instance v1, Ljava/lang/StringBuilder;
sget-object v3, Lcom/facebook/katana/service/api/methods/ApiLogging;->BASE_LOGGING_URL:Ljava/lang/String;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v3, "&device="
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v3, Lcom/facebook/katana/service/api/methods/ApiLogging;->deviceName:Ljava/lang/String;
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, "&carrier="
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v3, Lcom/facebook/katana/service/api/methods/ApiLogging;->operatorName:Ljava/lang/String;
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v3, Ljava/io/ByteArrayOutputStream;
const/16 v4, 0x2000
invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
const-string v4, "application/x-www-form-urlencoded;"
const/4 v5, 0x0
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/HttpOperation;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;)V
invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/HttpOperation;->start()V
:try_end_79
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_79} :catch_7a
:goto_79
return-void
:catch_7a
move-exception v1
move-object v6, v1
const-string v1, "LogClass"
const-string v1, "Logging failed: "
invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_79
.end method
.method public static logApiResponse(Ljava/lang/String;JILjava/lang/Exception;)V
.registers 13
const-wide/16 v6, 0x0
const-wide/16 v0, 0x0
const-wide/16 v2, 0x0
instance-of v5, p4, Lcom/facebook/katana/service/api/FacebookApiException;
if-eqz v5, :cond_60
check-cast p4, Lcom/facebook/katana/service/api/FacebookApiException;
invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookApiException;->getErrorCode()I
move-result v5
int-to-long v0, v5
:cond_11
:goto_11
new-instance v4, Ljava/lang/StringBuilder;
const/16 v5, 0x258
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v5, "{\"lid\":"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v5, 0x6a
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v5, "\",\"elapsed\":"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const-string v5, ",\"data\":"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
cmp-long v5, v0, v6
if-lez v5, :cond_41
const-string v5, ",\"api_error\":"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
:cond_41
cmp-long v5, v2, v6
if-lez v5, :cond_4d
const-string v5, ",\"error\":"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
:cond_4d
const-string v5, ",\"frequency\":"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget v5, Lcom/facebook/katana/service/api/methods/ApiLogging;->API_LOG_RATIO:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v5, "}"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v4}, Lcom/facebook/katana/service/api/methods/ApiLogging;->logAction(Ljava/lang/StringBuilder;)V
return-void
:cond_60
instance-of v5, p4, Ljava/net/SocketTimeoutException;
if-nez v5, :cond_68
instance-of v5, p4, Ljava/io/IOException;
if-eqz v5, :cond_6b
:cond_68
const-wide/16 v2, 0x79
goto :goto_11
:cond_6b
instance-of v5, p4, Lorg/codehaus/jackson/JsonParseException;
if-nez v5, :cond_73
instance-of v5, p4, Ljava/lang/IllegalArgumentException;
if-eqz v5, :cond_11
:cond_73
const-wide/16 v2, 0x78
goto :goto_11
.end method
.method public static logTransferResponse(Ljava/lang/String;JJI)V
.registers 8
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x258
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v1, "{\"lid\":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v1, 0x6b
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, ",\"url\":\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "\",\"elapsed\":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const-string v1, ",\"data\":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const/16 v1, 0xc8
if-eq p5, v1, :cond_39
const-string v1, ",\"error\":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
:cond_39
const-string v1, ",\"frequency\":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->TRX_LOG_RATIO:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v0}, Lcom/facebook/katana/service/api/methods/ApiLogging;->logAction(Ljava/lang/StringBuilder;)V
return-void
.end method
.method public static reportAndCheckApi(Ljava/lang/Exception;)Z
.registers 4
const/4 v2, 0x1
sput-boolean v2, Lcom/facebook/katana/service/api/methods/ApiLogging;->needsFlush:Z
sget-object v0, Lcom/facebook/katana/service/api/methods/ApiLogging;->apiCount:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
instance-of v0, p0, Ljava/net/SocketTimeoutException;
if-nez v0, :cond_10
instance-of v0, p0, Ljava/io/IOException;
if-eqz v0, :cond_22
:cond_10
sget-object v0, Lcom/facebook/katana/service/api/methods/ApiLogging;->apiNetworkErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
:cond_15
:goto_15
sget-object v0, Lcom/facebook/katana/service/api/methods/ApiLogging;->rng:Ljava/util/Random;
invoke-virtual {v0}, Ljava/util/Random;->nextInt()I
move-result v0
sget v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->API_LOG_RATIO:I
rem-int/2addr v0, v1
if-nez v0, :cond_30
move v0, v2
:goto_21
return v0
:cond_22
instance-of v0, p0, Lorg/codehaus/jackson/JsonParseException;
if-nez v0, :cond_2a
instance-of v0, p0, Ljava/lang/IllegalArgumentException;
if-eqz v0, :cond_15
:cond_2a
sget-object v0, Lcom/facebook/katana/service/api/methods/ApiLogging;->apiPayloadErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
goto :goto_15
:cond_30
const/4 v0, 0x0
goto :goto_21
.end method
.method public static reportAndCheckTrx(I)Z
.registers 4
const/4 v2, 0x1
sput-boolean v2, Lcom/facebook/katana/service/api/methods/ApiLogging;->needsFlush:Z
sget-object v0, Lcom/facebook/katana/service/api/methods/ApiLogging;->trxCount:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
const/16 v0, 0xc8
if-eq p0, v0, :cond_11
sget-object v0, Lcom/facebook/katana/service/api/methods/ApiLogging;->trxErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
:cond_11
sget-object v0, Lcom/facebook/katana/service/api/methods/ApiLogging;->rng:Ljava/util/Random;
invoke-virtual {v0}, Ljava/util/Random;->nextInt()I
move-result v0
sget v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->TRX_LOG_RATIO:I
rem-int/2addr v0, v1
if-nez v0, :cond_1e
move v0, v2
:goto_1d
return v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method
.method public static updateLogRatios(II)V
.registers 2
sput p0, Lcom/facebook/katana/service/api/methods/ApiLogging;->API_LOG_RATIO:I
sput p1, Lcom/facebook/katana/service/api/methods/ApiLogging;->TRX_LOG_RATIO:I
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 13
const/16 v9, 0xa
const/4 v8, 0x0
const/4 v3, 0x0
invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Lcom/facebook/katana/provider/LoggingProvider;->SESSIONS_CONTENT_URI:Landroid/net/Uri;
sget-object v2, Lcom/facebook/katana/service/api/methods/ApiLogging$LoggingQuery;->LOG_PROJECTION:[Ljava/lang/String;
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
move-result v1
if-lez v1, :cond_ab
sget-object v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->sb:Ljava/lang/StringBuilder;
invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->setLength(I)V
sget-object v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->sb:Ljava/lang/StringBuilder;
const-string v2, "payload"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget-object v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->sb:Ljava/lang/StringBuilder;
const/16 v2, 0x3d
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
sget-object v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->sb:Ljava/lang/StringBuilder;
const/16 v2, 0x5b
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
if-eqz v1, :cond_4e
:cond_38
sget-object v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->sb:Ljava/lang/StringBuilder;
invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget-object v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->sb:Ljava/lang/StringBuilder;
const/16 v2, 0x2c
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
move-result v1
if-nez v1, :cond_38
:cond_4e
sget-object v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->sb:Ljava/lang/StringBuilder;
const/16 v2, 0x5d
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
sget-object v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->sb:Ljava/lang/StringBuilder;
invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
sget-object v1, Lcom/facebook/katana/service/api/methods/ApiLogging;->sb:Ljava/lang/StringBuilder;
invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v1, "LogClass"
sget-object v2, Lcom/facebook/katana/service/api/methods/ApiLogging;->sb:Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
new-instance v7, Landroid/content/Intent;
const-class v1, Lcom/facebook/katana/service/LoggingService;
invoke-direct {v7, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "com.facebook.katana.service.LoggingService.data"
sget-object v2, Lcom/facebook/katana/service/api/methods/ApiLogging;->sb:Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "com.facebook.katana.service.LoggingService.uri"
new-instance v2, Ljava/lang/StringBuilder;
sget-object v3, Lcom/facebook/katana/service/api/methods/ApiLogging;->BASE_LOGGING_URL:Ljava/lang/String;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v3, "&device="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Lcom/facebook/katana/service/api/methods/ApiLogging;->deviceName:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "&carrier="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Lcom/facebook/katana/service/api/methods/ApiLogging;->operatorName:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
:cond_ab
invoke-interface {v6}, Landroid/database/Cursor;->close()V
return-void
.end method