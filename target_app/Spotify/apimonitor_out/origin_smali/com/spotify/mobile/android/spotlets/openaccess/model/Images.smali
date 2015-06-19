.class public Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLarge:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

.field private final mMedium:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

.field private final mSmall:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

.field private final mXLarge:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mSmall:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    const-class v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mMedium:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    const-class v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mLarge:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    const-class v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mXLarge:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    return-void
.end method

.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;)V
    .registers 5
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "small"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "medium"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "large"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "xlarge"
        .end annotation
    .end parameter
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mSmall:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mMedium:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mLarge:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mXLarge:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    return-void
.end method


# virtual methods
.method public containsImage()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mSmall:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mMedium:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mLarge:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mXLarge:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getLargestImage()Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mXLarge:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mXLarge:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mLarge:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mLarge:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mMedium:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mMedium:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    goto :goto_6

    :cond_15
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mSmall:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mSmall:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mMedium:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mLarge:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Images;->mXLarge:Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
