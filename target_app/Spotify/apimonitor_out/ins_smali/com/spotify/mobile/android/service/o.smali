.class final Lcom/spotify/mobile/android/service/o;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/m;
.field private a:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/service/o;->a:Landroid/os/IBinder;
return-void
.end method
.method public final a()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_4
const-string v0, "com.spotify.mobile.android.service.IServiceShutdownReceiver"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/o;->a:Landroid/os/IBinder;
const/4 v2, 0x1
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_11
.catchall {:try_start_4 .. :try_end_11} :catchall_15
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_15
move-exception v0
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public final asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/o;->a:Landroid/os/IBinder;
return-object v0
.end method