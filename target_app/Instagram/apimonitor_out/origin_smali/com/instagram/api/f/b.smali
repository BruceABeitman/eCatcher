.class final Lcom/instagram/api/f/b;
.super Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;
.source "HttpClientFactoryHelper.java"


# instance fields
.field final synthetic a:Lcom/instagram/api/f/a;


# direct methods
.method constructor <init>(Lcom/instagram/api/f/a;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/api/f/b;->a:Lcom/instagram/api/f/a;

    invoke-direct {p0, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected final createRequestExecutor()Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;
    .registers 3

    new-instance v0, Lcom/instagram/api/g/m;

    iget-object v1, p0, Lcom/instagram/api/f/b;->a:Lcom/instagram/api/f/a;

    invoke-static {v1}, Lcom/instagram/api/f/a;->a(Lcom/instagram/api/f/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/api/g/j;->a(Landroid/content/Context;)Lcom/instagram/api/g/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/api/g/m;-><init>(Lcom/instagram/api/g/j;)V

    return-object v0
.end method
