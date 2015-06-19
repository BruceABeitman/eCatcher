.class final Lcom/google/android/gms/internal/c$5;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/ao;
.field final synthetic a:Lcom/google/android/gms/internal/c;
.method constructor <init>(Lcom/google/android/gms/internal/c;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/c$5;->a:Lcom/google/android/gms/internal/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/google/android/gms/internal/er;Ljava/util/Map;)V
.registers 5
const-string v0, "isVisible"
invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
const-string v0, "1"
const-string v1, "isVisible"
invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_25
const-string v0, "true"
const-string v1, "isVisible"
invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_34
:cond_25
const/4 v0, 0x1
:goto_26
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/c$5;->a:Lcom/google/android/gms/internal/c;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/c;->a(Z)V
goto :goto_8
:cond_34
const/4 v0, 0x0
goto :goto_26
.end method