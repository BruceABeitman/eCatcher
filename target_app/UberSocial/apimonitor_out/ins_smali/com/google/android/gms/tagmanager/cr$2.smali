.class  Lcom/google/android/gms/tagmanager/cr$2;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/google/android/gms/internal/rr;
.field final synthetic b:Lcom/google/android/gms/tagmanager/cr;
.method constructor <init>(Lcom/google/android/gms/tagmanager/cr;Lcom/google/android/gms/internal/rr;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cr$2;->b:Lcom/google/android/gms/tagmanager/cr;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/cr$2;->a:Lcom/google/android/gms/internal/rr;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cr$2;->b:Lcom/google/android/gms/tagmanager/cr;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cr$2;->a:Lcom/google/android/gms/internal/rr;
invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/cr;->b(Lcom/google/android/gms/internal/rr;)Z
return-void
.end method