.class  Lcom/mologiq/analytics/ai$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Comparator;
.field private final synthetic a:Z
.method constructor <init>(Z)V
.registers 2
iput-boolean p1, p0, Lcom/mologiq/analytics/ai$1;->a:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
.registers 5
iget-boolean v0, p0, Lcom/mologiq/analytics/ai$1;->a:Z
if-eqz v0, :cond_15
invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I
move-result v0
:goto_14
return v0
:cond_15
invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I
move-result v0
goto :goto_14
.end method
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Ljava/util/Map$Entry;
check-cast p2, Ljava/util/Map$Entry;
invoke-virtual {p0, p1, p2}, Lcom/mologiq/analytics/ai$1;->a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
move-result v0
return v0
.end method