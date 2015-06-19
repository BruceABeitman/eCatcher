.class public final Lcom/google/ads/mediation/admob/AdMobServerParameters;
.super Lcom/google/ads/mediation/MediationServerParameters;
.field public adJson:Ljava/lang/String;
.field public adUnitId:Ljava/lang/String;
.field public allowHouseAds:Ljava/lang/String;
.field public tagForChildDirectedTreatment:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/google/ads/mediation/MediationServerParameters;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/ads/mediation/admob/AdMobServerParameters;->allowHouseAds:Ljava/lang/String;
const/4 v0, -0x1
iput v0, p0, Lcom/google/ads/mediation/admob/AdMobServerParameters;->tagForChildDirectedTreatment:I
return-void
.end method