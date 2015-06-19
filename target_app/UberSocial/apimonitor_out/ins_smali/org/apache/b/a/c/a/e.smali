.class public Lorg/apache/b/a/c/a/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ljava/util/ArrayList;
.method public constructor <init>(Ljava/util/ArrayList;Z)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-eqz p1, :cond_12
if-eqz p2, :cond_a
:goto_7
iput-object p1, p0, Lorg/apache/b/a/c/a/e;->a:Ljava/util/ArrayList;
:goto_9
return-void
:cond_a
invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
move-object p1, v0
goto :goto_7
:cond_12
new-instance v0, Ljava/util/ArrayList;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lorg/apache/b/a/c/a/e;->a:Ljava/util/ArrayList;
goto :goto_9
.end method
.method public a()I
.registers 2
iget-object v0, p0, Lorg/apache/b/a/c/a/e;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public a(I)Ljava/lang/String;
.registers 3
if-ltz p1, :cond_8
invoke-virtual {p0}, Lorg/apache/b/a/c/a/e;->a()I
move-result v0
if-gt v0, p1, :cond_e
:cond_8
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V
throw v0
:cond_e
iget-object v0, p0, Lorg/apache/b/a/c/a/e;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public b()Ljava/lang/String;
.registers 5
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const/4 v0, 0x0
:goto_6
iget-object v2, p0, Lorg/apache/b/a/c/a/e;->a:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v0, v2, :cond_2c
const-string v2, "@"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {p0, v0}, Lorg/apache/b/a/c/a/e;->a(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v2, v0, 0x1
iget-object v3, p0, Lorg/apache/b/a/c/a/e;->a:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-ge v2, v3, :cond_29
const-string v2, ","
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_29
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_2c
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method