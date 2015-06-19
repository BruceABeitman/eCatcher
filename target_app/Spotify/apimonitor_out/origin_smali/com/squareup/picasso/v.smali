.class public final Lcom/squareup/picasso/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/squareup/picasso/Downloader;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/squareup/picasso/e;

.field private e:Lcom/squareup/picasso/x;

.field private f:Lcom/squareup/picasso/y;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/v;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lcom/squareup/picasso/Picasso;
    .registers 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/picasso/v;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/picasso/v;->b:Lcom/squareup/picasso/Downloader;

    if-nez v1, :cond_12

    invoke-static {v2}, Lcom/squareup/picasso/am;->a(Landroid/content/Context;)Lcom/squareup/picasso/Downloader;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/squareup/picasso/v;->b:Lcom/squareup/picasso/Downloader;

    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/picasso/v;->d:Lcom/squareup/picasso/e;

    if-nez v1, :cond_21

    new-instance v1, Lcom/squareup/picasso/r;

    invoke-direct {v1, v2}, Lcom/squareup/picasso/r;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/squareup/picasso/v;->d:Lcom/squareup/picasso/e;

    :cond_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/picasso/v;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_30

    new-instance v1, Lcom/squareup/picasso/aa;

    invoke-direct {v1}, Lcom/squareup/picasso/aa;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/squareup/picasso/v;->c:Ljava/util/concurrent/ExecutorService;

    :cond_30
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/picasso/v;->f:Lcom/squareup/picasso/y;

    if-nez v1, :cond_3c

    sget-object v1, Lcom/squareup/picasso/y;->a:Lcom/squareup/picasso/y;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/squareup/picasso/v;->f:Lcom/squareup/picasso/y;

    :cond_3c
    new-instance v7, Lcom/squareup/picasso/af;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/picasso/v;->d:Lcom/squareup/picasso/e;

    invoke-direct {v7, v1}, Lcom/squareup/picasso/af;-><init>(Lcom/squareup/picasso/e;)V

    new-instance v1, Lcom/squareup/picasso/j;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/v;->c:Ljava/util/concurrent/ExecutorService;

    sget-object v4, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/squareup/picasso/v;->b:Lcom/squareup/picasso/Downloader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/squareup/picasso/v;->d:Lcom/squareup/picasso/e;

    invoke-direct/range {v1 .. v7}, Lcom/squareup/picasso/j;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/squareup/picasso/Downloader;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;)V

    new-instance v8, Lcom/squareup/picasso/Picasso;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/squareup/picasso/v;->d:Lcom/squareup/picasso/e;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/squareup/picasso/v;->e:Lcom/squareup/picasso/x;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/picasso/v;->f:Lcom/squareup/picasso/y;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/squareup/picasso/v;->g:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/squareup/picasso/v;->h:Z

    move/from16 v16, v0

    move-object v9, v2

    move-object v10, v1

    move-object v14, v7

    invoke-direct/range {v8 .. v16}, Lcom/squareup/picasso/Picasso;-><init>(Landroid/content/Context;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/x;Lcom/squareup/picasso/y;Lcom/squareup/picasso/af;ZZ)V

    return-object v8
.end method

.method public final a(Lcom/squareup/picasso/e;)Lcom/squareup/picasso/v;
    .registers 4

    iget-object v0, p0, Lcom/squareup/picasso/v;->d:Lcom/squareup/picasso/e;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Memory cache already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput-object p1, p0, Lcom/squareup/picasso/v;->d:Lcom/squareup/picasso/e;

    return-object p0
.end method
