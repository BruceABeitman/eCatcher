.class final Lco/vine/android/api/VineComment$1;
.super Ljava/lang/Object;
.source "VineComment.java"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public createFromParcel(Landroid/os/Parcel;)Lco/vine/android/api/VineComment;
.registers 3
new-instance v0, Lco/vine/android/api/VineComment;
invoke-direct {v0, p1}, Lco/vine/android/api/VineComment;-><init>(Landroid/os/Parcel;)V
return-object v0
.end method
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lco/vine/android/api/VineComment$1;->createFromParcel(Landroid/os/Parcel;)Lco/vine/android/api/VineComment;
move-result-object v0
return-object v0
.end method
.method public newArray(I)[Lco/vine/android/api/VineComment;
.registers 3
new-array v0, p1, [Lco/vine/android/api/VineComment;
return-object v0
.end method
.method public bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lco/vine/android/api/VineComment$1;->newArray(I)[Lco/vine/android/api/VineComment;
move-result-object v0
return-object v0
.end method