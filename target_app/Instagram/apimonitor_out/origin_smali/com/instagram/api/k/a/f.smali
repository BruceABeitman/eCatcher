.class final Lcom/instagram/api/k/a/f;
.super Ljava/lang/Object;
.source "IgAutogenResponseParser.java"

# interfaces
.implements Lcom/instagram/common/a/a/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/instagram/api/k/a/e",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/instagram/common/a/a/p",
        "<",
        "Lcom/instagram/api/k/a/i",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/instagram/api/k/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/k/a/d",
            "<+",
            "Lcom/instagram/api/k/a/e",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/instagram/api/k/a/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/k/a/d",
            "<+",
            "Lcom/instagram/api/k/a/e",
            "<TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/api/k/a/f;->a:Lcom/instagram/api/k/a/d;

    return-void
.end method

.method private b(Lch/boye/httpclientandroidlib/HttpResponse;)Lcom/instagram/api/k/a/i;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/HttpResponse;",
            ")",
            "Lcom/instagram/api/k/a/i",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    sget-object v2, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    iget-object v0, p0, Lcom/instagram/api/k/a/f;->a:Lcom/instagram/api/k/a/d;

    invoke-interface {v0, v1}, Lcom/instagram/api/k/a/d;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/e;

    move-result-object v0

    if-nez v0, :cond_1f

    new-instance v0, Lcom/instagram/api/k/a/e;

    invoke-direct {v0}, Lcom/instagram/api/k/a/e;-><init>()V

    :cond_1f
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/instagram/api/k/a/e;->a(I)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2e

    invoke-static {v1}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_2e
    move-exception v0

    invoke-static {v1}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public final synthetic a(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/api/k/a/f;->b(Lch/boye/httpclientandroidlib/HttpResponse;)Lcom/instagram/api/k/a/i;

    move-result-object v0

    return-object v0
.end method
