.class final Lcom/spotify/mobile/android/spotlets/discover/model/Story$1;
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
new-instance v0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->a(J)V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->b(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->b(I)V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->l(Ljava/lang/String;)Lcom/spotify/mobile/android/util/SpotifyLink;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->a(Lcom/spotify/mobile/android/util/SpotifyLink;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->c(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->e(Ljava/lang/String;)Z
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->f(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->j()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->a(Ljava/lang/String;)Ljava/util/TreeMap;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->a(Ljava/util/TreeMap;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->d(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->l(Ljava/lang/String;)Lcom/spotify/mobile/android/util/SpotifyLink;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->b(Lcom/spotify/mobile/android/util/SpotifyLink;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->i(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->l(Ljava/lang/String;)Lcom/spotify/mobile/android/util/SpotifyLink;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->c(Lcom/spotify/mobile/android/util/SpotifyLink;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->a(I)V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->h(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->j(Ljava/lang/String;)V
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->a(Ljava/util/List;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->g(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->k(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->d(I)V
return-object v0
.end method
.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/spotify/mobile/android/spotlets/discover/model/Story;
return-object v0
.end method