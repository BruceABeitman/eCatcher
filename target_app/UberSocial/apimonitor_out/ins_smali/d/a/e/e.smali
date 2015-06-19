.class public Ld/a/e/e;
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
.registers 9
invoke-virtual {p3}, Ld/a/d/a;->a()Ld/a/d/a;
move-result-object v1
const-string v0, "oauth_signature"
const/4 v2, 0x1
invoke-virtual {v1, v0, p1, v2}, Ld/a/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
invoke-virtual {v1}, Ld/a/d/a;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-interface {p2}, Ld/a/d/b;->b()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v0}, Ld/a/d/a;->c(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v4, v0}, Ld/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
:goto_29
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_42
const-string v0, "&"
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Ld/a/d/a;->c(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_29
:cond_42
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {p2, v0}, Ld/a/d/b;->a(Ljava/lang/String;)V
return-object v0
.end method