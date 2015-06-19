.class public Lorg/apache/log4j/j/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/log4j/j/e;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lorg/apache/log4j/k/k;)Lorg/apache/log4j/k/k;
.registers 14
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->e()Ljava/lang/Object;
move-result-object v1
instance-of v0, v1, Ljava/util/Map;
if-eqz v0, :cond_7e
new-instance v11, Ljava/util/HashMap;
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->p()Ljava/util/Map;
move-result-object v0
invoke-direct {v11, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
move-object v0, v1
check-cast v0, Ljava/util/Map;
const-string v2, "message"
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
if-nez v6, :cond_1d
move-object v6, v1
:cond_1d
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_25
:cond_25
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_49
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
const-string v2, "message"
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_25
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_25
:cond_49
new-instance v0, Lorg/apache/log4j/k/k;
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->q()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->d()Lorg/apache/log4j/g;
move-result-object v2
if-eqz v2, :cond_75
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->d()Lorg/apache/log4j/g;
move-result-object v2
:goto_59
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->n()J
move-result-wide v3
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;
move-result-object v5
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->j()Ljava/lang/String;
move-result-object v7
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->k()Lorg/apache/log4j/k/t;
move-result-object v8
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->f()Ljava/lang/String;
move-result-object v9
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->a()Lorg/apache/log4j/k/h;
move-result-object v10
invoke-direct/range {v0 .. v11}, Lorg/apache/log4j/k/k;-><init>(Ljava/lang/String;Lorg/apache/log4j/g;JLorg/apache/log4j/v;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/log4j/k/t;Ljava/lang/String;Lorg/apache/log4j/k/h;Ljava/util/Map;)V
:goto_74
return-object v0
:cond_75
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->c()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lorg/apache/log4j/aa;->g(Ljava/lang/String;)Lorg/apache/log4j/aa;
move-result-object v2
goto :goto_59
:cond_7e
move-object v0, p1
goto :goto_74
.end method