.class final Lcom/millennialmedia/android/ax;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "https"
.field private static final b:Ljava/lang/String; = "GET"
.field private static final c:Ljava/lang/String; = "Location"
.field private static final d:Ljava/lang/String; = "Redirecting to: %s"
.field private static final e:Ljava/lang/String; = "HttpRedirection"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static final a(Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/4 v0, 0x0
if-nez p0, :cond_5
const/4 v0, 0x0
:goto_4
return-object v0
:cond_5
invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V
move-object v1, p0
:goto_9
:try_start_9
const-string v0, "https"
invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_13
:cond_11
move-object v0, v1
goto :goto_4
:cond_13
new-instance v2, Ljava/net/URL;
invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/HttpURLConnection;
const/16 v3, 0x2710
invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
const-string v3, "GET"
invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->connect(Ljava/net/HttpURLConnection;)V
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v3
const-string v4, "Location"
invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const/16 v4, 0x12c
if-lt v3, v4, :cond_11
const/16 v4, 0x190
if-ge v3, v4, :cond_11
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_11
new-instance v3, Ljava/net/URI;
invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/net/URI;->isAbsolute()Z
move-result v4
if-nez v4, :cond_78
invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;
move-result-object v0
invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
move-result-object v1
:goto_5a
:cond_5a
const-string v0, "HttpRedirection"
const-string v2, "Redirecting to: %s"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object v1, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_6b
.catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_6b} :catch_6c
.catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_6b} :catch_7c
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_6b} :catch_89
.catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_6b} :catch_96
goto :goto_9
:catch_6c
move-exception v0
move-object v5, v0
move-object v0, v1
move-object v1, v5
const-string v2, "HttpRedirection"
const-string v3, "Bad url scheme"
invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_4
:cond_78
if-eqz v0, :cond_5a
move-object v1, v0
goto :goto_5a
:catch_7c
move-exception v0
move-object v5, v0
move-object v0, v1
move-object v1, v5
const-string v2, "HttpRedirection"
const-string v3, "Connection timeout."
invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_4
:catch_89
move-exception v0
move-object v5, v0
move-object v0, v1
move-object v1, v5
const-string v2, "HttpRedirection"
const-string v3, "IOException following redirects: "
invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_4
:catch_96
move-exception v0
move-object v5, v0
move-object v0, v1
move-object v1, v5
const-string v2, "HttpRedirection"
const-string v3, "URI Syntax incorrect."
invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_4
.end method
.method static a(Lcom/millennialmedia/android/az;)V
.registers 3
if-eqz p0, :cond_a
iget-object v0, p0, Lcom/millennialmedia/android/az;->a:Ljava/lang/String;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/millennialmedia/android/az;->b:Ljava/lang/ref/WeakReference;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
new-instance v1, Lcom/millennialmedia/android/ax$1;
invoke-direct {v1, v0}, Lcom/millennialmedia/android/ax$1;-><init>(Ljava/lang/ref/WeakReference;)V
invoke-static {v1}, Lcom/millennialmedia/android/dk;->a(Ljava/lang/Runnable;)V
goto :goto_a
.end method