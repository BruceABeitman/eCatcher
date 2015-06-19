.class public final Lcom/d/a/b/e;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Z

.field e:Z

.field f:Z

.field g:Lcom/d/a/b/a/e;

.field h:Landroid/graphics/BitmapFactory$Options;

.field i:I

.field j:Ljava/lang/Object;

.field k:Lcom/d/a/b/e/a;

.field l:Lcom/d/a/b/e/a;

.field m:Lcom/d/a/b/c/a;

.field n:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/d/a/b/e;->a:I

    iput v1, p0, Lcom/d/a/b/e;->b:I

    iput v1, p0, Lcom/d/a/b/e;->c:I

    iput-boolean v1, p0, Lcom/d/a/b/e;->d:Z

    iput-boolean v1, p0, Lcom/d/a/b/e;->e:Z

    iput-boolean v1, p0, Lcom/d/a/b/e;->f:Z

    sget-object v0, Lcom/d/a/b/a/e;->b:Lcom/d/a/b/a/e;

    iput-object v0, p0, Lcom/d/a/b/e;->g:Lcom/d/a/b/a/e;

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/d/a/b/e;->h:Landroid/graphics/BitmapFactory$Options;

    iput v1, p0, Lcom/d/a/b/e;->i:I

    iput-object v2, p0, Lcom/d/a/b/e;->j:Ljava/lang/Object;

    iput-object v2, p0, Lcom/d/a/b/e;->k:Lcom/d/a/b/e/a;

    iput-object v2, p0, Lcom/d/a/b/e;->l:Lcom/d/a/b/e/a;

    new-instance v0, Lcom/d/a/b/c/c;

    invoke-direct {v0}, Lcom/d/a/b/c/c;-><init>()V

    iput-object v0, p0, Lcom/d/a/b/e;->m:Lcom/d/a/b/c/a;

    iput-object v2, p0, Lcom/d/a/b/e;->n:Landroid/os/Handler;

    iget-object v0, p0, Lcom/d/a/b/e;->h:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iget-object v0, p0, Lcom/d/a/b/e;->h:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/d/a/b/d;
    .registers 3

    new-instance v0, Lcom/d/a/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/d/a/b/d;-><init>(Lcom/d/a/b/e;B)V

    return-object v0
.end method
