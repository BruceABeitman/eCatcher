.class Lcom/pinguo/camera360/puzzle/PuzzleSystem$2;
.super Ljava/lang/Object;
.source "PuzzleSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/puzzle/PuzzleSystem;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/puzzle/PuzzleSystem;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/puzzle/PuzzleSystem;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem$2;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " onLoadTemplateEnd"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem$2;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    #getter for: Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mListener:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;
    invoke-static {v0}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->access$1(Lcom/pinguo/camera360/puzzle/PuzzleSystem;)Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem$2;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;->onLoadTemplateEnd(Lcom/pinguo/camera360/puzzle/PuzzleSystem;)V

    return-void
.end method
