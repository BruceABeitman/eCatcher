.class Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$3;
.super Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
.source "EasyContextRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->initWorkers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$3;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;-><init>(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public processRecognize()V
    .registers 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$3;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    #calls: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->getCurSnapContext()Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;
    invoke-static {v7}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$11(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v0, v7, v5

    const/4 v4, 0x0

    const-wide/16 v7, 0xc8

    cmp-long v7, v0, v7

    if-gtz v7, :cond_3a

    const-wide/16 v7, 0x12c

    sub-long/2addr v7, v0

    long-to-int v4, v7

    :cond_1b
    :goto_1b
    const/16 v7, 0xa

    if-le v4, v7, :cond_2b

    iget-object v7, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$3;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    #getter for: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
    invoke-static {v7}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$0(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Z

    move-result v7

    if-nez v7, :cond_2b

    int-to-long v7, v4

    :try_start_28
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_44

    :cond_2b
    :goto_2b
    if-eqz v3, :cond_39

    iget-object v7, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$3;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    iget v8, v3, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$EContext;->index:I

    #calls: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->setStableContextId(I)V
    invoke-static {v7, v8}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$12(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;I)V

    iget-object v7, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$3;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;

    #calls: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->updateDebugText()V
    invoke-static {v7}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$13(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)V

    :cond_39
    return-void

    :cond_3a
    const-wide/16 v7, 0x2bc

    cmp-long v7, v0, v7

    if-gez v7, :cond_1b

    long-to-int v7, v0

    div-int/lit8 v4, v7, 0x2

    goto :goto_1b

    :catch_44
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2b
.end method
