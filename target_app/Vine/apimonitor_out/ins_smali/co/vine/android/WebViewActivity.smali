.class public Lco/vine/android/WebViewActivity;
.super Lco/vine/android/BaseControllerActionBarActivity;
.source "WebViewActivity.java"
.field public static final EXTRA_TYPE:Ljava/lang/String; = "type"
.field public static final TYPE_ATTRIBUTION:I = 0x5
.field public static final TYPE_PRIVACY_POLICY_TWITTER:I = 0x3
.field public static final TYPE_PRIVACY_POLICY_VINE:I = 0x1
.field public static final TYPE_TOS_TWITTER:I = 0x4
.field public static final TYPE_TOS_VINE:I = 0x2
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseControllerActionBarActivity;-><init>()V
return-void
.end method
.method public static start(Landroid/content/Context;Landroid/net/Uri;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/WebViewActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 11
const-string v1, " + Lco/vine/android/WebViewActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v8, 0x0
const/4 v7, 0x1
const v5, 0x7f0300a9
const/4 v6, 0x0
invoke-super {p0, p1, v5, v6}, Lco/vine/android/BaseControllerActionBarActivity;->onCreate(Landroid/os/Bundle;IZ)V
const v5, 0x7f0a00e1
invoke-virtual {p0, v5}, Lco/vine/android/WebViewActivity;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/webkit/WebView;
new-instance v5, Landroid/webkit/WebViewClient;
invoke-direct {v5}, Landroid/webkit/WebViewClient;-><init>()V
invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v5
invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
invoke-virtual {p0}, Lco/vine/android/WebViewActivity;->getIntent()Landroid/content/Intent;
move-result-object v5
invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_a4
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2, v7}, Ljava/util/HashMap;-><init>(I)V
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v5
invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v5
if-nez v5, :cond_50
const-string v5, "Accept-Language"
invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v5, "X-Vine-Client"
invoke-static {p0}, Lco/vine/android/client/VineAPI;->getInstance(Landroid/content/Context;)Lco/vine/android/client/VineAPI;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getVineClientHeader()Ljava/lang/String;
move-result-object v6
invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_50
const-string v5, "type"
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v5
packed-switch v5, :pswitch_data_b6
:cond_59
:goto_59
invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
invoke-virtual {p0, v5, v8, v8, v8}, Lco/vine/android/WebViewActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V
const-string v1, " - Lco/vine/android/WebViewActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_61
const v5, 0x7f0e018c
invoke-virtual {p0, v5}, Lco/vine/android/WebViewActivity;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
goto :goto_59
:pswitch_6c
const v5, 0x7f0e024e
invoke-virtual {p0, v5}, Lco/vine/android/WebViewActivity;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
goto :goto_59
:pswitch_77
const v5, 0x7f0e018b
invoke-virtual {p0, v5}, Lco/vine/android/WebViewActivity;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
goto :goto_59
:pswitch_82
const v5, 0x7f0e024d
invoke-virtual {p0, v5}, Lco/vine/android/WebViewActivity;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
goto :goto_59
:pswitch_8d
invoke-static {}, Lco/vine/android/util/BuildUtil;->isAStar()Z
move-result v5
if-eqz v5, :cond_99
const-string v5, "file:///android_asset/astar_attribution.html"
invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
goto :goto_59
:cond_99
const v5, 0x7f0e0050
invoke-virtual {p0, v5}, Lco/vine/android/WebViewActivity;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
goto :goto_59
:cond_a4
invoke-virtual {p0}, Lco/vine/android/WebViewActivity;->getIntent()Landroid/content/Intent;
move-result-object v5
invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v1
if-eqz v1, :cond_59
invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
goto :goto_59
:pswitch_data_b6
.packed-switch 0x1
:pswitch_61
:pswitch_6c
:pswitch_77
:pswitch_82
:pswitch_8d
.end packed-switch
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/WebViewActivity; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
invoke-virtual {p0}, Lco/vine/android/WebViewActivity;->getMenuInflater()Landroid/view/MenuInflater;
move-result-object v0
const v1, 0x7f100004
invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
const v0, 0x7f0a0245
invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
const-string v1, " - Lco/vine/android/WebViewActivity; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v2
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/WebViewActivity; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v0
packed-switch v0, :pswitch_data_12
invoke-super {p0, p1}, Lco/vine/android/BaseControllerActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
:goto_b
move v2, v0
const-string v1, " - Lco/vine/android/WebViewActivity; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:pswitch_c
invoke-virtual {p0}, Lco/vine/android/WebViewActivity;->finish()V
const/4 v0, 0x1
goto :goto_b
nop
:pswitch_data_12
.packed-switch 0x7f0a0245
:pswitch_c
.end packed-switch
.end method