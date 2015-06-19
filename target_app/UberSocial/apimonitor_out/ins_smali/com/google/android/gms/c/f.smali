.class  Lcom/google/android/gms/c/f;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/c/d;
.field private a:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/c/f;->a:Landroid/os/IBinder;
return-void
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/c/f;->a:Landroid/os/IBinder;
return-object v0
.end method