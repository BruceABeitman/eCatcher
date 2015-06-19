.class public Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$CloudServiceState;
.super Ljava/lang/Object;
.source "IDevModeAppManager.java"
.field public static final STATE_COMPARING:Ljava/lang/String; = "COMPARING"
.field public static final STATE_LOADING:Ljava/lang/String; = "UP_LOADING"
.field public static final STATE_SCANNING:Ljava/lang/String; = "SCANNING"
.field private static sSingleInstance:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$CloudServiceState;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static declared-synchronized getInstance()Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$CloudServiceState;
.registers 2
const-class v1, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$CloudServiceState;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$CloudServiceState;->sSingleInstance:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$CloudServiceState;
if-nez v0, :cond_e
new-instance v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$CloudServiceState;
invoke-direct {v0}, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$CloudServiceState;-><init>()V
sput-object v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$CloudServiceState;->sSingleInstance:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$CloudServiceState;
:cond_e
sget-object v0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$CloudServiceState;->sSingleInstance:Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$CloudServiceState;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method