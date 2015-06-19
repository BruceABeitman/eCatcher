.class  Lcom/google/android/gms/tagmanager/cq$2;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic Wq:Lcom/google/android/gms/tagmanager/cq;
.field final synthetic Wr:Lcom/google/android/gms/internal/jd$a;
.method constructor <init>(Lcom/google/android/gms/tagmanager/cq;Lcom/google/android/gms/internal/jd$a;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cq$2;->Wq:Lcom/google/android/gms/tagmanager/cq;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/cq$2;->Wr:Lcom/google/android/gms/internal/jd$a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cq$2;->Wq:Lcom/google/android/gms/tagmanager/cq;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cq$2;->Wr:Lcom/google/android/gms/internal/jd$a;
invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/cq;->c(Lcom/google/android/gms/internal/jd$a;)Z
return-void
.end method