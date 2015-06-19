.class Lcom/pinguo/lib/os/AsyncTask$SerialExecutor$1;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;

.field private final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/lib/os/AsyncTask$SerialExecutor$1;->this$1:Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;

    iput-object p2, p0, Lcom/pinguo/lib/os/AsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/pinguo/lib/os/AsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    iget-object v0, p0, Lcom/pinguo/lib/os/AsyncTask$SerialExecutor$1;->this$1:Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;

    invoke-virtual {v0}, Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;->scheduleNext()V

    return-void

    :catchall_b
    move-exception v0

    iget-object v1, p0, Lcom/pinguo/lib/os/AsyncTask$SerialExecutor$1;->this$1:Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;

    invoke-virtual {v1}, Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;->scheduleNext()V

    throw v0
.end method
