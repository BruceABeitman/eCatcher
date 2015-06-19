.class  Lcom/admarvel/android/ads/AdMarvelActivity$p;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/lang/String;
.field private final b:Ljava/lang/ref/WeakReference;
.field private final c:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelActivity;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$p;->a:Ljava/lang/String;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$p;->b:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$p;->c:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public run()V
.registers 14
const/4 v3, 0x0
const/4 v1, 0x1
const/4 v2, 0x0
:try_start_3
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$p;->b:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$p;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
move-object v8, v0
:goto_10
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$p;->c:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$p;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;
move-object v7, v0
:goto_1d
if-nez v7, :cond_24
:goto_1f
:cond_1f
return-void
:cond_20
move-object v8, v3
goto :goto_10
:cond_22
move-object v7, v3
goto :goto_1d
:cond_24
if-eqz v8, :cond_1f
const-string v0, "NO"
invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;)I
move-result v4
const/4 v0, -0x1
if-ne v4, v1, :cond_2ee
move v6, v2
:goto_3c
const-string v0, "wifi"
invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_4c
const-string v0, "mobile"
invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2f6
:cond_4c
const-string v0, "YES"
move-object v5, v0
:goto_4f
invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;
move-result-object v0
const-string v4, "location"
invoke-static {v0, v4}, Lcom/admarvel/android/ads/ab;->c(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_30b
invoke-static {}, Lcom/admarvel/android/ads/l;->a()Lcom/admarvel/android/ads/l;
move-result-object v0
invoke-virtual {v0, v8}, Lcom/admarvel/android/ads/l;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/location/Location;
move-result-object v0
:goto_63
if-eqz v0, :cond_2fb
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "{lat:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {v0}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v10
invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", lon:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {v0}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v10
invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", acc:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {v0}, Ldroidbox/android/location/Location;->getAccuracy(Landroid/location/Location;)F
move-result v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "}"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v4, v0
:goto_9f
const-string v10, "2.4.5.1"
invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelActivity;->h(Lcom/admarvel/android/ads/AdMarvelActivity;)Z
move-result v0
if-eqz v0, :cond_300
const-string v0, "Expanded"
move-object v3, v0
:goto_aa
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "{screen: true, orientation: true, heading: "
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;
move-result-object v11
const-string v12, "compass"
invoke-static {v11, v12}, Lcom/admarvel/android/ads/ab;->c(Landroid/content/Context;Ljava/lang/String;)Z
move-result v11
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v11, ", location : "
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;
move-result-object v0
const-string v12, "android.permission.ACCESS_COARSE_LOCATION"
invoke-static {v0, v12}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_e1
invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;
move-result-object v0
const-string v12, "android.permission.ACCESS_FINE_LOCATION"
invoke-static {v0, v12}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_305
:cond_e1
move v0, v1
:goto_e2
invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v11, ",shake: "
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;
move-result-object v11
const-string v12, "accelerometer"
invoke-static {v11, v12}, Lcom/admarvel/android/ads/ab;->c(Landroid/content/Context;Ljava/lang/String;)Z
move-result v11
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v11, ",tilt: "
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;
move-result-object v11
const-string v12, "accelerometer"
invoke-static {v11, v12}, Lcom/admarvel/android/ads/ab;->c(Landroid/content/Context;Ljava/lang/String;)Z
move-result v11
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v11, ", network: true, sms:"
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;
move-result-object v11
invoke-static {v11}, Lcom/admarvel/android/ads/ab;->j(Landroid/content/Context;)Z
move-result v11
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v11, ", phone:"
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;
move-result-object v11
invoke-static {v11}, Lcom/admarvel/android/ads/ab;->j(Landroid/content/Context;)Z
move-result v11
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v11, ", email:true,calendar:"
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;
move-result-object v0
const-string v12, "android.permission.READ_CALENDAR"
invoke-static {v0, v12}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_308
invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;
move-result-object v0
const-string v12, "android.permission.WRITE_CALENDAR"
invoke-static {v0, v12}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_308
move v0, v1
:goto_151
invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", camera: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;
move-result-object v1
const-string v2, "camera"
invoke-static {v1, v2}, Lcom/admarvel/android/ads/ab;->c(Landroid/content/Context;Ljava/lang/String;)Z
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ",map:true, audio:true, video:true, \'level-1\':true,\'level-2\': true, \'level-3\':false}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelActivity;->getWindow()Landroid/view/Window;
move-result-object v0
const v2, 0x1020002
invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I
invoke-static {v7}, Lcom/admarvel/android/ads/ab;->a(Landroid/app/Activity;)Ljava/lang/String;
:try_end_186
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_186} :catch_2d1
move-result-object v2
:try_start_187
new-instance v11, Ljava/lang/StringBuilder;
invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
const-string v12, "javascript:"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
iget-object v12, p0, Lcom/admarvel/android/ads/AdMarvelActivity$p;->a:Ljava/lang/String;
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
const-string v12, "({x:"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v8}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getLeft()I
move-result v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v11
const-string v12, ",y:"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v8}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getTop()I
move-result v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v11
const-string v12, ",width:"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v8}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getWidth()I
move-result v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v11
const-string v12, ",height:"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v8}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getHeight()I
move-result v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v11
const-string v12, ",appX:"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I
move-result v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v11
const-string v12, ",appY:"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I
move-result v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v11
const-string v12, ",appWidth:"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I
move-result v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v11
const-string v12, ",appHeight:"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I
move-result v0
invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v11, ",orientation:"
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v6, ",networkType:"
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v6, "\'"
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v6, "\'"
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v6, ",network:"
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v6, "\'"
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, "\'"
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, ",screenWidth:"
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;
move-result-object v5
invoke-static {v5}, Lcom/admarvel/android/ads/ab;->g(Landroid/content/Context;)I
move-result v5
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, ",screenHeight:"
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;
move-result-object v5
invoke-static {v5}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I
move-result v5
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, ",adType:"
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, "\'"
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "\'"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, ",supportedFeatures:"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ",sdkVersion:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ",location:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ",applicationSupportedOrientations:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "})"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v8, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
:try_end_2c5
.catch Ljava/lang/Exception; {:try_start_187 .. :try_end_2c5} :catch_2c7
goto/16 :goto_1f
:catch_2c7
move-exception v0
:try_start_2c8
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_2cf
.catch Ljava/lang/Exception; {:try_start_2c8 .. :try_end_2cf} :catch_2d1
goto/16 :goto_1f
:catch_2d1
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " Exception in InitAdMarvel "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_1f
:cond_2ee
const/4 v5, 0x2
if-ne v4, v5, :cond_30e
const/16 v0, 0x5a
move v6, v0
goto/16 :goto_3c
:cond_2f6
:try_start_2f6
const-string v0, "NO"
move-object v5, v0
goto/16 :goto_4f
:cond_2fb
const-string v0, "null"
move-object v4, v0
goto/16 :goto_9f
:cond_300
const-string v0, "Interstitial"
:try_end_302
.catch Ljava/lang/Exception; {:try_start_2f6 .. :try_end_302} :catch_2d1
move-object v3, v0
goto/16 :goto_aa
:cond_305
move v0, v2
goto/16 :goto_e2
:cond_308
move v0, v2
goto/16 :goto_151
:cond_30b
move-object v0, v3
goto/16 :goto_63
:cond_30e
move v6, v0
goto/16 :goto_3c
.end method