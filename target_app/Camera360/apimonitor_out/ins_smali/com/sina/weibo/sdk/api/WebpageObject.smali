.class public Lcom/sina/weibo/sdk/api/WebpageObject;
.super Lcom/sina/weibo/sdk/api/BaseMediaObject;
.source "WebpageObject.java"
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
.field public static final EXTRA_KEY_DEFAULTTEXT:Ljava/lang/String; = "extra_key_defaulttext"
.field public defaultText:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/sina/weibo/sdk/api/WebpageObject$1;
invoke-direct {v0}, Lcom/sina/weibo/sdk/api/WebpageObject$1;-><init>()V
sput-object v0, Lcom/sina/weibo/sdk/api/WebpageObject;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;-><init>()V
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 2
invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/api/BaseMediaObject;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method public checkArgs()Z
.registers 2
invoke-super {p0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;->checkArgs()Z
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return v0
:cond_8
const/4 v0, 0x1
goto :goto_7
.end method
.method public getObjType()I
.registers 2
const/4 v0, 0x5
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
iput-object v1, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->defaultText:Ljava/lang/String;
:goto_14
:try_end_14
.catch Lorg/json/JSONException; {:try_start_6 .. :try_end_14} :catch_15
:cond_14
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
iget-object v1, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->defaultText:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_15
const-string/jumbo v1, "extra_key_defaulttext"
iget-object v2, p0, Lcom/sina/weibo/sdk/api/WebpageObject;->defaultText:Ljava/lang/String;
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
.registers 3
invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/api/BaseMediaObject;->writeToParcel(Landroid/os/Parcel;I)V
return-void
.end method