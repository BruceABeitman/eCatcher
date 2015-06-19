.class public Lcom/sina/weibo/sdk/api/VoiceObject;
.super Lcom/sina/weibo/sdk/api/BaseMediaObject;
.source "VoiceObject.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sina/weibo/sdk/api/VoiceObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_KEY_DEFAULTTEXT:Ljava/lang/String; = "extra_key_defaulttext"


# instance fields
.field public dataHdUrl:Ljava/lang/String;

.field public dataUrl:Ljava/lang/String;

.field public defaultText:Ljava/lang/String;

.field public duration:I

.field public h5Url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sina/weibo/sdk/api/VoiceObject$1;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/VoiceObject$1;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/api/VoiceObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/api/BaseMediaObject;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/VoiceObject;->h5Url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/VoiceObject;->dataUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/VoiceObject;->dataHdUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sina/weibo/sdk/api/VoiceObject;->duration:I

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 4

    const/16 v2, 0x200

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;->checkArgs()Z

    move-result v1

    if-nez v1, :cond_a

    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/VoiceObject;->dataUrl:Ljava/lang/String;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/VoiceObject;->dataUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_20

    const-string/jumbo v1, "Weibo.VoiceObject"

    const-string/jumbo v2, "checkArgs fail, dataUrl is invalid"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_20
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/VoiceObject;->dataHdUrl:Ljava/lang/String;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/VoiceObject;->dataHdUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_36

    const-string/jumbo v1, "Weibo.VoiceObject"

    const-string/jumbo v2, "checkArgs fail, dataHdUrl is invalid"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_36
    iget v1, p0, Lcom/sina/weibo/sdk/api/VoiceObject;->duration:I

    if-gtz v1, :cond_44

    const-string/jumbo v1, "Weibo.VoiceObject"

    const-string/jumbo v2, "checkArgs fail, duration is invalid"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_44
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public getObjType()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method protected toExtraMediaObject(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/BaseMediaObject;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "extra_key_defaulttext"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/api/VoiceObject;->defaultText:Ljava/lang/String;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-object p0

    :catch_15
    move-exception v1

    goto :goto_14
.end method

.method protected toExtraMediaString()Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/VoiceObject;->defaultText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string/jumbo v1, "extra_key_defaulttext"

    iget-object v2, p0, Lcom/sina/weibo/sdk/api/VoiceObject;->defaultText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_15
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_18} :catch_1a

    move-result-object v1

    :goto_19
    return-object v1

    :catch_1a
    move-exception v1

    const-string/jumbo v1, ""

    goto :goto_19
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/api/BaseMediaObject;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/VoiceObject;->h5Url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/VoiceObject;->dataUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/VoiceObject;->dataHdUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sina/weibo/sdk/api/VoiceObject;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
