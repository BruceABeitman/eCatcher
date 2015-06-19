.class public Lcom/instagram/cliffjumper/edit/photo/render/c;
.super Ljava/lang/Object;
.source "ImageRenderer.java"

# interfaces
.implements Lcom/instagram/filterkit/c/d;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Lcom/instagram/cliffjumper/edit/photo/render/g;

.field private final d:Lcom/instagram/filterkit/filter/IgFilter;

.field private final e:Lcom/instagram/filterkit/filter/IgFilter;

.field private final f:Lcom/instagram/filterkit/a/b;

.field private final g:Lcom/instagram/filterkit/e/a;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/cliffjumper/edit/photo/render/f;",
            ">;"
        }
    .end annotation
.end field

.field private final i:[Lcom/instagram/cliffjumper/edit/photo/render/h;

.field private final j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/cliffjumper/edit/photo/render/c;

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/render/c;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/instagram/cliffjumper/edit/photo/render/g;Lcom/instagram/filterkit/a/b;Lcom/instagram/filterkit/filter/IgFilter;Lcom/instagram/filterkit/filter/IgFilter;Lcom/instagram/filterkit/e/a;[Lcom/instagram/cliffjumper/edit/photo/render/h;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->b:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->j:Landroid/content/Context;

    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->c:Lcom/instagram/cliffjumper/edit/photo/render/g;

    iput-object p3, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->f:Lcom/instagram/filterkit/a/b;

    iput-object p4, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->d:Lcom/instagram/filterkit/filter/IgFilter;

    iput-object p5, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->e:Lcom/instagram/filterkit/filter/IgFilter;

    iput-object p6, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->g:Lcom/instagram/filterkit/e/a;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->h:Ljava/util/List;

    iput-object p7, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->i:[Lcom/instagram/cliffjumper/edit/photo/render/h;

    return-void
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/render/c;)Lcom/instagram/cliffjumper/edit/photo/render/g;
    .registers 2

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->c:Lcom/instagram/cliffjumper/edit/photo/render/g;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/render/c;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/render/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "title"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_data"

    invoke-virtual {v3, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_49
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_54} :catch_55

    :goto_54
    return-void

    :catch_55
    move-exception v0

    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/render/c;->a:Ljava/lang/Class;

    const-string v1, "Unable to insert media into media store"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_54
.end method

.method private b()Lcom/instagram/cliffjumper/edit/photo/render/a;
    .registers 14

    :try_start_0
    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/render/RenderBridge;->a()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/render/a;->b()Lcom/instagram/cliffjumper/edit/photo/render/a;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/render/a;->a()Lcom/instagram/cliffjumper/edit/photo/render/a;

    move-result-object v7

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->f:Lcom/instagram/filterkit/a/b;

    invoke-virtual {v1}, Lcom/instagram/filterkit/a/b;->b()Lcom/instagram/filterkit/d/c;

    move-result-object v11

    const/4 v1, 0x0

    move v8, v1

    move-object v4, v2

    :goto_19
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->i:[Lcom/instagram/cliffjumper/edit/photo/render/h;

    array-length v1, v1

    if-ge v8, v1, :cond_f7

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->i:[Lcom/instagram/cliffjumper/edit/photo/render/h;

    aget-object v12, v1, v8

    iget-object v1, v12, Lcom/instagram/cliffjumper/edit/photo/render/h;->b:Ljava/lang/String;

    if-eqz v1, :cond_115

    iget v2, v12, Lcom/instagram/cliffjumper/edit/photo/render/h;->a:I

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->g:Lcom/instagram/filterkit/e/a;

    invoke-interface {v1}, Lcom/instagram/filterkit/e/a;->c()I

    move-result v1

    if-eq v2, v1, :cond_ac

    const/4 v1, 0x1

    :goto_31
    invoke-static {v12}, Lcom/instagram/cliffjumper/edit/photo/render/i;->a(Lcom/instagram/cliffjumper/edit/photo/render/h;)Z

    move-result v3

    if-eqz v3, :cond_112

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->g:Lcom/instagram/filterkit/e/a;

    invoke-interface {v2}, Lcom/instagram/filterkit/e/a;->c()I

    move-result v2

    move v3, v2

    :goto_3f
    iget-boolean v2, v12, Lcom/instagram/cliffjumper/edit/photo/render/h;->c:Z

    if-eqz v2, :cond_45

    if-nez v4, :cond_ae

    :cond_45
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->g:Lcom/instagram/filterkit/e/a;

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->e:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-static {v3}, Lcom/instagram/filterkit/e/d;->b(I)Lcom/instagram/filterkit/e/c;

    move-result-object v4

    invoke-interface {v1, v11, v2, v4}, Lcom/instagram/filterkit/filter/IgFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/e/b;

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v4}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    move-object v2, v1

    :cond_5e
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->i:[Lcom/instagram/cliffjumper/edit/photo/render/h;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v8, v1, :cond_70

    instance-of v1, v2, Lcom/instagram/filterkit/d/d;

    if-eqz v1, :cond_70

    move-object v0, v2

    check-cast v0, Lcom/instagram/filterkit/d/d;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/instagram/filterkit/d/d;->a()V

    :cond_70
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->d:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-static {v3}, Lcom/instagram/filterkit/e/d;->b(I)Lcom/instagram/filterkit/e/c;

    move-result-object v3

    invoke-interface {v1, v11, v2, v3}, Lcom/instagram/filterkit/filter/IgFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/e/b;

    move-object v9, v1

    move-object v4, v2

    :goto_7e
    const/4 v1, 0x0

    invoke-virtual {v11, v4, v1}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    :goto_82
    if-eqz v9, :cond_88

    iget-object v1, v12, Lcom/instagram/cliffjumper/edit/photo/render/h;->b:Ljava/lang/String;

    if-nez v1, :cond_c1

    :cond_88
    const-wide/16 v4, -0x1

    sget v6, Lcom/instagram/cliffjumper/edit/photo/render/l;->b:I

    invoke-virtual {v7}, Lcom/instagram/cliffjumper/edit/photo/render/a;->c()Lcom/instagram/cliffjumper/edit/photo/render/b;

    move-result-object v1

    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/render/b;->e:Lcom/instagram/cliffjumper/edit/photo/render/b;

    if-ne v1, v2, :cond_bc

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/render/b;->b:Lcom/instagram/cliffjumper/edit/photo/render/b;

    :goto_96
    move-object v10, v1

    :goto_97
    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/render/k;

    iget v2, v12, Lcom/instagram/cliffjumper/edit/photo/render/h;->a:I

    iget-object v3, v12, Lcom/instagram/cliffjumper/edit/photo/render/h;->b:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/instagram/cliffjumper/edit/photo/render/k;-><init>(ILjava/lang/String;JI)V

    invoke-virtual {v7, v1}, Lcom/instagram/cliffjumper/edit/photo/render/a;->a(Lcom/instagram/cliffjumper/edit/photo/render/k;)V

    invoke-virtual {v7, v10}, Lcom/instagram/cliffjumper/edit/photo/render/a;->a(Lcom/instagram/cliffjumper/edit/photo/render/b;)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move-object v4, v9

    goto/16 :goto_19

    :cond_ac
    const/4 v1, 0x0

    goto :goto_31

    :cond_ae
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->e:Lcom/instagram/filterkit/filter/IgFilter;

    invoke-static {v3}, Lcom/instagram/filterkit/e/d;->b(I)Lcom/instagram/filterkit/e/c;

    move-result-object v2

    invoke-interface {v1, v11, v4, v2}, Lcom/instagram/filterkit/filter/IgFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v1

    check-cast v1, Lcom/instagram/filterkit/e/b;

    move-object v9, v1

    goto :goto_7e

    :cond_bc
    invoke-virtual {v7}, Lcom/instagram/cliffjumper/edit/photo/render/a;->c()Lcom/instagram/cliffjumper/edit/photo/render/b;

    move-result-object v1

    goto :goto_96

    :cond_c1
    const v1, 0x8d40

    invoke-interface {v9}, Lcom/instagram/filterkit/e/b;->a()I

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-interface {v9}, Lcom/instagram/filterkit/e/b;->c()I

    move-result v1

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/render/RenderBridge;->cacheImageInMemory(I)I

    move-result v1

    iget-boolean v2, v12, Lcom/instagram/cliffjumper/edit/photo/render/h;->d:Z

    if-eqz v2, :cond_f0

    const-wide/16 v4, -0x1

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->h:Ljava/util/List;

    new-instance v3, Lcom/instagram/cliffjumper/edit/photo/render/f;

    iget-object v6, v12, Lcom/instagram/cliffjumper/edit/photo/render/h;->b:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v3, v1, v6, v10}, Lcom/instagram/cliffjumper/edit/photo/render/f;-><init>(ILjava/lang/String;B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e6
    const/4 v1, 0x0

    invoke-virtual {v11, v9, v1}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    sget v6, Lcom/instagram/cliffjumper/edit/photo/render/l;->a:I

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/render/b;->a:Lcom/instagram/cliffjumper/edit/photo/render/b;

    move-object v10, v1

    goto :goto_97

    :cond_f0
    iget-object v2, v12, Lcom/instagram/cliffjumper/edit/photo/render/h;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/instagram/cliffjumper/edit/photo/render/RenderBridge;->a(ILjava/lang/String;)J
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f5} :catch_fa

    move-result-wide v4

    goto :goto_e6

    :cond_f7
    move-object v1, v7

    goto/16 :goto_a

    :catch_fa
    move-exception v1

    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/render/c;->a:Ljava/lang/Class;

    const-string v3, "ImageRenderer failed with exception: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/render/a;->a(Ljava/lang/Exception;)Lcom/instagram/cliffjumper/edit/photo/render/a;

    move-result-object v1

    goto/16 :goto_a

    :cond_112
    move v3, v2

    goto/16 :goto_3f

    :cond_115
    move-object v9, v4

    goto/16 :goto_82
.end method

.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/render/c;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->h:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 4

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/render/c;->b()Lcom/instagram/cliffjumper/edit/photo/render/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->b:Landroid/os/Handler;

    new-instance v2, Lcom/instagram/cliffjumper/edit/photo/render/d;

    invoke-direct {v2, p0, v0}, Lcom/instagram/cliffjumper/edit/photo/render/d;-><init>(Lcom/instagram/cliffjumper/edit/photo/render/c;Lcom/instagram/cliffjumper/edit/photo/render/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {}, Lcom/instagram/common/u/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/render/e;

    invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/render/e;-><init>(Lcom/instagram/cliffjumper/edit/photo/render/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_22
    return-void
.end method
