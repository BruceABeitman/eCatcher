.class public abstract Lcom/bbm/j/k;
.super Ljava/lang/Object;
.source "ObservableMonitor.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/bbm/j/q;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bbm/j/g;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bbm/j/h;

.field final h:Lcom/bbm/util/dc;

.field final i:Ljava/lang/Runnable;

.field j:Z

.field public k:Z

.field final l:J


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, ""

    new-instance v1, Lcom/bbm/util/bn;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Lcom/bbm/util/bn;-><init>(Landroid/os/Handler;)V

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bbm/j/k;-><init>(Ljava/lang/String;Lcom/bbm/util/dc;J)V

    return-void
.end method

.method public constructor <init>(B)V
    .registers 6

    const-string v0, ""

    new-instance v1, Lcom/bbm/util/bn;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Lcom/bbm/util/bn;-><init>(Landroid/os/Handler;)V

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bbm/j/k;-><init>(Ljava/lang/String;Lcom/bbm/util/dc;J)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/bbm/util/dc;J)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bbm/j/l;

    invoke-direct {v0, p0}, Lcom/bbm/j/l;-><init>(Lcom/bbm/j/k;)V

    iput-object v0, p0, Lcom/bbm/j/k;->b:Lcom/bbm/j/q;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/j/k;->c:Ljava/util/List;

    iput-boolean v1, p0, Lcom/bbm/j/k;->k:Z

    new-instance v0, Lcom/bbm/j/m;

    invoke-direct {v0, p0}, Lcom/bbm/j/m;-><init>(Lcom/bbm/j/k;)V

    iput-object v0, p0, Lcom/bbm/j/k;->d:Lcom/bbm/j/h;

    iput-object p2, p0, Lcom/bbm/j/k;->h:Lcom/bbm/util/dc;

    iput-object p1, p0, Lcom/bbm/j/k;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/bbm/j/k;->l:J

    new-instance v0, Lcom/bbm/j/n;

    invoke-direct {v0, p0}, Lcom/bbm/j/n;-><init>(Lcom/bbm/j/k;)V

    iput-object v0, p0, Lcom/bbm/j/k;->i:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/bbm/j/k;->j:Z

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/j/g;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/j/g;

    iget-object v2, p0, Lcom/bbm/j/k;->d:Lcom/bbm/j/h;

    invoke-interface {v0, v2}, Lcom/bbm/j/g;->b(Lcom/bbm/j/h;)V

    goto :goto_7
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/j/k;->k:Z

    invoke-virtual {p0}, Lcom/bbm/j/k;->e_()V

    return-void
.end method

.method public final d_()V
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/j/k;->j:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/bbm/j/k;->e_()V

    :cond_7
    return-void
.end method

.method public final e()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/j/k;->k:Z

    iput-boolean v0, p0, Lcom/bbm/j/k;->j:Z

    iget-object v0, p0, Lcom/bbm/j/k;->h:Lcom/bbm/util/dc;

    iget-object v1, p0, Lcom/bbm/j/k;->i:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/bbm/util/dc;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bbm/j/k;->c:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/bbm/j/k;->a(Ljava/util/List;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/j/k;->c:Ljava/util/List;

    return-void
.end method

.method final e_()V
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    iget-boolean v0, p0, Lcom/bbm/j/k;->j:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bbm/j/k;->h:Lcom/bbm/util/dc;

    iget-object v1, p0, Lcom/bbm/j/k;->i:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/bbm/util/dc;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/j/k;->j:Z

    :cond_f
    iget-object v0, p0, Lcom/bbm/j/k;->c:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/bbm/j/k;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/bbm/j/k;->b:Lcom/bbm/j/q;

    invoke-static {v0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/q;)Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bbm/j/k;->k:Z

    if-eqz v1, :cond_41

    iput-object v0, p0, Lcom/bbm/j/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/j/g;

    iget-object v2, p0, Lcom/bbm/j/k;->d:Lcom/bbm/j/h;

    invoke-interface {v0, v2}, Lcom/bbm/j/g;->a(Lcom/bbm/j/h;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_35} :catch_36

    goto :goto_24

    :catch_36
    move-exception v0

    const-string v1, "Throwable caught in this monitor, disposing of monitor and continuing normal behavior."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bbm/j/k;->e()V

    :cond_41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ObservableMonitor("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbm/j/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
