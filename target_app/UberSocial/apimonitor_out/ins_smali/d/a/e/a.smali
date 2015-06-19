.class public Ld/a/e/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ld/a/e/g;
.field private static final a:J = 0x1L
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/lang/String;Ld/a/d/b;Ld/a/d/a;)Ljava/lang/String;
.registers 8
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v0, "OAuth "
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "realm"
invoke-virtual {p3, v0}, Ld/a/d/a;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_20
const-string v0, "realm"
invoke-virtual {p3, v0}, Ld/a/d/a;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, ", "
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_20
invoke-virtual {p3}, Ld/a/d/a;->a()Ld/a/d/a;
move-result-object v2
const-string v0, "oauth_signature"
const/4 v3, 0x1
invoke-virtual {v2, v0, p1, v3}, Ld/a/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
invoke-virtual {v2}, Ld/a/d/a;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_32
:cond_32
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_51
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Ld/a/d/a;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_32
const-string v0, ", "
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_32
:cond_51
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "Auth Header"
invoke-static {v1, v0}, Ld/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "Authorization"
invoke-interface {p2, v1, v0}, Ld/a/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method