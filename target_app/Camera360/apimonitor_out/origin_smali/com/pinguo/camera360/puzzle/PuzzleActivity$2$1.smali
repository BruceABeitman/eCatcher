.class Lcom/pinguo/camera360/puzzle/PuzzleActivity$2$1;
.super Ljava/lang/Thread;
.source "PuzzleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;->onRightClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$2$1;->this$1:Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$2$1;->this$1:Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;

    #getter for: Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;
    invoke-static {v1}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;->access$0(Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;)Lcom/pinguo/camera360/puzzle/PuzzleActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;-><init>(Lcom/pinguo/camera360/puzzle/PuzzleActivity;Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;->run()V

    return-void
.end method
