.class public final Lcom/bbm/f/ai;
.super Ljava/lang/Object;
.source "ShuntBroker.java"

# interfaces
.implements Lcom/bbm/f/a;


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field c:Lcom/bbm/f/al;

.field d:Lcom/bbm/f/ao;

.field final e:Lcom/bbm/util/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/cr",
            "<",
            "Lcom/bbm/f/b;",
            ">;"
        }
    .end annotation
.end field

.field final f:Lcom/bbm/f/aa;

.field final g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/bbm/f/ab;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lcom/bbm/util/dc;

.field final i:Lcom/bbm/util/fa;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-static {}, Lcom/bbm/util/bn;->a()Lcom/bbm/util/bn;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/bbm/f/ai;-><init>(Ljava/lang/String;ILcom/bbm/util/dc;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/bbm/util/dc;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bbm/util/cr;

    sget-object v1, Lcom/bbm/f/b;->c:Lcom/bbm/f/b;

    invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/f/ai;->e:Lcom/bbm/util/cr;

    new-instance v0, Lcom/bbm/f/aa;

    invoke-direct {v0}, Lcom/bbm/f/aa;-><init>()V

    iput-object v0, p0, Lcom/bbm/f/ai;->f:Lcom/bbm/f/aa;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bbm/f/ai;->g:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/bbm/util/fa;

    invoke-direct {v0}, Lcom/bbm/util/fa;-><init>()V

    iput-object v0, p0, Lcom/bbm/f/ai;->i:Lcom/bbm/util/fa;

    invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/bbm/f/ai;->a:Ljava/lang/String;

    iput p2, p0, Lcom/bbm/f/ai;->b:I

    iput-object p3, p0, Lcom/bbm/f/ai;->h:Lcom/bbm/util/dc;

    return-void
.end method


# virtual methods
.method public final a()Lcom/bbm/f/b;
    .registers 2

    iget-object v0, p0, Lcom/bbm/f/ai;->e:Lcom/bbm/util/cr;

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/f/b;

    return-object v0
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/f/ai;->g:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/bbm/f/ac;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/f/ai;->f:Lcom/bbm/f/aa;

    invoke-virtual {v0, p1}, Lcom/bbm/f/aa;->a(Lcom/bbm/f/ac;)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/f/ai;->e:Lcom/bbm/util/cr;

    sget-object v1, Lcom/bbm/f/b;->a:Lcom/bbm/f/b;

    invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    new-instance v0, Lcom/bbm/f/aj;

    invoke-direct {v0, p0}, Lcom/bbm/f/aj;-><init>(Lcom/bbm/f/ai;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/bbm/f/aj;->c([Ljava/lang/Object;)Lcom/bbm/util/b;

    return-void
.end method

.method public final b(Lcom/bbm/f/ac;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/f/ai;->f:Lcom/bbm/f/aa;

    invoke-virtual {v0, p1}, Lcom/bbm/f/aa;->b(Lcom/bbm/f/ac;)V

    return-void
.end method

.method public final c()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/bbm/f/ai;->c:Lcom/bbm/f/al;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bbm/f/ai;->c:Lcom/bbm/f/al;

    iput-boolean v1, v0, Lcom/bbm/f/al;->a:Z

    iget-object v0, p0, Lcom/bbm/f/ai;->c:Lcom/bbm/f/al;

    invoke-virtual {v0}, Lcom/bbm/f/al;->interrupt()V

    :cond_e
    iget-object v0, p0, Lcom/bbm/f/ai;->d:Lcom/bbm/f/ao;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bbm/f/ai;->d:Lcom/bbm/f/ao;

    iput-boolean v1, v0, Lcom/bbm/f/ao;->a:Z

    iget-object v0, p0, Lcom/bbm/f/ai;->d:Lcom/bbm/f/ao;

    invoke-virtual {v0}, Lcom/bbm/f/ao;->interrupt()V

    :cond_1b
    return-void
.end method
