.class public Lco/vine/android/util/BlockingToken;
.super Ljava/lang/Object;
.source "BlockingToken.java"
.field private static final LOCK:[I
.field private static final sTokens:Ljava/util/HashMap;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
new-array v0, v0, [I
sput-object v0, Lco/vine/android/util/BlockingToken;->LOCK:[I
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lco/vine/android/util/BlockingToken;->sTokens:Ljava/util/HashMap;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static acquire(Ljava/lang/String;)V
.registers 5
const-string v2, "bbq {} acquire."
invoke-static {v2, p0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
invoke-static {p0}, Lco/vine/android/util/BlockingToken;->getQueue(Ljava/lang/String;)Ljava/util/concurrent/LinkedBlockingQueue;
move-result-object v1
:goto_9
invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;
move-result-object v2
if-nez v2, :cond_1c
const-wide/16 v2, 0xf
:try_start_11
invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
:try_end_14
.catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15
goto :goto_9
:catch_15
move-exception v0
const-string v2, "bbq {} failed to acquire."
invoke-static {v2, p0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_9
:cond_1c
return-void
.end method
.method private static getQueue(Ljava/lang/String;)Ljava/util/concurrent/LinkedBlockingQueue;
.registers 5
sget-object v3, Lco/vine/android/util/BlockingToken;->LOCK:[I
monitor-enter v3
:try_start_3
sget-object v2, Lco/vine/android/util/BlockingToken;->sTokens:Ljava/util/HashMap;
invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/concurrent/LinkedBlockingQueue;
if-nez v1, :cond_1a
new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
:try_start_12
:try_end_12
.catchall {:try_start_3 .. :try_end_12} :catchall_23
invoke-virtual {v1, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
:try_start_15
:try_end_15
.catchall {:try_start_12 .. :try_end_15} :catchall_23
.catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_1c
:goto_15
sget-object v2, Lco/vine/android/util/BlockingToken;->sTokens:Ljava/util/HashMap;
invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1a
monitor-exit v3
return-object v1
:catch_1c
move-exception v0
const-string v2, "bbq {} failed to queue."
invoke-static {v2, p0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_15
:catchall_23
move-exception v2
monitor-exit v3
:try_end_25
.catchall {:try_start_15 .. :try_end_25} :catchall_23
throw v2
.end method
.method public static release(Ljava/lang/String;)V
.registers 4
const-string v2, "bbq {} release."
invoke-static {v2, p0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
invoke-static {p0}, Lco/vine/android/util/BlockingToken;->getQueue(Ljava/lang/String;)Ljava/util/concurrent/LinkedBlockingQueue;
move-result-object v1
:try_start_9
invoke-virtual {v1, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
:goto_c
:try_end_c
.catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_d
return-void
:catch_d
move-exception v0
const-string v2, "bbq {} failed to release."
invoke-static {v2, p0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_c
.end method