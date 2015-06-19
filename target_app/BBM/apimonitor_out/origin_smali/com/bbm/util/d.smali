.class final Lcom/bbm/util/d;
.super Lcom/bbm/util/l;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/util/l",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/util/b;


# direct methods
.method constructor <init>(Lcom/bbm/util/b;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/util/d;->a:Lcom/bbm/util/b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/util/l;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/util/d;->a:Lcom/bbm/util/b;

    invoke-static {v0}, Lcom/bbm/util/b;->a(Lcom/bbm/util/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/bbm/util/d;->a:Lcom/bbm/util/b;

    iget-object v1, p0, Lcom/bbm/util/d;->a:Lcom/bbm/util/b;

    iget-object v2, p0, Lcom/bbm/util/d;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/bbm/util/b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/util/b;->a(Lcom/bbm/util/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
