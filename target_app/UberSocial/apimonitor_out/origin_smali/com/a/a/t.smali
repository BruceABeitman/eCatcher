.class final Lcom/a/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/Date;

.field private synthetic b:Ljava/lang/Thread;

.field private synthetic c:Ljava/lang/Throwable;

.field private synthetic d:Lcom/a/a/bf;


# direct methods
.method constructor <init>(Lcom/a/a/bf;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    iput-object p1, p0, Lcom/a/a/t;->d:Lcom/a/a/bf;

    iput-object p2, p0, Lcom/a/a/t;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/a/a/t;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/a/a/t;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/a/a/t;->d:Lcom/a/a/bf;

    invoke-static {v0}, Lcom/a/a/bf;->a(Lcom/a/a/bf;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/a/a/t;->d:Lcom/a/a/bf;

    iget-object v1, p0, Lcom/a/a/t;->a:Ljava/util/Date;

    iget-object v2, p0, Lcom/a/a/t;->b:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/a/a/t;->c:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/a/a/bf;->b(Lcom/a/a/bf;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_17
    return-void
.end method
