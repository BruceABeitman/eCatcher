.class final Lcom/d/a/b/j;
.super Ljava/lang/Object;
.source "ImageLoaderEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/d/a/b/l;

.field final synthetic b:Lcom/d/a/b/i;


# direct methods
.method constructor <init>(Lcom/d/a/b/i;Lcom/d/a/b/l;)V
    .registers 3

    iput-object p1, p0, Lcom/d/a/b/j;->b:Lcom/d/a/b/i;

    iput-object p2, p0, Lcom/d/a/b/j;->a:Lcom/d/a/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/d/a/b/j;->b:Lcom/d/a/b/i;

    iget-object v0, v0, Lcom/d/a/b/i;->a:Lcom/d/a/b/g;

    iget-object v0, v0, Lcom/d/a/b/g;->q:Lcom/d/a/a/a/b;

    iget-object v1, p0, Lcom/d/a/b/j;->a:Lcom/d/a/b/l;

    iget-object v1, v1, Lcom/d/a/b/l;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iget-object v1, p0, Lcom/d/a/b/j;->b:Lcom/d/a/b/i;

    invoke-virtual {v1}, Lcom/d/a/b/i;->a()V

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/d/a/b/j;->b:Lcom/d/a/b/i;

    iget-object v0, v0, Lcom/d/a/b/i;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/d/a/b/j;->a:Lcom/d/a/b/l;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/d/a/b/j;->b:Lcom/d/a/b/i;

    iget-object v0, v0, Lcom/d/a/b/i;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/d/a/b/j;->a:Lcom/d/a/b/l;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_22
.end method
