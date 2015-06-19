.class final Lcom/google/b/f/a/p;
.super Ljava/lang/Object;
.source "MoreExecutors.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/BlockingQueue;

.field final synthetic b:Lcom/google/b/f/a/l;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/b/f/a/l;)V
    .registers 3

    iput-object p1, p0, Lcom/google/b/f/a/p;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/b/f/a/p;->b:Lcom/google/b/f/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/b/f/a/p;->a:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/google/b/f/a/p;->b:Lcom/google/b/f/a/l;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
