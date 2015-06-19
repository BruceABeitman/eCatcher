.class final Lcom/bbm/util/j;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/bbm/util/i;


# direct methods
.method constructor <init>(Lcom/bbm/util/i;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/util/j;->b:Lcom/bbm/util/i;

    iput-object p2, p0, Lcom/bbm/util/j;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/bbm/util/j;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    iget-object v0, p0, Lcom/bbm/util/j;->b:Lcom/bbm/util/i;

    invoke-virtual {v0}, Lcom/bbm/util/i;->a()V

    return-void

    :catchall_b
    move-exception v0

    iget-object v1, p0, Lcom/bbm/util/j;->b:Lcom/bbm/util/i;

    invoke-virtual {v1}, Lcom/bbm/util/i;->a()V

    throw v0
.end method
