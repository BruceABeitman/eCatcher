.class public Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;
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
            "Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mImage:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mParent:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

.field private mType:Ljava/lang/String;

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mImage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mType:Ljava/lang/String;

    const-class v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mParent:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;)V
    .registers 6
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "name"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "image"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "uri"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "type"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "parent"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mImage:Ljava/lang/String;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mUri:Ljava/lang/String;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mType:Ljava/lang/String;

    iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mParent:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

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
    instance-of v2, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mImage:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mImage:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mImage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_1b
    move v0, v1

    goto :goto_4

    :cond_1d
    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mImage:Ljava/lang/String;

    if-nez v2, :cond_1b

    :cond_21
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mName:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    :cond_2f
    move v0, v1

    goto :goto_4

    :cond_31
    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mName:Ljava/lang/String;

    if-nez v2, :cond_2f

    :cond_35
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mParent:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mParent:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mParent:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    :cond_43
    move v0, v1

    goto :goto_4

    :cond_45
    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mParent:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    if-nez v2, :cond_43

    :cond_49
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mType:Ljava/lang/String;

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mType:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    :cond_57
    move v0, v1

    goto :goto_4

    :cond_59
    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mType:Ljava/lang/String;

    if-nez v2, :cond_57

    :cond_5d
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mUri:Ljava/lang/String;

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_6b
    move v0, v1

    goto :goto_4

    :cond_6d
    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mUri:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_6b
.end method

.method public getImage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mImage:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mParent:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    return-object v0
.end method

.method public getSubName()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getParent()Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mType:Ljava/lang/String;

    if-eqz v2, :cond_33

    :try_start_9
    sget-object v2, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$2;->a:[I

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mType:Ljava/lang/String;

    invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;->valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_36

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getParent()Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_24
    :goto_24
    return-object v0

    :pswitch_25
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getParent()Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getName()Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_30} :catch_32

    move-result-object v0

    goto :goto_24

    :catch_32
    move-exception v0

    :cond_33
    const-string v0, ""

    goto :goto_24

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_25
    .end packed-switch
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mName:Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mImage:Ljava/lang/String;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mImage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mType:Ljava/lang/String;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mParent:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    if-eqz v2, :cond_3e

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mParent:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->hashCode()I

    move-result v1

    :cond_3e
    add-int/2addr v0, v1

    return v0

    :cond_40
    move v0, v1

    goto :goto_b

    :cond_42
    move v0, v1

    goto :goto_17

    :cond_44
    move v0, v1

    goto :goto_24

    :cond_46
    move v0, v1

    goto :goto_31
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->mParent:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
