.class Lcom/instagram/common/e/b/r;
.super Ljava/lang/Object;
.source "ImageFetcher.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/common/e/b/r;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field private final c:Lcom/instagram/common/e/b/t;

.field private final d:Lcom/instagram/common/e/b/s;

.field private final e:Z

.field private final f:Z

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/instagram/common/e/b/r;

    sput-object v0, Lcom/instagram/common/e/b/r;->a:Ljava/lang/Class;

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/instagram/common/e/b/r;->b:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    sget-object v0, Lcom/instagram/common/e/b/r;->b:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    return-void
.end method

.method constructor <init>(Lcom/instagram/common/e/b/t;Lcom/instagram/common/e/b/s;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/common/e/b/r;->c:Lcom/instagram/common/e/b/t;

    iput-object p2, p0, Lcom/instagram/common/e/b/r;->d:Lcom/instagram/common/e/b/s;

    iput-boolean p3, p0, Lcom/instagram/common/e/b/r;->e:Z

    iput-boolean p4, p0, Lcom/instagram/common/e/b/r;->f:Z

    iput-object p5, p0, Lcom/instagram/common/e/b/r;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/instagram/common/e/b/r;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/common/e/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/e/b/r;->h:Ljava/lang/String;

    iput-object p6, p0, Lcom/instagram/common/e/b/r;->i:Ljava/lang/String;

    iput-object p7, p0, Lcom/instagram/common/e/b/r;->j:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lch/boye/httpclientandroidlib/HttpEntity;Lcom/instagram/common/e/b/f;)V
    .registers 9

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-lez v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity too large to be buffered in memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    :try_start_2b
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p2}, Lcom/instagram/common/e/b/f;->a()[B

    move-result-object v3

    const/4 v0, 0x0

    :cond_35
    :goto_35
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5c

    invoke-virtual {p2, v4}, Lcom/instagram/common/e/b/f;->a(I)V

    iget-boolean v4, p0, Lcom/instagram/common/e/b/r;->f:Z

    if-eqz v4, :cond_35

    if-lez v2, :cond_35

    invoke-virtual {p2}, Lcom/instagram/common/e/b/f;->c()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    const/high16 v5, 0x42c8

    mul-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v5, v4, 0xa

    if-le v5, v0, :cond_35

    iget-object v0, p0, Lcom/instagram/common/e/b/r;->d:Lcom/instagram/common/e/b/s;

    invoke-interface {v0, v4}, Lcom/instagram/common/e/b/s;->a(I)V

    div-int/lit8 v0, v4, 0xa

    goto :goto_35

    :cond_5c
    invoke-virtual {p2}, Lcom/instagram/common/e/b/f;->d()V
    :try_end_5f
    .catchall {:try_start_2b .. :try_end_5f} :catchall_63

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_63
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method private static a(Lcom/c/a/g;Lcom/instagram/common/e/b/f;)V
    .registers 6

    invoke-virtual {p0}, Lcom/c/a/g;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/common/e/b/f;->a()[B

    move-result-object v1

    :goto_8
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_13

    invoke-virtual {p1, v2}, Lcom/instagram/common/e/b/f;->a(I)V

    goto :goto_8

    :cond_13
    invoke-virtual {p1}, Lcom/instagram/common/e/b/f;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/instagram/common/e/b/f;)V
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Lch/boye/httpclientandroidlib/entity/FileEntity;

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "image/jpeg"

    invoke-direct {v1, v0, v3}, Lch/boye/httpclientandroidlib/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1c

    :try_start_15
    invoke-direct {p0, v1, p2}, Lcom/instagram/common/e/b/r;->a(Lch/boye/httpclientandroidlib/HttpEntity;Lcom/instagram/common/e/b/f;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_26

    :try_start_18
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_22

    :goto_1b
    return-void

    :catchall_1c
    move-exception v0

    move-object v1, v2

    :goto_1e
    :try_start_1e
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_24

    :goto_21
    throw v0

    :catch_22
    move-exception v0

    goto :goto_1b

    :catch_24
    move-exception v1

    goto :goto_21

    :catchall_26
    move-exception v0

    goto :goto_1e
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/instagram/common/e/b/f;)V
    .registers 5

    const-string v0, "file:/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1, p3}, Lcom/instagram/common/e/b/r;->a(Ljava/lang/String;Lcom/instagram/common/e/b/f;)V

    :goto_b
    invoke-direct {p0, p2, p3}, Lcom/instagram/common/e/b/r;->b(Ljava/lang/String;Lcom/instagram/common/e/b/f;)V

    return-void

    :cond_f
    invoke-direct {p0, p1, p3}, Lcom/instagram/common/e/b/r;->c(Ljava/lang/String;Lcom/instagram/common/e/b/f;)V

    goto :goto_b
.end method

.method private b(Ljava/lang/String;Lcom/instagram/common/e/b/f;)V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/instagram/common/e/b/r;->c:Lcom/instagram/common/e/b/t;

    invoke-interface {v1}, Lcom/instagram/common/e/b/t;->b()Lcom/c/a/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/c/a/a;->c(Ljava/lang/String;)Lcom/c/a/d;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_22

    move-result-object v1

    :try_start_b
    invoke-virtual {v1}, Lcom/c/a/d;->a()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p2}, Lcom/instagram/common/e/b/f;->b()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/instagram/common/e/b/f;->c()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Lcom/c/a/d;->b()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_21} :catch_35

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception v1

    move-object v1, v0

    :goto_24
    sget-object v2, Lcom/instagram/common/e/b/r;->a:Ljava/lang/Class;

    if-eqz v0, :cond_2b

    :try_start_28
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_2b
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/c/a/d;->c()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_30} :catch_31

    goto :goto_21

    :catch_31
    move-exception v0

    sget-object v0, Lcom/instagram/common/e/b/r;->a:Ljava/lang/Class;

    goto :goto_21

    :catch_35
    move-exception v2

    goto :goto_24
.end method

.method private c(Ljava/lang/String;Lcom/instagram/common/e/b/f;)V
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/common/e/b/r;->c:Lcom/instagram/common/e/b/t;

    iget-object v3, p0, Lcom/instagram/common/e/b/r;->i:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Lcom/instagram/common/e/b/t;->a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/common/e/b/r;->c:Lcom/instagram/common/e/b/t;

    invoke-interface {v2}, Lcom/instagram/common/e/b/t;->a()Lch/boye/httpclientandroidlib/client/HttpClient;

    move-result-object v2

    invoke-interface {v2, v0}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/instagram/common/e/b/r;->a(Lch/boye/httpclientandroidlib/HttpEntity;Lcom/instagram/common/e/b/f;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_22

    :try_start_1e
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_27

    :goto_21
    return-void

    :catchall_22
    move-exception v0

    :try_start_23
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_29

    :goto_26
    throw v0

    :catch_27
    move-exception v0

    goto :goto_21

    :catch_29
    move-exception v1

    goto :goto_26
.end method


# virtual methods
.method final a()Lcom/instagram/common/e/b/d;
    .registers 8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/instagram/common/e/b/r;->e:Z

    if-eqz v0, :cond_10

    :try_start_5
    iget-object v0, p0, Lcom/instagram/common/e/b/r;->c:Lcom/instagram/common/e/b/t;

    invoke-interface {v0}, Lcom/instagram/common/e/b/t;->b()Lcom/c/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/common/e/b/r;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/c/a/a;->d(Ljava/lang/String;)Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_21

    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/instagram/common/e/b/r;->c:Lcom/instagram/common/e/b/t;

    invoke-interface {v0}, Lcom/instagram/common/e/b/t;->c()Lcom/instagram/common/e/b/e;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/common/e/b/r;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/instagram/common/e/b/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/e/b/d;

    if-eqz v0, :cond_2a

    :cond_20
    :goto_20
    return-object v0

    :catch_21
    move-exception v0

    sget-object v2, Lcom/instagram/common/e/b/r;->a:Ljava/lang/Class;

    const-string v3, "Error while removing cache entry from persistent storage."

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :cond_2a
    iget-object v0, p0, Lcom/instagram/common/e/b/r;->c:Lcom/instagram/common/e/b/t;

    invoke-interface {v0}, Lcom/instagram/common/e/b/t;->d()Lcom/instagram/common/e/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/e/b/g;->a()Lcom/instagram/common/e/b/f;

    move-result-object v3

    :try_start_34
    iget-object v0, p0, Lcom/instagram/common/e/b/r;->c:Lcom/instagram/common/e/b/t;

    invoke-interface {v0}, Lcom/instagram/common/e/b/t;->b()Lcom/c/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/common/e/b/r;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/c/a/a;->b(Ljava/lang/String;)Lcom/c/a/g;
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_9a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3f} :catch_ad

    move-result-object v2

    if-eqz v2, :cond_77

    :try_start_42
    invoke-static {v2, v3}, Lcom/instagram/common/e/b/r;->a(Lcom/c/a/g;Lcom/instagram/common/e/b/f;)V

    :goto_45
    invoke-virtual {v3}, Lcom/instagram/common/e/b/f;->b()[B

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/instagram/common/e/b/f;->c()I

    move-result v5

    sget-object v6, Lcom/instagram/common/e/b/r;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_b0

    new-instance v0, Lcom/instagram/common/e/b/d;

    invoke-virtual {v3}, Lcom/instagram/common/e/b/f;->c()I

    move-result v5

    invoke-direct {v0, v4, v5}, Lcom/instagram/common/e/b/d;-><init>(Landroid/graphics/Bitmap;I)V

    :goto_5f
    if-eqz v0, :cond_8f

    iget-object v4, p0, Lcom/instagram/common/e/b/r;->c:Lcom/instagram/common/e/b/t;

    invoke-interface {v4}, Lcom/instagram/common/e/b/t;->c()Lcom/instagram/common/e/b/e;

    move-result-object v4

    iget-object v5, p0, Lcom/instagram/common/e/b/r;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/instagram/common/e/b/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catchall {:try_start_42 .. :try_end_6c} :catchall_a7
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_6c} :catch_7f

    if-eqz v2, :cond_71

    invoke-virtual {v2}, Lcom/c/a/g;->close()V

    :cond_71
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Lcom/instagram/common/e/b/f;->e()V

    goto :goto_20

    :cond_77
    :try_start_77
    iget-object v0, p0, Lcom/instagram/common/e/b/r;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/instagram/common/e/b/r;->h:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v3}, Lcom/instagram/common/e/b/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/instagram/common/e/b/f;)V
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_a7
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7e} :catch_7f

    goto :goto_45

    :catch_7f
    move-exception v0

    move-object v0, v2

    :goto_81
    :try_start_81
    sget-object v2, Lcom/instagram/common/e/b/r;->a:Ljava/lang/Class;
    :try_end_83
    .catchall {:try_start_81 .. :try_end_83} :catchall_a9

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Lcom/c/a/g;->close()V

    :cond_88
    if-eqz v3, :cond_8d

    invoke-virtual {v3}, Lcom/instagram/common/e/b/f;->e()V

    :cond_8d
    :goto_8d
    move-object v0, v1

    goto :goto_20

    :cond_8f
    if-eqz v2, :cond_94

    invoke-virtual {v2}, Lcom/c/a/g;->close()V

    :cond_94
    if-eqz v3, :cond_8d

    invoke-virtual {v3}, Lcom/instagram/common/e/b/f;->e()V

    goto :goto_8d

    :catchall_9a
    move-exception v0

    move-object v2, v1

    :goto_9c
    if-eqz v2, :cond_a1

    invoke-virtual {v2}, Lcom/c/a/g;->close()V

    :cond_a1
    if-eqz v3, :cond_a6

    invoke-virtual {v3}, Lcom/instagram/common/e/b/f;->e()V

    :cond_a6
    throw v0

    :catchall_a7
    move-exception v0

    goto :goto_9c

    :catchall_a9
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_9c

    :catch_ad
    move-exception v0

    move-object v0, v1

    goto :goto_81

    :cond_b0
    move-object v0, v1

    goto :goto_5f
.end method
