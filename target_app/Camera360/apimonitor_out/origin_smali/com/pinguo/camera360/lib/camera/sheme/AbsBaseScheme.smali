.class public abstract Lcom/pinguo/camera360/lib/camera/sheme/AbsBaseScheme;
.super Lcom/pinguo/camera360/lib/camera/sheme/AbsKeyScheme;
.source "AbsBaseScheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/camera360/lib/camera/sheme/AbsKeyScheme",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/lib/camera/sheme/AbsKeyScheme;-><init>(Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getCurrValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/lib/camera/sheme/AbsBaseScheme;->getCurrValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/sheme/AbsBaseScheme;->keyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setParam(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/lib/camera/sheme/AbsBaseScheme;->setParam(Landroid/hardware/Camera;Ljava/lang/String;)V

    return-void
.end method

.method public setParam(Landroid/hardware/Camera;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/pinguo/camera360/lib/camera/sheme/AbsBaseScheme;->setParams(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public bridge synthetic setParams(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)Landroid/hardware/Camera$Parameters;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/lib/camera/sheme/AbsBaseScheme;->setParams(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public setParams(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Landroid/hardware/Camera$Parameters;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/sheme/AbsBaseScheme;->keyName:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
