.class Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment$1;
.super Ljava/lang/Object;
.source "NbtfWaittingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment$1;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment$1;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;

    #calls: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;->showTimeoutDialog()V
    invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;->access$0(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfWaittingFragment;)V

    return-void
.end method
