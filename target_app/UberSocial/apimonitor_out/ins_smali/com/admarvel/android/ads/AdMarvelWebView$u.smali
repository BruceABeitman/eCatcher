.class  Lcom/admarvel/android/ads/AdMarvelWebView$u;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/lang/String;
.field private final b:Ljava/lang/ref/WeakReference;
.field private final c:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelWebView;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$u;->a:Ljava/lang/String;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$u;->b:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$u;->c:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public run()V
.registers 22
:try_start_0
move-object/from16 v0, p0
iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView$u;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/admarvel/android/ads/AdMarvelWebView$u;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v2, :cond_17
:cond_16
:goto_16
return-void
:cond_17
if-eqz v1, :cond_16
const/4 v3, 0x0
const-string v4, ""
const-string v4, "NO"
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v4
invoke-static {v4}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v16
const/4 v4, -0x1
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v5
const/16 v6, 0x9
if-ge v5, v6, :cond_371
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getResources()Landroid/content/res/Resources;
move-result-object v5
invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v5
iget v5, v5, Landroid/content/res/Configuration;->orientation:I
const/4 v6, 0x1
if-ne v5, v6, :cond_369
const/4 v4, 0x0
move v15, v4
:goto_3e
const-string v4, "wifi"
move-object/from16 v0, v16
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_52
const-string v4, "mobile"
move-object/from16 v0, v16
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_393
:cond_52
const-string v4, "YES"
move-object v14, v4
:goto_55
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v4
const-string v5, "location"
invoke-static {v4, v5}, Lcom/admarvel/android/ads/ab;->c(Landroid/content/Context;Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_69
invoke-static {}, Lcom/admarvel/android/ads/l;->a()Lcom/admarvel/android/ads/l;
move-result-object v3
invoke-virtual {v3, v1}, Lcom/admarvel/android/ads/l;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/location/Location;
move-result-object v3
:cond_69
if-eqz v3, :cond_398
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "{lat:"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-static {v3}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v5
invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ", lon:"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-static {v3}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v5
invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ", acc:"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-static {v3}, Ldroidbox/android/location/Location;->getAccuracy(Landroid/location/Location;)F
move-result v3
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "}"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
move-object v13, v3
:goto_a5
const-string v17, "2.4.5.1"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "{screen: true, orientation: true, heading: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v4
const-string v5, "compass"
invoke-static {v4, v5}, Lcom/admarvel/android/ads/ab;->c(Landroid/content/Context;Ljava/lang/String;)Z
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", location : "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v3
const-string v5, "android.permission.ACCESS_COARSE_LOCATION"
invoke-static {v3, v5}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_de
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v3
const-string v5, "android.permission.ACCESS_FINE_LOCATION"
invoke-static {v3, v5}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_39d
:cond_de
const/4 v3, 0x1
:goto_df
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ",shake: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v4
const-string v5, "accelerometer"
invoke-static {v4, v5}, Lcom/admarvel/android/ads/ab;->c(Landroid/content/Context;Ljava/lang/String;)Z
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ",tilt: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v4
const-string v5, "accelerometer"
invoke-static {v4, v5}, Lcom/admarvel/android/ads/ab;->c(Landroid/content/Context;Ljava/lang/String;)Z
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", network: true, sms:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v4
invoke-static {v4}, Lcom/admarvel/android/ads/ab;->j(Landroid/content/Context;)Z
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", phone:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v4
invoke-static {v4}, Lcom/admarvel/android/ads/ab;->j(Landroid/content/Context;)Z
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", email:true,calendar:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v3
const-string v5, "android.permission.READ_CALENDAR"
invoke-static {v3, v5}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_3a0
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v3
const-string v5, "android.permission.WRITE_CALENDAR"
invoke-static {v3, v5}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_3a0
const/4 v3, 0x1
:goto_14e
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", camera: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v4
const-string v5, "camera"
invoke-static {v4, v5}, Lcom/admarvel/android/ads/ab;->c(Landroid/content/Context;Ljava/lang/String;)Z
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ",map:true, audio:true, video:true, \'level-1\':true,\'level-2\': true, \'level-3\':false}"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
const/4 v7, 0x0
const/4 v6, 0x0
const/4 v5, 0x0
const/4 v4, 0x0
const-string v19, "Banner"
const/4 v8, 0x0
iget-object v3, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->adMarvelViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/admarvel/android/ads/AdMarvelView;
if-eqz v3, :cond_3f2
const/4 v4, 0x2
new-array v7, v4, [I
:try_end_184
.catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_184} :catch_35f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_184} :catch_3ae
:try_start_184
invoke-virtual {v1, v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getLocationOnScreen([I)V
:try_start_187
:try_end_187
.catch Ljava/lang/Exception; {:try_start_184 .. :try_end_187} :catch_3a3
.catch Ljava/lang/NullPointerException; {:try_start_184 .. :try_end_187} :catch_35f
:goto_187
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v4
instance-of v4, v4, Landroid/app/Activity;
if-eqz v4, :cond_3ef
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v4
check-cast v4, Landroid/app/Activity;
if-eqz v4, :cond_3ef
iget v5, v2, Lcom/admarvel/android/ads/AdMarvelWebView;->f:I
const/high16 v6, -0x8000
if-eq v5, v6, :cond_3b8
iget v5, v2, Lcom/admarvel/android/ads/AdMarvelWebView;->f:I
if-ltz v5, :cond_3b8
iget v4, v2, Lcom/admarvel/android/ads/AdMarvelWebView;->f:I
:cond_1a3
:goto_1a3
const/4 v5, 0x0
aget v6, v7, v5
const/4 v5, 0x1
aget v5, v7, v5
sub-int/2addr v5, v4
invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelView;->getWidth()I
move-result v4
invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelView;->getHeight()I
move-result v3
iput v6, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mInitLayoutX:I
iput v5, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->mInitLayoutY:I
move v9, v3
move v10, v4
move v11, v5
move v12, v6
:goto_1ba
const-string v8, "0,90"
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getRootView()Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getLeft()I
move-result v7
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getRootView()Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getTop()I
move-result v6
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getRootView()Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getWidth()I
move-result v5
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getRootView()Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getHeight()I
move-result v4
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v3
instance-of v3, v3, Landroid/app/Activity;
if-eqz v3, :cond_3e8
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v3
check-cast v3, Landroid/app/Activity;
if-eqz v3, :cond_3e8
invoke-static {v3}, Lcom/admarvel/android/ads/ab;->a(Landroid/app/Activity;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v3
const v4, 0x1020002
invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/view/ViewGroup;
invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I
move-result v6
invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I
move-result v5
invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I
move-result v4
invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I
:try_end_20c
.catch Ljava/lang/NullPointerException; {:try_start_187 .. :try_end_20c} :catch_35f
.catch Ljava/lang/Exception; {:try_start_187 .. :try_end_20c} :catch_3ae
move-result v3
:goto_20d
:try_start_20d
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v20, "javascript:"
move-object/from16 v0, v20
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView$u;->a:Ljava/lang/String;
move-object/from16 v20, v0
move-object/from16 v0, v20
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v20, "({x:"
move-object/from16 v0, v20
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v12, ",y:"
invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v11, ",width:"
invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v10, ",height:"
invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, ",appX:"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string v8, ",appY:"
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ",appWidth:"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ",appHeight:"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ",orientation:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ",networkType:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\'"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object/from16 v0, v16
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\'"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ",network:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\'"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\'"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ",screenWidth:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v4
invoke-static {v4}, Lcom/admarvel/android/ads/ab;->g(Landroid/content/Context;)I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ",screenHeight:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v2}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I
move-result v2
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ",adType:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move-object/from16 v0, v19
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ",supportedFeatures:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move-object/from16 v0, v18
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ",sdkVersion:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move-object/from16 v0, v17
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ",location:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ",applicationSupportedOrientations:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "})"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Initial Frame Values : "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
:try_end_353
.catch Ljava/lang/Exception; {:try_start_20d .. :try_end_353} :catch_355
.catch Ljava/lang/NullPointerException; {:try_start_20d .. :try_end_353} :catch_35f
goto/16 :goto_16
:catch_355
move-exception v1
:try_start_356
invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_35d
.catch Ljava/lang/NullPointerException; {:try_start_356 .. :try_end_35d} :catch_35f
.catch Ljava/lang/Exception; {:try_start_356 .. :try_end_35d} :catch_3ae
goto/16 :goto_16
:catch_35f
move-exception v1
invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_16
:cond_369
const/4 v6, 0x2
if-ne v5, v6, :cond_3f8
const/16 v4, 0x5a
move v15, v4
goto/16 :goto_3e
:try_start_371
:cond_371
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->o(Lcom/admarvel/android/ads/AdMarvelWebView;)I
move-result v5
if-nez v5, :cond_37b
const/4 v4, 0x0
move v15, v4
goto/16 :goto_3e
:cond_37b
const/4 v6, 0x1
if-ne v5, v6, :cond_383
const/16 v4, 0x5a
move v15, v4
goto/16 :goto_3e
:cond_383
const/4 v6, 0x2
if-ne v5, v6, :cond_38b
const/16 v4, 0xb4
move v15, v4
goto/16 :goto_3e
:cond_38b
const/4 v6, 0x3
if-ne v5, v6, :cond_3f8
const/16 v4, -0x5a
move v15, v4
goto/16 :goto_3e
:cond_393
const-string v4, "NO"
move-object v14, v4
goto/16 :goto_55
:cond_398
const-string v3, "null"
move-object v13, v3
goto/16 :goto_a5
:cond_39d
const/4 v3, 0x0
goto/16 :goto_df
:cond_3a0
const/4 v3, 0x0
goto/16 :goto_14e
:catch_3a3
move-exception v4
const/4 v4, 0x0
const/4 v5, 0x0
aput v5, v7, v4
const/4 v4, 0x1
const/4 v5, 0x0
aput v5, v7, v4
:try_end_3ac
.catch Ljava/lang/NullPointerException; {:try_start_371 .. :try_end_3ac} :catch_35f
.catch Ljava/lang/Exception; {:try_start_371 .. :try_end_3ac} :catch_3ae
goto/16 :goto_187
:catch_3ae
move-exception v1
invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_16
:cond_3b8
:try_start_3b8
invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v5
const v6, 0x1020002
invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/view/ViewGroup;
new-instance v6, Landroid/util/DisplayMetrics;
invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v4
invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v4
invoke-virtual {v4, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget v4, v6, Landroid/util/DisplayMetrics;->heightPixels:I
invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I
move-result v5
sub-int/2addr v4, v5
if-ltz v4, :cond_1a3
iget v5, v2, Lcom/admarvel/android/ads/AdMarvelWebView;->f:I
const/high16 v6, -0x8000
if-ne v5, v6, :cond_1a3
iput v4, v2, Lcom/admarvel/android/ads/AdMarvelWebView;->f:I
:try_end_3e6
.catch Ljava/lang/NullPointerException; {:try_start_3b8 .. :try_end_3e6} :catch_35f
.catch Ljava/lang/Exception; {:try_start_3b8 .. :try_end_3e6} :catch_3ae
goto/16 :goto_1a3
:cond_3e8
move v3, v4
move v4, v5
move v5, v6
move v6, v7
move-object v7, v8
goto/16 :goto_20d
:cond_3ef
move v4, v8
goto/16 :goto_1a3
:cond_3f2
move v9, v4
move v10, v5
move v11, v6
move v12, v7
goto/16 :goto_1ba
:cond_3f8
move v15, v4
goto/16 :goto_3e
.end method