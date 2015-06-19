.class Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$7;
.super Ljava/lang/Object;
.source "NbtfSendActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->onSendSuccess()V
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

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$7;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$7;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->stopClient()V

    return-void
.end method
