.class final Lcom/a/a/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:J

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/a/a/bf;


# direct methods
.method constructor <init>(Lcom/a/a/bf;JLjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/a/a/bh;->c:Lcom/a/a/bf;

    iput-wide p2, p0, Lcom/a/a/bh;->a:J

    iput-object p4, p0, Lcom/a/a/bh;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/a/a/bh;->c:Lcom/a/a/bf;

    invoke-static {v0}, Lcom/a/a/bf;->a(Lcom/a/a/bf;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/a/a/bh;->c:Lcom/a/a/bf;

    invoke-static {v0}, Lcom/a/a/bf;->d(Lcom/a/a/bf;)Lcom/a/a/a/br;

    move-result-object v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/a/a/bh;->c:Lcom/a/a/bf;

    invoke-static {v0}, Lcom/a/a/bf;->e(Lcom/a/a/bf;)Z

    :cond_19
    iget-object v0, p0, Lcom/a/a/bh;->c:Lcom/a/a/bf;

    iget-object v0, p0, Lcom/a/a/bh;->c:Lcom/a/a/bf;

    invoke-static {v0}, Lcom/a/a/bf;->d(Lcom/a/a/bf;)Lcom/a/a/a/br;

    move-result-object v0

    const/high16 v1, 0x1

    iget-wide v2, p0, Lcom/a/a/bh;->a:J

    iget-object v4, p0, Lcom/a/a/bh;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/a/a/bf;->a(Lcom/a/a/a/br;IJLjava/lang/String;)V

    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method
