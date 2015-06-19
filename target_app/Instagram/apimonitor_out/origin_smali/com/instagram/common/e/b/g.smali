.class final Lcom/instagram/common/e/b/g;
.super Ljava/lang/Object;
.source "IgByteArrayPool.java"


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/instagram/common/e/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/e/b/g;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/high16 v0, 0x1

    iput v0, p0, Lcom/instagram/common/e/b/g;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/common/e/b/f;
    .registers 3

    iget-object v0, p0, Lcom/instagram/common/e/b/g;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/e/b/f;

    if-nez v0, :cond_11

    new-instance v0, Lcom/instagram/common/e/b/f;

    iget v1, p0, Lcom/instagram/common/e/b/g;->b:I

    invoke-direct {v0, p0, v1}, Lcom/instagram/common/e/b/f;-><init>(Lcom/instagram/common/e/b/g;I)V

    :cond_11
    return-object v0
.end method

.method final a(Lcom/instagram/common/e/b/f;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/common/e/b/g;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
