.class final Lcom/squareup/wire/f;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/util/Map;
.field private final b:Ljava/util/Map;
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v0, p0, Lcom/squareup/wire/f;->a:Ljava/util/Map;
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v0, p0, Lcom/squareup/wire/f;->b:Ljava/util/Map;
return-void
.end method
.method public final a(Ljava/lang/Class;I)Lcom/squareup/wire/d;
.registers 5
iget-object v0, p0, Lcom/squareup/wire/f;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return-object v0
:cond_c
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/wire/d;
goto :goto_b
.end method
.method public final a(Lcom/squareup/wire/d;)V
.registers 6
invoke-virtual {p1}, Lcom/squareup/wire/d;->a()Ljava/lang/Class;
move-result-object v2
iget-object v0, p0, Lcom/squareup/wire/f;->a:Ljava/util/Map;
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
iget-object v1, p0, Lcom/squareup/wire/f;->b:Ljava/util/Map;
invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map;
if-nez v0, :cond_2a
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
new-instance v1, Ljava/util/LinkedHashMap;
invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V
iget-object v3, p0, Lcom/squareup/wire/f;->a:Ljava/util/Map;
invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v3, p0, Lcom/squareup/wire/f;->b:Ljava/util/Map;
invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_2a
invoke-virtual {p1}, Lcom/squareup/wire/d;->e()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p1}, Lcom/squareup/wire/d;->d()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method