.class  Lcom/facebook/internal/t;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:Ljava/lang/String;
.field private static volatile b:Lcom/facebook/internal/c;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/internal/t;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/facebook/internal/t;->a:Ljava/lang/String;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
.registers 6
const/4 v0, 0x0
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v1
const/16 v2, 0xc8
if-ne v1, v2, :cond_2c
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;
move-result-object v1
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v0
:try_start_11
invoke-virtual {v1}, Ljava/net/URL;->toURI()Ljava/net/URI;
move-result-object v2
invoke-static {v2}, Lcom/facebook/internal/t;->a(Ljava/net/URI;)Z
move-result v2
if-eqz v2, :cond_2c
invoke-static {p0}, Lcom/facebook/internal/t;->b(Landroid/content/Context;)Lcom/facebook/internal/c;
move-result-object v2
invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
move-result-object v1
new-instance v3, Lcom/facebook/internal/u;
invoke-direct {v3, v0, p1}, Lcom/facebook/internal/u;-><init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V
invoke-virtual {v2, v1, v3}, Lcom/facebook/internal/c;->a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
:try_end_2b
.catch Ljava/io/IOException; {:try_start_11 .. :try_end_2b} :catch_2f
.catch Ljava/net/URISyntaxException; {:try_start_11 .. :try_end_2b} :catch_2d
move-result-object v0
:goto_2c
:cond_2c
return-object v0
:catch_2d
move-exception v1
goto :goto_2c
:catch_2f
move-exception v1
goto :goto_2c
.end method
.method static a(Ljava/net/URI;Landroid/content/Context;)Ljava/io/InputStream;
.registers 6
const/4 v0, 0x0
if-eqz p0, :cond_16
invoke-static {p0}, Lcom/facebook/internal/t;->a(Ljava/net/URI;)Z
move-result v1
if-eqz v1, :cond_16
:try_start_9
invoke-static {p1}, Lcom/facebook/internal/t;->b(Landroid/content/Context;)Lcom/facebook/internal/c;
move-result-object v1
invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Lcom/facebook/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
:try_end_15
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_15} :catch_17
move-result-object v0
:goto_16
:cond_16
return-object v0
:catch_17
move-exception v1
sget-object v2, Lcom/facebook/LoggingBehavior;->d:Lcom/facebook/LoggingBehavior;
sget-object v2, Lcom/facebook/internal/t;->a:Ljava/lang/String;
invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;
invoke-static {}, Lcom/facebook/internal/v;->c()V
goto :goto_16
.end method
.method static a(Landroid/content/Context;)V
.registers 4
:try_start_0
invoke-static {p0}, Lcom/facebook/internal/t;->b(Landroid/content/Context;)Lcom/facebook/internal/c;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/internal/c;->a()V
:goto_7
:try_end_7
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v0
sget-object v1, Lcom/facebook/LoggingBehavior;->d:Lcom/facebook/LoggingBehavior;
sget-object v1, Lcom/facebook/internal/t;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "clearCache failed "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/facebook/internal/v;->c()V
goto :goto_7
.end method
.method private static a(Ljava/net/URI;)Z
.registers 4
const/4 v0, 0x1
if-eqz p0, :cond_20
invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v1
const-string v2, "fbcdn.net"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_10
:goto_f
:cond_f
return v0
:cond_10
const-string v2, "fbcdn"
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_20
const-string v2, "akamaihd.net"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_f
:cond_20
const/4 v0, 0x0
goto :goto_f
.end method
.method private static declared-synchronized b(Landroid/content/Context;)Lcom/facebook/internal/c;
.registers 6
const-class v1, Lcom/facebook/internal/t;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/internal/t;->b:Lcom/facebook/internal/c;
if-nez v0, :cond_19
new-instance v0, Lcom/facebook/internal/c;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
sget-object v3, Lcom/facebook/internal/t;->a:Ljava/lang/String;
new-instance v4, Lcom/facebook/internal/g;
invoke-direct {v4}, Lcom/facebook/internal/g;-><init>()V
invoke-direct {v0, v2, v3, v4}, Lcom/facebook/internal/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/g;)V
sput-object v0, Lcom/facebook/internal/t;->b:Lcom/facebook/internal/c;
:cond_19
sget-object v0, Lcom/facebook/internal/t;->b:Lcom/facebook/internal/c;
:try_end_1b
.catchall {:try_start_3 .. :try_end_1b} :catchall_1d
monitor-exit v1
return-object v0
:catchall_1d
move-exception v0
monitor-exit v1
throw v0
.end method