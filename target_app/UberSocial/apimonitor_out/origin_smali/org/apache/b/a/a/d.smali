.class public Lorg/apache/b/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lorg/apache/b/a/a/k;

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/b/a/a/d;->b:I

    new-instance v0, Lorg/apache/b/a/a/k;

    invoke-direct {v0}, Lorg/apache/b/a/a/k;-><init>()V

    iput-object v0, p0, Lorg/apache/b/a/a/d;->a:Lorg/apache/b/a/a/k;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/b/a/a/d;->b:I

    new-instance v0, Lorg/apache/b/a/a/k;

    invoke-direct {v0, p1}, Lorg/apache/b/a/a/k;-><init>(I)V

    iput-object v0, p0, Lorg/apache/b/a/a/d;->a:Lorg/apache/b/a/a/k;

    iput p1, p0, Lorg/apache/b/a/a/d;->b:I

    return-void
.end method


# virtual methods
.method public a()B
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/a/d;->a:Lorg/apache/b/a/a/k;

    invoke-virtual {v0}, Lorg/apache/b/a/a/k;->d()B

    move-result v0

    return v0
.end method

.method public a(B)V
    .registers 3

    iget-object v0, p0, Lorg/apache/b/a/a/d;->a:Lorg/apache/b/a/a/k;

    invoke-virtual {v0, p1}, Lorg/apache/b/a/a/k;->a(B)Z

    return-void
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/a/d;->a:Lorg/apache/b/a/a/k;

    invoke-virtual {v0}, Lorg/apache/b/a/a/k;->a()I

    move-result v0

    return v0
.end method

.method public c()V
    .registers 3

    iget v0, p0, Lorg/apache/b/a/a/d;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    new-instance v0, Lorg/apache/b/a/a/k;

    iget v1, p0, Lorg/apache/b/a/a/d;->b:I

    invoke-direct {v0, v1}, Lorg/apache/b/a/a/k;-><init>(I)V

    iput-object v0, p0, Lorg/apache/b/a/a/d;->a:Lorg/apache/b/a/a/k;

    :goto_e
    return-void

    :cond_f
    new-instance v0, Lorg/apache/b/a/a/k;

    invoke-direct {v0}, Lorg/apache/b/a/a/k;-><init>()V

    iput-object v0, p0, Lorg/apache/b/a/a/d;->a:Lorg/apache/b/a/a/k;

    goto :goto_e
.end method

.method public d()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/a/d;->a:Lorg/apache/b/a/a/k;

    invoke-virtual {v0}, Lorg/apache/b/a/a/k;->e()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
