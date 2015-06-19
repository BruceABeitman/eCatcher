.class public Lcom/alipay/android/app/net/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"
.field private mContext:Landroid/content/Context;
.field private mUrl:Ljava/lang/String;
.field private sAndroidHttpClient:Lcom/alipay/android/app/net/MspHttpClient;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/net/HttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/alipay/android/app/net/HttpClient;->sAndroidHttpClient:Lcom/alipay/android/app/net/MspHttpClient;
iput-object p1, p0, Lcom/alipay/android/app/net/HttpClient;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/alipay/android/app/net/HttpClient;->mUrl:Ljava/lang/String;
return-void
.end method
.method private getActiveNetworkInfo()Landroid/net/NetworkInfo;
.registers 6
const/4 v2, 0x0
:try_start_1
iget-object v3, p0, Lcom/alipay/android/app/net/HttpClient;->mContext:Landroid/content/Context;
const-string/jumbo v4, "connectivity"
invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
:try_end_f
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11
move-result-object v2
:goto_10
return-object v2
:catch_11
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_10
.end method
.method private getProxy()Lorg/apache/http/HttpHost;
.registers 6
const/4 v2, 0x0
invoke-direct {p0}, Lcom/alipay/android/app/net/HttpClient;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_22
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
move-result v4
if-eqz v4, :cond_22
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
move-result v4
if-nez v4, :cond_22
invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;
move-result-object v3
invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I
move-result v1
if-eqz v3, :cond_22
new-instance v2, Lorg/apache/http/HttpHost;
invoke-direct {v2, v3, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
:cond_22
return-object v2
.end method
.method private getStatus(Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/4 v4, -0x1
const-string/jumbo v3, " "
invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
add-int/lit8 v1, v1, 0x1
const-string/jumbo v3, " "
invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v0
if-eq v1, v4, :cond_15
if-ne v0, v4, :cond_17
:cond_15
const/4 v2, 0x0
:goto_16
return-object v2
:cond_17
invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
goto :goto_16
.end method
.method public getURL()Ljava/net/URL;
.registers 5
const/4 v1, 0x0
:try_start_1
new-instance v2, Ljava/net/URL;
iget-object v3, p0, Lcom/alipay/android/app/net/HttpClient;->mUrl:Ljava/lang/String;
invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
:try_end_8
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a
move-object v1, v2
:goto_9
return-object v1
:catch_a
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_9
.end method
.method public getUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/net/HttpClient;->mUrl:Ljava/lang/String;
return-object v0
.end method
.method public sendSynchronousRequest(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/alipay/android/app/net/WebResponseData;
.registers 16
const/4 v5, 0x0
:try_start_1
invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/net/HttpClient;->sendSynchronousRequestAsHttpResponse(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lorg/apache/http/HttpResponse;
move-result-object v4
invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v3
invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
:try_end_c
.catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_c} :catch_31
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_42
move-result-object v8
const/4 v7, 0x0
:try_start_e
invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {p0, v7}, Lcom/alipay/android/app/net/HttpClient;->getStatus(Ljava/lang/String;)Ljava/lang/String;
:try_end_19
.catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_44
.catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_e .. :try_end_19} :catch_31
move-result-object v7
:try_start_1a
:goto_1a
invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;
move-result-object v9
invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/alipay/android/app/util/Utils;->getCharset(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v1}, Lcom/alipay/android/app/util/Utils;->getContentType(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v6, Lcom/alipay/android/app/net/WebResponseData;
invoke-direct {v6, v8, v1, v0, v7}, Lcom/alipay/android/app/net/WebResponseData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:try_end_2f
.catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1a .. :try_end_2f} :catch_31
.catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2f} :catch_42
move-object v5, v6
:goto_30
return-object v5
:catch_31
move-exception v2
new-instance v5, Lcom/alipay/android/app/net/WebResponseData;
const-string/jumbo v9, "sslerror"
const-string/jumbo v10, ""
const-string/jumbo v11, "UTF-8"
const/4 v12, 0x0
invoke-direct {v5, v9, v10, v11, v12}, Lcom/alipay/android/app/net/WebResponseData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_30
:catch_42
move-exception v9
goto :goto_30
:catch_44
move-exception v9
goto :goto_1a
.end method
.method public sendSynchronousRequest(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
.registers 8
const/4 v3, 0x0
:try_start_1
invoke-virtual {p0, p1}, Lcom/alipay/android/app/net/HttpClient;->sendSynchronousRequestAsHttpResponse(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
move-result-object v2
invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v1
invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
:try_end_c
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_f
move-result-object v3
move-object v4, v3
:goto_e
return-object v4
:catch_f
move-exception v0
const/4 v4, 0x0
goto :goto_e
.end method
.method public sendSynchronousRequestAsHttpResponse(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
.registers 18
const/4 v7, 0x0
invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/net/HttpClient;->getURL()Ljava/net/URL;
move-result-object v13
const/4 v5, 0x0
const/4 v11, 0x0
:try_start_7
move-object/from16 v0, p0
iget-object v14, v0, Lcom/alipay/android/app/net/HttpClient;->sAndroidHttpClient:Lcom/alipay/android/app/net/MspHttpClient;
if-nez v14, :cond_15
invoke-static {}, Lcom/alipay/android/app/net/MspHttpClient;->newInstance()Lcom/alipay/android/app/net/MspHttpClient;
move-result-object v14
move-object/from16 v0, p0
iput-object v14, v0, Lcom/alipay/android/app/net/HttpClient;->sAndroidHttpClient:Lcom/alipay/android/app/net/MspHttpClient;
:cond_15
move-object/from16 v0, p0
iget-object v14, v0, Lcom/alipay/android/app/net/HttpClient;->sAndroidHttpClient:Lcom/alipay/android/app/net/MspHttpClient;
invoke-virtual {v14}, Lcom/alipay/android/app/net/MspHttpClient;->getParams()Lorg/apache/http/params/HttpParams;
move-result-object v4
invoke-direct/range {p0 .. p0}, Lcom/alipay/android/app/net/HttpClient;->getProxy()Lorg/apache/http/HttpHost;
move-result-object v10
const-string/jumbo v14, "http.route.default-proxy"
invoke-interface {v4, v14, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
invoke-virtual {v13}, Ljava/net/URL;->getProtocol()Ljava/lang/String;
move-result-object v9
invoke-virtual {v13}, Ljava/net/URL;->getPort()I
move-result v8
const/4 v14, -0x1
if-ne v8, v14, :cond_36
invoke-virtual {v13}, Ljava/net/URL;->getDefaultPort()I
move-result v8
:cond_36
new-instance v12, Lorg/apache/http/HttpHost;
invoke-virtual {v13}, Ljava/net/URL;->getHost()Ljava/lang/String;
move-result-object v14
invoke-direct {v12, v14, v8, v9}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
:try_end_3f
.catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_3f} :catch_6c
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3f} :catch_7e
:try_start_3f
new-instance v6, Lorg/apache/http/client/methods/HttpPost;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/alipay/android/app/net/HttpClient;->mUrl:Ljava/lang/String;
invoke-direct {v6, v14}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
:try_start_48
:try_end_48
.catch Ljava/lang/NullPointerException; {:try_start_3f .. :try_end_48} :catch_87
.catch Ljava/lang/Exception; {:try_start_3f .. :try_end_48} :catch_80
new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B
move-result-object v14
invoke-direct {v3, v14}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
move-object v0, v6
check-cast v0, Lorg/apache/http/client/methods/HttpPost;
move-object v14, v0
invoke-virtual {v14, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
const-string/jumbo v14, "Content-type"
const-string/jumbo v15, "application/octet-stream"
invoke-interface {v6, v14, v15}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/alipay/android/app/net/HttpClient;->sAndroidHttpClient:Lcom/alipay/android/app/net/MspHttpClient;
invoke-virtual {v14, v12, v6}, Lcom/alipay/android/app/net/MspHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
:try_end_68
.catch Ljava/lang/NullPointerException; {:try_start_48 .. :try_end_68} :catch_8a
.catch Ljava/lang/Exception; {:try_start_48 .. :try_end_68} :catch_83
move-result-object v7
move-object v11, v12
move-object v5, v6
:goto_6b
return-object v7
:catch_6c
move-exception v1
:goto_6d
invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
:try_start_70
move-object/from16 v0, p0
iget-object v14, v0, Lcom/alipay/android/app/net/HttpClient;->sAndroidHttpClient:Lcom/alipay/android/app/net/MspHttpClient;
invoke-virtual {v14, v11, v5}, Lcom/alipay/android/app/net/MspHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
:try_end_77
.catch Ljava/lang/Exception; {:try_start_70 .. :try_end_77} :catch_79
move-result-object v7
goto :goto_6b
:catch_79
move-exception v2
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_6b
:catch_7e
move-exception v14
goto :goto_6b
:catch_80
move-exception v14
move-object v11, v12
goto :goto_6b
:catch_83
move-exception v14
move-object v11, v12
move-object v5, v6
goto :goto_6b
:catch_87
move-exception v1
move-object v11, v12
goto :goto_6d
:catch_8a
move-exception v1
move-object v11, v12
move-object v5, v6
goto :goto_6d
.end method
.method public sendSynchronousRequestAsHttpResponse(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/apache/http/HttpResponse;
.registers 7
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v2, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v3, "requestData"
invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_start_10
invoke-virtual {p0, v1, p2}, Lcom/alipay/android/app/net/HttpClient;->sendSynchronousRequestAsHttpResponse(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lorg/apache/http/HttpResponse;
:try_end_13
.catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_10 .. :try_end_13} :catch_15
move-result-object v2
:goto_14
return-object v2
:catch_15
move-exception v0
const/4 v2, 0x0
goto :goto_14
.end method
.method public sendSynchronousRequestAsHttpResponse(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lorg/apache/http/HttpResponse;
.registers 22
const/4 v8, 0x0
invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/net/HttpClient;->getURL()Ljava/net/URL;
move-result-object v16
const/4 v9, 0x0
const/4 v6, 0x0
const/4 v14, 0x0
:try_start_8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/alipay/android/app/net/HttpClient;->sAndroidHttpClient:Lcom/alipay/android/app/net/MspHttpClient;
move-object/from16 v17, v0
if-nez v17, :cond_1a
invoke-static {}, Lcom/alipay/android/app/net/MspHttpClient;->newInstance()Lcom/alipay/android/app/net/MspHttpClient;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lcom/alipay/android/app/net/HttpClient;->sAndroidHttpClient:Lcom/alipay/android/app/net/MspHttpClient;
:cond_1a
move-object/from16 v0, p0
iget-object v0, v0, Lcom/alipay/android/app/net/HttpClient;->sAndroidHttpClient:Lcom/alipay/android/app/net/MspHttpClient;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/alipay/android/app/net/MspHttpClient;->getParams()Lorg/apache/http/params/HttpParams;
move-result-object v5
invoke-direct/range {p0 .. p0}, Lcom/alipay/android/app/net/HttpClient;->getProxy()Lorg/apache/http/HttpHost;
move-result-object v13
const-string/jumbo v17, "http.route.default-proxy"
move-object/from16 v0, v17
invoke-interface {v5, v0, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getProtocol()Ljava/lang/String;
move-result-object v12
invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getPort()I
move-result v11
const/16 v17, -0x1
move/from16 v0, v17
if-ne v11, v0, :cond_42
invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getDefaultPort()I
move-result v11
:cond_42
new-instance v15, Lorg/apache/http/HttpHost;
invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getHost()Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
invoke-direct {v15, v0, v11, v12}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
:try_end_4d
.catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_8 .. :try_end_4d} :catch_fc
.catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_4d} :catch_cc
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4d} :catch_e2
if-eqz p1, :cond_a8
:try_start_4f
new-instance v7, Lorg/apache/http/client/methods/HttpPost;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/alipay/android/app/net/HttpClient;->mUrl:Ljava/lang/String;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
:try_end_5c
.catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_4f .. :try_end_5c} :catch_c1
.catch Ljava/lang/NullPointerException; {:try_start_4f .. :try_end_5c} :catch_f0
.catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5c} :catch_e4
:try_start_5c
new-instance v10, Lorg/apache/http/client/entity/UrlEncodedFormEntity;
const-string/jumbo v17, "utf-8"
move-object/from16 v0, p1
move-object/from16 v1, v17
invoke-direct {v10, v0, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
:try_end_68
.catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_5c .. :try_end_68} :catch_fe
.catch Ljava/lang/NullPointerException; {:try_start_5c .. :try_end_68} :catch_f3
.catch Ljava/lang/Exception; {:try_start_5c .. :try_end_68} :catch_e7
:try_start_68
move-object v0, v7
check-cast v0, Lorg/apache/http/client/methods/HttpPost;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
:try_end_72
.catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_68 .. :try_end_72} :catch_102
.catch Ljava/lang/NullPointerException; {:try_start_68 .. :try_end_72} :catch_f7
.catch Ljava/lang/Exception; {:try_start_68 .. :try_end_72} :catch_eb
move-object v6, v7
move-object v9, v10
:goto_74
:try_start_74
const-string/jumbo v17, "Content-type"
const-string/jumbo v18, "application/x-www-form-urlencoded;charset=utf-8"
move-object/from16 v0, v17
move-object/from16 v1, v18
invoke-interface {v6, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v17, "Accept"
const-string/jumbo v18, "application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5"
move-object/from16 v0, v17
move-object/from16 v1, v18
invoke-interface {v6, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p2, :cond_9a
invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v17
:goto_94
invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z
move-result v18
if-nez v18, :cond_b7
:cond_9a
move-object/from16 v0, p0
iget-object v0, v0, Lcom/alipay/android/app/net/HttpClient;->sAndroidHttpClient:Lcom/alipay/android/app/net/MspHttpClient;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v15, v6}, Lcom/alipay/android/app/net/MspHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
move-result-object v8
move-object v14, v15
:goto_a7
return-object v8
:cond_a8
new-instance v7, Lorg/apache/http/client/methods/HttpGet;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/alipay/android/app/net/HttpClient;->mUrl:Ljava/lang/String;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
move-object v6, v7
goto :goto_74
:cond_b7
invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lorg/apache/http/Header;
invoke-interface {v6, v4}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V
:try_end_c0
.catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_74 .. :try_end_c0} :catch_c1
.catch Ljava/lang/NullPointerException; {:try_start_74 .. :try_end_c0} :catch_f0
.catch Ljava/lang/Exception; {:try_start_74 .. :try_end_c0} :catch_e4
goto :goto_94
:catch_c1
move-exception v2
move-object v14, v15
:goto_c3
new-instance v17, Ljavax/net/ssl/SSLPeerUnverifiedException;
const-string/jumbo v18, "SSL error"
invoke-direct/range {v17 .. v18}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V
throw v17
:catch_cc
move-exception v2
:goto_cd
invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
:try_start_d0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/alipay/android/app/net/HttpClient;->sAndroidHttpClient:Lcom/alipay/android/app/net/MspHttpClient;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v14, v6}, Lcom/alipay/android/app/net/MspHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
:try_end_db
.catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_db} :catch_dd
move-result-object v8
goto :goto_a7
:catch_dd
move-exception v3
invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_a7
:catch_e2
move-exception v17
goto :goto_a7
:catch_e4
move-exception v17
move-object v14, v15
goto :goto_a7
:catch_e7
move-exception v17
move-object v14, v15
move-object v6, v7
goto :goto_a7
:catch_eb
move-exception v17
move-object v14, v15
move-object v6, v7
move-object v9, v10
goto :goto_a7
:catch_f0
move-exception v2
move-object v14, v15
goto :goto_cd
:catch_f3
move-exception v2
move-object v14, v15
move-object v6, v7
goto :goto_cd
:catch_f7
move-exception v2
move-object v14, v15
move-object v6, v7
move-object v9, v10
goto :goto_cd
:catch_fc
move-exception v2
goto :goto_c3
:catch_fe
move-exception v2
move-object v14, v15
move-object v6, v7
goto :goto_c3
:catch_102
move-exception v2
move-object v14, v15
move-object v6, v7
move-object v9, v10
goto :goto_c3
.end method
.method public setUrl(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/net/HttpClient;->mUrl:Ljava/lang/String;
return-void
.end method