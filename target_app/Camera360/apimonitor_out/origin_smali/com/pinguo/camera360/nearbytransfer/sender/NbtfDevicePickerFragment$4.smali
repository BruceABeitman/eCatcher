.class Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$4;
.super Ljava/lang/Object;
.source "NbtfDevicePickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;I)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$4;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;

    iput p2, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$4;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    :try_start_0
    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$4;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDevices:Ljava/util/List;
    invoke-static {v2}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->access$2(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$4;->val$pos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$4;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;

    #calls: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->getSendActivity()Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
    invoke-static {v2}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->access$5(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;)Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->connectDevice(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
    :try_end_17
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_17} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_17} :catch_1d

    :goto_17
    return-void

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_17

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_17
.end method
