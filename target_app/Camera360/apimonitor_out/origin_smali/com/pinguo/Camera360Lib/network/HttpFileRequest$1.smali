.class Lcom/pinguo/Camera360Lib/network/HttpFileRequest$1;
.super Ljava/lang/Object;
.source "HttpFileRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->execute(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/Camera360Lib/network/HttpFileRequest;


# direct methods
.method constructor <init>(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest$1;->this$0:Lcom/pinguo/Camera360Lib/network/HttpFileRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    :try_start_5
    iget-object v2, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest$1;->this$0:Lcom/pinguo/Camera360Lib/network/HttpFileRequest;

    #getter for: Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mProgressInterval:I
    invoke-static {v2}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->access$0(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;)I

    move-result v2

    if-lez v2, :cond_31

    iget-object v2, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest$1;->this$0:Lcom/pinguo/Camera360Lib/network/HttpFileRequest;

    iget-object v3, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest$1;->this$0:Lcom/pinguo/Camera360Lib/network/HttpFileRequest;

    #getter for: Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->access$1(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest$1;->this$0:Lcom/pinguo/Camera360Lib/network/HttpFileRequest;

    #getter for: Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mFilePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->access$2(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest$1;->this$0:Lcom/pinguo/Camera360Lib/network/HttpFileRequest;

    #getter for: Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->access$3(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->downloadWithProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->access$4(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_24} :catch_49

    :goto_24
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest$1;->this$0:Lcom/pinguo/Camera360Lib/network/HttpFileRequest;

    #getter for: Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mInternalHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->access$6(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_30
    return-void

    :cond_31
    :try_start_31
    iget-object v2, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest$1;->this$0:Lcom/pinguo/Camera360Lib/network/HttpFileRequest;

    iget-object v3, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest$1;->this$0:Lcom/pinguo/Camera360Lib/network/HttpFileRequest;

    #getter for: Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->access$1(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest$1;->this$0:Lcom/pinguo/Camera360Lib/network/HttpFileRequest;

    #getter for: Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mFilePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->access$2(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest$1;->this$0:Lcom/pinguo/Camera360Lib/network/HttpFileRequest;

    #getter for: Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->access$3(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->access$5(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_48} :catch_49

    goto :goto_24

    :catch_49
    move-exception v0

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/pinguo/Camera360Lib/network/HttpFileRequest$1;->this$0:Lcom/pinguo/Camera360Lib/network/HttpFileRequest;

    #getter for: Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->mInternalHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/pinguo/Camera360Lib/network/HttpFileRequest;->access$6(Lcom/pinguo/Camera360Lib/network/HttpFileRequest;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_30
.end method
