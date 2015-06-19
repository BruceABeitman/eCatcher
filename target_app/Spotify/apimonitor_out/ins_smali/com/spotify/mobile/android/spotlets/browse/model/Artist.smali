.class public Lcom/spotify/mobile/android/spotlets/browse/model/Artist;
.super Lcom/spotify/mobile/android/spotlets/browse/model/Playable;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/model/Artist$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Artist$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/model/Artist;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p3}, Lcom/spotify/mobile/android/spotlets/browse/model/Playable;-><init>(Ljava/lang/String;)V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Artist;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Artist;->b:Ljava/lang/String;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Artist;->a:Ljava/lang/String;
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Artist;->b:Ljava/lang/String;
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Artist;->a:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Artist;->b:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/model/Artist;->d()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
.end method