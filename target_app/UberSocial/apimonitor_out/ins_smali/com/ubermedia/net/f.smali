.class public Lcom/ubermedia/net/f;
.super Ljava/lang/Thread;
.source "SourceFile"
.field private a:Ljava/util/Map;
.field  f:Ljava/lang/String;
.field  g:Ljava/lang/String;
.field  h:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-object p2, p0, Lcom/ubermedia/net/f;->f:Ljava/lang/String;
iput-object p3, p0, Lcom/ubermedia/net/f;->g:Ljava/lang/String;
iput-object p4, p0, Lcom/ubermedia/net/f;->a:Ljava/util/Map;
iput-object p1, p0, Lcom/ubermedia/net/f;->h:Landroid/content/Context;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-object p1, p0, Lcom/ubermedia/net/f;->f:Ljava/lang/String;
iput-object p2, p0, Lcom/ubermedia/net/f;->g:Ljava/lang/String;
iput-object p3, p0, Lcom/ubermedia/net/f;->a:Ljava/util/Map;
return-void
.end method
.method public a(Ljava/lang/Exception;)V
.registers 2
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public run()V
.registers 6
:try_start_0
const-string v0, "HttpTransport"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Download URI: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/ubermedia/net/f;->f:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/ubermedia/net/f;->h:Landroid/content/Context;
if-eqz v0, :cond_76
iget-object v0, p0, Lcom/ubermedia/net/f;->f:Ljava/lang/String;
if-eqz v0, :cond_76
iget-object v0, p0, Lcom/ubermedia/net/f;->f:Ljava/lang/String;
const-string v1, "file:///android_asset"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_76
iget-object v0, p0, Lcom/ubermedia/net/f;->h:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v0
iget-object v1, p0, Lcom/ubermedia/net/f;->f:Ljava/lang/String;
const-string v2, "file:///android_asset/"
const-string v3, ""
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v0
new-instance v1, Ljava/io/FileOutputStream;
iget-object v2, p0, Lcom/ubermedia/net/f;->g:Ljava/lang/String;
invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
const/16 v2, 0x800
new-array v2, v2, [B
:goto_4b
invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I
move-result v3
const/4 v4, -0x1
if-eq v3, v4, :cond_5f
const/4 v4, 0x0
invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
:try_end_56
.catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_56} :catch_57
.catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_56} :catch_6e
.catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_56} :catch_7e
.catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_56} :catch_86
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_56} :catch_8e
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_96
goto :goto_4b
:catch_57
move-exception v0
invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V
invoke-virtual {p0, v0}, Lcom/ubermedia/net/f;->a(Ljava/lang/Exception;)V
:goto_5e
return-void
:cond_5f
:try_start_5f
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:goto_68
iget-object v0, p0, Lcom/ubermedia/net/f;->g:Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/ubermedia/net/f;->a(Ljava/lang/String;)V
:try_end_6d
.catch Ljava/net/UnknownHostException; {:try_start_5f .. :try_end_6d} :catch_57
.catch Ljava/net/SocketTimeoutException; {:try_start_5f .. :try_end_6d} :catch_6e
.catch Ljava/net/MalformedURLException; {:try_start_5f .. :try_end_6d} :catch_7e
.catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_6d} :catch_86
.catch Ljava/io/IOException; {:try_start_5f .. :try_end_6d} :catch_8e
.catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6d} :catch_96
goto :goto_5e
:catch_6e
move-exception v0
invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V
invoke-virtual {p0, v0}, Lcom/ubermedia/net/f;->a(Ljava/lang/Exception;)V
goto :goto_5e
:try_start_76
:cond_76
iget-object v0, p0, Lcom/ubermedia/net/f;->f:Ljava/lang/String;
iget-object v1, p0, Lcom/ubermedia/net/f;->g:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/ubermedia/net/d;->c(Ljava/lang/String;Ljava/lang/String;)V
:try_end_7d
.catch Ljava/net/UnknownHostException; {:try_start_76 .. :try_end_7d} :catch_57
.catch Ljava/net/SocketTimeoutException; {:try_start_76 .. :try_end_7d} :catch_6e
.catch Ljava/net/MalformedURLException; {:try_start_76 .. :try_end_7d} :catch_7e
.catch Ljava/io/FileNotFoundException; {:try_start_76 .. :try_end_7d} :catch_86
.catch Ljava/io/IOException; {:try_start_76 .. :try_end_7d} :catch_8e
.catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7d} :catch_96
goto :goto_68
:catch_7e
move-exception v0
invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
invoke-virtual {p0, v0}, Lcom/ubermedia/net/f;->a(Ljava/lang/Exception;)V
goto :goto_5e
:catch_86
move-exception v0
invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
invoke-virtual {p0, v0}, Lcom/ubermedia/net/f;->a(Ljava/lang/Exception;)V
goto :goto_5e
:catch_8e
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
invoke-virtual {p0, v0}, Lcom/ubermedia/net/f;->a(Ljava/lang/Exception;)V
goto :goto_5e
:catch_96
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
invoke-virtual {p0, v0}, Lcom/ubermedia/net/f;->a(Ljava/lang/Exception;)V
goto :goto_5e
.end method