.class public abstract Lcom/google/android/a/a/f;
.super Landroid/os/Binder;
.source "SourceFile"
.implements Lcom/google/android/a/a/e;
.field static final a:I = 0x1
.field private static final b:Ljava/lang/String; = "com.android.vending.licensing.ILicenseResultListener"
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.android.vending.licensing.ILicenseResultListener"
invoke-virtual {p0, p0, v0}, Lcom/google/android/a/a/f;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static a(Landroid/os/IBinder;)Lcom/google/android/a/a/e;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.android.vending.licensing.ILicenseResultListener"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/a/a/e;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/a/a/e;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/a/a/g;
invoke-direct {v0, p0}, Lcom/google/android/a/a/g;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 9
const/4 v0, 0x1
sparse-switch p1, :sswitch_data_24
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_8
return v0
:sswitch_9
const-string v1, "com.android.vending.licensing.ILicenseResultListener"
invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_8
:sswitch_f
const-string v1, "com.android.vending.licensing.ILicenseResultListener"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/a/a/f;->a(ILjava/lang/String;Ljava/lang/String;)V
goto :goto_8
:sswitch_data_24
.sparse-switch
0x1 -> :sswitch_f
0x5f4e5446 -> :sswitch_9
.end sparse-switch
.end method