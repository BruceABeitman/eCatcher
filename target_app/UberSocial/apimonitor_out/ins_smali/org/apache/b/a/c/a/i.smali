.class public Lorg/apache/b/a/c/a/i;
.super Lorg/apache/b/a/c/a/g;
.source "SourceFile"
.field private a:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p2, p3}, Lorg/apache/b/a/c/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iput-object p1, p0, Lorg/apache/b/a/c/a/i;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lorg/apache/b/a/c/a/e;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-direct {p0, p2, p3, p4}, Lorg/apache/b/a/c/a/g;-><init>(Lorg/apache/b/a/c/a/e;Ljava/lang/String;Ljava/lang/String;)V
iput-object p1, p0, Lorg/apache/b/a/c/a/i;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lorg/apache/b/a/c/a/g;)V
.registers 6
invoke-virtual {p2}, Lorg/apache/b/a/c/a/g;->a()Lorg/apache/b/a/c/a/e;
move-result-object v0
invoke-virtual {p2}, Lorg/apache/b/a/c/a/g;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Lorg/apache/b/a/c/a/g;->c()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v0, v1, v2}, Lorg/apache/b/a/c/a/g;-><init>(Lorg/apache/b/a/c/a/e;Ljava/lang/String;Ljava/lang/String;)V
iput-object p1, p0, Lorg/apache/b/a/c/a/i;->a:Ljava/lang/String;
return-void
.end method
.method public a(Z)Ljava/lang/String;
.registers 5
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
iget-object v0, p0, Lorg/apache/b/a/c/a/i;->a:Ljava/lang/String;
if-nez v0, :cond_1c
const-string v0, ""
:goto_b
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-super {p0, p1}, Lorg/apache/b/a/c/a/g;->a(Z)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_1c
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iget-object v2, p0, Lorg/apache/b/a/c/a/i;->a:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v2, " "
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_b
.end method
.method public e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/c/a/i;->a:Ljava/lang/String;
return-object v0
.end method