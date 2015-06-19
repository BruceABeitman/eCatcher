.class  Lco/vine/android/network/HttpOperationClient$HttpProxyInfo;
.super Ljava/lang/Object;
.source "HttpOperationClient.java"
.field public final enabled:Z
.field public final httpHost:Lorg/apache/http/HttpHost;
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object p2
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_e
const/4 p1, 0x0
:try_start_e
:cond_e
invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_11
.catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_11} :catch_1e
move-result v1
:goto_12
new-instance v2, Lorg/apache/http/HttpHost;
const-string v3, "http"
invoke-direct {v2, p2, v1, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
iput-object v2, p0, Lco/vine/android/network/HttpOperationClient$HttpProxyInfo;->httpHost:Lorg/apache/http/HttpHost;
iput-boolean p1, p0, Lco/vine/android/network/HttpOperationClient$HttpProxyInfo;->enabled:Z
return-void
:catch_1e
move-exception v0
const/4 v1, -0x1
const/4 p1, 0x0
goto :goto_12
.end method