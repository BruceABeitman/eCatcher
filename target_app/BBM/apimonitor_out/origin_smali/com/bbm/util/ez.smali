.class public Lcom/bbm/util/ez;
.super Lcom/bbm/util/b;
.source "UrlImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/util/b",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/bbm/d/fd;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private final c:I

.field private final d:Lcom/bbm/util/b/d;

.field protected final j:Lcom/bbm/util/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/cr",
            "<",
            "Lcom/bbm/d/fd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bbm/util/ez;-><init>(Landroid/content/Context;Lcom/bbm/util/cr;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bbm/util/cr;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bbm/util/cr",
            "<",
            "Lcom/bbm/d/fd;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bbm/util/ez;-><init>(Landroid/content/Context;Lcom/bbm/util/cr;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/bbm/util/cr;B)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bbm/util/cr",
            "<",
            "Lcom/bbm/d/fd;",
            ">;B)V"
        }
    .end annotation

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/bbm/util/ez;-><init>(Landroid/content/Context;Lcom/bbm/util/cr;IILcom/bbm/util/b/d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bbm/util/cr;IILcom/bbm/util/b/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bbm/util/cr",
            "<",
            "Lcom/bbm/d/fd;",
            ">;II",
            "Lcom/bbm/util/b/d;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bbm/util/b;-><init>()V

    iput-object p2, p0, Lcom/bbm/util/ez;->j:Lcom/bbm/util/cr;

    iput-object p1, p0, Lcom/bbm/util/ez;->a:Landroid/content/Context;

    iput p4, p0, Lcom/bbm/util/ez;->b:I

    iput p3, p0, Lcom/bbm/util/ez;->c:I

    iput-object p5, p0, Lcom/bbm/util/ez;->d:Lcom/bbm/util/b/d;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/bbm/d/fd;
    .registers 11

    const/4 v7, 0x0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    :try_start_4
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    invoke-static {v1, v0}, Lcom/bbm/util/ca;->a(Ljava/io/InputStream;I)[B

    move-result-object v0

    iget v1, p0, Lcom/bbm/util/ez;->b:I

    if-lez v1, :cond_46

    iget v1, p0, Lcom/bbm/util/ez;->c:I

    if-lez v1, :cond_46

    invoke-static {v0}, Lcom/bbm/ui/cl;->a([B)Lcom/bbm/ui/cl;

    move-result-object v1

    if-eqz v1, :cond_2d

    new-instance v0, Lcom/bbm/d/fd;

    invoke-direct {v0, v1}, Lcom/bbm/d/fd;-><init>(Lcom/bbm/ui/cl;)V

    :goto_2c
    return-object v0

    :cond_2d
    new-instance v6, Lcom/bbm/d/fd;

    iget-object v1, p0, Lcom/bbm/util/ez;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v1, p0, Lcom/bbm/util/ez;->c:I

    iget v2, p0, Lcom/bbm/util/ez;->b:I

    iget-object v3, p0, Lcom/bbm/util/ez;->d:Lcom/bbm/util/b/d;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/bbm/util/b/a;->a([BIILcom/bbm/util/b/d;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v6, v8, v0}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v6

    goto :goto_2c

    :cond_46
    new-instance v1, Lcom/bbm/d/fd;

    iget-object v2, p0, Lcom/bbm/util/ez;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;[B)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_51} :catch_53
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_51} :catch_59

    move-object v0, v1

    goto :goto_2c

    :catch_53
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    move-object v0, v7

    goto :goto_2c

    :catch_59
    move-exception v0

    iget-object v0, p0, Lcom/bbm/util/ez;->d:Lcom/bbm/util/b/d;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/bbm/util/ez;->d:Lcom/bbm/util/b/d;

    invoke-virtual {v0}, Lcom/bbm/util/b/d;->a()V

    :cond_63
    move-object v0, v7

    goto :goto_2c
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bbm/util/ez;->a([Ljava/lang/String;)Lcom/bbm/d/fd;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bbm/d/fd;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/util/ez;->j:Lcom/bbm/util/cr;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/bbm/util/ez;->j:Lcom/bbm/util/cr;

    invoke-virtual {v0, p1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/bbm/d/fd;

    invoke-virtual {p0, p1}, Lcom/bbm/util/ez;->a(Lcom/bbm/d/fd;)V

    return-void
.end method
