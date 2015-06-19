.class public final Lcom/d/a/b/g;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"


# instance fields
.field final a:Landroid/content/Context;

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:Landroid/graphics/Bitmap$CompressFormat;

.field final g:I

.field final h:Lcom/d/a/b/e/a;

.field final i:Ljava/util/concurrent/Executor;

.field final j:Ljava/util/concurrent/Executor;

.field final k:Z

.field final l:Z

.field final m:I

.field final n:I

.field final o:Lcom/d/a/b/a/j;

.field final p:Lcom/d/a/a/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/d/a/a/b/c",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final q:Lcom/d/a/a/a/b;

.field final r:Lcom/d/a/b/d/c;

.field final s:Lcom/d/a/b/b/d;

.field final t:Lcom/d/a/b/d;

.field final u:Z

.field final v:Lcom/d/a/a/a/b;

.field final w:Lcom/d/a/b/d/c;

.field final x:Lcom/d/a/b/d/c;


# direct methods
.method private constructor <init>(Lcom/d/a/b/h;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/d/a/b/h;->a(Lcom/d/a/b/h;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/g;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/d/a/b/h;->b(Lcom/d/a/b/h;)I

    move-result v0

    iput v0, p0, Lcom/d/a/b/g;->b:I

    invoke-static {p1}, Lcom/d/a/b/h;->c(Lcom/d/a/b/h;)I

    move-result v0

    iput v0, p0, Lcom/d/a/b/g;->c:I

    invoke-static {p1}, Lcom/d/a/b/h;->d(Lcom/d/a/b/h;)I

    move-result v0

    iput v0, p0, Lcom/d/a/b/g;->d:I

    invoke-static {p1}, Lcom/d/a/b/h;->e(Lcom/d/a/b/h;)I

    move-result v0

    iput v0, p0, Lcom/d/a/b/g;->e:I

    invoke-static {p1}, Lcom/d/a/b/h;->f(Lcom/d/a/b/h;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/g;->f:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p1}, Lcom/d/a/b/h;->g(Lcom/d/a/b/h;)I

    move-result v0

    iput v0, p0, Lcom/d/a/b/g;->g:I

    invoke-static {p1}, Lcom/d/a/b/h;->h(Lcom/d/a/b/h;)Lcom/d/a/b/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/g;->h:Lcom/d/a/b/e/a;

    invoke-static {p1}, Lcom/d/a/b/h;->i(Lcom/d/a/b/h;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/g;->i:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lcom/d/a/b/h;->j(Lcom/d/a/b/h;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/g;->j:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lcom/d/a/b/h;->k(Lcom/d/a/b/h;)I

    move-result v0

    iput v0, p0, Lcom/d/a/b/g;->m:I

    invoke-static {p1}, Lcom/d/a/b/h;->l(Lcom/d/a/b/h;)I

    move-result v0

    iput v0, p0, Lcom/d/a/b/g;->n:I

    invoke-static {p1}, Lcom/d/a/b/h;->m(Lcom/d/a/b/h;)Lcom/d/a/b/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/g;->o:Lcom/d/a/b/a/j;

    invoke-static {p1}, Lcom/d/a/b/h;->n(Lcom/d/a/b/h;)Lcom/d/a/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/g;->q:Lcom/d/a/a/a/b;

    invoke-static {p1}, Lcom/d/a/b/h;->o(Lcom/d/a/b/h;)Lcom/d/a/a/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/g;->p:Lcom/d/a/a/b/c;

    invoke-static {p1}, Lcom/d/a/b/h;->p(Lcom/d/a/b/h;)Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/g;->t:Lcom/d/a/b/d;

    invoke-static {p1}, Lcom/d/a/b/h;->q(Lcom/d/a/b/h;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/d/a/b/g;->u:Z

    invoke-static {p1}, Lcom/d/a/b/h;->r(Lcom/d/a/b/h;)Lcom/d/a/b/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/g;->r:Lcom/d/a/b/d/c;

    invoke-static {p1}, Lcom/d/a/b/h;->s(Lcom/d/a/b/h;)Lcom/d/a/b/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/g;->s:Lcom/d/a/b/b/d;

    invoke-static {p1}, Lcom/d/a/b/h;->t(Lcom/d/a/b/h;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/d/a/b/g;->k:Z

    invoke-static {p1}, Lcom/d/a/b/h;->u(Lcom/d/a/b/h;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/d/a/b/g;->l:Z

    new-instance v0, Lcom/d/a/b/d/e;

    iget-object v1, p0, Lcom/d/a/b/g;->r:Lcom/d/a/b/d/c;

    invoke-direct {v0, v1}, Lcom/d/a/b/d/e;-><init>(Lcom/d/a/b/d/c;)V

    iput-object v0, p0, Lcom/d/a/b/g;->w:Lcom/d/a/b/d/c;

    new-instance v0, Lcom/d/a/b/d/g;

    iget-object v1, p0, Lcom/d/a/b/g;->r:Lcom/d/a/b/d/c;

    invoke-direct {v0, v1}, Lcom/d/a/b/d/g;-><init>(Lcom/d/a/b/d/c;)V

    iput-object v0, p0, Lcom/d/a/b/g;->x:Lcom/d/a/b/d/c;

    iget-object v0, p0, Lcom/d/a/b/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "uil-images"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_ac

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_ad

    :cond_ac
    move-object v0, v1

    :cond_ad
    new-instance v1, Lcom/d/a/a/a/a/b;

    const/high16 v2, 0x20

    invoke-direct {v1, v0, v2}, Lcom/d/a/a/a/a/b;-><init>(Ljava/io/File;I)V

    iput-object v1, p0, Lcom/d/a/b/g;->v:Lcom/d/a/a/a/b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/d/a/b/h;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/d/a/b/g;-><init>(Lcom/d/a/b/h;)V

    return-void
.end method
