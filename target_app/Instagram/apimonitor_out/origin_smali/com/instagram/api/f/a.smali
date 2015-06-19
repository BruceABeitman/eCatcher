.class public final Lcom/instagram/api/f/a;
.super Ljava/lang/Object;
.source "HttpClientFactoryHelper.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/api/f/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/instagram/api/f/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/instagram/api/f/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lorg/apache/http/client/HttpClient;
    .registers 4

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {}, Lcom/instagram/common/a/g/a;->a()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method public static b()Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;
    .registers 3

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    new-instance v1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-static {}, Lcom/instagram/common/a/g/d;->a()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;
    .registers 7

    new-instance v0, Lcom/instagram/api/f/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/instagram/api/f/b;-><init>(Lcom/instagram/api/f/a;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    invoke-static {}, Lcom/instagram/common/o/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {}, Lcom/instagram/api/f/c;->a()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v2

    const-string v3, "http.route.default-proxy"

    invoke-interface {v2, v3, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    :cond_1a
    return-object v0
.end method
