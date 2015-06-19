.class public final Lcom/mato/sdk/a/b$g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mato/sdk/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/mato/sdk/a/b$g;->a:I

    iput v0, p0, Lcom/mato/sdk/a/b$g;->b:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/mato/sdk/a/b$g;->c:I

    const-string/jumbo v0, "maabiz1.chinanetcenter.com"

    iput-object v0, p0, Lcom/mato/sdk/a/b$g;->d:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/mato/sdk/a/b$g;->e:Z

    iput-boolean v1, p0, Lcom/mato/sdk/a/b$g;->f:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/mato/sdk/a/b$g;->g:I

    iput-boolean v1, p0, Lcom/mato/sdk/a/b$g;->h:Z

    iput-boolean v1, p0, Lcom/mato/sdk/a/b$g;->i:Z

    iput-boolean v1, p0, Lcom/mato/sdk/a/b$g;->j:Z

    return-void
.end method

.method private e(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mato/sdk/a/b$g;->j:Z

    return-void
.end method

.method private l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mato/sdk/a/b$g;->j:Z

    return v0
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/mato/sdk/a/b$g;->a:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mato/sdk/a/b$g;->d:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mato/sdk/a/b$g;->i:Z

    return-void
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mato/sdk/a/b$g;->i:Z

    return v0
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lcom/mato/sdk/a/b$g;->b:I

    return-void
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mato/sdk/a/b$g;->f:Z

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mato/sdk/a/b$g;->f:Z

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/mato/sdk/a/b$g;->a:I

    return v0
.end method

.method public final c(I)V
    .registers 2

    iput p1, p0, Lcom/mato/sdk/a/b$g;->c:I

    return-void
.end method

.method public final c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mato/sdk/a/b$g;->e:Z

    return-void
.end method

.method public final d()I
    .registers 4

    const/4 v1, 0x3

    const/4 v0, 0x1

    iget v2, p0, Lcom/mato/sdk/a/b$g;->a:I

    if-ne v2, v0, :cond_7

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x2

    if-ne v2, v0, :cond_c

    move v0, v1

    goto :goto_6

    :cond_c
    if-ne v2, v1, :cond_10

    const/4 v0, 0x5

    goto :goto_6

    :cond_10
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final d(I)V
    .registers 2

    iput p1, p0, Lcom/mato/sdk/a/b$g;->g:I

    return-void
.end method

.method public final d(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mato/sdk/a/b$g;->h:Z

    return-void
.end method

.method public final e()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/mato/sdk/a/b$g;->a:I

    if-eq v1, v0, :cond_c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    const/4 v0, 0x0

    :cond_c
    return v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/mato/sdk/a/b$g;->b:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mato/sdk/a/b$g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lcom/mato/sdk/a/b$g;->c:I

    return v0
.end method

.method public final i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mato/sdk/a/b$g;->e:Z

    return v0
.end method

.method public final j()I
    .registers 2

    iget v0, p0, Lcom/mato/sdk/a/b$g;->g:I

    return v0
.end method

.method public final k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mato/sdk/a/b$g;->h:Z

    return v0
.end method
