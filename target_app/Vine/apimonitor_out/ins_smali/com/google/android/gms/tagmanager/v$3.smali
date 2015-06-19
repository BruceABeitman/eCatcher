.class  Lcom/google/android/gms/tagmanager/v$3;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic afm:Lcom/google/android/gms/tagmanager/v;
.field final synthetic afo:Ljava/lang/String;
.method constructor <init>(Lcom/google/android/gms/tagmanager/v;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/tagmanager/v$3;->afm:Lcom/google/android/gms/tagmanager/v;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/v$3;->afo:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/v$3;->afm:Lcom/google/android/gms/tagmanager/v;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/v$3;->afo:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/v;->a(Lcom/google/android/gms/tagmanager/v;Ljava/lang/String;)V
return-void
.end method