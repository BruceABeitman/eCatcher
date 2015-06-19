.class public Lorg/apache/b/a/c/j;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/b/a/c/l;
.field private a:Ljava/util/Map;
.field private b:Lorg/apache/b/a/c/l;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lorg/apache/b/a/c/j;->a:Ljava/util/Map;
new-instance v0, Lorg/apache/b/a/c/r;
invoke-direct {v0}, Lorg/apache/b/a/c/r;-><init>()V
iput-object v0, p0, Lorg/apache/b/a/c/j;->b:Lorg/apache/b/a/c/l;
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/b/a/c/k;
.registers 5
invoke-virtual {p0, p1}, Lorg/apache/b/a/c/j;->a(Ljava/lang/String;)Lorg/apache/b/a/c/l;
move-result-object v0
invoke-interface {v0, p1, p2, p3}, Lorg/apache/b/a/c/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/b/a/c/k;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;)Lorg/apache/b/a/c/l;
.registers 4
iget-object v0, p0, Lorg/apache/b/a/c/j;->a:Ljava/util/Map;
invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/b/a/c/l;
if-nez v0, :cond_10
iget-object v0, p0, Lorg/apache/b/a/c/j;->b:Lorg/apache/b/a/c/l;
:cond_10
return-object v0
.end method
.method public a(Ljava/lang/String;Lorg/apache/b/a/c/l;)V
.registers 5
iget-object v0, p0, Lorg/apache/b/a/c/j;->a:Ljava/util/Map;
invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method