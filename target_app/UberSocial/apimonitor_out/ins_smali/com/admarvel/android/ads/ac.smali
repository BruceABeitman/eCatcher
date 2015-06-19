.class  Lcom/admarvel/android/ads/ac;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a()I
.registers 2
sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
const-string v1, "1.5"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x3
:goto_b
return v0
:cond_c
invoke-static {}, Lcom/admarvel/android/ads/z;->a()I
move-result v0
goto :goto_b
.end method
.method static final b()Ljava/lang/String;
.registers 4
const-string v0, ""
:try_start_2
const-string v1, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"
invoke-static {v1}, Lcom/admarvel/android/ads/b;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v1
if-eqz v1, :cond_3b
const-string v2, "com.google.android.gms.ads.AdView"
invoke-static {v2}, Lcom/admarvel/android/ads/m;->a(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_3b
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v2
const/16 v3, 0x8
if-le v2, v3, :cond_3b
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "googleplay: found, "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->getAdnetworkSDKVersionInfo()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_3a
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_1f5
move-result-object v0
:cond_3b
:try_start_3b
:goto_3b
const-string v1, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"
invoke-static {v1}, Lcom/admarvel/android/ads/b;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v1
if-eqz v1, :cond_6c
const-string v2, "com.rhythmnewmedia.sdk.display.RhythmDisplayAdView"
invoke-static {v2}, Lcom/admarvel/android/ads/m;->a(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_6c
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "rhythm: found, "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->getAdnetworkSDKVersionInfo()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_6b
.catch Ljava/lang/Exception; {:try_start_3b .. :try_end_6b} :catch_20b
move-result-object v0
:goto_6c
:cond_6c
:try_start_6c
const-string v1, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"
invoke-static {v1}, Lcom/admarvel/android/ads/b;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v1
if-eqz v1, :cond_9d
const-string v2, "com.greystripe.sdk.GSMobileBannerAdView"
invoke-static {v2}, Lcom/admarvel/android/ads/m;->a(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_9d
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "greystripe: found, "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->getAdnetworkSDKVersionInfo()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_9c
.catch Ljava/lang/Exception; {:try_start_6c .. :try_end_9c} :catch_221
move-result-object v0
:goto_9d
:try_start_9d
:cond_9d
const-string v1, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"
invoke-static {v1}, Lcom/admarvel/android/ads/b;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v1
if-eqz v1, :cond_ce
const-string v2, "com.millennialmedia.android.MMAdView"
invoke-static {v2}, Lcom/admarvel/android/ads/m;->a(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_ce
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "millennial: found, "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->getAdnetworkSDKVersionInfo()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_cd
.catch Ljava/lang/Exception; {:try_start_9d .. :try_end_cd} :catch_237
move-result-object v0
:cond_ce
:goto_ce
:try_start_ce
const-string v1, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"
invoke-static {v1}, Lcom/admarvel/android/ads/b;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v1
if-eqz v1, :cond_ff
const-string v2, "com.amazon.device.ads.AdLayout"
invoke-static {v2}, Lcom/admarvel/android/ads/m;->a(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_ff
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "amazon: found, "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->getAdnetworkSDKVersionInfo()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_fe
.catch Ljava/lang/Exception; {:try_start_ce .. :try_end_fe} :catch_24d
move-result-object v0
:try_start_ff
:goto_ff
:cond_ff
const-string v1, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"
invoke-static {v1}, Lcom/admarvel/android/ads/b;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v1
if-eqz v1, :cond_130
const-string v2, "com.jirbo.adcolony.AdColony"
invoke-static {v2}, Lcom/admarvel/android/ads/m;->a(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_130
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "adcolony: found, "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->getAdnetworkSDKVersionInfo()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_12f
.catch Ljava/lang/Exception; {:try_start_ff .. :try_end_12f} :catch_263
move-result-object v0
:try_start_130
:goto_130
:cond_130
const-string v1, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"
invoke-static {v1}, Lcom/admarvel/android/ads/b;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v1
if-eqz v1, :cond_161
const-string v2, "com.amobee.pulse3d.Pulse3DView"
invoke-static {v2}, Lcom/admarvel/android/ads/m;->a(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_161
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "pulse3d: found, "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->getAdnetworkSDKVersionInfo()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_160
.catch Ljava/lang/Exception; {:try_start_130 .. :try_end_160} :catch_279
move-result-object v0
:goto_161
:cond_161
:try_start_161
const-string v1, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"
invoke-static {v1}, Lcom/admarvel/android/ads/b;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v1
if-eqz v1, :cond_192
const-string v2, "com.facebook.ads.AdView"
invoke-static {v2}, Lcom/admarvel/android/ads/m;->a(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_192
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "facebook: found, "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->getAdnetworkSDKVersionInfo()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_191
.catch Ljava/lang/Exception; {:try_start_161 .. :try_end_191} :catch_28f
move-result-object v0
:try_start_192
:cond_192
:goto_192
const-string v1, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"
invoke-static {v1}, Lcom/admarvel/android/ads/b;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v1
if-eqz v1, :cond_1c3
const-string v2, "com.inmobi.monetization.IMBanner"
invoke-static {v2}, Lcom/admarvel/android/ads/m;->a(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_1c3
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "inmobi: found, "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->getAdnetworkSDKVersionInfo()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_1c2
.catch Ljava/lang/Exception; {:try_start_192 .. :try_end_1c2} :catch_2a5
move-result-object v0
:try_start_1c3
:goto_1c3
:cond_1c3
const-string v1, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"
invoke-static {v1}, Lcom/admarvel/android/ads/b;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v1
if-eqz v1, :cond_1f4
const-string v2, "com.heyzap.sdk.ads.VideoAd"
invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v2
if-eqz v2, :cond_1f4
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "heyzap: found, "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->getAdnetworkSDKVersionInfo()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_1f3
.catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_1f3} :catch_2bb
move-result-object v0
:goto_1f4
:cond_1f4
return-object v0
:catch_1f5
move-exception v1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "googleplay: NOT found, admarvel-android-sdk-googleplay-adapter.jar NOT in classpath\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_3b
:catch_20b
move-exception v1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "rhythm: NOT found, admarvel-android-sdk-rhythm-adapter.jar NOT in classpath\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_6c
:catch_221
move-exception v1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "greystripe: NOT found, admarvel-android-sdk-greystripe-adapter.jar NOT in classpath\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_9d
:catch_237
move-exception v1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "millennial: NOT found, admarvel-android-sdk-millennial-adapter.jar NOT in classpath\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_ce
:catch_24d
move-exception v1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "amazon: NOT found, admarvel-android-sdk-amazon-adapter.jar NOT in classpath\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_ff
:catch_263
move-exception v1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "adcolony: NOT found, admarvel-android-sdk-adcolony-adapter.jar NOT in classpath\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_130
:catch_279
move-exception v1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "pulse3d: NOT found, admarvel-android-sdk-pulse3d-adapter.jar NOT in classpath\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_161
:catch_28f
move-exception v1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "facebook: NOT found, admarvel-android-sdk-facebook-adapter.jar NOT in classpath\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_192
:catch_2a5
move-exception v1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "inmobi: NOT found, admarvel-android-sdk-inmobi-adapter.jar NOT in classpath\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_1c3
:catch_2bb
move-exception v1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "heyzap: NOT found, admarvel-android-sdk-heyzap-adapter.jar NOT in classpath\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_1f4
.end method
.method static final c()Ljava/lang/String;
.registers 3
const-string v0, ""
:try_start_2
const-string v1, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"
invoke-static {v1}, Lcom/admarvel/android/ads/b;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v1
if-eqz v1, :cond_2d
const-string v1, "com.google.android.gms.ads.AdView"
invoke-static {v1}, Lcom/admarvel/android/ads/m;->a(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_2d
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v1
const/16 v2, 0x8
if-le v1, v2, :cond_2d
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "_googleplay_admob"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_2c
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_18f
move-result-object v0
:try_start_2d
:goto_2d
:cond_2d
const-string v1, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"
invoke-static {v1}, Lcom/admarvel/android/ads/b;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v1
if-eqz v1, :cond_50
const-string v1, "com.rhythmnewmedia.sdk.display.RhythmDisplayAdView"
invoke-static {v1}, Lcom/admarvel/android/ads/m;->a(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_50
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "_rhythm"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_4f
.catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4f} :catch_18c
move-result-object v0
:try_start_50
:cond_50
:goto_50
const-string v1, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"
invoke-static {v1}, Lcom/admarvel/android/ads/b;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v1
if-eqz v1, :cond_73
const-string v1, "com.greystripe.sdk.GSMobileBannerAdView"
invoke-static {v1}, Lcom/admarvel/android/ads/m;->a(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_73
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "_greystripe"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_72
.catch Ljava/lang/Exception; {:try_start_50 .. :try_end_72} :catch_189
move-result-object v0
:cond_73
:goto_73
:try_start_73
const-string v1, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"
invoke-static {v1}, Lcom/admarvel/android/ads/b;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v1
if-eqz v1, :cond_96
const-string v1, "com.millennialmedia.android.MMAdView"
invoke-static {v1}, Lcom/admarvel/android/ads/m;->a(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_96
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "_millennial"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_95
.catch Ljava/lang/Exception; {:try_start_73 .. :try_end_95} :catch_186
move-result-object v0
:try_start_96
:cond_96
:goto_96
const-string v1, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"
invoke-static {v1}, Lcom/admarvel/android/ads/b;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v1
if-eqz v1, :cond_b9
const-string v1, "com.amazon.device.ads.AdLayout"
invoke-static {v1}, Lcom/admarvel/android/ads/m;->a(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_b9
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "_amazon"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_b8
.catch Ljava/lang/Exception; {:try_start_96 .. :try_end_b8} :catch_183
move-result-object v0
:cond_b9
:goto_b9
:try_start_b9
const-string v1, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"
invoke-static {v1}, Lcom/admarvel/android/ads/b;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v1
if-eqz v1, :cond_dc
const-string v1, "com.jirbo.adcolony.AdColony"
invoke-static {v1}, Lcom/admarvel/android/ads/m;->a(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_dc
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "_adcolony"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_db
.catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_db} :catch_180
move-result-object v0
:cond_dc
:goto_dc
:try_start_dc
const-string v1, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"
invoke-static {v1}, Lcom/admarvel/android/ads/b;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v1
if-eqz v1, :cond_107
const-string v1, "com.amobee.pulse3d.Pulse3DView"
invoke-static {v1}, Lcom/admarvel/android/ads/m;->a(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_107
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v1
const/16 v2, 0xf
if-le v1, v2, :cond_107
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "_pulse3d"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_106
.catch Ljava/lang/Exception; {:try_start_dc .. :try_end_106} :catch_17e
move-result-object v0
:goto_107
:cond_107
:try_start_107
const-string v1, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"
invoke-static {v1}, Lcom/admarvel/android/ads/b;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v1
if-eqz v1, :cond_131
const-string v1, "com.facebook.ads.AdView"
invoke-static {v1}, Lcom/admarvel/android/ads/m;->a(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_131
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v1
const/4 v2, 0x7
if-le v1, v2, :cond_131
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "_facebook"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_130
.catch Ljava/lang/Exception; {:try_start_107 .. :try_end_130} :catch_17c
move-result-object v0
:try_start_131
:cond_131
:goto_131
const-string v1, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"
invoke-static {v1}, Lcom/admarvel/android/ads/b;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v1
if-eqz v1, :cond_154
const-string v1, "com.inmobi.monetization.IMBanner"
invoke-static {v1}, Lcom/admarvel/android/ads/m;->a(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_154
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "_inmobi"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_153
.catch Ljava/lang/Exception; {:try_start_131 .. :try_end_153} :catch_17a
move-result-object v0
:try_start_154
:goto_154
:cond_154
const-string v1, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"
invoke-static {v1}, Lcom/admarvel/android/ads/b;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v1
if-eqz v1, :cond_177
const-string v1, "com.heyzap.sdk.ads.VideoAd"
invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v1
if-eqz v1, :cond_177
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "_heyzap"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_176
.catch Ljava/lang/Exception; {:try_start_154 .. :try_end_176} :catch_178
move-result-object v0
:cond_177
:goto_177
return-object v0
:catch_178
move-exception v1
goto :goto_177
:catch_17a
move-exception v1
goto :goto_154
:catch_17c
move-exception v1
goto :goto_131
:catch_17e
move-exception v1
goto :goto_107
:catch_180
move-exception v1
goto/16 :goto_dc
:catch_183
move-exception v1
goto/16 :goto_b9
:catch_186
move-exception v1
goto/16 :goto_96
:catch_189
move-exception v1
goto/16 :goto_73
:catch_18c
move-exception v1
goto/16 :goto_50
:catch_18f
move-exception v1
goto/16 :goto_2d
.end method