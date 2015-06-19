.class  Lcom/google/android/gms/maps/model/a/x;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/maps/model/a/v;
.field private a:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/maps/model/a/x;->a:Landroid/os/IBinder;
return-void
.end method
.method public a(III)Lcom/google/android/gms/maps/model/Tile;
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.maps.model.internal.ITileProviderDelegate"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/maps/model/a/x;->a:Landroid/os/IBinder;
const/4 v3, 0x1
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_33
sget-object v0, Lcom/google/android/gms/maps/model/Tile;->CREATOR:Lcom/google/android/gms/maps/model/s;
invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/s;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/Tile;
:try_end_2b
.catchall {:try_start_8 .. :try_end_2b} :catchall_35
move-result-object v0
:goto_2c
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_33
const/4 v0, 0x0
goto :goto_2c
:catchall_35
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/a/x;->a:Landroid/os/IBinder;
return-object v0
.end method