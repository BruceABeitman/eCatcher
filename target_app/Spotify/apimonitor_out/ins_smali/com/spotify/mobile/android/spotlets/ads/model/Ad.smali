.class public Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private final mAdType:I
.field private final mAdvertiser:Ljava/lang/String;
.field private final mCaption:Ljava/lang/String;
.field private final mClickTrackingUrl:Ljava/lang/String;
.field private final mClickUrl:Ljava/lang/String;
.field private final mCompanionAd:Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;
.field private final mDuration:J
.field private final mFeatureData:Ljava/util/HashMap;
.field private final mId:Ljava/lang/String;
.field private final mNonExplicit:Z
.field private final mTestAd:Z
.field private final mTitle:Ljava/lang/String;
.field private final mVideos:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/ads/model/Ad$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mId:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mAdvertiser:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mTitle:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickUrl:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickTrackingUrl:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mDuration:J
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCaption:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mAdType:I
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-eqz v0, :cond_73
move v0, v1
:goto_3c
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mTestAd:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-eqz v0, :cond_75
:goto_44
iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mNonExplicit:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mFeatureData:Ljava/util/HashMap;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCompanionAd:Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mVideos:Ljava/util/List;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mVideos:Ljava/util/List;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
return-void
:cond_73
move v0, v2
goto :goto_3c
:cond_75
move v1, v2
goto :goto_44
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/spotify/mobile/android/spotlets/ads/model/Ad$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IZZLjava/util/HashMap;Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;Ljava/util/List;)V
.registers 15
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mId:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mAdvertiser:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mTitle:Ljava/lang/String;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickUrl:Ljava/lang/String;
iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickTrackingUrl:Ljava/lang/String;
iput-wide p6, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mDuration:J
iput-object p8, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCaption:Ljava/lang/String;
iput p9, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mAdType:I
iput-boolean p10, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mTestAd:Z
iput-boolean p11, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mNonExplicit:Z
iput-object p12, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mFeatureData:Ljava/util/HashMap;
iput-object p13, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCompanionAd:Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;
iput-object p14, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mVideos:Ljava/util/List;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_13
:cond_11
move v0, v1
goto :goto_4
:cond_13
check-cast p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
iget v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mAdType:I
iget v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mAdType:I
if-eq v2, v3, :cond_1d
move v0, v1
goto :goto_4
:cond_1d
iget-wide v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mDuration:J
iget-wide v4, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mDuration:J
cmp-long v2, v2, v4
if-eqz v2, :cond_27
move v0, v1
goto :goto_4
:cond_27
iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mNonExplicit:Z
iget-boolean v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mNonExplicit:Z
if-eq v2, v3, :cond_2f
move v0, v1
goto :goto_4
:cond_2f
iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mTestAd:Z
iget-boolean v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mTestAd:Z
if-eq v2, v3, :cond_37
move v0, v1
goto :goto_4
:cond_37
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mAdvertiser:Ljava/lang/String;
if-eqz v2, :cond_47
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mAdvertiser:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mAdvertiser:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4b
:cond_45
move v0, v1
goto :goto_4
:cond_47
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mAdvertiser:Ljava/lang/String;
if-nez v2, :cond_45
:cond_4b
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCaption:Ljava/lang/String;
if-eqz v2, :cond_5b
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCaption:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCaption:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_5f
:cond_59
move v0, v1
goto :goto_4
:cond_5b
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCaption:Ljava/lang/String;
if-nez v2, :cond_59
:cond_5f
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickTrackingUrl:Ljava/lang/String;
if-eqz v2, :cond_6f
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickTrackingUrl:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickTrackingUrl:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_73
:cond_6d
move v0, v1
goto :goto_4
:cond_6f
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickTrackingUrl:Ljava/lang/String;
if-nez v2, :cond_6d
:cond_73
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickUrl:Ljava/lang/String;
if-eqz v2, :cond_83
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickUrl:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickUrl:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_87
:cond_81
move v0, v1
goto :goto_4
:cond_83
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickUrl:Ljava/lang/String;
if-nez v2, :cond_81
:cond_87
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCompanionAd:Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;
if-eqz v2, :cond_98
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCompanionAd:Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCompanionAd:Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_9c
:cond_95
move v0, v1
goto/16 :goto_4
:cond_98
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCompanionAd:Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;
if-nez v2, :cond_95
:cond_9c
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mFeatureData:Ljava/util/HashMap;
if-eqz v2, :cond_ad
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mFeatureData:Ljava/util/HashMap;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mFeatureData:Ljava/util/HashMap;
invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b1
:cond_aa
move v0, v1
goto/16 :goto_4
:cond_ad
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mFeatureData:Ljava/util/HashMap;
if-nez v2, :cond_aa
:cond_b1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mId:Ljava/lang/String;
if-eqz v2, :cond_c2
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mId:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mId:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_c6
:cond_bf
move v0, v1
goto/16 :goto_4
:cond_c2
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mId:Ljava/lang/String;
if-nez v2, :cond_bf
:cond_c6
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mTitle:Ljava/lang/String;
if-eqz v2, :cond_d7
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mTitle:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mTitle:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_db
:cond_d4
move v0, v1
goto/16 :goto_4
:cond_d7
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mTitle:Ljava/lang/String;
if-nez v2, :cond_d4
:cond_db
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mVideos:Ljava/util/List;
if-eqz v2, :cond_ec
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mVideos:Ljava/util/List;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mVideos:Ljava/util/List;
invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:goto_e9
move v0, v1
goto/16 :goto_4
:cond_ec
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mVideos:Ljava/util/List;
if-eqz v2, :cond_4
goto :goto_e9
.end method
.method public getAdType()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mAdType:I
return v0
.end method
.method public getAdvertiser()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mAdvertiser:Ljava/lang/String;
return-object v0
.end method
.method public getCaption()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCaption:Ljava/lang/String;
return-object v0
.end method
.method public getClickTrackingUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickTrackingUrl:Ljava/lang/String;
return-object v0
.end method
.method public getClickUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickUrl:Ljava/lang/String;
return-object v0
.end method
.method public getCompanionAd()Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCompanionAd:Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;
return-object v0
.end method
.method public getDuration()J
.registers 3
iget-wide v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mDuration:J
return-wide v0
.end method
.method public getFeatureData()Ljava/util/HashMap;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mFeatureData:Ljava/util/HashMap;
return-object v0
.end method
.method public getId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mId:Ljava/lang/String;
return-object v0
.end method
.method public getTitle()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mTitle:Ljava/lang/String;
return-object v0
.end method
.method public getVideos()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mVideos:Ljava/util/List;
return-object v0
.end method
.method public hashCode()I
.registers 9
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mId:Ljava/lang/String;
if-eqz v0, :cond_95
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mId:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_c
mul-int/lit8 v3, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mAdvertiser:Ljava/lang/String;
if-eqz v0, :cond_98
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mAdvertiser:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_18
add-int/2addr v0, v3
mul-int/lit8 v3, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mTitle:Ljava/lang/String;
if-eqz v0, :cond_9b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mTitle:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_25
add-int/2addr v0, v3
mul-int/lit8 v3, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickUrl:Ljava/lang/String;
if-eqz v0, :cond_9d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickUrl:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_32
add-int/2addr v0, v3
mul-int/lit8 v3, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickTrackingUrl:Ljava/lang/String;
if-eqz v0, :cond_9f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickTrackingUrl:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_3f
add-int/2addr v0, v3
mul-int/lit8 v0, v0, 0x1f
iget-wide v3, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mDuration:J
iget-wide v5, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mDuration:J
const/16 v7, 0x20
ushr-long/2addr v5, v7
xor-long/2addr v3, v5
long-to-int v3, v3
add-int/2addr v0, v3
mul-int/lit8 v3, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCaption:Ljava/lang/String;
if-eqz v0, :cond_a1
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCaption:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_58
add-int/2addr v0, v3
mul-int/lit8 v0, v0, 0x1f
iget v3, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mAdType:I
add-int/2addr v0, v3
mul-int/lit8 v3, v0, 0x1f
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mTestAd:Z
if-eqz v0, :cond_a3
move v0, v2
:goto_65
add-int/2addr v0, v3
mul-int/lit8 v0, v0, 0x1f
iget-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mNonExplicit:Z
if-eqz v3, :cond_a5
:goto_6c
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mFeatureData:Ljava/util/HashMap;
if-eqz v0, :cond_a7
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mFeatureData:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I
move-result v0
:goto_79
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCompanionAd:Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;
if-eqz v0, :cond_a9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCompanionAd:Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->hashCode()I
move-result v0
:goto_86
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mVideos:Ljava/util/List;
if-eqz v2, :cond_93
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mVideos:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->hashCode()I
move-result v1
:cond_93
add-int/2addr v0, v1
return v0
:cond_95
move v0, v1
goto/16 :goto_c
:cond_98
move v0, v1
goto/16 :goto_18
:cond_9b
move v0, v1
goto :goto_25
:cond_9d
move v0, v1
goto :goto_32
:cond_9f
move v0, v1
goto :goto_3f
:cond_a1
move v0, v1
goto :goto_58
:cond_a3
move v0, v1
goto :goto_65
:cond_a5
move v2, v1
goto :goto_6c
:cond_a7
move v0, v1
goto :goto_79
:cond_a9
move v0, v1
goto :goto_86
.end method
.method public isNonExplicit()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mNonExplicit:Z
return v0
.end method
.method public isTestAd()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mTestAd:Z
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 5
const/16 v3, 0x27
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Ad{mId=\'"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mId:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mAdvertiser=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mAdvertiser:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mTitle=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mTitle:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mClickUrl=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickUrl:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mClickTrackingUrl=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickTrackingUrl:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mDuration="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mDuration:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mCaption=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCaption:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mAdType="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mAdType:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mTestAd="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mTestAd:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mNonExplicit="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mNonExplicit:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mFeatureData="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mFeatureData:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mCompanionAd="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCompanionAd:Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mVideos="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mVideos:Ljava/util/List;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mId:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mAdvertiser:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mTitle:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mClickTrackingUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-wide v3, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mDuration:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCaption:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mAdType:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mTestAd:Z
if-eqz v0, :cond_4b
move v0, v1
:goto_2f
int-to-byte v0, v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mNonExplicit:Z
if-eqz v0, :cond_4d
:goto_37
int-to-byte v0, v1
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mFeatureData:Ljava/util/HashMap;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mCompanionAd:Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;
invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->mVideos:Ljava/util/List;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V
return-void
:cond_4b
move v0, v2
goto :goto_2f
:cond_4d
move v1, v2
goto :goto_37
.end method