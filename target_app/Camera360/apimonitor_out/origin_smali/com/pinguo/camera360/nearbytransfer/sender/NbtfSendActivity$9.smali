.class Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$9;
.super Ljava/lang/Object;
.source "NbtfSendActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->showStopSendDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$9;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$9;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;

    const/4 v1, 0x0

    #setter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mStopSendDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    invoke-static {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$1(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;)V

    return-void
.end method
