.class  Lcom/admarvel/android/ads/AdMarvelActivity$4;
.super Landroid/os/Handler;
.source "SourceFile"
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelActivity;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelActivity;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 16
const/4 v13, 0x3
const/4 v12, 0x2
const/4 v11, 0x1
const/4 v10, 0x0
const/4 v6, 0x0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
sget v1, Lcom/admarvel/android/ads/AdMarvelActivity;->b:I
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
move-object v9, v0
check-cast v9, Landroid/widget/RelativeLayout;
new-instance v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->a(Lcom/admarvel/android/ads/AdMarvelActivity;)Z
move-result v2
if-eqz v2, :cond_15f
move v2, v10
:goto_1d
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelActivity;->e(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v4}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v4
iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v5}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;
move-result-object v5
iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelActivity;->g(Lcom/admarvel/android/ads/AdMarvelActivity;)Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v8
move-object v7, v6
invoke-direct/range {v0 .. v8}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/admarvel/android/ads/AdMarvelView;Landroid/widget/RelativeLayout;Lcom/admarvel/android/ads/AdMarvelAd;)V
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setVisibility(I)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "WEBVIEW"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setTag(Ljava/lang/Object;)V
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->i()V
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v1
const/16 v2, 0xb
if-lt v1, v2, :cond_162
invoke-static {v0}, Lcom/admarvel/android/ads/ak;->a(Landroid/webkit/WebView;)V
:goto_67
new-instance v1, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelActivity;->g(Lcom/admarvel/android/ads/AdMarvelActivity;)Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v3
invoke-direct {v1, v0, v2, v3}, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelAd;)V
const-string v2, "ADMARVEL"
invoke-virtual {v0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
new-instance v1, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-direct {v1, v0, v2}, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelActivity;)V
const-string v2, "AndroidBridge"
invoke-virtual {v0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v1
const-string v2, "android.permission.RECORD_AUDIO"
invoke-static {v1, v2}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_e1
new-array v1, v13, [Ljava/lang/Class;
const-class v2, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
aput-object v2, v1, v10
const-class v2, Ljava/lang/String;
aput-object v2, v1, v11
const-class v2, Ljava/lang/String;
aput-object v2, v1, v12
:try_start_a1
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->g(Lcom/admarvel/android/ads/AdMarvelActivity;)Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v2
if-eqz v2, :cond_e1
const-string v2, "com.admarvel.android.admarvelspeechkitadapter.Speech"
invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v3
const-string v4, "initSpeechMembers"
invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v1
const/4 v2, 0x3
new-array v2, v2, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object v0, v2, v4
const/4 v4, 0x1
iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v5}, Lcom/admarvel/android/ads/AdMarvelActivity;->g(Lcom/admarvel/android/ads/AdMarvelActivity;)Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v5
invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getBannerid()Ljava/lang/String;
move-result-object v5
aput-object v5, v2, v4
const/4 v4, 0x2
iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v5}, Lcom/admarvel/android/ads/AdMarvelActivity;->g(Lcom/admarvel/android/ads/AdMarvelActivity;)Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v5
invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;
move-result-object v5
aput-object v5, v2, v4
invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "ADMARVEL_SPEECH"
invoke-virtual {v0, v3, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
:try_end_e1
.catch Ljava/lang/ClassNotFoundException; {:try_start_a1 .. :try_end_e1} :catch_167
.catch Ljava/lang/InstantiationException; {:try_start_a1 .. :try_end_e1} :catch_171
.catch Ljava/lang/IllegalAccessException; {:try_start_a1 .. :try_end_e1} :catch_17b
.catch Ljava/lang/NoSuchMethodException; {:try_start_a1 .. :try_end_e1} :catch_185
.catch Ljava/lang/IllegalArgumentException; {:try_start_a1 .. :try_end_e1} :catch_18f
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a1 .. :try_end_e1} :catch_199
.catch Ljava/lang/NullPointerException; {:try_start_a1 .. :try_end_e1} :catch_1a3
:cond_e1
:goto_e1
invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->a(Lcom/admarvel/android/ads/AdMarvelActivity;)Z
move-result v1
if-nez v1, :cond_12a
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->h(Lcom/admarvel/android/ads/AdMarvelActivity;)Z
move-result v1
if-nez v1, :cond_12a
new-instance v1, Lcom/admarvel/android/ads/w;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v3
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v4}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v2, v3, v4}, Lcom/admarvel/android/ads/w;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;)V
const/4 v2, 0x4
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/w;->setVisibility(I)V
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "CONTROLS"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/w;->setTag(Ljava/lang/Object;)V
invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
:cond_12a
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->a(Lcom/admarvel/android/ads/AdMarvelActivity;)Z
move-result v1
if-eqz v1, :cond_141
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->i(Lcom/admarvel/android/ads/AdMarvelActivity;)Lcom/admarvel/android/ads/AdMarvelActivity$b;
move-result-object v2
invoke-static {v1, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Ljava/lang/String;Lcom/admarvel/android/ads/g;)V
:cond_141
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_1ad
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_1ad
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
:goto_15e
:cond_15e
return-void
:cond_15f
move v2, v11
goto/16 :goto_1d
:cond_162
invoke-static {v0}, Lcom/admarvel/android/ads/al;->a(Landroid/webkit/WebView;)V
goto/16 :goto_67
:catch_167
move-exception v1
invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_e1
:catch_171
move-exception v1
invoke-virtual {v1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_e1
:catch_17b
move-exception v1
invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_e1
:catch_185
move-exception v1
invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_e1
:catch_18f
move-exception v1
invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_e1
:catch_199
move-exception v1
invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_e1
:catch_1a3
move-exception v1
invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_e1
:cond_1ad
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->e()Z
move-result v1
if-eqz v1, :cond_2b9
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->k(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_2b9
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->k(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_2b9
sget-boolean v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableOfflineSDK:Z
if-eqz v1, :cond_2af
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->k(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1ea
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v1}, Lcom/admarvel/android/ads/ab;->f(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_1ea
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->k(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
:cond_1ea
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->k(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_27d
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
const-string v2, "admarvel_preferences"
invoke-virtual {v1, v2, v10}, Lcom/admarvel/android/ads/AdMarvelActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "childDirectory"
const-string v4, "NULL"
invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "banner_folder"
const-string v4, "NULL"
invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_252
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelActivity;->k(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v3}, Lcom/admarvel/android/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->a(Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;)Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Offline SDK:Admarvel XML Response:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->e(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:cond_252
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->g(Lcom/admarvel/android/ads/AdMarvelActivity;)Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v2
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getOfflineBaseUrl()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->l(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v2
const-string v3, "text/html"
const-string v4, "utf-8"
move-object v5, v6
invoke-virtual/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:cond_27d
:goto_27d
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->m(Lcom/admarvel/android/ads/AdMarvelActivity;)Z
move-result v1
if-nez v1, :cond_28e
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->n(Lcom/admarvel/android/ads/AdMarvelActivity;)Z
move-result v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Z)V
:cond_28e
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->o(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_15e
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->o(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_15e
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->o(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->a(Ljava/lang/String;)V
goto/16 :goto_15e
:cond_2af
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->k(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
goto :goto_27d
:cond_2b9
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->p(Lcom/admarvel/android/ads/AdMarvelActivity;)I
move-result v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setBackgroundColor(I)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "content://"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ".AdMarvelLocalFileContentProvider"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sget-boolean v2, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableOfflineSDK:Z
if-eqz v2, :cond_312
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->g(Lcom/admarvel/android/ads/AdMarvelActivity;)Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v2
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getOfflineBaseUrl()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->l(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v2
const-string v3, "text/html"
const-string v4, "utf-8"
move-object v5, v6
invoke-virtual/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_15e
:cond_312
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v2
const/16 v3, 0xb
if-ge v2, v3, :cond_32a
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->l(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v2
const-string v3, "text/html"
const-string v4, "utf-8"
move-object v5, v6
invoke-virtual/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_15e
:cond_32a
const-string v1, "http://baseurl.admarvel.com"
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->l(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v2
const-string v3, "text/html"
const-string v4, "utf-8"
move-object v5, v6
invoke-virtual/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_15e
.end method