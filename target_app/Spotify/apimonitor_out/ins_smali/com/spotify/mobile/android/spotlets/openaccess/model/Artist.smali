.class public Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private final mId:Ljava/lang/String;
.field private final mImages:Ljava/util/List;
.field private final mName:Ljava/lang/String;
.field private final mType:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method protected constructor <init>(Landroid/os/Parcel;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->mId:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->mName:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->mType:Ljava/lang/String;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->mImages:Ljava/util/List;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->mImages:Ljava/util/List;
sget-object v1, Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
return-void
.end method
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.registers 5
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->mId:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->mName:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->mType:Ljava/lang/String;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->mImages:Ljava/util/List;
return-void
.end method
.method public containsImage()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->mImages:Ljava/util/List;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->mImages:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->mId:Ljava/lang/String;
return-object v0
.end method
.method public getLargestImage()Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->mImages:Ljava/util/List;
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->mImages:Ljava/util/List;
const-string v1, "Images array may not be empty"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/bt;->a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/Iterable;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->mImages:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->mName:Ljava/lang/String;
return-object v0
.end method
.method public getType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->mType:Ljava/lang/String;
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->mId:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->mName:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->mType:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->mImages:Ljava/util/List;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V
return-void
.end method