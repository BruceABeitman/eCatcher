.class  Lcom/facebook/internal/ah;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:Ljava/lang/String;
.field private static final b:Ljava/lang/String;
.field private static volatile c:Lcom/facebook/internal/c;
.method static constructor <clinit>()V
.registers 2
const-class v0, Lcom/facebook/internal/ah;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/facebook/internal/ah;->a:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lcom/facebook/internal/ah;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "_Redirect"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/facebook/internal/ah;->b:Ljava/lang/String;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Landroid/content/Context;Ljava/net/URI;)Ljava/net/URI;
.registers 11
const/4 v0, 0x0
const/4 v1, 0x0
if-nez p1, :cond_5
:goto_4
return-object v0
:cond_5
invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;
move-result-object v2
:try_start_9
invoke-static {p0}, Lcom/facebook/internal/ah;->b(Landroid/content/Context;)Lcom/facebook/internal/c;
:try_end_c
.catchall {:try_start_9 .. :try_end_c} :catchall_5b
.catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_c} :catch_6d
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_55
move-result-object v4
move-object v3, v2
move-object v2, v0
:try_start_f
:goto_f
sget-object v5, Lcom/facebook/internal/ah;->b:Ljava/lang/String;
invoke-virtual {v4, v3, v5}, Lcom/facebook/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v5
if-eqz v5, :cond_45
const/4 v3, 0x1
new-instance v1, Ljava/io/InputStreamReader;
invoke-direct {v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
:try_end_1d
.catchall {:try_start_f .. :try_end_1d} :catchall_65
.catch Ljava/net/URISyntaxException; {:try_start_f .. :try_end_1d} :catch_70
.catch Ljava/io/IOException; {:try_start_f .. :try_end_1d} :catch_6a
const/16 v2, 0x80
:try_start_1f
new-array v2, v2, [C
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
:goto_26
const/4 v6, 0x0
const/16 v7, 0x80
invoke-virtual {v1, v2, v6, v7}, Ljava/io/InputStreamReader;->read([CII)I
move-result v6
if-lez v6, :cond_39
const/4 v7, 0x0
invoke-virtual {v5, v2, v7, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
:try_end_33
.catchall {:try_start_1f .. :try_end_33} :catchall_63
.catch Ljava/net/URISyntaxException; {:try_start_1f .. :try_end_33} :catch_34
.catch Ljava/io/IOException; {:try_start_1f .. :try_end_33} :catch_68
goto :goto_26
:catch_34
move-exception v2
:goto_35
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
goto :goto_4
:cond_39
:try_start_39
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_3f
.catchall {:try_start_39 .. :try_end_3f} :catchall_63
.catch Ljava/net/URISyntaxException; {:try_start_39 .. :try_end_3f} :catch_34
.catch Ljava/io/IOException; {:try_start_39 .. :try_end_3f} :catch_68
move-result-object v2
move v8, v3
move-object v3, v2
move-object v2, v1
move v1, v8
goto :goto_f
:cond_45
if-eqz v1, :cond_51
:try_start_47
new-instance v1, Ljava/net/URI;
invoke-direct {v1, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
:try_end_4c
.catchall {:try_start_47 .. :try_end_4c} :catchall_65
.catch Ljava/net/URISyntaxException; {:try_start_47 .. :try_end_4c} :catch_70
.catch Ljava/io/IOException; {:try_start_47 .. :try_end_4c} :catch_6a
invoke-static {v2}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
move-object v0, v1
goto :goto_4
:cond_51
invoke-static {v2}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
goto :goto_4
:catch_55
move-exception v1
move-object v1, v0
:goto_57
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
goto :goto_4
:catchall_5b
move-exception v1
move-object v8, v1
move-object v1, v0
move-object v0, v8
:goto_5f
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
throw v0
:catchall_63
move-exception v0
goto :goto_5f
:catchall_65
move-exception v0
move-object v1, v2
goto :goto_5f
:catch_68
move-exception v2
goto :goto_57
:catch_6a
move-exception v1
move-object v1, v2
goto :goto_57
:catch_6d
move-exception v1
move-object v1, v0
goto :goto_35
:catch_70
move-exception v1
move-object v1, v2
goto :goto_35
.end method
.method static a(Landroid/content/Context;)V
.registers 4
:try_start_0
invoke-static {p0}, Lcom/facebook/internal/ah;->b(Landroid/content/Context;)Lcom/facebook/internal/c;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/internal/c;->a()V
:goto_7
:try_end_7
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v0
sget-object v1, Lcom/facebook/LoggingBehavior;->d:Lcom/facebook/LoggingBehavior;
sget-object v1, Lcom/facebook/internal/ah;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "clearCache failed "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/facebook/internal/v;->c()V
goto :goto_7
.end method
.method static a(Landroid/content/Context;Ljava/net/URI;Ljava/net/URI;)V
.registers 8
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
const/4 v0, 0x0
:try_start_4
invoke-static {p0}, Lcom/facebook/internal/ah;->b(Landroid/content/Context;)Lcom/facebook/internal/c;
move-result-object v1
invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/facebook/internal/ah;->b:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Lcom/facebook/internal/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
:try_end_11
.catchall {:try_start_4 .. :try_end_11} :catchall_26
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_11} :catch_21
move-result-object v0
:try_start_12
invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
:try_end_1d
.catchall {:try_start_12 .. :try_end_1d} :catchall_2e
.catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_21
invoke-static {v0}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
goto :goto_2
:catch_21
move-exception v1
invoke-static {v0}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
goto :goto_2
:catchall_26
move-exception v1
move-object v4, v1
move-object v1, v0
move-object v0, v4
:goto_2a
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V
throw v0
:catchall_2e
move-exception v1
move-object v4, v1
move-object v1, v0
move-object v0, v4
goto :goto_2a
.end method
.method private static declared-synchronized b(Landroid/content/Context;)Lcom/facebook/internal/c;
.registers 6
const-class v1, Lcom/facebook/internal/ah;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/internal/ah;->c:Lcom/facebook/internal/c;
if-nez v0, :cond_19
new-instance v0, Lcom/facebook/internal/c;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
sget-object v3, Lcom/facebook/internal/ah;->a:Ljava/lang/String;
new-instance v4, Lcom/facebook/internal/g;
invoke-direct {v4}, Lcom/facebook/internal/g;-><init>()V
invoke-direct {v0, v2, v3, v4}, Lcom/facebook/internal/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/g;)V
sput-object v0, Lcom/facebook/internal/ah;->c:Lcom/facebook/internal/c;
:cond_19
sget-object v0, Lcom/facebook/internal/ah;->c:Lcom/facebook/internal/c;
:try_end_1b
.catchall {:try_start_3 .. :try_end_1b} :catchall_1d
monitor-exit v1
return-object v0
:catchall_1d
move-exception v0
monitor-exit v1
throw v0
.end method