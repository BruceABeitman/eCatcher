.class public Lcom/twidroid/net/a/b/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ljava/net/HttpURLConnection;
.field private b:I
.field private c:Ljava/util/Map;
.method public constructor <init>(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/twidroid/net/a/b/e;->a:Ljava/net/HttpURLConnection;
iput-object p2, p0, Lcom/twidroid/net/a/b/e;->c:Ljava/util/Map;
return-void
.end method
.method public a()Ljava/io/OutputStream;
.registers 7
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v2
iget-object v0, p0, Lcom/twidroid/net/a/b/e;->a:Ljava/net/HttpURLConnection;
if-eqz v0, :cond_67
:try_start_8
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, p0, Lcom/twidroid/net/a/b/e;->c:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_17
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_41
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v1, p0, Lcom/twidroid/net/a/b/e;->c:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v5, "AaB03x"
invoke-static {v0, v1, v5}, Lcom/twidroid/net/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_34
.catchall {:try_start_8 .. :try_end_34} :catchall_3c
.catch Ljava/io/IOException; {:try_start_8 .. :try_end_34} :catch_35
goto :goto_17
:catch_35
move-exception v0
:try_start_36
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
:try_end_3c
.catchall {:try_start_36 .. :try_end_3c} :catchall_3c
:catchall_3c
move-exception v0
invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V
throw v0
:try_start_41
:cond_41
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-string v0, "PhotoProvider"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/net/a/b/e;->a:Ljava/net/HttpURLConnection;
iget v3, p0, Lcom/twidroid/net/a/b/e;->b:I
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v4
add-int/2addr v3, v4
invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
iget-object v0, p0, Lcom/twidroid/net/a/b/e;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
move-result-object v0
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
:try_end_63
.catchall {:try_start_41 .. :try_end_63} :catchall_3c
.catch Ljava/io/IOException; {:try_start_41 .. :try_end_63} :catch_35
invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V
:goto_66
return-object v0
:cond_67
const/4 v0, 0x0
goto :goto_66
.end method
.method public a(I)V
.registers 3
iget v0, p0, Lcom/twidroid/net/a/b/e;->b:I
add-int/2addr v0, p1
iput v0, p0, Lcom/twidroid/net/a/b/e;->b:I
return-void
.end method