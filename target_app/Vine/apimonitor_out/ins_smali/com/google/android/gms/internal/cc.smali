.class public final Lcom/google/android/gms/internal/cc;
.super Ljava/lang/Object;
.method public static a(Lcom/google/ads/AdRequest$ErrorCode;)I
.registers 3
sget-object v0, Lcom/google/android/gms/internal/cc$1;->nX:[I
invoke-virtual {p0}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_14
const/4 v0, 0x0
:goto_c
return v0
:pswitch_d
const/4 v0, 0x1
goto :goto_c
:pswitch_f
const/4 v0, 0x2
goto :goto_c
:pswitch_11
const/4 v0, 0x3
goto :goto_c
nop
:pswitch_data_14
.packed-switch 0x2
:pswitch_d
:pswitch_f
:pswitch_11
.end packed-switch
.end method
.method public static b(Lcom/google/android/gms/internal/am;)Lcom/google/ads/AdSize;
.registers 5
const/4 v0, 0x0
const/4 v1, 0x6
new-array v1, v1, [Lcom/google/ads/AdSize;
sget-object v2, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;
aput-object v2, v1, v0
const/4 v2, 0x1
sget-object v3, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;
aput-object v3, v1, v2
const/4 v2, 0x2
sget-object v3, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;
aput-object v3, v1, v2
const/4 v2, 0x3
sget-object v3, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;
aput-object v3, v1, v2
const/4 v2, 0x4
sget-object v3, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;
aput-object v3, v1, v2
const/4 v2, 0x5
sget-object v3, Lcom/google/ads/AdSize;->IAB_WIDE_SKYSCRAPER:Lcom/google/ads/AdSize;
aput-object v3, v1, v2
:goto_21
array-length v2, v1
if-ge v0, v2, :cond_3e
aget-object v2, v1, v0
invoke-virtual {v2}, Lcom/google/ads/AdSize;->getWidth()I
move-result v2
iget v3, p0, Lcom/google/android/gms/internal/am;->width:I
if-ne v2, v3, :cond_3b
aget-object v2, v1, v0
invoke-virtual {v2}, Lcom/google/ads/AdSize;->getHeight()I
move-result v2
iget v3, p0, Lcom/google/android/gms/internal/am;->height:I
if-ne v2, v3, :cond_3b
aget-object v0, v1, v0
:goto_3a
return-object v0
:cond_3b
add-int/lit8 v0, v0, 0x1
goto :goto_21
:cond_3e
new-instance v0, Lcom/google/ads/AdSize;
iget v1, p0, Lcom/google/android/gms/internal/am;->width:I
iget v2, p0, Lcom/google/android/gms/internal/am;->height:I
iget-object v3, p0, Lcom/google/android/gms/internal/am;->mc:Ljava/lang/String;
invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/a;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/ads/AdSize;-><init>(Lcom/google/android/gms/ads/AdSize;)V
goto :goto_3a
.end method
.method public static e(Lcom/google/android/gms/internal/aj;)Lcom/google/ads/mediation/MediationAdRequest;
.registers 7
iget-object v0, p0, Lcom/google/android/gms/internal/aj;->lS:Ljava/util/List;
if-eqz v0, :cond_22
new-instance v3, Ljava/util/HashSet;
iget-object v0, p0, Lcom/google/android/gms/internal/aj;->lS:Ljava/util/List;
invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
:goto_b
new-instance v0, Lcom/google/ads/mediation/MediationAdRequest;
new-instance v1, Ljava/util/Date;
iget-wide v4, p0, Lcom/google/android/gms/internal/aj;->lQ:J
invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V
iget v2, p0, Lcom/google/android/gms/internal/aj;->lR:I
invoke-static {v2}, Lcom/google/android/gms/internal/cc;->h(I)Lcom/google/ads/AdRequest$Gender;
move-result-object v2
iget-boolean v4, p0, Lcom/google/android/gms/internal/aj;->lT:Z
iget-object v5, p0, Lcom/google/android/gms/internal/aj;->lY:Landroid/location/Location;
invoke-direct/range {v0 .. v5}, Lcom/google/ads/mediation/MediationAdRequest;-><init>(Ljava/util/Date;Lcom/google/ads/AdRequest$Gender;Ljava/util/Set;ZLandroid/location/Location;)V
return-object v0
:cond_22
const/4 v3, 0x0
goto :goto_b
.end method
.method public static h(I)Lcom/google/ads/AdRequest$Gender;
.registers 2
packed-switch p0, :pswitch_data_c
sget-object v0, Lcom/google/ads/AdRequest$Gender;->UNKNOWN:Lcom/google/ads/AdRequest$Gender;
:goto_5
return-object v0
:pswitch_6
sget-object v0, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;
goto :goto_5
:pswitch_9
sget-object v0, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;
goto :goto_5
:pswitch_data_c
.packed-switch 0x1
:pswitch_9
:pswitch_6
.end packed-switch
.end method