.class public final Lcom/spotify/mobile/android/util/an;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/text/SimpleDateFormat;
.field private static final b:Ljava/text/SimpleDateFormat;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/spotify/mobile/android/util/an;->a:Ljava/text/SimpleDateFormat;
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "yyyy-MM-dd--HH-mm-ss-SSS"
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/spotify/mobile/android/util/an;->b:Ljava/text/SimpleDateFormat;
return-void
.end method
.method public static declared-synchronized a()Ljava/lang/String;
.registers 2
const-class v1, Lcom/spotify/mobile/android/util/an;
monitor-enter v1
:try_start_3
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/an;->a(Ljava/util/Calendar;)Ljava/lang/String;
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_d
move-result-object v0
monitor-exit v1
return-object v0
:catchall_d
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized a(Ljava/util/Calendar;)Ljava/lang/String;
.registers 4
const-class v1, Lcom/spotify/mobile/android/util/an;
monitor-enter v1
:try_start_3
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/spotify/mobile/android/util/an;->a:Ljava/text/SimpleDateFormat;
invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_12
move-result-object v0
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized b()Ljava/lang/String;
.registers 2
const-class v1, Lcom/spotify/mobile/android/util/an;
monitor-enter v1
:try_start_3
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/an;->b(Ljava/util/Calendar;)Ljava/lang/String;
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_d
move-result-object v0
monitor-exit v1
return-object v0
:catchall_d
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static declared-synchronized b(Ljava/util/Calendar;)Ljava/lang/String;
.registers 4
const-class v1, Lcom/spotify/mobile/android/util/an;
monitor-enter v1
:try_start_3
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/spotify/mobile/android/util/an;->b:Ljava/text/SimpleDateFormat;
invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_12
move-result-object v0
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method