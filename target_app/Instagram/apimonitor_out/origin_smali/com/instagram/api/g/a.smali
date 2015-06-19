.class public final Lcom/instagram/api/g/a;
.super Ljava/lang/Object;
.source "CdnTrace.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/instagram/api/g/c;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/instagram/api/g/a;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/instagram/api/g/a;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/instagram/api/g/a;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/instagram/api/g/a;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/instagram/api/g/a;->e:J

    iput-object v2, p0, Lcom/instagram/api/g/a;->f:Ljava/lang/String;

    iput v3, p0, Lcom/instagram/api/g/a;->g:I

    iput-object v2, p0, Lcom/instagram/api/g/a;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/instagram/api/g/a;->i:Ljava/lang/String;

    iput v3, p0, Lcom/instagram/api/g/a;->j:I

    iput v3, p0, Lcom/instagram/api/g/a;->k:I

    iput-object v2, p0, Lcom/instagram/api/g/a;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/instagram/api/g/a;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/instagram/api/g/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/api/g/a;->n:Lcom/instagram/api/g/c;

    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/api/g/c;
    .registers 2

    iget-object v0, p0, Lcom/instagram/api/g/a;->n:Lcom/instagram/api/g/c;

    return-object v0
.end method

.method final a(I)V
    .registers 2

    iput p1, p0, Lcom/instagram/api/g/a;->g:I

    return-void
.end method

.method final a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/instagram/api/g/a;->e:J

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/api/g/a;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/api/g/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method final b(I)V
    .registers 2

    iput p1, p0, Lcom/instagram/api/g/a;->j:I

    return-void
.end method

.method final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/api/g/a;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/api/g/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method final c(I)V
    .registers 2

    iput p1, p0, Lcom/instagram/api/g/a;->k:I

    return-void
.end method

.method final c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/api/g/a;->c:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/api/g/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method final d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/api/g/a;->d:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/api/g/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method final e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/api/g/a;->f:Ljava/lang/String;

    return-void
.end method

.method public final f()J
    .registers 3

    iget-wide v0, p0, Lcom/instagram/api/g/a;->e:J

    return-wide v0
.end method

.method final f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/api/g/a;->h:Ljava/lang/String;

    return-void
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/api/g/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method final g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/api/g/a;->i:Ljava/lang/String;

    return-void
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lcom/instagram/api/g/a;->g:I

    return v0
.end method

.method final h(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/api/g/a;->l:Ljava/lang/String;

    return-void
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/api/g/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method final i(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/api/g/a;->m:Ljava/lang/String;

    return-void
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/api/g/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final k()I
    .registers 2

    iget v0, p0, Lcom/instagram/api/g/a;->j:I

    return v0
.end method

.method public final l()I
    .registers 2

    iget v0, p0, Lcom/instagram/api/g/a;->k:I

    return v0
.end method

.method public final m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/api/g/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/api/g/a;->m:Ljava/lang/String;

    return-object v0
.end method
