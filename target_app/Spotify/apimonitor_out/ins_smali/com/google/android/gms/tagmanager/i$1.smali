.class final Lcom/google/android/gms/tagmanager/i$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/f;
.field final synthetic a:Lcom/google/android/gms/tagmanager/i;
.method constructor <init>(Lcom/google/android/gms/tagmanager/i;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/i$1;->a:Lcom/google/android/gms/tagmanager/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/util/Map;)V
.registers 4
const-string v0, "event"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_11
iget-object v1, p0, Lcom/google/android/gms/tagmanager/i$1;->a:Lcom/google/android/gms/tagmanager/i;
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/i;->a(Lcom/google/android/gms/tagmanager/i;Ljava/lang/String;)V
:cond_11
return-void
.end method