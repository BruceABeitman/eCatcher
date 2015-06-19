.class public interface abstract Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
.super Ljava/lang/Object;
.source "SonyWifiModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WifiModelListener"
.end annotation


# virtual methods
.method public abstract checkWifiDialogShow()Z
.end method

.method public abstract checkWifiDialogsShow()Z
.end method

.method public abstract createWifiConfigDialog(ILcom/pinguo/camera360/sony/wifi/AccessPoint;Ljava/util/List;Z)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/pinguo/camera360/sony/wifi/AccessPoint;",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/sony/wifi/AccessPoint;",
            ">;Z)",
            "Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;"
        }
    .end annotation
.end method

.method public abstract removeHandleMessage(I)V
.end method

.method public abstract sendMessageDelayed(IJ)V
.end method

.method public abstract sendMessageForWhat(I)V
.end method

.method public abstract wifiConnectFail(Z)V
.end method

.method public abstract wifiConnectSuccess()V
.end method
