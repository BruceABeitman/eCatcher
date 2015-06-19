.class public Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.java"
.implements Ljava/util/concurrent/ThreadFactory;
.field private final mName:Ljava/lang/String;
.field private final mNumber:Ljava/util/concurrent/atomic/AtomicInteger;
.field private final mPriority:I
.method public constructor <init>(Ljava/lang/String;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory;->mNumber:Ljava/util/concurrent/atomic/AtomicInteger;
iput-object p1, p0, Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory;->mName:Ljava/lang/String;
iput p2, p0, Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory;->mPriority:I
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory;->mPriority:I
return v0
.end method
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.registers 5
new-instance v0, Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory$1;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory;->mName:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/16 v2, 0x2d
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory;->mNumber:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p0, p1, v1}, Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory$1;-><init>(Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V
return-object v0
.end method