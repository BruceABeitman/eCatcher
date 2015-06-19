.class final Lcom/google/android/youtube/player/internal/i$a$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/youtube/player/internal/i;
.field private a:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/youtube/player/internal/i$a$a;->a:Landroid/os/IBinder;
return-void
.end method
.method public final a(Lcom/google/android/youtube/player/internal/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.registers 12
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.youtube.player.internal.IServiceBroker"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3d
invoke-interface {p1}, Lcom/google/android/youtube/player/internal/c;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_13
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p6, :cond_3f
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p6, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_2c
iget-object v0, p0, Lcom/google/android/youtube/player/internal/i$a$a;->a:Landroid/os/IBinder;
const/4 v3, 0x1
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_36
.catchall {:try_start_8 .. :try_end_36} :catchall_44
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3d
const/4 v0, 0x0
goto :goto_13
:cond_3f
const/4 v0, 0x0
:try_start_40
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_43
.catchall {:try_start_40 .. :try_end_43} :catchall_44
goto :goto_2c
:catchall_44
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public final asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/youtube/player/internal/i$a$a;->a:Landroid/os/IBinder;
return-object v0
.end method