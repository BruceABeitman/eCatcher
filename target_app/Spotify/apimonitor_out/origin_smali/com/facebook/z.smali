.class final Lcom/facebook/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/facebook/Request;

.field private final b:Landroid/os/Handler;

.field private final c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/facebook/Request;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/z;->a:Lcom/facebook/Request;

    iput-object p1, p0, Lcom/facebook/z;->b:Landroid/os/Handler;

    invoke-static {}, Lcom/facebook/ah;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/z;->c:J

    return-void
.end method


# virtual methods
.method final a()V
    .registers 9

    iget-wide v0, p0, Lcom/facebook/z;->d:J

    iget-wide v2, p0, Lcom/facebook/z;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_33

    iget-object v0, p0, Lcom/facebook/z;->a:Lcom/facebook/Request;

    invoke-virtual {v0}, Lcom/facebook/Request;->c()Lcom/facebook/p;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/z;->f:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_33

    instance-of v0, v2, Lcom/facebook/s;

    if-eqz v0, :cond_33

    iget-wide v3, p0, Lcom/facebook/z;->d:J

    iget-wide v5, p0, Lcom/facebook/z;->f:J

    check-cast v2, Lcom/facebook/s;

    iget-object v0, p0, Lcom/facebook/z;->b:Landroid/os/Handler;

    if-eqz v0, :cond_2f

    iget-object v7, p0, Lcom/facebook/z;->b:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/z$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/z$1;-><init>(Lcom/facebook/z;Lcom/facebook/s;JJ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2f
    iget-wide v0, p0, Lcom/facebook/z;->d:J

    iput-wide v0, p0, Lcom/facebook/z;->e:J

    :cond_33
    return-void
.end method

.method final a(J)V
    .registers 9

    iget-wide v0, p0, Lcom/facebook/z;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/z;->d:J

    iget-wide v0, p0, Lcom/facebook/z;->d:J

    iget-wide v2, p0, Lcom/facebook/z;->e:J

    iget-wide v4, p0, Lcom/facebook/z;->c:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_18

    iget-wide v0, p0, Lcom/facebook/z;->d:J

    iget-wide v2, p0, Lcom/facebook/z;->f:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1b

    :cond_18
    invoke-virtual {p0}, Lcom/facebook/z;->a()V

    :cond_1b
    return-void
.end method

.method final b(J)V
    .registers 5

    iget-wide v0, p0, Lcom/facebook/z;->f:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/z;->f:J

    return-void
.end method
