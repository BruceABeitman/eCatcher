.class final Lcom/instagram/api/a/a;
.super Ljava/lang/Object;
.source "IgApiHttpRequestInterceptor.java"
.implements Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
.field private final a:Landroid/net/ConnectivityManager;
.method constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "connectivity"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
iput-object v0, p0, Lcom/instagram/api/a/a;->a:Landroid/net/ConnectivityManager;
return-void
.end method
.method private declared-synchronized a()Ljava/lang/String;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/api/a/a;->a:Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/g/a;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_d
move-result-object v0
monitor-exit p0
return-object v0
:catchall_d
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
.registers 5
const-string v0, "Host"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_22
const-string v0, "Host"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
:goto_12
invoke-static {v0}, Lcom/instagram/api/h/b;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_21
const-string v0, "X-IG-Connection-Type"
invoke-direct {p0}, Lcom/instagram/api/a/a;->a()Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_21
return-void
:cond_22
const/4 v0, 0x0
goto :goto_12
.end method