.class  Lcom/google/android/gms/tagmanager/TagManager$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/DataLayer$b;
.field final synthetic aie:Lcom/google/android/gms/tagmanager/TagManager;
.method constructor <init>(Lcom/google/android/gms/tagmanager/TagManager;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/TagManager$1;->aie:Lcom/google/android/gms/tagmanager/TagManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public x(Ljava/util/Map;)V
.registers 4
const-string v0, "event"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_11
iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager$1;->aie:Lcom/google/android/gms/tagmanager/TagManager;
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/TagManager;->a(Lcom/google/android/gms/tagmanager/TagManager;Ljava/lang/String;)V
:cond_11
return-void
.end method