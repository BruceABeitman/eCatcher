.class  Lcom/google/android/gms/tagmanager/cy$3;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic Xq:Lcom/google/android/gms/tagmanager/cy;
.method constructor <init>(Lcom/google/android/gms/tagmanager/cy;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cy$3;->Xq:Lcom/google/android/gms/tagmanager/cy;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cy$3;->Xq:Lcom/google/android/gms/tagmanager/cy;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/cy;->e(Lcom/google/android/gms/tagmanager/cy;)Lcom/google/android/gms/tagmanager/at;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/tagmanager/at;->bp()V
return-void
.end method