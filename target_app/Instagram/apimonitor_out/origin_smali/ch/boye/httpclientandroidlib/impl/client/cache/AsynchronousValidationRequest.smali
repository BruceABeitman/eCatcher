.class Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;
.super Ljava/lang/Object;
.source "AsynchronousValidationRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final cacheEntry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

.field private final cachingClient:Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;

.field private final context:Lch/boye/httpclientandroidlib/protocol/HttpContext;

.field private final identifier:Ljava/lang/String;

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private final parent:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;

.field private final request:Lch/boye/httpclientandroidlib/HttpRequest;

.field private final target:Lch/boye/httpclientandroidlib/HttpHost;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->parent:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->cachingClient:Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;

    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->target:Lch/boye/httpclientandroidlib/HttpHost;

    iput-object p4, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->request:Lch/boye/httpclientandroidlib/HttpRequest;

    iput-object p5, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->context:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    iput-object p6, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->cacheEntry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    iput-object p7, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getIdentifier()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->cachingClient:Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->target:Lch/boye/httpclientandroidlib/HttpHost;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->request:Lch/boye/httpclientandroidlib/HttpRequest;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->context:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->cacheEntry:Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    invoke-virtual {v0, v1, v2, v3, v4}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->revalidateCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_4f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_15
    .catch Lch/boye/httpclientandroidlib/ProtocolException; {:try_start_0 .. :try_end_d} :catch_32

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->parent:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->markComplete(Ljava/lang/String;)V

    :goto_14
    return-void

    :catch_15
    move-exception v0

    :try_start_16
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Asynchronous revalidation failed due to exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_4f

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->parent:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->markComplete(Ljava/lang/String;)V

    goto :goto_14

    :catch_32
    move-exception v0

    :try_start_33
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ProtocolException thrown during asynchronous revalidation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->error(Ljava/lang/Object;)V
    :try_end_47
    .catchall {:try_start_33 .. :try_end_47} :catchall_4f

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->parent:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->markComplete(Ljava/lang/String;)V

    goto :goto_14

    :catchall_4f
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->parent:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->markComplete(Ljava/lang/String;)V

    throw v0
.end method
