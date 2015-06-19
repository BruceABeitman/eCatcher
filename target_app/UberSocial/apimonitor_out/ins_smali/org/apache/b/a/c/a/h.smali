.class public Lorg/apache/b/a/c/a/h;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ljava/util/ArrayList;
.method public constructor <init>(Ljava/util/ArrayList;Z)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-eqz p1, :cond_12
if-eqz p2, :cond_a
:goto_7
iput-object p1, p0, Lorg/apache/b/a/c/a/h;->a:Ljava/util/ArrayList;
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
iput-object v0, p0, Lorg/apache/b/a/c/a/h;->a:Ljava/util/ArrayList;
goto :goto_9
.end method
.method public a()I
.registers 2
iget-object v0, p0, Lorg/apache/b/a/c/a/h;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public a(I)Lorg/apache/b/a/c/a/g;
.registers 3
if-ltz p1, :cond_8
invoke-virtual {p0}, Lorg/apache/b/a/c/a/h;->a()I
move-result v0
if-gt v0, p1, :cond_e
:cond_8
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V
throw v0
:cond_e
iget-object v0, p0, Lorg/apache/b/a/c/a/h;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/b/a/c/a/g;
return-object v0
.end method
.method public b()V
.registers 4
const/4 v0, 0x0
:goto_1
invoke-virtual {p0}, Lorg/apache/b/a/c/a/h;->a()I
move-result v1
if-ge v0, v1, :cond_17
invoke-virtual {p0, v0}, Lorg/apache/b/a/c/a/h;->a(I)Lorg/apache/b/a/c/a/g;
move-result-object v1
sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;
invoke-virtual {v1}, Lorg/apache/b/a/c/a/g;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_17
return-void
.end method