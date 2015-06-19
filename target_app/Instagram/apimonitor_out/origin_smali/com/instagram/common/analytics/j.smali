.class Lcom/instagram/common/analytics/j;
.super Ljava/lang/Object;
.source "AnalyticsUploader.java"


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
.field private final b:Ljava/io/File;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/common/analytics/j;

    sput-object v0, Lcom/instagram/common/analytics/j;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/analytics/j;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/instagram/common/analytics/k;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/analytics/j;->b:Ljava/io/File;

    return-void
.end method

.method private a(Ljava/lang/String;)Lch/boye/httpclientandroidlib/HttpResponse;
    .registers 4

    new-instance v0, Lcom/instagram/common/analytics/aj;

    iget-object v1, p0, Lcom/instagram/common/analytics/j;->c:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/instagram/common/analytics/aj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/instagram/common/a/b/a;->a()Lcom/instagram/common/a/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/io/File;)Lch/boye/httpclientandroidlib/HttpResponse;
    .registers 7

    sget-object v0, Lcom/instagram/common/analytics/j;->a:Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Uploading file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :try_start_d
    invoke-static {p1}, Lcom/instagram/common/analytics/j;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/common/analytics/j;->a(Ljava/lang/String;)Lch/boye/httpclientandroidlib/HttpResponse;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_43

    move-result-object v0

    :goto_15
    if-eqz v0, :cond_5a

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_5a

    sget-object v1, Lcom/instagram/common/analytics/j;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_33

    sget-object v1, Lcom/instagram/common/analytics/j;->a:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    :cond_33
    :goto_33
    if-eqz v0, :cond_42

    :try_start_35
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_42} :catch_5d

    :cond_42
    :goto_42
    return-object v0

    :catch_43
    move-exception v0

    sget-object v2, Lcom/instagram/common/analytics/j;->a:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to read file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_15

    :cond_5a
    sget-object v1, Lcom/instagram/common/analytics/j;->a:Ljava/lang/Class;

    goto :goto_33

    :catch_5d
    move-exception v1

    goto :goto_42
.end method

.method private static c(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v3, "UTF-8"

    invoke-direct {v1, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_2f

    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [C

    :goto_16
    invoke-virtual {v1, v2}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_27

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_22

    goto :goto_16

    :catchall_22
    move-exception v0

    :goto_23
    invoke-static {v1}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_27
    :try_start_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_22

    move-result-object v0

    invoke-static {v1}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_2f
    move-exception v0

    move-object v1, v2

    goto :goto_23
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/common/analytics/j;->b(Ljava/io/File;)Lch/boye/httpclientandroidlib/HttpResponse;

    return-void
.end method

.method public final a()Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-object v2, Lcom/instagram/common/analytics/j;->a:Ljava/lang/Class;

    iget-object v2, p0, Lcom/instagram/common/analytics/j;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    sget-object v1, Lcom/instagram/common/analytics/j;->a:Ljava/lang/Class;

    :cond_e
    :goto_e
    return v0

    :cond_f
    iget-object v2, p0, Lcom/instagram/common/analytics/j;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_4d

    sget-object v1, Lcom/instagram/common/analytics/j;->a:Ljava/lang/Class;

    iget-object v1, p0, Lcom/instagram/common/analytics/j;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {}, Lcom/instagram/common/g/c;->a()Lcom/facebook/d/b/c;

    move-result-object v1

    const-string v2, "analytics_uploader"

    const-string v3, "directory_not_found"

    invoke-interface {v1, v2, v3}, Lcom/facebook/d/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_2d
    iget-object v1, p0, Lcom/instagram/common/analytics/j;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-static {}, Lcom/instagram/common/g/c;->a()Lcom/facebook/d/b/c;

    move-result-object v1

    const-string v2, "analytics_uploader"

    const-string v3, "directory_is_file"

    invoke-interface {v1, v2, v3}, Lcom/facebook/d/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_41
    invoke-static {}, Lcom/instagram/common/g/c;->a()Lcom/facebook/d/b/c;

    move-result-object v1

    const-string v2, "analytics_uploader"

    const-string v3, "directory_unknown_error"

    invoke-interface {v1, v2, v3}, Lcom/facebook/d/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_4d
    array-length v4, v3

    move v2, v1

    :goto_4f
    if-ge v2, v4, :cond_e

    aget-object v5, v3, v2

    invoke-direct {p0, v5}, Lcom/instagram/common/analytics/j;->b(Ljava/io/File;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v5

    if-nez v5, :cond_5b

    move v0, v1

    goto :goto_e

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f
.end method
