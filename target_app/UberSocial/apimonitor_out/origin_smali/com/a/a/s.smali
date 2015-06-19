.class final Lcom/a/a/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Lcom/a/a/bf;


# direct methods
.method constructor <init>(Lcom/a/a/bf;)V
    .registers 2

    iput-object p1, p0, Lcom/a/a/s;->a:Lcom/a/a/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/a/a/s;->a:Lcom/a/a/bf;

    invoke-static {v0}, Lcom/a/a/bf;->a(Lcom/a/a/bf;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/a/a/s;->a:Lcom/a/a/bf;

    invoke-static {v0}, Lcom/a/a/bf;->b(Lcom/a/a/bf;)V

    iget-object v0, p0, Lcom/a/a/s;->a:Lcom/a/a/bf;

    invoke-static {v0}, Lcom/a/a/bf;->c(Lcom/a/a/bf;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1b
.end method
