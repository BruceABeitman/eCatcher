.class public Lboston/Bus/Map/util/DownloadHelper;
.super Ljava/lang/Object;
.source "DownloadHelper.java"
.field private final httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
.field private final httpGet:Lorg/apache/http/client/methods/HttpGet;
.field private inputStream:Ljava/io/InputStream;
.field private final url:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 5
const/16 v2, 0x7530
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lboston/Bus/Map/util/DownloadHelper;->url:Ljava/lang/String;
new-instance v1, Lorg/apache/http/client/methods/HttpGet;
invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
iput-object v1, p0, Lboston/Bus/Map/util/DownloadHelper;->httpGet:Lorg/apache/http/client/methods/HttpGet;
new-instance v0, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
iput-object v1, p0, Lboston/Bus/Map/util/DownloadHelper;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
return-void
.end method
.method public connect()V
.registers 5
iget-object v2, p0, Lboston/Bus/Map/util/DownloadHelper;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
iget-object v3, p0, Lboston/Bus/Map/util/DownloadHelper;->httpGet:Lorg/apache/http/client/methods/HttpGet;
invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v2
iput-object v2, p0, Lboston/Bus/Map/util/DownloadHelper;->inputStream:Ljava/io/InputStream;
return-void
.end method
.method public getResponseData()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Lboston/Bus/Map/util/DownloadHelper;->inputStream:Ljava/io/InputStream;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lboston/Bus/Map/util/DownloadHelper;->url:Ljava/lang/String;
return-object v0
.end method