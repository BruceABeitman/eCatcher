.class  Lcom/google/android/a/a/j;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/google/android/a/a/h;
.field private a:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/a/a/j;->a:Landroid/os/IBinder;
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
const-string v0, "com.android.vending.licensing.ILicensingService"
return-object v0
.end method
.method public a(JLjava/lang/String;Lcom/google/android/a/a/e;)V
.registers 10
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_5
const-string v2, "com.android.vending.licensing.ILicensingService"
invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p4, :cond_16
invoke-interface {p4}, Lcom/google/android/a/a/e;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_16
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/a/a/j;->a:Landroid/os/IBinder;
const/4 v2, 0x1
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_21
.catchall {:try_start_5 .. :try_end_21} :catchall_25
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_25
move-exception v0
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/a/a/j;->a:Landroid/os/IBinder;
return-object v0
.end method