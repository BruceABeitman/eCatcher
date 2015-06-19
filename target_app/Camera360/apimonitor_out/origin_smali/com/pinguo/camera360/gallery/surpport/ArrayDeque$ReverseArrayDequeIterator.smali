.class Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;
.super Ljava/lang/Object;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReverseArrayDequeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private canRemove:Z

.field private final expectedModCount:I

.field private pos:I

.field final synthetic this$0:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->this$0:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #getter for: Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->modCount:I
    invoke-static {p1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->access$2(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->expectedModCount:I

    #getter for: Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I
    invoke-static {p1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->access$3(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;)I

    move-result v0

    #calls: Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->circularSmallerPos(I)I
    invoke-static {p1, v0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->access$7(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->pos:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->canRemove:Z

    return-void
.end method

.method private hasNextInternal()Z
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->this$0:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    iget v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->pos:I

    #calls: Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->circularBiggerPos(I)I
    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->access$6(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;I)I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->this$0:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->access$1(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;)I

    move-result v1

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->this$0:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->status:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->access$4(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;)Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;->Full:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    if-ne v0, v1, :cond_1e

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->canRemove:Z

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x1

    goto :goto_1f
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->expectedModCount:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->this$0:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->modCount:I
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->access$2(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;)I

    move-result v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->hasNextInternal()Z

    move-result v0

    goto :goto_b
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->hasNextInternal()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->this$0:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->access$5(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->pos:I

    aget-object v0, v1, v2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->canRemove:Z

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->this$0:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->pos:I

    #calls: Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->circularSmallerPos(I)I
    invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->access$7(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;I)I

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->pos:I

    return-object v0

    :cond_1e
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .registers 5

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->canRemove:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->this$0:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->this$0:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->pos:I

    #calls: Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->circularBiggerPos(I)I
    invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->access$6(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;I)I

    move-result v1

    #calls: Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->removeInternal(IZ)V
    invoke-static {v0, v1, v3}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->access$8(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;IZ)V

    iput-boolean v3, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;->canRemove:Z

    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
