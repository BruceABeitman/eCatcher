.class public Lcom/spotify/mobile/android/spotlets/openaccess/model/TopTracks;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private final mTracks:[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/TopTracks$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/model/TopTracks$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/TopTracks;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method protected constructor <init>(Landroid/os/Parcel;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/TopTracks;->mTracks:[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/TopTracks;->mTracks:[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;
sget-object v1, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
return-void
.end method
.method public constructor <init>([Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;)V
.registers 2
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/TopTracks;->mTracks:[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getTracks()[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/TopTracks;->mTracks:[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/TopTracks;->mTracks:[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V
return-void
.end method