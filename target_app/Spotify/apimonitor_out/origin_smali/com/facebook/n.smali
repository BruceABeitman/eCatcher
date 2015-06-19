.class final Lcom/facebook/n;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/y;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/Request;",
            "Lcom/facebook/z;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/v;

.field private final c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:Lcom/facebook/z;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lcom/facebook/v;Ljava/util/Map;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lcom/facebook/v;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/Request;",
            "Lcom/facebook/z;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p2, p0, Lcom/facebook/n;->b:Lcom/facebook/v;

    iput-object p3, p0, Lcom/facebook/n;->a:Ljava/util/Map;

    iput-wide p4, p0, Lcom/facebook/n;->f:J

    invoke-static {}, Lcom/facebook/ah;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/n;->c:J

    return-void
.end method

.method static synthetic a(Lcom/facebook/n;)Lcom/facebook/v;
    .registers 2

    iget-object v0, p0, Lcom/facebook/n;->b:Lcom/facebook/v;

    return-object v0
.end method

.method private a()V
    .registers 5

    iget-wide v0, p0, Lcom/facebook/n;->d:J

    iget-wide v2, p0, Lcom/facebook/n;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_40

    iget-object v0, p0, Lcom/facebook/n;->b:Lcom/facebook/v;

    invoke-virtual {v0}, Lcom/facebook/v;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/w;

    instance-of v2, v0, Lcom/facebook/x;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/facebook/n;->b:Lcom/facebook/v;

    invoke-virtual {v2}, Lcom/facebook/v;->c()Landroid/os/Handler;

    move-result-object v2

    check-cast v0, Lcom/facebook/x;

    if-nez v2, :cond_33

    iget-object v0, p0, Lcom/facebook/n;->b:Lcom/facebook/v;

    iget-wide v2, p0, Lcom/facebook/n;->d:J

    iget-wide v2, p0, Lcom/facebook/n;->f:J

    goto :goto_12

    :cond_33
    new-instance v3, Lcom/facebook/n$1;

    invoke-direct {v3, p0, v0}, Lcom/facebook/n$1;-><init>(Lcom/facebook/n;Lcom/facebook/x;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_12

    :cond_3c
    iget-wide v0, p0, Lcom/facebook/n;->d:J

    iput-wide v0, p0, Lcom/facebook/n;->e:J

    :cond_40
    return-void
.end method

.method private a(J)V
    .registers 9

    iget-object v0, p0, Lcom/facebook/n;->g:Lcom/facebook/z;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/n;->g:Lcom/facebook/z;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/z;->a(J)V

    :cond_9
    iget-wide v0, p0, Lcom/facebook/n;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/n;->d:J

    iget-wide v0, p0, Lcom/facebook/n;->d:J

    iget-wide v2, p0, Lcom/facebook/n;->e:J

    iget-wide v4, p0, Lcom/facebook/n;->c:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_21

    iget-wide v0, p0, Lcom/facebook/n;->d:J

    iget-wide v2, p0, Lcom/facebook/n;->f:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_24

    :cond_21
    invoke-direct {p0}, Lcom/facebook/n;->a()V

    :cond_24
    return-void
.end method

.method static synthetic b(Lcom/facebook/n;)J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/n;->d:J

    return-wide v0
.end method

.method static synthetic c(Lcom/facebook/n;)J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/n;->f:J

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/facebook/Request;)V
    .registers 3

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/facebook/n;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/z;

    :goto_a
    iput-object v0, p0, Lcom/facebook/n;->g:Lcom/facebook/z;

    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final close()V
    .registers 3

    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    iget-object v0, p0, Lcom/facebook/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/z;

    invoke-virtual {v0}, Lcom/facebook/z;->a()V

    goto :goto_d

    :cond_1d
    invoke-direct {p0}, Lcom/facebook/n;->a()V

    return-void
.end method

.method public final write(I)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/n;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/n;->a(J)V

    return-void
.end method

.method public final write([B)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/n;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/n;->a(J)V

    return-void
.end method

.method public final write([BII)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/n;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v0, p3

    invoke-direct {p0, v0, v1}, Lcom/facebook/n;->a(J)V

    return-void
.end method
