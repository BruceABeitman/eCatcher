.class public final Lcom/pinguo/camera360/base/device/DeviceController;
.super Ljava/lang/Object;
.source "DeviceController.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static vibrate(Landroid/content/Context;[JI)V
    .registers 8

    const-string/jumbo v2, "vibrator"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    if-eqz v1, :cond_28

    const/4 v0, 0x1

    :goto_c
    const-string/jumbo v2, "Test"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Vibrate: isSupportVibrate:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_27

    invoke-virtual {v1, p1, p2}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_27
    return-void

    :cond_28
    const/4 v0, 0x0

    goto :goto_c
.end method
