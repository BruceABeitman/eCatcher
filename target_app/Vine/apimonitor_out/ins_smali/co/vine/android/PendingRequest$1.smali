.class final Lco/vine/android/PendingRequest$1;
.super Ljava/lang/Object;
.source "PendingRequest.java"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public createFromParcel(Landroid/os/Parcel;)Lco/vine/android/PendingRequest;
.registers 3
new-instance v0, Lco/vine/android/PendingRequest;
invoke-direct {v0, p1}, Lco/vine/android/PendingRequest;-><init>(Landroid/os/Parcel;)V
return-object v0
.end method
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lco/vine/android/PendingRequest$1;->createFromParcel(Landroid/os/Parcel;)Lco/vine/android/PendingRequest;
move-result-object v0
return-object v0
.end method
.method public newArray(I)[Lco/vine/android/PendingRequest;
.registers 3
new-array v0, p1, [Lco/vine/android/PendingRequest;
return-object v0
.end method
.method public bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lco/vine/android/PendingRequest$1;->newArray(I)[Lco/vine/android/PendingRequest;
move-result-object v0
return-object v0
.end method