.class public Lorg/apache/b/a/c/a/g;
.super Lorg/apache/b/a/c/a/a;
.source "SourceFile"
.field private a:Lorg/apache/b/a/c/a/e;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, v0, p1, p2}, Lorg/apache/b/a/c/a/g;-><init>(Lorg/apache/b/a/c/a/e;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Lorg/apache/b/a/c/a/e;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Lorg/apache/b/a/c/a/a;-><init>()V
iput-object p1, p0, Lorg/apache/b/a/c/a/g;->a:Lorg/apache/b/a/c/a/e;
iput-object p2, p0, Lorg/apache/b/a/c/a/g;->b:Ljava/lang/String;
iput-object p3, p0, Lorg/apache/b/a/c/a/g;->c:Ljava/lang/String;
return-void
.end method
.method public a(Z)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "<"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
if-eqz p1, :cond_11
iget-object v0, p0, Lorg/apache/b/a/c/a/g;->a:Lorg/apache/b/a/c/a/e;
if-nez v0, :cond_38
:cond_11
const-string v0, ""
:goto_13
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
iget-object v1, p0, Lorg/apache/b/a/c/a/g;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
iget-object v0, p0, Lorg/apache/b/a/c/a/g;->c:Ljava/lang/String;
if-nez v0, :cond_52
const-string v0, ""
:goto_23
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
iget-object v1, p0, Lorg/apache/b/a/c/a/g;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, ">"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_38
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iget-object v2, p0, Lorg/apache/b/a/c/a/g;->a:Lorg/apache/b/a/c/a/e;
invoke-virtual {v2}, Lorg/apache/b/a/c/a/e;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v2, ":"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_13
:cond_52
const-string v0, "@"
goto :goto_23
.end method
.method public a()Lorg/apache/b/a/c/a/e;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/c/a/g;->a:Lorg/apache/b/a/c/a/e;
return-object v0
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/c/a/g;->b:Ljava/lang/String;
return-object v0
.end method
.method protected final b(Ljava/util/ArrayList;)V
.registers 2
invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/c/a/g;->c:Ljava/lang/String;
return-object v0
.end method
.method public d()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lorg/apache/b/a/c/a/g;->a(Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lorg/apache/b/a/c/a/g;->d()Ljava/lang/String;
move-result-object v0
return-object v0
.end method