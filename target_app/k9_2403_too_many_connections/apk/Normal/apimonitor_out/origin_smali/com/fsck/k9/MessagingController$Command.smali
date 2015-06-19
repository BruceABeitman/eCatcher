.class Lcom/fsck/k9/MessagingController$Command;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Command"
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field isForeground:Z

.field public listener:Lcom/fsck/k9/MessagingListener;

.field public runnable:Ljava/lang/Runnable;

.field sequence:I

.field final synthetic this$0:Lcom/fsck/k9/MessagingController;


# direct methods
.method constructor <init>(Lcom/fsck/k9/MessagingController;)V
    .registers 3

    iput-object p1, p0, Lcom/fsck/k9/MessagingController$Command;->this$0:Lcom/fsck/k9/MessagingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/fsck/k9/MessagingController;->sequencing:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/MessagingController$Command;->sequence:I

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 6

    const/4 v3, 0x1

    instance-of v2, p1, Lcom/fsck/k9/MessagingController$Command;

    if-eqz v2, :cond_23

    move-object v0, p1

    check-cast v0, Lcom/fsck/k9/MessagingController$Command;

    move-object v1, v0

    iget-boolean v2, v1, Lcom/fsck/k9/MessagingController$Command;->isForeground:Z

    if-ne v2, v3, :cond_13

    iget-boolean v2, p0, Lcom/fsck/k9/MessagingController$Command;->isForeground:Z

    if-nez v2, :cond_13

    move v2, v3

    :goto_12
    return v2

    :cond_13
    iget-boolean v2, v1, Lcom/fsck/k9/MessagingController$Command;->isForeground:Z

    if-nez v2, :cond_1d

    iget-boolean v2, p0, Lcom/fsck/k9/MessagingController$Command;->isForeground:Z

    if-ne v2, v3, :cond_1d

    const/4 v2, -0x1

    goto :goto_12

    :cond_1d
    iget v2, p0, Lcom/fsck/k9/MessagingController$Command;->sequence:I

    iget v3, v1, Lcom/fsck/k9/MessagingController$Command;->sequence:I

    sub-int/2addr v2, v3

    goto :goto_12

    :cond_23
    const/4 v2, 0x0

    goto :goto_12
.end method
