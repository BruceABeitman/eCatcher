.class public final Lcom/d/a/b/d;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:Z

.field final e:Z

.field final f:Z

.field public final g:Lcom/d/a/b/a/e;

.field public final h:Landroid/graphics/BitmapFactory$Options;

.field final i:I

.field public final j:Ljava/lang/Object;

.field final k:Lcom/d/a/b/e/a;

.field final l:Lcom/d/a/b/e/a;

.field final m:Lcom/d/a/b/c/a;

.field final n:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/d/a/b/e;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/d/a/b/e;->a:I

    iput v0, p0, Lcom/d/a/b/d;->a:I

    iget v0, p1, Lcom/d/a/b/e;->b:I

    iput v0, p0, Lcom/d/a/b/d;->b:I

    iget v0, p1, Lcom/d/a/b/e;->c:I

    iput v0, p0, Lcom/d/a/b/d;->c:I

    iget-boolean v0, p1, Lcom/d/a/b/e;->d:Z

    iput-boolean v0, p0, Lcom/d/a/b/d;->d:Z

    iget-boolean v0, p1, Lcom/d/a/b/e;->e:Z

    iput-boolean v0, p0, Lcom/d/a/b/d;->e:Z

    iget-boolean v0, p1, Lcom/d/a/b/e;->f:Z

    iput-boolean v0, p0, Lcom/d/a/b/d;->f:Z

    iget-object v0, p1, Lcom/d/a/b/e;->g:Lcom/d/a/b/a/e;

    iput-object v0, p0, Lcom/d/a/b/d;->g:Lcom/d/a/b/a/e;

    iget-object v0, p1, Lcom/d/a/b/e;->h:Landroid/graphics/BitmapFactory$Options;

    iput-object v0, p0, Lcom/d/a/b/d;->h:Landroid/graphics/BitmapFactory$Options;

    iget v0, p1, Lcom/d/a/b/e;->i:I

    iput v0, p0, Lcom/d/a/b/d;->i:I

    iget-object v0, p1, Lcom/d/a/b/e;->j:Ljava/lang/Object;

    iput-object v0, p0, Lcom/d/a/b/d;->j:Ljava/lang/Object;

    iget-object v0, p1, Lcom/d/a/b/e;->k:Lcom/d/a/b/e/a;

    iput-object v0, p0, Lcom/d/a/b/d;->k:Lcom/d/a/b/e/a;

    iget-object v0, p1, Lcom/d/a/b/e;->l:Lcom/d/a/b/e/a;

    iput-object v0, p0, Lcom/d/a/b/d;->l:Lcom/d/a/b/e/a;

    iget-object v0, p1, Lcom/d/a/b/e;->m:Lcom/d/a/b/c/a;

    iput-object v0, p0, Lcom/d/a/b/d;->m:Lcom/d/a/b/c/a;

    iget-object v0, p1, Lcom/d/a/b/e;->n:Landroid/os/Handler;

    iput-object v0, p0, Lcom/d/a/b/d;->n:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/d/a/b/e;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/d/a/b/d;-><init>(Lcom/d/a/b/e;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-object v0, p0, Lcom/d/a/b/d;->l:Lcom/d/a/b/e/a;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final b()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/d/a/b/d;->n:Landroid/os/Handler;

    if-nez v0, :cond_a

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/d/a/b/d;->n:Landroid/os/Handler;

    goto :goto_9
.end method
