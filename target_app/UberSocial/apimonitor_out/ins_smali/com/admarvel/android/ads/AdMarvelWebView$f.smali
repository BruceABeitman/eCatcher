.class  Lcom/admarvel/android/ads/AdMarvelWebView$f;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/lang/String;
.field private final b:Ljava/lang/ref/WeakReference;
.field private final c:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelWebView;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$f;->a:Ljava/lang/String;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$f;->b:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$f;->c:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public run()V
.registers 26
:try_start_0
move-object/from16 v0, p0
iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView$f;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/admarvel/android/ads/AdMarvelWebView$f;->c:Ljava/lang/ref/WeakReference;
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
const/4 v4, -0x1
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v5
const/16 v6, 0x9
if-ge v5, v6, :cond_3c2
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getResources()Landroid/content/res/Resources;
move-result-object v5
invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v5
iget v5, v5, Landroid/content/res/Configuration;->orientation:I
const/4 v6, 0x1
if-ne v5, v6, :cond_3b9
const/4 v4, 0x0
move/from16 v19, v4
:goto_35
const-string v4, "NO"
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v4
invoke-static {v4}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v20
const-string v4, "wifi"
move-object/from16 v0, v20
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_53
const-string v4, "mobile"
move-object/from16 v0, v20
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_3e8
:cond_53
const-string v4, "YES"
move-object/from16 v18, v4
:goto_57
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v4
const-string v5, "location"
invoke-static {v4, v5}, Lcom/admarvel/android/ads/ab;->c(Landroid/content/Context;Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_6b
invoke-static {}, Lcom/admarvel/android/ads/l;->a()Lcom/admarvel/android/ads/l;
move-result-object v3
invoke-virtual {v3, v1}, Lcom/admarvel/android/ads/l;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/location/Location;
move-result-object v3
:cond_6b
if-eqz v3, :cond_3ee
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
move-object/from16 v17, v3
:goto_a8
const-string v21, "2.4.5.1"
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
if-nez v3, :cond_e1
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v3
const-string v5, "android.permission.ACCESS_FINE_LOCATION"
invoke-static {v3, v5}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_3f4
:cond_e1
const/4 v3, 0x1
:goto_e2
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
if-eqz v3, :cond_3f7
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v3
const-string v5, "android.permission.WRITE_CALENDAR"
invoke-static {v3, v5}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_3f7
const/4 v3, 0x1
:goto_151
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
move-result-object v22
const/4 v11, 0x0
const/4 v10, 0x0
const/4 v9, 0x0
const/4 v8, 0x0
const/4 v7, 0x0
const/4 v6, 0x0
const/4 v5, 0x0
const/4 v4, 0x0
const-string v23, "Banner"
const/4 v12, 0x0
iget-object v3, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->adMarvelViewReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/admarvel/android/ads/AdMarvelView;
if-eqz v3, :cond_449
const/4 v4, 0x2
new-array v6, v4, [I
:try_end_18b
.catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_18b} :catch_3af
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18b} :catch_405
:try_start_18b
invoke-virtual {v1, v6}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getLocationOnScreen([I)V
:try_start_18e
:try_end_18e
.catch Ljava/lang/Exception; {:try_start_18b .. :try_end_18e} :catch_3fa
.catch Ljava/lang/NullPointerException; {:try_start_18b .. :try_end_18e} :catch_3af
:goto_18e
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v4
instance-of v4, v4, Landroid/app/Activity;
if-eqz v4, :cond_446
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v4
check-cast v4, Landroid/app/Activity;
if-eqz v4, :cond_446
iget v5, v2, Lcom/admarvel/android/ads/AdMarvelWebView;->f:I
const/high16 v7, -0x8000
if-eq v5, v7, :cond_40f
iget v5, v2, Lcom/admarvel/android/ads/AdMarvelWebView;->f:I
if-ltz v5, :cond_40f
iget v4, v2, Lcom/admarvel/android/ads/AdMarvelWebView;->f:I
:goto_1aa
:cond_1aa
const/4 v5, 0x0
aget v10, v6, v5
const/4 v5, 0x1
aget v5, v6, v5
sub-int v9, v5, v4
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getWidth()I
move-result v8
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getHeight()I
move-result v7
const/4 v5, 0x2
new-array v5, v5, [I
invoke-virtual {v3, v5}, Lcom/admarvel/android/ads/AdMarvelView;->getLocationOnScreen([I)V
const/4 v6, 0x0
aget v6, v5, v6
const/4 v11, 0x1
aget v5, v5, v11
sub-int/2addr v5, v4
invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelView;->getWidth()I
move-result v4
invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelView;->getHeight()I
move-result v3
move v11, v5
move v12, v6
move v13, v7
move v14, v8
move v15, v9
move/from16 v16, v10
move v9, v3
move v10, v4
:goto_1d8
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
if-eqz v3, :cond_43f
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v3
check-cast v3, Landroid/app/Activity;
if-eqz v3, :cond_43f
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
:try_end_22a
.catch Ljava/lang/NullPointerException; {:try_start_18e .. :try_end_22a} :catch_3af
.catch Ljava/lang/Exception; {:try_start_18e .. :try_end_22a} :catch_405
move-result v3
:goto_22b
:try_start_22b
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "javascript:"
move-object/from16 v0, v24
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView$f;->a:Ljava/lang/String;
move-object/from16 v24, v0
move-object/from16 v0, v24
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v24, "({x:"
move-object/from16 v0, v24
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
move/from16 v0, v16
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v16, ",y:"
move-object/from16 v0, v16
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v15, ",width:"
invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v14, ",height:"
invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v13, ",appX:"
invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
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
move/from16 v0, v19
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ",defaultX:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ",defaultY:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ",defaultWidth:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ",defaultHeight:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ",networkType:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\'"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object/from16 v0, v20
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
move-object/from16 v0, v18
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
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
move-object/from16 v0, v23
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ",supportedFeatures:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move-object/from16 v0, v22
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ",sdkVersion:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move-object/from16 v0, v21
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ",location:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move-object/from16 v0, v17
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
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
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Updating Frame values : "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_3a3
.catch Ljava/lang/Exception; {:try_start_22b .. :try_end_3a3} :catch_3a5
.catch Ljava/lang/NullPointerException; {:try_start_22b .. :try_end_3a3} :catch_3af
goto/16 :goto_16
:catch_3a5
move-exception v1
:try_start_3a6
invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_3ad
.catch Ljava/lang/NullPointerException; {:try_start_3a6 .. :try_end_3ad} :catch_3af
.catch Ljava/lang/Exception; {:try_start_3a6 .. :try_end_3ad} :catch_405
goto/16 :goto_16
:catch_3af
move-exception v1
invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_16
:cond_3b9
const/4 v6, 0x2
if-ne v5, v6, :cond_454
const/16 v4, 0x5a
move/from16 v19, v4
goto/16 :goto_35
:cond_3c2
:try_start_3c2
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->o(Lcom/admarvel/android/ads/AdMarvelWebView;)I
move-result v5
if-nez v5, :cond_3cd
const/4 v4, 0x0
move/from16 v19, v4
goto/16 :goto_35
:cond_3cd
const/4 v6, 0x1
if-ne v5, v6, :cond_3d6
const/16 v4, 0x5a
move/from16 v19, v4
goto/16 :goto_35
:cond_3d6
const/4 v6, 0x2
if-ne v5, v6, :cond_3df
const/16 v4, 0xb4
move/from16 v19, v4
goto/16 :goto_35
:cond_3df
const/4 v6, 0x3
if-ne v5, v6, :cond_454
const/16 v4, -0x5a
move/from16 v19, v4
goto/16 :goto_35
:cond_3e8
const-string v4, "NO"
move-object/from16 v18, v4
goto/16 :goto_57
:cond_3ee
const-string v3, "null"
move-object/from16 v17, v3
goto/16 :goto_a8
:cond_3f4
const/4 v3, 0x0
goto/16 :goto_e2
:cond_3f7
const/4 v3, 0x0
goto/16 :goto_151
:catch_3fa
move-exception v4
const/4 v4, 0x0
const/4 v5, 0x0
aput v5, v6, v4
const/4 v4, 0x1
const/4 v5, 0x0
aput v5, v6, v4
:try_end_403
.catch Ljava/lang/NullPointerException; {:try_start_3c2 .. :try_end_403} :catch_3af
.catch Ljava/lang/Exception; {:try_start_3c2 .. :try_end_403} :catch_405
goto/16 :goto_18e
:catch_405
move-exception v1
invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_16
:cond_40f
:try_start_40f
invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v5
const v7, 0x1020002
invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/view/ViewGroup;
new-instance v7, Landroid/util/DisplayMetrics;
invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v4
invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v4
invoke-virtual {v4, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget v4, v7, Landroid/util/DisplayMetrics;->heightPixels:I
invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I
move-result v5
sub-int/2addr v4, v5
if-ltz v4, :cond_1aa
iget v5, v2, Lcom/admarvel/android/ads/AdMarvelWebView;->f:I
const/high16 v7, -0x8000
if-ne v5, v7, :cond_1aa
iput v4, v2, Lcom/admarvel/android/ads/AdMarvelWebView;->f:I
:try_end_43d
.catch Ljava/lang/NullPointerException; {:try_start_40f .. :try_end_43d} :catch_3af
.catch Ljava/lang/Exception; {:try_start_40f .. :try_end_43d} :catch_405
goto/16 :goto_1aa
:cond_43f
move v3, v4
move v4, v5
move v5, v6
move v6, v7
move-object v7, v8
goto/16 :goto_22b
:cond_446
move v4, v12
goto/16 :goto_1aa
:cond_449
move v12, v7
move v13, v8
move v14, v9
move v15, v10
move/from16 v16, v11
move v11, v6
move v9, v4
move v10, v5
goto/16 :goto_1d8
:cond_454
move/from16 v19, v4
goto/16 :goto_35
.end method