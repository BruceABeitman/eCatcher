.class final Lcom/spotify/mobile/android/util/ui/ScrollPosition$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 5
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v1
new-instance v2, Lcom/spotify/mobile/android/util/ui/ScrollPosition;
invoke-direct {v2, v0, v1}, Lcom/spotify/mobile/android/util/ui/ScrollPosition;-><init>(II)V
return-object v2
.end method
.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/spotify/mobile/android/util/ui/ScrollPosition;
return-object v0
.end method