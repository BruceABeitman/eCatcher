.class public Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBitrate:I

.field private final mHasDisplay:Z

.field private final mHeight:I

.field private final mLockedRatio:Z

.field private final mMimeType:Ljava/lang/String;

.field private final mScalable:Z

.field private final mUrl:Ljava/lang/String;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v1

    :goto_1e
    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mScalable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_40

    move v0, v1

    :goto_27
    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mLockedRatio:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_42

    :goto_2f
    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mHasDisplay:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mBitrate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mUrl:Ljava/lang/String;

    return-void

    :cond_3e
    move v0, v2

    goto :goto_1e

    :cond_40
    move v0, v2

    goto :goto_27

    :cond_42
    move v1, v2

    goto :goto_2f
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZZILjava/lang/String;)V
    .registers 9
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "mime_type"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "width"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "height"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "scalable"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "locked_ratio"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "has_display"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "bitrate"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "url"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mMimeType:Ljava/lang/String;

    iput p2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mWidth:I

    iput p3, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mHeight:I

    iput-boolean p4, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mScalable:Z

    iput-boolean p5, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mLockedRatio:Z

    iput-boolean p6, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mHasDisplay:Z

    iput p7, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mBitrate:I

    iput-object p8, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
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
    check-cast p1, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mBitrate:I

    iget v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mBitrate:I

    if-eq v2, v3, :cond_1d

    move v0, v1

    goto :goto_4

    :cond_1d
    iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mHasDisplay:Z

    iget-boolean v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mHasDisplay:Z

    if-eq v2, v3, :cond_25

    move v0, v1

    goto :goto_4

    :cond_25
    iget v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mHeight:I

    iget v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mHeight:I

    if-eq v2, v3, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mLockedRatio:Z

    iget-boolean v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mLockedRatio:Z

    if-eq v2, v3, :cond_35

    move v0, v1

    goto :goto_4

    :cond_35
    iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mScalable:Z

    iget-boolean v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mScalable:Z

    if-eq v2, v3, :cond_3d

    move v0, v1

    goto :goto_4

    :cond_3d
    iget v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mWidth:I

    iget v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mWidth:I

    if-eq v2, v3, :cond_45

    move v0, v1

    goto :goto_4

    :cond_45
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mMimeType:Ljava/lang/String;

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mMimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    :cond_53
    move v0, v1

    goto :goto_4

    :cond_55
    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mMimeType:Ljava/lang/String;

    if-nez v2, :cond_53

    :cond_59
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_69

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_67
    move v0, v1

    goto :goto_4

    :cond_69
    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_67
.end method

.method public getBitrate()I
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bitrate"
    .end annotation

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mBitrate:I

    return v0
.end method

.method public getHeight()I
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "height"
    .end annotation

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mHeight:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "mime_type"
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "url"
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "width"
    .end annotation

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mWidth:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mHeight:I

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mScalable:Z

    if-eqz v0, :cond_42

    move v0, v2

    :goto_1d
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mLockedRatio:Z

    if-eqz v0, :cond_44

    move v0, v2

    :goto_25
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mHasDisplay:Z

    if-eqz v3, :cond_46

    :goto_2c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mBitrate:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_3e

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_3e
    add-int/2addr v0, v1

    return v0

    :cond_40
    move v0, v1

    goto :goto_c

    :cond_42
    move v0, v1

    goto :goto_1d

    :cond_44
    move v0, v1

    goto :goto_25

    :cond_46
    move v2, v1

    goto :goto_2c
.end method

.method public isHasDisplay()Z
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "has_display"
    .end annotation

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mHasDisplay:Z

    return v0
.end method

.method public isLockedRatio()Z
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "locked_ratio"
    .end annotation

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mLockedRatio:Z

    return v0
.end method

.method public isScalable()Z
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "scalable"
    .end annotation

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mScalable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CompanionAd{mMimeType=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScalable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mScalable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLockedRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mLockedRatio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mHasDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mBitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mScalable:Z

    if-eqz v0, :cond_36

    move v0, v1

    :goto_16
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mLockedRatio:Z

    if-eqz v0, :cond_38

    move v0, v1

    :goto_1f
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mHasDisplay:Z

    if-eqz v0, :cond_3a

    :goto_27
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mBitrate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_36
    move v0, v2

    goto :goto_16

    :cond_38
    move v0, v2

    goto :goto_1f

    :cond_3a
    move v1, v2

    goto :goto_27
.end method
