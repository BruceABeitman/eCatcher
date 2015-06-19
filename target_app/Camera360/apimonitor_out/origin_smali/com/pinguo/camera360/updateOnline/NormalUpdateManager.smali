.class public Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;
.super Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;
.source "NormalUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/updateOnline/NormalUpdateManager$InternalUpdateThread;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;-><init>()V

    return-void
.end method


# virtual methods
.method public manualUpdate(Lcom/pinguo/camera360/updateOnline/UpdateInterface;)V
    .registers 5

    const-string/jumbo v1, "UpdateManager"

    const-string/jumbo v2, "NormalUpdateManager manualUpdate"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;->setUpdateInterface(Lcom/pinguo/camera360/updateOnline/UpdateInterface;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;->getUpdateInterface()Lcom/pinguo/camera360/updateOnline/UpdateInterface;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;->getUpdateInterface()Lcom/pinguo/camera360/updateOnline/UpdateInterface;

    move-result-object v1

    new-instance v2, Lcom/pinguo/camera360/updateOnline/NormalUpdateManager$1;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/updateOnline/NormalUpdateManager$1;-><init>(Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;)V

    invoke-interface {v1, v2}, Lcom/pinguo/camera360/updateOnline/UpdateInterface;->onGetUpdatedInformation(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_1e
    new-instance v0, Lcom/pinguo/camera360/updateOnline/NormalUpdateManager$InternalUpdateThread;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/updateOnline/NormalUpdateManager$InternalUpdateThread;-><init>(Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
