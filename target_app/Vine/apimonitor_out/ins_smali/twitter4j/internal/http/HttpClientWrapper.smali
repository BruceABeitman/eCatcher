.class public final Ltwitter4j/internal/http/HttpClientWrapper;
.super Ljava/lang/Object;
.source "HttpClientWrapper.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = -0x5a5f30acf4f34913L
.field private http:Ltwitter4j/internal/http/HttpClient;
.field private httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;
.field private final requestHeaders:Ljava/util/Map;
.field private final wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;
move-result-object v0
iput-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;
iget-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;
invoke-interface {v0}, Ltwitter4j/internal/http/HttpClientWrapperConfiguration;->getRequestHeaders()Ljava/util/Map;
move-result-object v0
iput-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
iget-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;
invoke-static {v0}, Ltwitter4j/internal/http/HttpClientFactory;->getInstance(Ltwitter4j/internal/http/HttpClientConfiguration;)Ltwitter4j/internal/http/HttpClient;
move-result-object v0
iput-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;
return-void
.end method
.method public constructor <init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;
invoke-interface {p1}, Ltwitter4j/internal/http/HttpClientWrapperConfiguration;->getRequestHeaders()Ljava/util/Map;
move-result-object v0
iput-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
invoke-static {p1}, Ltwitter4j/internal/http/HttpClientFactory;->getInstance(Ltwitter4j/internal/http/HttpClientConfiguration;)Ltwitter4j/internal/http/HttpClient;
move-result-object v0
iput-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;
return-void
.end method
.method private request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
.registers 8
const/4 v5, 0x0
:try_start_1
iget-object v2, p0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;
invoke-interface {v2, p1}, Ltwitter4j/internal/http/HttpClient;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
iget-object v2, p0, Ltwitter4j/internal/http/HttpClientWrapper;->httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;
if-eqz v2, :cond_16
iget-object v2, p0, Ltwitter4j/internal/http/HttpClientWrapper;->httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;
new-instance v3, Ltwitter4j/internal/http/HttpResponseEvent;
const/4 v4, 0x0
invoke-direct {v3, p1, v0, v4}, Ltwitter4j/internal/http/HttpResponseEvent;-><init>(Ltwitter4j/internal/http/HttpRequest;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/TwitterException;)V
invoke-interface {v2, v3}, Ltwitter4j/internal/http/HttpResponseListener;->httpResponseReceived(Ltwitter4j/internal/http/HttpResponseEvent;)V
:try_end_16
.catch Ltwitter4j/TwitterException; {:try_start_1 .. :try_end_16} :catch_17
:cond_16
return-object v0
:catch_17
move-exception v1
iget-object v2, p0, Ltwitter4j/internal/http/HttpClientWrapper;->httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;
if-eqz v2, :cond_26
iget-object v2, p0, Ltwitter4j/internal/http/HttpClientWrapper;->httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;
new-instance v3, Ltwitter4j/internal/http/HttpResponseEvent;
invoke-direct {v3, p1, v5, v1}, Ltwitter4j/internal/http/HttpResponseEvent;-><init>(Ltwitter4j/internal/http/HttpRequest;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/TwitterException;)V
invoke-interface {v2, v3}, Ltwitter4j/internal/http/HttpResponseListener;->httpResponseReceived(Ltwitter4j/internal/http/HttpResponseEvent;)V
:cond_26
throw v1
.end method
.method public delete(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
.registers 8
const/4 v3, 0x0
new-instance v0, Ltwitter4j/internal/http/HttpRequest;
sget-object v1, Ltwitter4j/internal/http/RequestMethod;->DELETE:Ltwitter4j/internal/http/RequestMethod;
iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
move-object v2, p1
move-object v4, v3
invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public delete(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
.registers 9
new-instance v0, Ltwitter4j/internal/http/HttpRequest;
sget-object v1, Ltwitter4j/internal/http/RequestMethod;->DELETE:Ltwitter4j/internal/http/RequestMethod;
const/4 v3, 0x0
iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
move-object v2, p1
move-object v4, p2
invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public delete(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
.registers 9
new-instance v0, Ltwitter4j/internal/http/HttpRequest;
sget-object v1, Ltwitter4j/internal/http/RequestMethod;->DELETE:Ltwitter4j/internal/http/RequestMethod;
const/4 v4, 0x0
iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
move-object v2, p1
move-object v3, p2
invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public delete(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
.registers 10
new-instance v0, Ltwitter4j/internal/http/HttpRequest;
sget-object v1, Ltwitter4j/internal/http/RequestMethod;->DELETE:Ltwitter4j/internal/http/RequestMethod;
iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
move-object v2, p1
move-object v3, p2
move-object v4, p3
invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v1
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
if-eq v3, v4, :cond_13
:cond_11
move v1, v2
goto :goto_4
:cond_13
move-object v0, p1
check-cast v0, Ltwitter4j/internal/http/HttpClientWrapper;
iget-object v3, p0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;
iget-object v4, v0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;
invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_22
move v1, v2
goto :goto_4
:cond_22
iget-object v3, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
iget-object v4, v0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_2e
move v1, v2
goto :goto_4
:cond_2e
iget-object v3, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;
iget-object v4, v0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;
invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4
move v1, v2
goto :goto_4
.end method
.method public get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
.registers 8
const/4 v3, 0x0
new-instance v0, Ltwitter4j/internal/http/HttpRequest;
sget-object v1, Ltwitter4j/internal/http/RequestMethod;->GET:Ltwitter4j/internal/http/RequestMethod;
iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
move-object v2, p1
move-object v4, v3
invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public get(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
.registers 9
new-instance v0, Ltwitter4j/internal/http/HttpRequest;
sget-object v1, Ltwitter4j/internal/http/RequestMethod;->GET:Ltwitter4j/internal/http/RequestMethod;
const/4 v3, 0x0
iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
move-object v2, p1
move-object v4, p2
invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
.registers 9
new-instance v0, Ltwitter4j/internal/http/HttpRequest;
sget-object v1, Ltwitter4j/internal/http/RequestMethod;->GET:Ltwitter4j/internal/http/RequestMethod;
const/4 v4, 0x0
iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
move-object v2, p1
move-object v3, p2
invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
.registers 10
new-instance v0, Ltwitter4j/internal/http/HttpRequest;
sget-object v1, Ltwitter4j/internal/http/RequestMethod;->GET:Ltwitter4j/internal/http/RequestMethod;
iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
move-object v2, p1
move-object v3, p2
move-object v4, p3
invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public hashCode()I
.registers 4
iget-object v1, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v0
mul-int/lit8 v1, v0, 0x1f
iget-object v2, p0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;
invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
move-result v2
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget-object v2, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
invoke-interface {v2}, Ljava/util/Map;->hashCode()I
move-result v2
add-int v0, v1, v2
return v0
.end method
.method public head(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
.registers 8
const/4 v3, 0x0
new-instance v0, Ltwitter4j/internal/http/HttpRequest;
sget-object v1, Ltwitter4j/internal/http/RequestMethod;->HEAD:Ltwitter4j/internal/http/RequestMethod;
iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
move-object v2, p1
move-object v4, v3
invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public head(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
.registers 9
new-instance v0, Ltwitter4j/internal/http/HttpRequest;
sget-object v1, Ltwitter4j/internal/http/RequestMethod;->HEAD:Ltwitter4j/internal/http/RequestMethod;
const/4 v3, 0x0
iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
move-object v2, p1
move-object v4, p2
invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public head(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
.registers 9
new-instance v0, Ltwitter4j/internal/http/HttpRequest;
sget-object v1, Ltwitter4j/internal/http/RequestMethod;->HEAD:Ltwitter4j/internal/http/RequestMethod;
const/4 v4, 0x0
iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
move-object v2, p1
move-object v3, p2
invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public head(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
.registers 10
new-instance v0, Ltwitter4j/internal/http/HttpRequest;
sget-object v1, Ltwitter4j/internal/http/RequestMethod;->HEAD:Ltwitter4j/internal/http/RequestMethod;
iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
move-object v2, p1
move-object v3, p2
move-object v4, p3
invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
.registers 8
const/4 v3, 0x0
new-instance v0, Ltwitter4j/internal/http/HttpRequest;
sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;
iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
move-object v2, p1
move-object v4, v3
invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public post(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
.registers 9
new-instance v0, Ltwitter4j/internal/http/HttpRequest;
sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;
const/4 v3, 0x0
iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
move-object v2, p1
move-object v4, p2
invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
.registers 9
new-instance v0, Ltwitter4j/internal/http/HttpRequest;
sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;
const/4 v4, 0x0
iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
move-object v2, p1
move-object v3, p2
invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ljava/util/Map;)Ltwitter4j/internal/http/HttpResponse;
.registers 10
new-instance v5, Ljava/util/HashMap;
iget-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
if-eqz p3, :cond_c
invoke-interface {v5, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
:cond_c
new-instance v0, Ltwitter4j/internal/http/HttpRequest;
sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;
const/4 v4, 0x0
move-object v2, p1
move-object v3, p2
invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
.registers 10
new-instance v0, Ltwitter4j/internal/http/HttpRequest;
sget-object v1, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;
iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
move-object v2, p1
move-object v3, p2
move-object v4, p3
invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public put(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
.registers 8
const/4 v3, 0x0
new-instance v0, Ltwitter4j/internal/http/HttpRequest;
sget-object v1, Ltwitter4j/internal/http/RequestMethod;->PUT:Ltwitter4j/internal/http/RequestMethod;
iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
move-object v2, p1
move-object v4, v3
invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public put(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
.registers 9
new-instance v0, Ltwitter4j/internal/http/HttpRequest;
sget-object v1, Ltwitter4j/internal/http/RequestMethod;->PUT:Ltwitter4j/internal/http/RequestMethod;
const/4 v3, 0x0
iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
move-object v2, p1
move-object v4, p2
invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public put(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
.registers 9
new-instance v0, Ltwitter4j/internal/http/HttpRequest;
sget-object v1, Ltwitter4j/internal/http/RequestMethod;->PUT:Ltwitter4j/internal/http/RequestMethod;
const/4 v4, 0x0
iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
move-object v2, p1
move-object v3, p2
invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public put(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
.registers 10
new-instance v0, Ltwitter4j/internal/http/HttpRequest;
sget-object v1, Ltwitter4j/internal/http/RequestMethod;->PUT:Ltwitter4j/internal/http/RequestMethod;
iget-object v5, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
move-object v2, p1
move-object v3, p2
move-object v4, p3
invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/http/HttpRequest;-><init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
invoke-direct {p0, v0}, Ltwitter4j/internal/http/HttpClientWrapper;->request(Ltwitter4j/internal/http/HttpRequest;)Ltwitter4j/internal/http/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public setHttpResponseListener(Ltwitter4j/internal/http/HttpResponseListener;)V
.registers 2
iput-object p1, p0, Ltwitter4j/internal/http/HttpClientWrapper;->httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;
return-void
.end method
.method public shutdown()V
.registers 2
iget-object v0, p0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;
invoke-interface {v0}, Ltwitter4j/internal/http/HttpClient;->shutdown()V
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "HttpClientWrapper{wrapperConf="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/internal/http/HttpClientWrapper;->wrapperConf:Ltwitter4j/internal/http/HttpClientWrapperConfiguration;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", http="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/internal/http/HttpClientWrapper;->http:Ltwitter4j/internal/http/HttpClient;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", requestHeaders="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/internal/http/HttpClientWrapper;->requestHeaders:Ljava/util/Map;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", httpResponseListener="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/internal/http/HttpClientWrapper;->httpResponseListener:Ltwitter4j/internal/http/HttpResponseListener;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method