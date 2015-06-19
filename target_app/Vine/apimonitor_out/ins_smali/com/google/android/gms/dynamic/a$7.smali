.class  Lcom/google/android/gms/dynamic/a$7;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/dynamic/a$a;
.field final synthetic LY:Lcom/google/android/gms/dynamic/a;
.method constructor <init>(Lcom/google/android/gms/dynamic/a;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/dynamic/a$7;->LY:Lcom/google/android/gms/dynamic/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public b(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/dynamic/a$7;->LY:Lcom/google/android/gms/dynamic/a;
invoke-static {v0}, Lcom/google/android/gms/dynamic/a;->b(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/dynamic/LifecycleDelegate;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onResume()V
return-void
.end method
.method public getState()I
.registers 2
const/4 v0, 0x5
return v0
.end method