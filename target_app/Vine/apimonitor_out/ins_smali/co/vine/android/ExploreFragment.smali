.class public Lco/vine/android/ExploreFragment;
.super Lco/vine/android/BaseControllerFragment;
.source "ExploreFragment.java"
.implements Lco/vine/android/widget/OnTabChangedListener;
.implements Lcom/twitter/android/widget/TopScrollable;
.implements Lco/vine/android/widget/ScrollDeltaScrollView$ScrollDeltaListener;
.field public static final ARG_TAKE_FOCUS:Ljava/lang/String; = "take_focus"
.field private static final LOGGABLE:Z = false
.field private static final PARAM_EDITION:Ljava/lang/String; = "ed"
.field private static final PARAM_MODEL:Ljava/lang/String; = "model"
.field private static final PARAM_OS:Ljava/lang/String; = "os"
.field private static final PARAM_VERSION:Ljava/lang/String; = "v"
.field private static final PREF_LAST_REFRESH_TIME:Ljava/lang/String; = "last_explore"
.field private static final REFRESH_INTERVAL:J = 0xdbba0L
.field private static final TAG:Ljava/lang/String; = "ExploreFragment"
.field private static final VALUE_OS:Ljava/lang/String; = "android"
.field private static final VALUE_UNDEFINED:Ljava/lang/String; = "undefined"
.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;
.field private mEmpty:Landroid/view/View;
.field private mEmptyText:Landroid/widget/TextView;
.field private mExploreUrl:Ljava/lang/String;
.field private mPrefs:Landroid/content/SharedPreferences;
.field private mProgressContainer:Landroid/widget/RelativeLayout;
.field private mSadface:Landroid/widget/ImageView;
.field private mSadfaceContainer:Landroid/view/View;
.field private mWebView:Landroid/webkit/WebView;
.method static constructor <clinit>()V
.registers 2
const-string v0, "ExploreFragment"
const/4 v1, 0x3
invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
sput-boolean v0, Lco/vine/android/ExploreFragment;->LOGGABLE:Z
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lco/vine/android/BaseControllerFragment;-><init>()V
new-instance v0, Lco/vine/android/ExploreFragment$1;
invoke-direct {v0, p0}, Lco/vine/android/ExploreFragment$1;-><init>(Lco/vine/android/ExploreFragment;)V
iput-object v0, p0, Lco/vine/android/ExploreFragment;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;
return-void
.end method
.method static synthetic access$000(Lco/vine/android/ExploreFragment;)Landroid/widget/RelativeLayout;
.registers 2
iget-object v0, p0, Lco/vine/android/ExploreFragment;->mProgressContainer:Landroid/widget/RelativeLayout;
return-object v0
.end method
.method static synthetic access$100(Lco/vine/android/ExploreFragment;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/ExploreFragment;->mEmpty:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$200(Lco/vine/android/ExploreFragment;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lco/vine/android/ExploreFragment;->mSadface:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic access$300(Lco/vine/android/ExploreFragment;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/ExploreFragment;->mSadfaceContainer:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$400(Lco/vine/android/ExploreFragment;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lco/vine/android/ExploreFragment;->mEmptyText:Landroid/widget/TextView;
return-object v0
.end method
.method private getExploreUrl()Ljava/lang/String;
.registers 10
:try_start_0
invoke-virtual {p0}, Lco/vine/android/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-static {v4}, Lco/vine/android/util/Util;->getVersionName(Landroid/content/Context;)Ljava/lang/String;
:try_end_7
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_7} :catch_7c
move-result-object v3
:goto_8
sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v5, "%s_%s"
const/4 v6, 0x2
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
aput-object v8, v6, v7
const/4 v7, 0x1
sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;
aput-object v8, v6, v7
invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
new-instance v4, Lorg/apache/http/message/BasicNameValuePair;
const-string v5, "model"
const-string v6, "\\s+"
const-string v7, "-"
invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v4, Lorg/apache/http/message/BasicNameValuePair;
const-string v5, "v"
invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v4, Lorg/apache/http/message/BasicNameValuePair;
const-string v5, "os"
const-string v6, "android"
invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v4, Lorg/apache/http/message/BasicNameValuePair;
const-string v5, "ed"
invoke-virtual {p0}, Lco/vine/android/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v6
invoke-static {v6}, Lco/vine/android/provider/SettingsManager;->getEdition(Landroid/content/Context;)Ljava/lang/String;
move-result-object v6
invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
iget-object v5, p0, Lco/vine/android/ExploreFragment;->mExploreUrl:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "?"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "UTF-8"
invoke-static {v0, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
return-object v4
:catch_7c
move-exception v2
const-string v3, "undefined"
goto :goto_8
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onActivityCreated(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lco/vine/android/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lco/vine/android/client/VineAPI;->getInstance(Landroid/content/Context;)Lco/vine/android/client/VineAPI;
move-result-object v1
invoke-virtual {v1}, Lco/vine/android/client/VineAPI;->getExploreUrl()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lco/vine/android/ExploreFragment;->mExploreUrl:Ljava/lang/String;
invoke-virtual {p0}, Lco/vine/android/ExploreFragment;->getArguments()Landroid/os/Bundle;
move-result-object v1
const-string v2, "take_focus"
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
if-eqz v1, :cond_35
invoke-virtual {p0}, Lco/vine/android/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lco/vine/android/HomeTabActivity;
const/4 v1, 0x2
invoke-virtual {v0, v1, p0}, Lco/vine/android/HomeTabActivity;->showPage(ILandroid/support/v4/app/Fragment;)V
invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z
move-result v1
if-eqz v1, :cond_35
const-string v1, "ExploreFragment"
const-string v2, "Explore tab took focus."
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_35
invoke-virtual {p0}, Lco/vine/android/ExploreFragment;->reloadWebView()V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 7
const v1, 0x7f030039
const/4 v2, 0x0
invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a00e2
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lco/vine/android/ExploreFragment;->mEmpty:Landroid/view/View;
const v1, 0x7f0a007f
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, p0, Lco/vine/android/ExploreFragment;->mEmptyText:Landroid/widget/TextView;
const v1, 0x7f0a00c5
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/RelativeLayout;
iput-object v1, p0, Lco/vine/android/ExploreFragment;->mProgressContainer:Landroid/widget/RelativeLayout;
const v1, 0x7f0a007e
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lco/vine/android/ExploreFragment;->mSadfaceContainer:Landroid/view/View;
const v1, 0x7f0a00e3
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lco/vine/android/ExploreFragment;->mSadface:Landroid/widget/ImageView;
const v1, 0x7f0a00e1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/webkit/WebView;
iput-object v1, p0, Lco/vine/android/ExploreFragment;->mWebView:Landroid/webkit/WebView;
const v1, 0x7f0a00e4
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
new-instance v2, Lco/vine/android/ExploreFragment$2;
invoke-direct {v2, p0}, Lco/vine/android/ExploreFragment$2;-><init>(Lco/vine/android/ExploreFragment;)V
invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f0a00e0
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lco/vine/android/widget/ScrollDeltaScrollView;
invoke-virtual {v1, p0}, Lco/vine/android/widget/ScrollDeltaScrollView;->setScrollDeltaListener(Lco/vine/android/widget/ScrollDeltaScrollView$ScrollDeltaListener;)V
invoke-virtual {p0}, Lco/vine/android/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v1
iput-object v1, p0, Lco/vine/android/ExploreFragment;->mPrefs:Landroid/content/SharedPreferences;
return-object v0
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lco/vine/android/ExploreFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lco/vine/android/ExploreFragment;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iget-object v1, p0, Lco/vine/android/ExploreFragment;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V
iget-object v1, p0, Lco/vine/android/ExploreFragment;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V
invoke-super {p0}, Lco/vine/android/BaseControllerFragment;->onDestroy()V
const-string v1, " - Lco/vine/android/ExploreFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onMoveAway(I)V
.registers 2
return-void
.end method
.method public onMoveTo(I)V
.registers 11
const-wide/16 v7, 0x0
iget-object v5, p0, Lco/vine/android/ExploreFragment;->mPrefs:Landroid/content/SharedPreferences;
const-string v6, "last_explore"
invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v1
iget-object v5, p0, Lco/vine/android/ExploreFragment;->mPrefs:Landroid/content/SharedPreferences;
invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
if-eqz v0, :cond_2e
cmp-long v5, v1, v7
if-lez v5, :cond_2f
const-wide/32 v5, 0xdbba0
add-long/2addr v5, v1
cmp-long v5, v5, v3
if-gez v5, :cond_2f
invoke-virtual {p0}, Lco/vine/android/ExploreFragment;->reloadWebView()V
const-string v5, "last_explore"
invoke-interface {v0, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move-result-object v5
invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
:goto_2e
:cond_2e
return-void
:cond_2f
cmp-long v5, v1, v7
if-gtz v5, :cond_2e
const-string v5, "last_explore"
invoke-interface {v0, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move-result-object v5
invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_2e
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lco/vine/android/ExploreFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseControllerFragment;->onPause()V
invoke-virtual {p0}, Lco/vine/android/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lco/vine/android/ExploreFragment;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
const-string v1, " - Lco/vine/android/ExploreFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 6
const-string v1, " + Lco/vine/android/ExploreFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseControllerFragment;->onResume()V
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v1, "abort_all_requests"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
invoke-virtual {p0}, Lco/vine/android/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lco/vine/android/ExploreFragment;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;
const-string v3, "co.vine.android.BROADCAST"
const/4 v4, 0x0
invoke-virtual {v1, v2, v0, v3, v4}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
const-string v1, " - Lco/vine/android/ExploreFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onScroll(I)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/ExploreFragment; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lco/vine/android/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lco/vine/android/HomeTabActivity;
invoke-virtual {v0, p1}, Lco/vine/android/HomeTabActivity;->onScroll(I)V
const-string v1, " - Lco/vine/android/ExploreFragment; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public reloadWebView()V
.registers 11
const/4 v9, 0x1
const/4 v8, 0x0
iget-object v5, p0, Lco/vine/android/ExploreFragment;->mWebView:Landroid/webkit/WebView;
if-eqz v5, :cond_80
invoke-virtual {v5, v8}, Landroid/webkit/WebView;->setVisibility(I)V
iget-object v6, p0, Lco/vine/android/ExploreFragment;->mSadfaceContainer:Landroid/view/View;
const/16 v7, 0x8
invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V
new-instance v6, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;
invoke-direct {v6, p0}, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;-><init>(Lco/vine/android/ExploreFragment;)V
invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
invoke-virtual {v5, v8}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V
invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v4
const/4 v6, 0x1
:try_start_20
invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
:goto_23
:try_end_23
.catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_81
const/4 v6, 0x2
invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2, v9}, Ljava/util/HashMap;-><init>(I)V
invoke-static {}, Lco/vine/android/util/Util;->getLocale()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_3b
const-string v6, "Accept-Language"
invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_3b
invoke-virtual {p0}, Lco/vine/android/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v6
invoke-static {v6}, Lco/vine/android/client/VineAPI;->getInstance(Landroid/content/Context;)Lco/vine/android/client/VineAPI;
move-result-object v0
const-string v6, "X-Vine-Client"
invoke-virtual {v0}, Lco/vine/android/client/VineAPI;->getVineClientHeader()Ljava/lang/String;
move-result-object v7
invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {}, Lco/vine/android/util/BuildUtil;->isProduction()Z
move-result v6
if-nez v6, :cond_5b
const-string v6, "X-Vine-Auth"
invoke-virtual {v0}, Lco/vine/android/client/VineAPI;->getAuthHeaderSecret()Ljava/lang/String;
move-result-object v7
invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_5b
invoke-direct {p0}, Lco/vine/android/ExploreFragment;->getExploreUrl()Ljava/lang/String;
move-result-object v1
invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z
move-result v6
if-eqz v6, :cond_7d
const-string v6, "ExploreFragment"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Accessing explore url: "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_7d
invoke-virtual {v5, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
:cond_80
return-void
:catch_81
move-exception v6
goto :goto_23
.end method
.method public scrollTop()Z
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lco/vine/android/ExploreFragment;->mWebView:Landroid/webkit/WebView;
if-eqz v1, :cond_b
iget-object v1, p0, Lco/vine/android/ExploreFragment;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v1, v0, v0}, Landroid/webkit/WebView;->scrollTo(II)V
const/4 v0, 0x1
:cond_b
return v0
.end method