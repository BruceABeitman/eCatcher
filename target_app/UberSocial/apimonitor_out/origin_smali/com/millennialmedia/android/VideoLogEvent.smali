.class Lcom/millennialmedia/android/VideoLogEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field static final a:J = 0xb0a600850e2f008L

.field private static final d:Ljava/lang/String;


# instance fields
.field b:J

.field c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/millennialmedia/android/VideoLogEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/VideoLogEvent;->d:Ljava/lang/String;

    new-instance v0, Lcom/millennialmedia/android/VideoLogEvent$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/VideoLogEvent$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/VideoLogEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->b:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->c:[Ljava/lang/String;

    iget-object v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->c:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    sget-object v1, Lcom/millennialmedia/android/VideoLogEvent;->d:Ljava/lang/String;

    const-string v2, "VideoLogEvent parcel creation exception: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoLogEvent;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string v1, "time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/millennialmedia/android/VideoLogEvent;->b:J

    const-string v1, "urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoLogEvent;->c:[Ljava/lang/String;

    :goto_1f
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/millennialmedia/android/VideoLogEvent;->c:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_30
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->c:[Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 6

    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->b:J

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, v2, :cond_20

    iget-object v3, p0, Lcom/millennialmedia/android/VideoLogEvent;->c:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_20
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 6

    iget-wide v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->b:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    iget-object v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->c:[Ljava/lang/String;

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget-object v1, p0, Lcom/millennialmedia/android/VideoLogEvent;->c:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_19

    aget-object v3, v1, v0

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_19
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->c:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->c:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
