.class  Lcom/google/android/gms/tagmanager/fc$3;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/google/android/gms/tagmanager/fc;
.method constructor <init>(Lcom/google/android/gms/tagmanager/fc;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/tagmanager/fc$3;->b:Lcom/google/android/gms/tagmanager/fc;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/fc$3;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/fc$3;->b:Lcom/google/android/gms/tagmanager/fc;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/fc$3;->a:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/fc;->a(Lcom/google/android/gms/tagmanager/fc;Ljava/lang/String;)V
return-void
.end method