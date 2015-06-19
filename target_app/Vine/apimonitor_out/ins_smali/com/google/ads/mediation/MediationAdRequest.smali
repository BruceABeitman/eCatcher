.class public final Lcom/google/ads/mediation/MediationAdRequest;
.super Ljava/lang/Object;
.field private final d:Ljava/util/Date;
.field private final e:Lcom/google/ads/AdRequest$Gender;
.field private final f:Ljava/util/Set;
.field private final g:Z
.field private final h:Landroid/location/Location;
.method public constructor <init>(Ljava/util/Date;Lcom/google/ads/AdRequest$Gender;Ljava/util/Set;ZLandroid/location/Location;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/ads/mediation/MediationAdRequest;->d:Ljava/util/Date;
iput-object p2, p0, Lcom/google/ads/mediation/MediationAdRequest;->e:Lcom/google/ads/AdRequest$Gender;
iput-object p3, p0, Lcom/google/ads/mediation/MediationAdRequest;->f:Ljava/util/Set;
iput-boolean p4, p0, Lcom/google/ads/mediation/MediationAdRequest;->g:Z
iput-object p5, p0, Lcom/google/ads/mediation/MediationAdRequest;->h:Landroid/location/Location;
return-void
.end method
.method public getAgeInYears()Ljava/lang/Integer;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getBirthday()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->d:Ljava/util/Date;
return-object v0
.end method
.method public getGender()Lcom/google/ads/AdRequest$Gender;
.registers 2
iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->e:Lcom/google/ads/AdRequest$Gender;
return-object v0
.end method
.method public getKeywords()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->f:Ljava/util/Set;
return-object v0
.end method
.method public getLocation()Landroid/location/Location;
.registers 2
iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->h:Landroid/location/Location;
return-object v0
.end method
.method public isTesting()Z
.registers 2
iget-boolean v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->g:Z
return v0
.end method