.class public Ld/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ld/a/d/b;
.field protected a:Ljava/net/HttpURLConnection;
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Ld/a/a/c;->a:Ljava/net/HttpURLConnection;
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ld/a/a/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Ld/a/a/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ld/a/a/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;
move-result-object v0
invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public b(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Ld/a/a/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public c()Ljava/util/Map;
.registers 7
iget-object v0, p0, Ld/a/a/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;
move-result-object v2
new-instance v3, Ljava/util/HashMap;
invoke-interface {v2}, Ljava/util/Map;->size()I
move-result v0
invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V
invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_17
:goto_17
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_38
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
move-result v5
if-nez v5, :cond_17
const/4 v5, 0x0
invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_17
:cond_38
return-object v3
.end method
.method public d()Ljava/io/InputStream;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public e()Ljava/lang/String;
.registers 3
iget-object v0, p0, Ld/a/a/c;->a:Ljava/net/HttpURLConnection;
const-string v1, "Content-Type"
invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public f()Ljava/net/HttpURLConnection;
.registers 2
iget-object v0, p0, Ld/a/a/c;->a:Ljava/net/HttpURLConnection;
return-object v0
.end method
.method public synthetic g()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Ld/a/a/c;->f()Ljava/net/HttpURLConnection;
move-result-object v0
return-object v0
.end method