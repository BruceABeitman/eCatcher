.class public Lcom/pinguo/album/data/download/HttpClientImageDownloader;
.super Lcom/pinguo/album/data/download/PGImageDownloader;
.source "HttpClientImageDownloader.java"


# instance fields
.field private httpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/apache/http/client/HttpClient;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/album/data/download/PGImageDownloader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/pinguo/album/data/download/HttpClientImageDownloader;->httpClient:Lorg/apache/http/client/HttpClient;

    return-void
.end method


# virtual methods
.method protected getStreamFromNetwork(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/album/data/download/HttpClientImageDownloader;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    new-instance v0, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v0, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v0}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    return-object v4
.end method
