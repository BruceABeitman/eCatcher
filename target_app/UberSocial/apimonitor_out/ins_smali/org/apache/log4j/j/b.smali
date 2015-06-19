.class public Lorg/apache/log4j/j/b;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/log4j/j/e;
.field private a:Ljava/util/Map;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
iput-object v0, p0, Lorg/apache/log4j/j/b;->a:Ljava/util/Map;
return-void
.end method
.method public a(Lorg/apache/log4j/k/k;)Lorg/apache/log4j/k/k;
.registers 14
iget-object v0, p0, Lorg/apache/log4j/j/b;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
move-result v0
if-nez v0, :cond_76
new-instance v11, Ljava/util/HashMap;
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->p()Ljava/util/Map;
move-result-object v0
invoke-direct {v11, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
iget-object v0, p0, Lorg/apache/log4j/j/b;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1b
:cond_1b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
invoke-interface {v11, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_1b
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_1b
:cond_3d
new-instance v0, Lorg/apache/log4j/k/k;
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->q()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->d()Lorg/apache/log4j/g;
move-result-object v2
if-eqz v2, :cond_6d
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->d()Lorg/apache/log4j/g;
move-result-object v2
:goto_4d
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->n()J
move-result-wide v3
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;
move-result-object v5
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->e()Ljava/lang/Object;
move-result-object v6
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->j()Ljava/lang/String;
move-result-object v7
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->k()Lorg/apache/log4j/k/t;
move-result-object v8
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->f()Ljava/lang/String;
move-result-object v9
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->a()Lorg/apache/log4j/k/h;
move-result-object v10
invoke-direct/range {v0 .. v11}, Lorg/apache/log4j/k/k;-><init>(Ljava/lang/String;Lorg/apache/log4j/g;JLorg/apache/log4j/v;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/log4j/k/t;Ljava/lang/String;Lorg/apache/log4j/k/h;Ljava/util/Map;)V
:goto_6c
return-object v0
:cond_6d
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->c()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lorg/apache/log4j/aa;->g(Ljava/lang/String;)Lorg/apache/log4j/aa;
move-result-object v2
goto :goto_4d
:cond_76
move-object v0, p1
goto :goto_6c
.end method
.method public a(Ljava/lang/String;)V
.registers 7
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
new-instance v1, Ljava/util/StringTokenizer;
const-string v2, ","
invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:goto_c
invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
move-result v2
if-eqz v2, :cond_39
new-instance v2, Ljava/util/StringTokenizer;
invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v3
const-string v4, "="
invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_c
:cond_39
monitor-enter p0
:try_start_3a
iput-object v0, p0, Lorg/apache/log4j/j/b;->a:Ljava/util/Map;
monitor-exit p0
return-void
:catchall_3e
move-exception v0
monitor-exit p0
:try_end_40
.catchall {:try_start_3a .. :try_end_40} :catchall_3e
throw v0
.end method