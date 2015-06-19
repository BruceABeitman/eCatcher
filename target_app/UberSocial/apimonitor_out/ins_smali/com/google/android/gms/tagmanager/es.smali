.class  Lcom/google/android/gms/tagmanager/es;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/em;
.field final synthetic a:Lcom/google/android/gms/tagmanager/eo;
.method private constructor <init>(Lcom/google/android/gms/tagmanager/eo;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/es;->a:Lcom/google/android/gms/tagmanager/eo;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/eo;Lcom/google/android/gms/tagmanager/eo$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/es;-><init>(Lcom/google/android/gms/tagmanager/eo;)V
return-void
.end method
.method public a()V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/es;->a:Lcom/google/android/gms/tagmanager/eo;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/eo;->g(Lcom/google/android/gms/tagmanager/eo;)Lcom/google/android/gms/tagmanager/cf;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/tagmanager/cf;->a()Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/google/android/gms/tagmanager/es;->a:Lcom/google/android/gms/tagmanager/eo;
const-wide/16 v1, 0x0
invoke-static {v0, v1, v2}, Lcom/google/android/gms/tagmanager/eo;->a(Lcom/google/android/gms/tagmanager/eo;J)V
:cond_13
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/es;->a:Lcom/google/android/gms/tagmanager/eo;
invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/eo;->a(Ljava/lang/String;)V
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/es;->a:Lcom/google/android/gms/tagmanager/eo;
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/eo;->g()Ljava/lang/String;
move-result-object v0
return-object v0
.end method