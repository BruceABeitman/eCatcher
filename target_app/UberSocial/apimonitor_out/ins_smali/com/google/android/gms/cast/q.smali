.class  Lcom/google/android/gms/cast/q;
.super Ljava/lang/Object;
.field private final a:Ljava/util/Map;
.field private final b:Ljava/util/Map;
.field private final c:Ljava/util/Map;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/cast/q;->a:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/cast/q;->b:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/cast/q;->c:Ljava/util/Map;
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/q;
.registers 6
iget-object v0, p0, Lcom/google/android/gms/cast/q;->a:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/cast/q;->b:Ljava/util/Map;
invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/cast/q;->c:Ljava/util/Map;
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object p0
.end method
.method public a(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/cast/q;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public b(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/cast/q;->b:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public c(Ljava/lang/String;)I
.registers 3
iget-object v0, p0, Lcom/google/android/gms/cast/q;->c:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-eqz v0, :cond_f
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method