.class Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$3;
.super Ljava/lang/Object;
.source "NbtfDevicePickerFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;


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


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$3;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackClick()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$3;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;

    invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->onBackPressed()Z

    return-void
.end method

.method public onRightBtnClick()V
    .registers 1

    return-void
.end method
