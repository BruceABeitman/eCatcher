.class abstract Lcom/facebook/katana/util/Entities$MapIntMap;
.super Ljava/lang/Object;
.source "Entities.java"
.implements Lcom/facebook/katana/util/Entities$EntityMap;
.field protected mapNameToValue:Ljava/util/Map;
.field protected mapValueToName:Ljava/util/Map;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public add(Ljava/lang/String;I)V
.registers 5
iget-object v0, p0, Lcom/facebook/katana/util/Entities$MapIntMap;->mapNameToValue:Ljava/util/Map;
new-instance v1, Ljava/lang/Integer;
invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V
invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/util/Entities$MapIntMap;->mapValueToName:Ljava/util/Map;
new-instance v1, Ljava/lang/Integer;
invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V
invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public name(I)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/facebook/katana/util/Entities$MapIntMap;->mapValueToName:Ljava/util/Map;
new-instance v1, Ljava/lang/Integer;
invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/String;
return-object p0
.end method
.method public value(Ljava/lang/String;)I
.registers 4
iget-object v1, p0, Lcom/facebook/katana/util/Entities$MapIntMap;->mapNameToValue:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_a
const/4 v1, -0x1
:goto_9
return v1
:cond_a
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v1
goto :goto_9
.end method