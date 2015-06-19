.class public final Lcom/facebook/e/c/a;
.super Ljava/lang/Object;
.source "AsyncTracer.java"


# instance fields
.field private final a:Lcom/facebook/e/c/d;

.field private final b:I

.field private final c:J

.field private final d:Ljava/lang/String;

.field private e:J


# direct methods
.method private constructor <init>(Lcom/facebook/e/c/d;IJLjava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/e/c/a;->e:J

    iput-object p1, p0, Lcom/facebook/e/c/a;->a:Lcom/facebook/e/c/d;

    iput p2, p0, Lcom/facebook/e/c/a;->b:I

    iput-wide p3, p0, Lcom/facebook/e/c/a;->c:J

    iput-object p5, p0, Lcom/facebook/e/c/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/e/c/a;
    .registers 7

    sget-object v0, Lcom/facebook/e/c/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/e/c/d;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Lcom/facebook/e/c/d;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    new-instance v0, Lcom/facebook/e/c/a;

    invoke-static {}, Lcom/facebook/e/c/n;->a()J

    move-result-wide v3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/e/c/a;-><init>(Lcom/facebook/e/c/d;IJLjava/lang/String;)V

    iget v1, v0, Lcom/facebook/e/c/a;->b:I

    invoke-static {p0, v1}, Lcom/facebook/systrace/b;->a(Ljava/lang/String;I)V

    return-object v0
.end method

.method private c()J
    .registers 6

    iget-object v0, p0, Lcom/facebook/e/c/a;->d:Ljava/lang/String;

    iget v1, p0, Lcom/facebook/e/c/a;->b:I

    invoke-static {v0, v1}, Lcom/facebook/systrace/b;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/facebook/e/c/a;->a:Lcom/facebook/e/c/d;

    iget v1, p0, Lcom/facebook/e/c/a;->b:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/e/c/d;->a(IJZ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1f

    invoke-static {}, Lcom/facebook/e/c/n;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/e/c/a;->c:J

    sub-long/2addr v0, v2

    :cond_1f
    iput-wide v0, p0, Lcom/facebook/e/c/a;->e:J

    return-wide v0
.end method


# virtual methods
.method public final a()J
    .registers 5

    invoke-direct {p0}, Lcom/facebook/e/c/a;->c()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final b()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/e/c/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/e/c/a;->a:Lcom/facebook/e/c/d;

    iget v1, p0, Lcom/facebook/e/c/a;->b:I

    invoke-virtual {v0, v1}, Lcom/facebook/e/c/d;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/e/c/a;->a:Lcom/facebook/e/c/d;

    iget v1, p0, Lcom/facebook/e/c/a;->b:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p1}, Lcom/facebook/e/c/d;->a(IILjava/lang/String;)V

    return-void
.end method
