.class final Lcom/admarvel/android/util/e$c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/IInterface;
.field private a:Landroid/os/IBinder;
.method public constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/admarvel/android/util/e$c;->a:Landroid/os/IBinder;
return-void
.end method
.method public a()Ljava/lang/String;
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/util/e$c;->a:Landroid/os/IBinder;
const/4 v3, 0x1
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
:try_end_1e
.catchall {:try_start_8 .. :try_end_1e} :catchall_25
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:catchall_25
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public a(ZLandroid/content/Context;)Z
.registers 10
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_34
move v2, v0
:goto_12
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
iget-object v2, p0, Lcom/admarvel/android/util/e$c;->a:Landroid/os/IBinder;
const/4 v5, 0x2
const/4 v6, 0x0
invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_36
move v2, v0
:goto_26
sget-object v5, Lcom/admarvel/android/util/e;->a:Lcom/admarvel/android/util/e;
if-ne v2, v0, :cond_38
:goto_2a
invoke-static {v5, v0}, Lcom/admarvel/android/util/e;->a(Lcom/admarvel/android/util/e;I)I
:try_end_2d
.catchall {:try_start_a .. :try_end_2d} :catchall_3a
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return v2
:cond_34
move v2, v1
goto :goto_12
:cond_36
move v2, v1
goto :goto_26
:cond_38
move v0, v1
goto :goto_2a
:catchall_3a
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/util/e$c;->a:Landroid/os/IBinder;
return-object v0
.end method