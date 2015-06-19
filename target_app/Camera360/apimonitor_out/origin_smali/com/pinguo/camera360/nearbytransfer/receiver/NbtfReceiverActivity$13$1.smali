.class Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13$1;
.super Ljava/lang/Object;
.source "NbtfReceiverActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;->onStart(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13$1;->this$1:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13$1;->this$1:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
    invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;->access$0(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;)Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;

    move-result-object v0

    #calls: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->enterTransFragment()V
    invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$13(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V

    return-void
.end method
