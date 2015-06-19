.class public Lcom/ubermedia/model/twitter/UrlEntity;
.super Lcom/ubermedia/model/twitter/TweetEntity;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static f:[Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "youtube.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "facebook.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "instagr.am"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ubermedia/model/twitter/UrlEntity;->f:[Ljava/lang/String;

    new-instance v0, Lcom/ubermedia/model/twitter/UrlEntity$1;

    invoke-direct {v0}, Lcom/ubermedia/model/twitter/UrlEntity$1;-><init>()V

    sput-object v0, Lcom/ubermedia/model/twitter/UrlEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ubermedia/model/twitter/TweetEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ubermedia/model/twitter/TweetEntity;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubermedia/model/twitter/UrlEntity;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubermedia/model/twitter/UrlEntity;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubermedia/model/twitter/UrlEntity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    invoke-direct {p0, p4, p5}, Lcom/ubermedia/model/twitter/TweetEntity;-><init>(II)V

    iput-object p1, p0, Lcom/ubermedia/model/twitter/UrlEntity;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/ubermedia/model/twitter/UrlEntity;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/ubermedia/model/twitter/UrlEntity;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/ubermedia/model/twitter/UrlEntity;
    .registers 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ubermedia/model/twitter/UrlEntity;->a(Lorg/json/JSONObject;)Lcom/ubermedia/model/twitter/UrlEntity;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v0

    :goto_9
    return-object v0

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/ubermedia/model/twitter/UrlEntity;
    .registers 4

    :try_start_0
    new-instance v0, Lcom/ubermedia/model/twitter/UrlEntity;

    invoke-direct {v0}, Lcom/ubermedia/model/twitter/UrlEntity;-><init>()V

    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ubermedia/model/twitter/UrlEntity;->c:Ljava/lang/String;

    const-string v1, "display_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ubermedia/model/twitter/UrlEntity;->d:Ljava/lang/String;

    const-string v1, "expanded_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ubermedia/model/twitter/UrlEntity;->e:Ljava/lang/String;

    const-string v1, "indices"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/ubermedia/model/twitter/UrlEntity;->a:I

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/ubermedia/model/twitter/UrlEntity;->b:I
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_31} :catch_32

    :goto_31
    return-object v0

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_31
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/ubermedia/model/twitter/UrlEntity;
    .registers 4

    new-instance v0, Lcom/ubermedia/model/twitter/UrlEntity;

    invoke-direct {v0}, Lcom/ubermedia/model/twitter/UrlEntity;-><init>()V

    const-string v1, "expanded_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ubermedia/model/twitter/UrlEntity;->e:Ljava/lang/String;

    iget-object v1, v0, Lcom/ubermedia/model/twitter/UrlEntity;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/ubermedia/model/twitter/UrlEntity;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "expanded_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ubermedia/model/twitter/UrlEntity;->c:Ljava/lang/String;

    :goto_1d
    const-string v1, "display_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ubermedia/model/twitter/UrlEntity;->d:Ljava/lang/String;

    const-string v1, "indices"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/ubermedia/model/twitter/UrlEntity;->a:I

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/ubermedia/model/twitter/UrlEntity;->b:I

    return-object v0

    :cond_3a
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ubermedia/model/twitter/UrlEntity;->c:Ljava/lang/String;

    goto :goto_1d
.end method

.method private static e(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    sget-object v2, Lcom/ubermedia/model/twitter/UrlEntity;->f:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_10

    aget-object v4, v2, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v0, 0x1

    :cond_10
    return v0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "url"

    iget-object v2, p0, Lcom/ubermedia/model/twitter/UrlEntity;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "display_url"

    iget-object v2, p0, Lcom/ubermedia/model/twitter/UrlEntity;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "expanded_url"

    iget-object v2, p0, Lcom/ubermedia/model/twitter/UrlEntity;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget v2, p0, Lcom/ubermedia/model/twitter/UrlEntity;->a:I

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget v2, p0, Lcom/ubermedia/model/twitter/UrlEntity;->b:I

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const-string v2, "indices"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2e} :catch_2f

    :goto_2e
    return-object v1

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2e
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/ubermedia/model/twitter/UrlEntity;->a:I

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/ubermedia/model/twitter/UrlEntity;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/ubermedia/model/twitter/UrlEntity;->b:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/model/twitter/UrlEntity;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/model/twitter/UrlEntity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/model/twitter/UrlEntity;->d:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/model/twitter/UrlEntity;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/model/twitter/UrlEntity;->e:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/model/twitter/UrlEntity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/ubermedia/model/twitter/UrlEntity;->a:I

    return v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/ubermedia/model/twitter/UrlEntity;->b:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/ubermedia/model/twitter/TweetEntity;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/ubermedia/model/twitter/UrlEntity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubermedia/model/twitter/UrlEntity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubermedia/model/twitter/UrlEntity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
