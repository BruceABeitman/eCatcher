.class  Lcom/pinguo/camera360/gallery/util/ThreadUtils$1;
.super Ljava/lang/Object;
.source "ThreadUtils.java"
.implements Ljava/util/concurrent/ThreadFactory;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.registers 3
new-instance v0, Lcom/pinguo/camera360/gallery/util/ThreadUtils$BackGroundThread;
invoke-direct {v0, p1}, Lcom/pinguo/camera360/gallery/util/ThreadUtils$BackGroundThread;-><init>(Ljava/lang/Runnable;)V
return-object v0
.end method