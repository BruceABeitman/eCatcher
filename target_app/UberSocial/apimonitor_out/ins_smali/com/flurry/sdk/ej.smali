.class public final Lcom/flurry/sdk/ej;
.super Lcom/flurry/sdk/ed;
.source "SourceFile"
.field private static a:Lcom/flurry/sdk/ej;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/flurry/sdk/ej;->a:Lcom/flurry/sdk/ej;
return-void
.end method
.method protected constructor <init>()V
.registers 10
const-class v0, Lcom/flurry/sdk/ej;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
const/4 v3, 0x5
const-wide/16 v4, 0x1388
sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;
const/16 v0, 0xb
new-instance v8, Lcom/flurry/sdk/eb;
invoke-direct {v8}, Lcom/flurry/sdk/eb;-><init>()V
invoke-direct {v7, v0, v8}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V
move-object v0, p0
invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/ed;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
return-void
.end method
.method public static declared-synchronized a()Lcom/flurry/sdk/ej;
.registers 2
const-class v1, Lcom/flurry/sdk/ej;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/flurry/sdk/ej;->a:Lcom/flurry/sdk/ej;
if-nez v0, :cond_e
new-instance v0, Lcom/flurry/sdk/ej;
invoke-direct {v0}, Lcom/flurry/sdk/ej;-><init>()V
sput-object v0, Lcom/flurry/sdk/ej;->a:Lcom/flurry/sdk/ej;
:cond_e
sget-object v0, Lcom/flurry/sdk/ej;->a:Lcom/flurry/sdk/ej;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method