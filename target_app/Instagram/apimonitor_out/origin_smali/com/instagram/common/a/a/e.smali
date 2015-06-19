.class public Lcom/instagram/common/a/a/e;
.super Ljava/lang/Object;
.source "ExecutorBasedRequestPerformer.java"

# interfaces
.implements Lcom/instagram/common/a/a/m;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/common/a/a/e;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/instagram/common/a/a/e;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/instagram/common/a/a/e;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/a/a/e;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/common/a/a/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Lcom/instagram/common/a/a/l",
            "<TT;>;>(",
            "Lcom/instagram/common/a/a/a",
            "<TT;TU;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/instagram/common/a/a/a;->j()V

    iget-object v0, p0, Lcom/instagram/common/a/a/e;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/instagram/common/a/a/f;

    invoke-direct {v1, p0, p1}, Lcom/instagram/common/a/a/f;-><init>(Lcom/instagram/common/a/a/e;Lcom/instagram/common/a/a/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
