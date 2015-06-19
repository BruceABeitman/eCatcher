.class final Lco/vine/android/api/TwitterUser$1;
.super Ljava/lang/Object;
.source "TwitterUser.java"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public createFromParcel(Landroid/os/Parcel;)Lco/vine/android/api/TwitterUser;
.registers 3
new-instance v0, Lco/vine/android/api/TwitterUser;
invoke-direct {v0, p1}, Lco/vine/android/api/TwitterUser;-><init>(Landroid/os/Parcel;)V
return-object v0
.end method
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lco/vine/android/api/TwitterUser$1;->createFromParcel(Landroid/os/Parcel;)Lco/vine/android/api/TwitterUser;
move-result-object v0
return-object v0
.end method
.method public newArray(I)[Lco/vine/android/api/TwitterUser;
.registers 3
new-array v0, p1, [Lco/vine/android/api/TwitterUser;
return-object v0
.end method
.method public bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lco/vine/android/api/TwitterUser$1;->newArray(I)[Lco/vine/android/api/TwitterUser;
move-result-object v0
return-object v0
.end method