.class Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;
.super Ljava/lang/Object;
.source "PuzzleSpliceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoMakeRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;)Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;

    invoke-virtual {v2}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;

    #calls: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->doPrevPic()V
    invoke-static {v2}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$1(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$2()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;

    new-instance v3, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner$1;

    invoke-direct {v3, p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner$1;-><init>(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;)V

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_d
.end method
