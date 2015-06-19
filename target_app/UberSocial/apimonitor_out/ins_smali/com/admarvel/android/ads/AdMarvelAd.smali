.class public Lcom/admarvel/android/ads/AdMarvelAd;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private A:Ljava/lang/String;
.field private B:Ljava/lang/String;
.field private C:Ljava/lang/String;
.field private D:Ljava/lang/String;
.field private E:Ljava/lang/String;
.field private F:Ljava/lang/String;
.field private G:Ljava/lang/String;
.field private H:Ljava/lang/String;
.field private I:Ljava/lang/String;
.field private J:Ljava/lang/Boolean;
.field private K:Ljava/lang/String;
.field private L:I
.field private M:Ljava/lang/String;
.field private N:I
.field private O:Z
.field private P:Ljava/lang/String;
.field private Q:Ljava/lang/String;
.field private R:Ljava/lang/String;
.field private final S:Z
.field private final T:Ljava/lang/String;
.field private final U:Ljava/lang/String;
.field private V:Z
.field private W:Ljava/lang/String;
.field private X:Ljava/lang/String;
.field private Y:Ljava/lang/String;
.field private Z:Ljava/lang/String;
.field private final a:Ljava/lang/String;
.field private aa:Z
.field private ab:I
.field private ac:Ljava/lang/String;
.field private ad:Ljava/lang/String;
.field private ae:Ljava/lang/String;
.field private af:Ljava/lang/String;
.field private ag:Lcom/admarvel/android/ads/AdMarvelAd$RhythmVideoAdType;
.field private ah:Lcom/admarvel/android/ads/AdMarvelAd$HeyzapAdType;
.field private ai:Z
.field private aj:Z
.field private ak:Ljava/lang/String;
.field private al:Ljava/lang/String;
.field private am:Ljava/lang/String;
.field private an:Ljava/lang/String;
.field private ao:Ljava/lang/String;
.field private ap:Ljava/lang/String;
.field private aq:Z
.field private ar:Ljava/lang/Integer;
.field private as:Ljava/lang/String;
.field private final at:Ljava/util/Map;
.field private final au:Ljava/lang/String;
.field private final av:Ljava/lang/String;
.field private final aw:Ljava/lang/String;
.field private final ax:I
.field private final ay:Ljava/lang/String;
.field private az:Ljava/lang/String;
.field private b:I
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:I
.field private h:I
.field private i:Ljava/lang/String;
.field private j:Ljava/lang/String;
.field private k:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
.field private l:Ljava/lang/String;
.field private m:Ljava/util/List;
.field private n:I
.field private o:Ljava/lang/String;
.field private p:Ljava/lang/String;
.field private q:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
.field private r:Ljava/lang/String;
.field private s:Ljava/lang/String;
.field private t:Ljava/lang/String;
.field private u:Z
.field private v:Ljava/lang/String;
.field private w:[Ljava/lang/String;
.field private x:[Ljava/lang/String;
.field private y:Ljava/lang/String;
.field private z:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V
.registers 14
const/4 v3, -0x1
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "/data/com.admarvel.android.admarvelcachedads"
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->a:Ljava/lang/String;
iput v3, p0, Lcom/admarvel/android/ads/AdMarvelAd;->g:I
iput v3, p0, Lcom/admarvel/android/ads/AdMarvelAd;->h:I
iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->y:Ljava/lang/String;
iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->z:Ljava/lang/String;
iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->A:Ljava/lang/String;
iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->B:Ljava/lang/String;
iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->C:Ljava/lang/String;
iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->D:Ljava/lang/String;
iput-boolean v2, p0, Lcom/admarvel/android/ads/AdMarvelAd;->V:Z
iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ag:Lcom/admarvel/android/ads/AdMarvelAd$RhythmVideoAdType;
iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ah:Lcom/admarvel/android/ads/AdMarvelAd$HeyzapAdType;
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ar:Ljava/lang/Integer;
iput-boolean v2, p0, Lcom/admarvel/android/ads/AdMarvelAd;->O:Z
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->U:Ljava/lang/String;
iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelAd;->at:Ljava/util/Map;
iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelAd;->au:Ljava/lang/String;
iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelAd;->av:Ljava/lang/String;
iput-object p5, p0, Lcom/admarvel/android/ads/AdMarvelAd;->aw:Ljava/lang/String;
iput p6, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ax:I
iput-object p7, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ay:Ljava/lang/String;
iput-boolean p8, p0, Lcom/admarvel/android/ads/AdMarvelAd;->S:Z
iput-object p9, p0, Lcom/admarvel/android/ads/AdMarvelAd;->T:Ljava/lang/String;
if-eqz p5, :cond_49
const-string v0, "UNIQUE_ID"
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_49
const-string v0, "UNIQUE_ID"
invoke-interface {p2, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_49
return-void
.end method
.method public getAdColonyAppVersion()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->B:Ljava/lang/String;
return-object v0
.end method
.method public getAdFormat()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->D:Ljava/lang/String;
return-object v0
.end method
.method public getAdHistoryCounter()I
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ar:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
return v0
.end method
.method public getAdHistoryDumpString()Ljava/lang/String;
.registers 4
:try_start_0
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
const-string v1, "appname"
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelAd;->T:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "partnerid"
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelAd;->au:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ak:Ljava/lang/String;
if-eqz v1, :cond_23
new-instance v1, Lorg/json/JSONObject;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ak:Ljava/lang/String;
invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v2, "request"
invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_23
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->al:Ljava/lang/String;
if-eqz v1, :cond_33
new-instance v1, Lorg/json/JSONObject;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelAd;->al:Ljava/lang/String;
invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v2, "response"
invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_33
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->am:Ljava/lang/String;
if-eqz v1, :cond_43
new-instance v1, Lorg/json/JSONObject;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelAd;->am:Ljava/lang/String;
invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v2, "html"
invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_43
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->an:Ljava/lang/String;
:goto_4a
:try_end_4a
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4a} :catch_4d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_52
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->an:Ljava/lang/String;
return-object v0
:catch_4d
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_4a
:catch_52
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_4a
.end method
.method public getAdId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->P:Ljava/lang/String;
return-object v0
.end method
.method public getAdMobExtras()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->z:Ljava/lang/String;
return-object v0
.end method
.method public getAdType()Lcom/admarvel/android/ads/AdMarvelAd$AdType;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->k:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
return-object v0
.end method
.method public getAdmobAdFormat()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->az:Ljava/lang/String;
return-object v0
.end method
.method public getAdmobTestAction()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->az:Ljava/lang/String;
return-object v0
.end method
.method public getAdmobTestDeviceId()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->w:[Ljava/lang/String;
return-object v0
.end method
.method public getAmazonAdRequestAdvancedOptions()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->Z:Ljava/lang/String;
return-object v0
.end method
.method public getAmazonAdTimeOut()I
.registers 2
iget v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ab:I
return v0
.end method
.method public getAmazonAdvancedOptions()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->Y:Ljava/lang/String;
return-object v0
.end method
.method public getAndroidId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->aw:Ljava/lang/String;
return-object v0
.end method
.method public getAppId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->as:Ljava/lang/String;
return-object v0
.end method
.method public getAppName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->R:Ljava/lang/String;
return-object v0
.end method
.method public getBannerid()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->K:Ljava/lang/String;
return-object v0
.end method
.method public getChannelId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->s:Ljava/lang/String;
return-object v0
.end method
.method public getClickURL()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->j:Ljava/lang/String;
return-object v0
.end method
.method public getCloseFunction()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->v:Ljava/lang/String;
return-object v0
.end method
.method public getCompanyName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->t:Ljava/lang/String;
return-object v0
.end method
.method public getCountdowntext()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ao:Ljava/lang/String;
return-object v0
.end method
.method public getCreativeType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->l:Ljava/lang/String;
return-object v0
.end method
.method public getDeviceConnectivity()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ay:Ljava/lang/String;
return-object v0
.end method
.method public getDisableAdDuration()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->W:Ljava/lang/String;
return-object v0
.end method
.method public getErrorCode()I
.registers 2
iget v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->n:I
return v0
.end method
.method public getErrorReason()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->o:Ljava/lang/String;
return-object v0
.end method
.method public getExcluded()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->M:Ljava/lang/String;
return-object v0
.end method
.method public getExpandDirection()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->C:Ljava/lang/String;
return-object v0
.end method
.method public getFacebookChildDirectedFlag()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->y:Ljava/lang/String;
return-object v0
.end method
.method public getFacebookTestDeviceId()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->x:[Ljava/lang/String;
return-object v0
.end method
.method public getGooglePlayLocation()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->A:Ljava/lang/String;
return-object v0
.end method
.method public getHeight()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->E:Ljava/lang/String;
return-object v0
.end method
.method public getHeyzapAdType()Lcom/admarvel/android/ads/AdMarvelAd$HeyzapAdType;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ah:Lcom/admarvel/android/ads/AdMarvelAd$HeyzapAdType;
return-object v0
.end method
.method public getId()I
.registers 2
iget v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->b:I
return v0
.end method
.method public getImageAlt()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->i:Ljava/lang/String;
return-object v0
.end method
.method public getImageHeight()I
.registers 2
iget v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->h:I
return v0
.end method
.method public getImageURL()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->f:Ljava/lang/String;
return-object v0
.end method
.method public getImageWidth()I
.registers 2
iget v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->g:I
return v0
.end method
.method public getInterstitialAction()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->H:Ljava/lang/String;
return-object v0
.end method
.method public getIpAddress()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->c:Ljava/lang/String;
return-object v0
.end method
.method public getKeywordsContentUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->I:Ljava/lang/String;
return-object v0
.end method
.method public getMaxretries()I
.registers 2
iget v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->N:I
return v0
.end method
.method public getOfflineBaseUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ac:Ljava/lang/String;
return-object v0
.end method
.method public getOfflinekeyUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ad:Ljava/lang/String;
return-object v0
.end method
.method public getOrientation()I
.registers 2
iget v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ax:I
return v0
.end method
.method public getPartnerId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->au:Ljava/lang/String;
return-object v0
.end method
.method public getPixels()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->m:Ljava/util/List;
return-object v0
.end method
.method public getPubId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->r:Ljava/lang/String;
return-object v0
.end method
.method public getRetry()Ljava/lang/Boolean;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->J:Ljava/lang/Boolean;
return-object v0
.end method
.method public getRetrynum()I
.registers 2
iget v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->L:I
return v0
.end method
.method public getRhythmVideoAdType()Lcom/admarvel/android/ads/AdMarvelAd$RhythmVideoAdType;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ag:Lcom/admarvel/android/ads/AdMarvelAd$RhythmVideoAdType;
return-object v0
.end method
.method public getRhythmVideoUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->af:Ljava/lang/String;
return-object v0
.end method
.method public getScene()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ae:Ljava/lang/String;
return-object v0
.end method
.method public getSdkAdNetwork()Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->q:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
return-object v0
.end method
.method public getSdkNetwork()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->p:Ljava/lang/String;
return-object v0
.end method
.method public getSiteId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->av:Ljava/lang/String;
return-object v0
.end method
.method public getSlotName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->Q:Ljava/lang/String;
return-object v0
.end method
.method public getSource()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->G:Ljava/lang/String;
return-object v0
.end method
.method public getTargetParams()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->at:Ljava/util/Map;
return-object v0
.end method
.method public getText()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->e:Ljava/lang/String;
return-object v0
.end method
.method public getVideoplacement()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ap:Ljava/lang/String;
return-object v0
.end method
.method public getWidth()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->F:Ljava/lang/String;
return-object v0
.end method
.method public getXHTML()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->d:Ljava/lang/String;
return-object v0
.end method
.method public getXhtml()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->d:Ljava/lang/String;
return-object v0
.end method
.method public getXml()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->U:Ljava/lang/String;
return-object v0
.end method
.method public getZoneId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->X:Ljava/lang/String;
return-object v0
.end method
.method public hasImage()Z
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->f:Ljava/lang/String;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public isAmazonEnableGeoLocation()Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->aa:Z
return v0
.end method
.method public isCachingEnabled()Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ai:Z
return v0
.end method
.method public isDisableAdrequest()Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->V:Z
return v0
.end method
.method public isMustBeVisible()Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->O:Z
return v0
.end method
.method public isTest()Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->u:Z
return v0
.end method
.method public isTimercountdownEnabled()Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->aq:Z
return v0
.end method
.method public isTrackingIdSet()Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->aj:Z
return v0
.end method
.method public loadAd(Ljava/io/File;)Lcom/admarvel/android/ads/AdMarvelXMLReader;
.registers 14
const/4 v0, 0x0
const/16 v11, 0xcd
const/4 v10, 0x1
const/4 v5, 0x0
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->U:Ljava/lang/String;
if-nez v1, :cond_a
:goto_9
:cond_9
return-object v0
:cond_a
new-instance v3, Lcom/admarvel/android/ads/AdMarvelXMLReader;
invoke-direct {v3}, Lcom/admarvel/android/ads/AdMarvelXMLReader;-><init>()V
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->U:Ljava/lang/String;
invoke-virtual {v3, v1}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->parseXMLString(Ljava/lang/String;)V
invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->getParsedXMLData()Lcom/admarvel/android/ads/AdMarvelXMLElement;
move-result-object v2
if-eqz v2, :cond_9
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->a()Ljava/lang/String;
move-result-object v0
const-string v1, "ad"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_17e
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v1, "id"
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_42
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_42
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
iput v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->b:I
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->K:Ljava/lang/String;
:cond_42
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v1, "ip"
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_58
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_58
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->c:Ljava/lang/String;
:cond_58
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v1, "dah"
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_77
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_77
const-string v1, "true"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_77
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->disableLogDump()V
:cond_77
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v1, "type"
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v1, "text"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_138
sget-object v0, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->TEXT:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->k:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
:goto_8f
:cond_8f
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v1, "source"
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_a5
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_a5
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->G:Ljava/lang/String;
:goto_a5
:cond_a5
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v1, "pixels"
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_184
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v1, "pixels"
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v1
const-string v4, "pixel"
invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_184
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v1
const-string v4, "pixel"
invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v6
move v4, v5
:goto_e0
if-ge v4, v6, :cond_184
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v1
const-string v7, "pixel"
invoke-virtual {v1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/ArrayList;
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelXMLElement;
if-eqz v1, :cond_134
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;
move-result-object v1
sget-boolean v7, Lcom/admarvel/android/ads/AdMarvelView;->b:Z
if-nez v7, :cond_102
sget-boolean v7, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableOfflineSDK:Z
if-eqz v7, :cond_124
:cond_102
const-string v7, "\\{siteid\\}"
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;
move-result-object v8
invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v7, "\\{random\\}"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v8
invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v7, "\\{uniqueid\\}"
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelAd;->getAndroidId()Ljava/lang/String;
move-result-object v8
invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:cond_124
iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelAd;->m:Ljava/util/List;
if-nez v7, :cond_12f
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
iput-object v7, p0, Lcom/admarvel/android/ads/AdMarvelAd;->m:Ljava/util/List;
:cond_12f
iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelAd;->m:Ljava/util/List;
invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_134
add-int/lit8 v1, v4, 0x1
move v4, v1
goto :goto_e0
:cond_138
const-string v1, "image"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_146
sget-object v0, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->IMAGE:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->k:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
goto/16 :goto_8f
:cond_146
const-string v1, "javascript"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_154
sget-object v0, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->JAVASCRIPT:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->k:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
goto/16 :goto_8f
:cond_154
const-string v1, "error"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_162
sget-object v0, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->k:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
goto/16 :goto_8f
:cond_162
const-string v1, "sdkcall"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_170
sget-object v0, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->SDKCALL:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->k:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
goto/16 :goto_8f
:cond_170
const-string v1, "custom"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_8f
sget-object v0, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->CUSTOM:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->k:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
goto/16 :goto_8f
:cond_17e
sget-object v0, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->k:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
goto/16 :goto_a5
:cond_184
sget-boolean v0, Lcom/admarvel/android/ads/AdMarvelView;->b:Z
if-nez v0, :cond_18c
sget-boolean v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableOfflineSDK:Z
if-eqz v0, :cond_1ed
:cond_18c
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v1, "file"
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1ed
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v1, "file"
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->k:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
sget-object v4, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->JAVASCRIPT:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
invoke-virtual {v1, v4}, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1d2
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ad:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/admarvel/android/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->d:Ljava/lang/String;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->d:Ljava/lang/String;
if-eqz v1, :cond_1d2
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->d:Ljava/lang/String;
const-string v4, "\\{siteid\\}"
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;
move-result-object v6
invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->d:Ljava/lang/String;
:cond_1d2
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ad:Ljava/lang/String;
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v4, "/"
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ad:Ljava/lang/String;
:cond_1ed
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->k:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->SDKCALL:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6a1
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v1, "xhtml"
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6a1
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v1, "xhtml"
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
if-eqz v0, :cond_6a1
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/admarvel/android/ads/v;
invoke-direct {v1}, Lcom/admarvel/android/ads/v;-><init>()V
invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/v;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->parseXMLString(Ljava/lang/String;)V
invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->getParsedXMLData()Lcom/admarvel/android/ads/AdMarvelXMLElement;
move-result-object v1
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "network"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v2, "googleplay"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_247
const-string v2, "admob"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5b1
:cond_247
const-string v0, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->p:Ljava/lang/String;
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->GOOGLEPLAY:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->q:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
:goto_24f
:cond_24f
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "retry"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v2, "YES"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_67d
invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->J:Ljava/lang/Boolean;
:goto_269
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "bannerid"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_27f
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_27f
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->K:Ljava/lang/String;
:cond_27f
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "retrynum"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_299
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_299
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->L:I
:cond_299
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "excluded"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_2af
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_2af
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->M:Ljava/lang/String;
:cond_2af
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "maxretries"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_685
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_685
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->N:I
:goto_2c9
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->k:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
sget-object v2, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->JAVASCRIPT:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_315
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "customdata"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_315
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "customdata"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v2
const-string v4, "close_func"
invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_315
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "close_func"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->v:Ljava/lang/String;
:cond_315
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "errorCode"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_33f
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "errorCode"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
if-eqz v0, :cond_33f
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->n:I
:cond_33f
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "errorReason"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_365
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "errorReason"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
if-eqz v0, :cond_365
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->o:Ljava/lang/String;
:cond_365
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "xhtml"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_38b
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "xhtml"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
if-eqz v0, :cond_38b
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->d:Ljava/lang/String;
:cond_38b
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "clickurl"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3cb
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "clickurl"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
if-eqz v0, :cond_3cb
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->j:Ljava/lang/String;
sget-boolean v0, Lcom/admarvel/android/ads/AdMarvelView;->b:Z
if-nez v0, :cond_3b9
sget-boolean v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableOfflineSDK:Z
if-eqz v0, :cond_3cb
:cond_3b9
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->j:Ljava/lang/String;
if-eqz v0, :cond_3cb
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->j:Ljava/lang/String;
const-string v2, "\\{siteid\\}"
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->j:Ljava/lang/String;
:cond_3cb
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "image"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_507
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "image"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "url"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_421
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "image"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "url"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
if-eqz v0, :cond_421
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->f:Ljava/lang/String;
:cond_421
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "image"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "alt"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_46b
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "image"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "alt"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
if-eqz v0, :cond_46b
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->i:Ljava/lang/String;
:cond_46b
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "image"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "width"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4b9
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "image"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "width"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
if-eqz v0, :cond_4b9
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->g:I
:cond_4b9
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "image"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "height"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_507
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "image"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "height"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
if-eqz v0, :cond_507
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->h:I
:cond_507
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "text"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_52d
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "text"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
if-eqz v0, :cond_52d
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->e:Ljava/lang/String;
:cond_52d
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->S:Z
if-ne v0, v10, :cond_5ae
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->k:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
sget-object v2, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_5ae
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v1, "image"
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_695
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->f:Ljava/lang/String;
const-string v1, "http://admarvel.s3.amazonaws.com"
const-string v2, ""
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "/data/com.admarvel.android.admarvelcachedads"
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "AdMarvelAd::loadAd: "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_689
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->f:Ljava/lang/String;
const-string v1, "http://admarvel.s3.amazonaws.com"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "content://"
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelAd;->T:Ljava/lang/String;
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, ".AdMarvelCachedImageLocalFileContentProvider"
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->f:Ljava/lang/String;
:goto_5ae
:cond_5ae
move-object v0, v3
goto/16 :goto_9
:cond_5b1
const-string v2, "rhythm"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5c3
const-string v0, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->p:Ljava/lang/String;
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->RHYTHM:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->q:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
goto/16 :goto_24f
:cond_5c3
const-string v2, "greystripe"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5d5
const-string v0, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->p:Ljava/lang/String;
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->GREYSTRIPE:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->q:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
goto/16 :goto_24f
:cond_5d5
const-string v2, "millennial"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5e7
const-string v0, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->p:Ljava/lang/String;
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->MILLENNIAL:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->q:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
goto/16 :goto_24f
:cond_5e7
const-string v2, "amazon"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5f9
const-string v0, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->p:Ljava/lang/String;
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->AMAZON:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->q:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
goto/16 :goto_24f
:cond_5f9
const-string v2, "adcolony"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_60b
const-string v0, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->p:Ljava/lang/String;
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->ADCOLONY:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->q:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
goto/16 :goto_24f
:cond_60b
const-string v2, "pulse3d"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_61d
const-string v0, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->p:Ljava/lang/String;
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->PULSE3D:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->q:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
goto/16 :goto_24f
:cond_61d
const-string v2, "facebook"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_62f
const-string v0, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->p:Ljava/lang/String;
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->FACEBOOK:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->q:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
goto/16 :goto_24f
:cond_62f
const-string v2, "inmobi"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_641
const-string v0, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->p:Ljava/lang/String;
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->INMOBI:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->q:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
goto/16 :goto_24f
:cond_641
const-string v2, "heyzap"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_653
const-string v0, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->p:Ljava/lang/String;
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->HEYZAP:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->q:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
goto/16 :goto_24f
:cond_653
const-string v2, "disable_ad_request"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_66f
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "durationinseconds"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_24f
iput-boolean v10, p0, Lcom/admarvel/android/ads/AdMarvelAd;->V:Z
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->W:Ljava/lang/String;
goto/16 :goto_24f
:cond_66f
sget-object v0, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->k:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
const/16 v0, 0x133
iput v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->n:I
const-string v0, "Missing SDK ad network"
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->o:Ljava/lang/String;
goto/16 :goto_24f
:cond_67d
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->J:Ljava/lang/Boolean;
goto/16 :goto_269
:cond_685
iput v10, p0, Lcom/admarvel/android/ads/AdMarvelAd;->N:I
goto/16 :goto_2c9
:cond_689
sget-object v0, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->k:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
iput v11, p0, Lcom/admarvel/android/ads/AdMarvelAd;->n:I
const-string v0, "Cached Ad Unable to render"
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->o:Ljava/lang/String;
goto/16 :goto_5ae
:cond_695
sget-object v0, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->k:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
iput v11, p0, Lcom/admarvel/android/ads/AdMarvelAd;->n:I
const-string v0, "Cached Ad Unable to render: Only images are supported.  server-side configuration error"
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->o:Ljava/lang/String;
goto/16 :goto_5ae
:cond_6a1
move-object v1, v2
goto/16 :goto_2c9
.end method
.method public declared-synchronized removeNonStringEntriesTargetParam()V
.registers 12
monitor-enter p0
:try_start_1
new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->at:Ljava/util/Map;
invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_91
:try_start_b
new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->at:Ljava/util/Map;
invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V
invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_1d
:cond_1d
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_94
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
instance-of v1, v1, Ljava/lang/String;
if-nez v1, :cond_1d
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
instance-of v1, v1, Landroid/location/Location;
if-eqz v1, :cond_89
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v5, "LOCATION_OBJECT"
invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_89
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/location/Location;
const-string v5, "GEOLOCATION"
const-string v6, "%f,%f"
const/4 v7, 0x2
new-array v7, v7, [Ljava/lang/Object;
const/4 v8, 0x0
invoke-static {v1}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v9
invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v9
aput-object v9, v7, v8
const/4 v8, 0x1
invoke-static {v1}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v9
invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v1
aput-object v1, v7, v8
invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_78
.catchall {:try_start_b .. :try_end_78} :catchall_91
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_78} :catch_79
goto :goto_1d
:catch_79
move-exception v0
:try_start_7a
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->at:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->clear()V
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->at:Ljava/util/Map;
invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:goto_87
:try_end_87
.catchall {:try_start_7a .. :try_end_87} :catchall_91
monitor-exit p0
return-void
:try_start_89
:cond_89
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_90
.catchall {:try_start_89 .. :try_end_90} :catchall_91
.catch Ljava/lang/Exception; {:try_start_89 .. :try_end_90} :catch_79
goto :goto_1d
:catchall_91
move-exception v0
monitor-exit p0
throw v0
:try_start_94
:cond_94
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->at:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->at:Ljava/util/Map;
invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
:try_end_9e
.catchall {:try_start_94 .. :try_end_9e} :catchall_91
.catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9e} :catch_79
goto :goto_87
.end method
.method public setAdColonyAppVersion(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->B:Ljava/lang/String;
return-void
.end method
.method public setAdFormat(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->D:Ljava/lang/String;
return-void
.end method
.method public setAdHistoryCounter(I)V
.registers 3
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ar:Ljava/lang/Integer;
return-void
.end method
.method public setAdId(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->P:Ljava/lang/String;
return-void
.end method
.method public setAdMobExtras(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->z:Ljava/lang/String;
return-void
.end method
.method public setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->k:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
return-void
.end method
.method public setAdmobTestAction(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->az:Ljava/lang/String;
return-void
.end method
.method public setAdmobTestDeviceId([Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->w:[Ljava/lang/String;
return-void
.end method
.method public setAmazonAdRequestAdvancedOptions(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->Z:Ljava/lang/String;
return-void
.end method
.method public setAmazonAdTimeOut(I)V
.registers 2
iput p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ab:I
return-void
.end method
.method public setAmazonAdvancedOptions(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->Y:Ljava/lang/String;
return-void
.end method
.method public setAmazonEnableGeoLocation(Z)V
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->aa:Z
return-void
.end method
.method public setAppId(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->as:Ljava/lang/String;
return-void
.end method
.method public setAppName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->R:Ljava/lang/String;
return-void
.end method
.method public setBannerid(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->K:Ljava/lang/String;
return-void
.end method
.method public setCachingEnabled(Z)V
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ai:Z
return-void
.end method
.method public setChannelId(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->s:Ljava/lang/String;
return-void
.end method
.method public setClickURL(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->j:Ljava/lang/String;
return-void
.end method
.method public setCloseFunction(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->v:Ljava/lang/String;
return-void
.end method
.method public setCompanyName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->t:Ljava/lang/String;
return-void
.end method
.method public setCountdowntext(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ao:Ljava/lang/String;
return-void
.end method
.method public setCreativeType(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->l:Ljava/lang/String;
return-void
.end method
.method public setErrorCode(I)V
.registers 2
iput p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->n:I
return-void
.end method
.method public setErrorReason(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->o:Ljava/lang/String;
return-void
.end method
.method public setExcluded(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->M:Ljava/lang/String;
return-void
.end method
.method public setExpandDirection(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->C:Ljava/lang/String;
return-void
.end method
.method public setFacebookChildDirectedFlag(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->y:Ljava/lang/String;
return-void
.end method
.method public setFacebookTestDeviceId([Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->x:[Ljava/lang/String;
return-void
.end method
.method public setGooglePlayLocation(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->A:Ljava/lang/String;
return-void
.end method
.method public setHeight(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->E:Ljava/lang/String;
return-void
.end method
.method public setHeyzapAdType(Lcom/admarvel/android/ads/AdMarvelAd$HeyzapAdType;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ah:Lcom/admarvel/android/ads/AdMarvelAd$HeyzapAdType;
return-void
.end method
.method public setHtmlJson(Ljava/lang/String;)V
.registers 8
:try_start_0
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
new-instance v1, Ljava/text/SimpleDateFormat;
const-string v2, "yyyy-MM-dd HH:mm:ss"
invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
const-string v2, "GMT+00:00"
invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V
new-instance v2, Ljava/text/SimpleDateFormat;
const-string v3, "yyyy-MM-dd HH:mm:ss"
invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v3
invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
move-result-object v3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
const-string v5, "data"
invoke-virtual {v0, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v5, "timestamp"
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v4, "utc"
invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "local"
invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->am:Ljava/lang/String;
:try_end_53
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54
:goto_53
return-void
:catch_54
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_53
.end method
.method public setId(I)V
.registers 2
iput p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->b:I
return-void
.end method
.method public setImageAlt(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->i:Ljava/lang/String;
return-void
.end method
.method public setImageHeight(I)V
.registers 2
iput p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->h:I
return-void
.end method
.method public setImageURL(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->f:Ljava/lang/String;
return-void
.end method
.method public setImageWidth(I)V
.registers 2
iput p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->g:I
return-void
.end method
.method public setInterstitialAction(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->H:Ljava/lang/String;
return-void
.end method
.method public setIpAddress(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->c:Ljava/lang/String;
return-void
.end method
.method public setKeywordsContentUrl(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->I:Ljava/lang/String;
return-void
.end method
.method public setMustBeVisible(Z)V
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->O:Z
return-void
.end method
.method public setOfflineBaseUrl(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ac:Ljava/lang/String;
return-void
.end method
.method public setOfflinekeyUrl(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ad:Ljava/lang/String;
return-void
.end method
.method public setPixels(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->m:Ljava/util/List;
return-void
.end method
.method public setPubId(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->r:Ljava/lang/String;
return-void
.end method
.method public setRequestJson(Lorg/json/JSONObject;)V
.registers 3
if-eqz p1, :cond_9
const/4 v0, 0x1
:try_start_3
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ak:Ljava/lang/String;
:try_end_9
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_a
:cond_9
:goto_9
return-void
:catch_a
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_9
.end method
.method public setResponseJson()V
.registers 8
:try_start_0
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
new-instance v1, Ljava/text/SimpleDateFormat;
const-string v2, "yyyy-MM-dd HH:mm:ss"
invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
const-string v2, "GMT+00:00"
invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V
new-instance v2, Ljava/text/SimpleDateFormat;
const-string v3, "yyyy-MM-dd HH:mm:ss"
invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v3
invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
move-result-object v3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
const-string v5, "data"
iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelAd;->U:Ljava/lang/String;
invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v5, "timestamp"
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v4, "utc"
invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "local"
invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelAd;->al:Ljava/lang/String;
:try_end_55
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_55} :catch_56
:goto_55
return-void
:catch_56
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_55
.end method
.method public setRetry(Ljava/lang/Boolean;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->J:Ljava/lang/Boolean;
return-void
.end method
.method public setRetrynum(I)V
.registers 2
iput p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->L:I
return-void
.end method
.method public setRhythmVideoAdType(Lcom/admarvel/android/ads/AdMarvelAd$RhythmVideoAdType;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ag:Lcom/admarvel/android/ads/AdMarvelAd$RhythmVideoAdType;
return-void
.end method
.method public setRhythmVideoUrl(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->af:Ljava/lang/String;
return-void
.end method
.method public setScene(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ae:Ljava/lang/String;
return-void
.end method
.method public setSdkNetwork(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->p:Ljava/lang/String;
return-void
.end method
.method public setSetTrackingId(Z)V
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->aj:Z
return-void
.end method
.method public setSlotName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->Q:Ljava/lang/String;
return-void
.end method
.method public setSource(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->G:Ljava/lang/String;
return-void
.end method
.method public setTest(Z)V
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->u:Z
return-void
.end method
.method public setText(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->e:Ljava/lang/String;
return-void
.end method
.method public setTimercountdown(Z)V
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->aq:Z
return-void
.end method
.method public setVideoplacement(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->ap:Ljava/lang/String;
return-void
.end method
.method public setWidth(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->F:Ljava/lang/String;
return-void
.end method
.method public setXhtml(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->d:Ljava/lang/String;
return-void
.end method
.method public setZoneId(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelAd;->X:Ljava/lang/String;
return-void
.end method