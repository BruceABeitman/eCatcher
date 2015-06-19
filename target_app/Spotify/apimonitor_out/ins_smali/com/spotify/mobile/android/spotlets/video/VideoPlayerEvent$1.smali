.class final Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;->valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;
return-object v0
.end method