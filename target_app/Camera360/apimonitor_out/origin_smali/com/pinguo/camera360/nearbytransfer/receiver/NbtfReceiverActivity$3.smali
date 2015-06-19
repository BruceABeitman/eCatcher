.class Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$3;
.super Ljava/lang/Object;
.source "NbtfReceiverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->onRemoteCancelRequestConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$3;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$3;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->finish()V

    return-void
.end method
