.class  Lcom/google/android/gms/tagmanager/o$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/n$a;
.field final synthetic aeP:Lcom/google/android/gms/tagmanager/o;
.method constructor <init>(Lcom/google/android/gms/tagmanager/o;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/o$1;->aeP:Lcom/google/android/gms/tagmanager/o;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public bJ(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$1;->aeP:Lcom/google/android/gms/tagmanager/o;
invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/o;->bJ(Ljava/lang/String;)V
return-void
.end method
.method public lj()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$1;->aeP:Lcom/google/android/gms/tagmanager/o;
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/o;->lj()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public ll()V
.registers 2
const-string v0, "Refresh ignored: container loaded as default only."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V
return-void
.end method