.class final Lcom/spotify/mobile/android/spotlets/browse/model/Artist$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 6
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
new-instance v3, Lcom/spotify/mobile/android/spotlets/browse/model/Artist;
invoke-direct {v3, v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/model/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-object v3
.end method
.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/spotify/mobile/android/spotlets/browse/model/Artist;
return-object v0
.end method