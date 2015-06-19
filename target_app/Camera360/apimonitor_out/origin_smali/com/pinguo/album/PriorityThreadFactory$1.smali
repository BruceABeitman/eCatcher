.class Lcom/pinguo/album/PriorityThreadFactory$1;
.super Ljava/lang/Thread;
.source "PriorityThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/album/PriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/PriorityThreadFactory;


# direct methods
.method constructor <init>(Lcom/pinguo/album/PriorityThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/album/PriorityThreadFactory$1;->this$0:Lcom/pinguo/album/PriorityThreadFactory;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/PriorityThreadFactory$1;->this$0:Lcom/pinguo/album/PriorityThreadFactory;

    #getter for: Lcom/pinguo/album/PriorityThreadFactory;->mPriority:I
    invoke-static {v0}, Lcom/pinguo/album/PriorityThreadFactory;->access$0(Lcom/pinguo/album/PriorityThreadFactory;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
