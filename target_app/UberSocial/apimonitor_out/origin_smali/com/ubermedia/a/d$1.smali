.class Lcom/ubermedia/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubermedia/a/d;->execute(Ljava/lang/Runnable;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/ubermedia/a/d;


# direct methods
.method constructor <init>(Lcom/ubermedia/a/d;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/ubermedia/a/d$1;->b:Lcom/ubermedia/a/d;

    iput-object p2, p0, Lcom/ubermedia/a/d$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/ubermedia/a/d$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    iget-object v0, p0, Lcom/ubermedia/a/d$1;->b:Lcom/ubermedia/a/d;

    invoke-virtual {v0}, Lcom/ubermedia/a/d;->a()V

    return-void

    :catchall_b
    move-exception v0

    iget-object v1, p0, Lcom/ubermedia/a/d$1;->b:Lcom/ubermedia/a/d;

    invoke-virtual {v1}, Lcom/ubermedia/a/d;->a()V

    throw v0
.end method
