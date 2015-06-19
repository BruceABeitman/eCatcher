.class  Lcom/google/android/gms/internal/ax;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/av;
.field private a:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/ax;->a:Landroid/os/IBinder;
return-void
.end method
.method public a()Lcom/google/android/gms/c/d;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/ax;->a:Landroid/os/IBinder;
const/4 v3, 0x2
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;
:try_end_1e
.catchall {:try_start_8 .. :try_end_1e} :catchall_26
move-result-object v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:catchall_26
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/z;Ljava/lang/String;Lcom/google/android/gms/internal/ay;)V
.registers 11
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_48
invoke-interface {p1}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p2, :cond_4a
const/4 v1, 0x1
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
const/4 v1, 0x0
invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/ab;->writeToParcel(Landroid/os/Parcel;I)V
:goto_21
if-eqz p3, :cond_57
const/4 v1, 0x1
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
const/4 v1, 0x0
invoke-virtual {p3, v2, v1}, Lcom/google/android/gms/internal/z;->writeToParcel(Landroid/os/Parcel;I)V
:goto_2b
invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p5, :cond_34
invoke-interface {p5}, Lcom/google/android/gms/internal/ay;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_34
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/internal/ax;->a:Landroid/os/IBinder;
const/4 v1, 0x1
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_41
.catchall {:try_start_9 .. :try_end_41} :catchall_4f
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_48
move-object v1, v0
goto :goto_14
:cond_4a
const/4 v1, 0x0
:try_start_4b
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
:try_end_4e
.catchall {:try_start_4b .. :try_end_4e} :catchall_4f
goto :goto_21
:catchall_4f
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
:cond_57
const/4 v1, 0x0
:try_start_58
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
:try_end_5b
.catchall {:try_start_58 .. :try_end_5b} :catchall_4f
goto :goto_2b
.end method
.method public a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/z;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ay;)V
.registers 12
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_4b
invoke-interface {p1}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p2, :cond_4d
const/4 v1, 0x1
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
const/4 v1, 0x0
invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/ab;->writeToParcel(Landroid/os/Parcel;I)V
:goto_21
if-eqz p3, :cond_5a
const/4 v1, 0x1
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
const/4 v1, 0x0
invoke-virtual {p3, v2, v1}, Lcom/google/android/gms/internal/z;->writeToParcel(Landroid/os/Parcel;I)V
:goto_2b
invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p6, :cond_37
invoke-interface {p6}, Lcom/google/android/gms/internal/ay;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_37
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/internal/ax;->a:Landroid/os/IBinder;
const/4 v1, 0x6
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_44
.catchall {:try_start_9 .. :try_end_44} :catchall_52
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_4b
move-object v1, v0
goto :goto_14
:cond_4d
const/4 v1, 0x0
:try_start_4e
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
:try_end_51
.catchall {:try_start_4e .. :try_end_51} :catchall_52
goto :goto_21
:catchall_52
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
:cond_5a
const/4 v1, 0x0
:try_start_5b
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
:try_end_5e
.catchall {:try_start_5b .. :try_end_5e} :catchall_52
goto :goto_2b
.end method
.method public a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/internal/z;Ljava/lang/String;Lcom/google/android/gms/internal/ay;)V
.registers 10
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_3e
invoke-interface {p1}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p2, :cond_40
const/4 v1, 0x1
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
const/4 v1, 0x0
invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/z;->writeToParcel(Landroid/os/Parcel;I)V
:goto_21
invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p4, :cond_2a
invoke-interface {p4}, Lcom/google/android/gms/internal/ay;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_2a
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/internal/ax;->a:Landroid/os/IBinder;
const/4 v1, 0x3
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_37
.catchall {:try_start_9 .. :try_end_37} :catchall_45
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_3e
move-object v1, v0
goto :goto_14
:cond_40
const/4 v1, 0x0
:try_start_41
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
:try_end_44
.catchall {:try_start_41 .. :try_end_44} :catchall_45
goto :goto_21
:catchall_45
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/internal/z;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ay;)V
.registers 11
const/4 v0, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
:try_start_9
const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_41
invoke-interface {p1}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;
move-result-object v1
:goto_14
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
if-eqz p2, :cond_43
const/4 v1, 0x1
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
const/4 v1, 0x0
invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/z;->writeToParcel(Landroid/os/Parcel;I)V
:goto_21
invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p5, :cond_2d
invoke-interface {p5}, Lcom/google/android/gms/internal/ay;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_2d
invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/internal/ax;->a:Landroid/os/IBinder;
const/4 v1, 0x7
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
:try_end_3a
.catchall {:try_start_9 .. :try_end_3a} :catchall_48
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
return-void
:cond_41
move-object v1, v0
goto :goto_14
:cond_43
const/4 v1, 0x0
:try_start_44
invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
:try_end_47
.catchall {:try_start_44 .. :try_end_47} :catchall_48
goto :goto_21
:catchall_48
move-exception v0
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ax;->a:Landroid/os/IBinder;
return-object v0
.end method
.method public b()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/ax;->a:Landroid/os/IBinder;
const/4 v3, 0x4
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_17
.catchall {:try_start_8 .. :try_end_17} :catchall_1e
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1e
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public c()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/ax;->a:Landroid/os/IBinder;
const/4 v3, 0x5
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_17
.catchall {:try_start_8 .. :try_end_17} :catchall_1e
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1e
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method