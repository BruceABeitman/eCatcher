.class public Ld/a/e/f;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ld/a/d/b;
.field private b:Ld/a/d/a;
.method public constructor <init>(Ld/a/d/b;Ld/a/d/a;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Ld/a/e/f;->a:Ld/a/d/b;
iput-object p2, p0, Ld/a/e/f;->b:Ld/a/d/a;
return-void
.end method
.method public a()Ljava/lang/String;
.registers 5
:try_start_0
invoke-virtual {p0}, Ld/a/e/f;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Ld/a/e/f;->c()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Ld/a/e/f;->a:Ld/a/d/b;
invoke-interface {v3}, Ld/a/d/b;->a()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const/16 v3, 0x26
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {v0}, Ld/a/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v2, 0x26
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {v1}, Ld/a/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_36
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_38
move-result-object v0
return-object v0
:catch_38
move-exception v0
new-instance v1, Ld/a/c/d;
invoke-direct {v1, v0}, Ld/a/c/d;-><init>(Ljava/lang/Exception;)V
throw v1
.end method
.method public b()Ljava/lang/String;
.registers 7
const/4 v2, 0x0
new-instance v3, Ljava/net/URI;
iget-object v0, p0, Ld/a/e/f;->a:Ld/a/d/b;
invoke-interface {v0}, Ld/a/d/b;->b()Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3}, Ljava/net/URI;->getAuthority()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, "http"
invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2c
invoke-virtual {v3}, Ljava/net/URI;->getPort()I
move-result v1
const/16 v5, 0x50
if-eq v1, v5, :cond_3c
:cond_2c
const-string v1, "https"
invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_75
invoke-virtual {v3}, Ljava/net/URI;->getPort()I
move-result v1
const/16 v5, 0x1bb
if-ne v1, v5, :cond_75
:cond_3c
const/4 v1, 0x1
:goto_3d
if-eqz v1, :cond_4b
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v1
if-ltz v1, :cond_4b
invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
:cond_4b
invoke-virtual {v3}, Ljava/net/URI;->getRawPath()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_57
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-gtz v2, :cond_59
:cond_57
const-string v1, "/"
:cond_59
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "://"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_75
move v1, v2
goto :goto_3d
.end method
.method public c()Ljava/lang/String;
.registers 7
const/4 v2, 0x0
iget-object v0, p0, Ld/a/e/f;->b:Ld/a/d/a;
if-nez v0, :cond_8
const-string v0, ""
:goto_7
return-object v0
:cond_8
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, p0, Ld/a/e/f;->b:Ld/a/d/a;
invoke-virtual {v0}, Ld/a/d/a;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
move v1, v2
:goto_18
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_49
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v5, "oauth_signature"
invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_34
const-string v5, "realm"
invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_38
:goto_34
:cond_34
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_18
:cond_38
if-lez v1, :cond_3f
const-string v5, "&"
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_3f
iget-object v5, p0, Ld/a/e/f;->b:Ld/a/d/a;
invoke-virtual {v5, v0, v2}, Ld/a/d/a;->b(Ljava/lang/Object;Z)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_34
:cond_49
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_7
.end method