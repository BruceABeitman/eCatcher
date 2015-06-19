.class public Lcom/ubermedia/uberads/UberAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field public static final a:Ljava/lang/String; = "url_click"

.field public static final b:Ljava/lang/String; = "url_image"

.field public static final c:Ljava/lang/String; = "ad_size"

.field public static final d:Ljava/lang/String; = "ad_id"

.field public static final e:Ljava/lang/String; = "request_id"

.field public static final f:Ljava/lang/String; = "html"

.field public static final g:Ljava/lang/String; = "url_impression"


# instance fields
.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ubermedia/uberads/UberAd$1;

    invoke-direct {v0}, Lcom/ubermedia/uberads/UberAd$1;-><init>()V

    sput-object v0, Lcom/ubermedia/uberads/UberAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubermedia/uberads/UberAd;->o:Z

    iput p1, p0, Lcom/ubermedia/uberads/UberAd;->h:I

    iput-object p2, p0, Lcom/ubermedia/uberads/UberAd;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/ubermedia/uberads/UberAd;->j:Ljava/lang/String;

    iput-object p4, p0, Lcom/ubermedia/uberads/UberAd;->k:Ljava/lang/String;

    iput-object p5, p0, Lcom/ubermedia/uberads/UberAd;->l:Ljava/lang/String;

    iput-object p6, p0, Lcom/ubermedia/uberads/UberAd;->m:Ljava/lang/String;

    iput-object p7, p0, Lcom/ubermedia/uberads/UberAd;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/ubermedia/uberads/UberAd;->o:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ubermedia/uberads/UberAd;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ubermedia/uberads/UberAd;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ubermedia/uberads/UberAd;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ubermedia/uberads/UberAd;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ubermedia/uberads/UberAd;->l:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ubermedia/uberads/UberAd;->m:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ubermedia/uberads/UberAd;->n:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_37

    const/4 v0, 0x1

    :cond_37
    iput-boolean v0, p0, Lcom/ubermedia/uberads/UberAd;->o:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/ubermedia/uberads/UberAd;
    .registers 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ubermedia/uberads/UberAd;->a(Lorg/json/JSONObject;)Lcom/ubermedia/uberads/UberAd;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/ubermedia/uberads/UberAd;
    .registers 9

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Json object can\'t be null here."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "ad_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "url_click"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "url_image"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "ad_size"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "request_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "html"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "url_impression"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/ubermedia/uberads/UberAd;

    invoke-direct/range {v0 .. v7}, Lcom/ubermedia/uberads/UberAd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/ubermedia/uberads/UberAd;->h:I

    return v0
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ubermedia/uberads/UberAd;->o:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/uberads/UberAd;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/uberads/UberAd;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/uberads/UberAd;->k:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/uberads/UberAd;->l:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/uberads/UberAd;->m:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/uberads/UberAd;->n:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ubermedia/uberads/UberAd;->o:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "ad_id"

    iget v2, p0, Lcom/ubermedia/uberads/UberAd;->h:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "url_click"

    iget-object v2, p0, Lcom/ubermedia/uberads/UberAd;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "url_image"

    iget-object v2, p0, Lcom/ubermedia/uberads/UberAd;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ad_size"

    iget-object v2, p0, Lcom/ubermedia/uberads/UberAd;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "request_id"

    iget-object v2, p0, Lcom/ubermedia/uberads/UberAd;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "html"

    iget-object v2, p0, Lcom/ubermedia/uberads/UberAd;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "url_impression"

    iget-object v2, p0, Lcom/ubermedia/uberads/UberAd;->n:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_36} :catch_3b

    :goto_36
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_3b
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_36
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lcom/ubermedia/uberads/UberAd;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/ubermedia/uberads/UberAd;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubermedia/uberads/UberAd;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubermedia/uberads/UberAd;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubermedia/uberads/UberAd;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubermedia/uberads/UberAd;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubermedia/uberads/UberAd;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ubermedia/uberads/UberAd;->o:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    :goto_28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_2c
    const/4 v0, 0x0

    goto :goto_28
.end method
