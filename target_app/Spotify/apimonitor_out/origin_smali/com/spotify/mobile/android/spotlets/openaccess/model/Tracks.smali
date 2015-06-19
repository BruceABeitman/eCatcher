.class public Lcom/spotify/mobile/android/spotlets/openaccess/model/Tracks;
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
            "Lcom/spotify/mobile/android/spotlets/openaccess/model/Tracks;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mItems:[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Tracks$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Tracks$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Tracks;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Tracks;->mItems:[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Tracks;->mItems:[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method private constructor <init>([Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;)V
    .registers 2
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "items"
        .end annotation
    .end parameter
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Tracks;->mItems:[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getItems()[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Tracks;->mItems:[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Tracks;->mItems:[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    return-void
.end method
