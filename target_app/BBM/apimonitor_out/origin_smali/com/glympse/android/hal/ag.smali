.class Lcom/glympse/android/hal/ag;
.super Ljava/lang/Object;
.source "GlympseMutex.java"

# interfaces
.implements Lcom/glympse/android/hal/GMutex;


# instance fields
.field private bs:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/hal/ag;->bs:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method


# virtual methods
.method public block()V
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/ag;->bs:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public unblock()V
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/ag;->bs:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
