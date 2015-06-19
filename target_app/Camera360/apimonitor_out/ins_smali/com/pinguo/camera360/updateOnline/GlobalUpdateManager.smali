.class public Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager;
.super Ljava/lang/Object;
.source "GlobalUpdateManager.java"
.field private static final mRealUpdateManager:Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;
invoke-direct {v0}, Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;-><init>()V
sput-object v0, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager;->mRealUpdateManager:Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static manualUpdate(Lcom/pinguo/camera360/updateOnline/UpdateInterface;)V
.registers 2
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/lib/network/NetworkUtils;->isAvailableNetWork(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_e
invoke-interface {p0}, Lcom/pinguo/camera360/updateOnline/UpdateInterface;->noNet()V
:goto_d
return-void
:cond_e
sget-object v0, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager;->mRealUpdateManager:Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;->manualUpdate(Lcom/pinguo/camera360/updateOnline/UpdateInterface;)V
goto :goto_d
.end method