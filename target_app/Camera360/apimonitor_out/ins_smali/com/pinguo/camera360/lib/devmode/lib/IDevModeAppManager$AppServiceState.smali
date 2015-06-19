.class public abstract Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$AppServiceState;
.super Ljava/lang/Object;
.source "IDevModeAppManager.java"
.field public static final STATE_IDLE:Ljava/lang/String; = "IDLE"
.field public static final STATE_NOT_RUNNING:Ljava/lang/String; = "NUT_RUNNING"
.field private mCurrState:Ljava/lang/String;
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, "NUT_RUNNING"
iput-object v0, p0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$AppServiceState;->mCurrState:Ljava/lang/String;
return-void
.end method
.method public getCurrState()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$AppServiceState;->mCurrState:Ljava/lang/String;
return-object v0
.end method
.method public setCurrState(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager$AppServiceState;->mCurrState:Ljava/lang/String;
return-void
.end method