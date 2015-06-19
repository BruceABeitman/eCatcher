.class public Lcom/pinguo/camera360/feedback/Camera360FeedbackNetworkUtils;
.super Ljava/lang/Object;
.source "Camera360FeedbackNetworkUtils.java"
.field private static final APPID:Ljava/lang/String; = "ea8d04692735bc1f"
.field private static final KEY_APPKEY:Ljava/lang/Object; = null
.field private static final KEY_SIGN:Ljava/lang/String; = "/sign/"
.field private static final KEY_TIME:Ljava/lang/Object;
.field private static SECRET:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "/appkey/"
sput-object v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackNetworkUtils;->KEY_APPKEY:Ljava/lang/Object;
const-string/jumbo v0, "/time/"
sput-object v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackNetworkUtils;->KEY_TIME:Ljava/lang/Object;
const-string/jumbo v0, "vCGG9QZ94tcGxTjangCc_b_VuXwmfGd2"
sput-object v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackNetworkUtils;->SECRET:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static getCclient(Landroid/content/Context;)Ljava/lang/String;
.registers 8
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v5
invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const-string/jumbo v4, ""
:try_start_b
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
const/4 v5, 0x0
invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v2
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Camera360_Android_"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v6, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_25
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_25} :catch_27
move-result-object v4
:goto_26
return-object v4
:catch_27
move-exception v0
invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
goto :goto_26
.end method
.method public static getCommonParams(Landroid/content/Context;)Ljava/util/HashMap;
.registers 22
new-instance v13, Ljava/util/HashMap;
invoke-direct {v13}, Ljava/util/HashMap;-><init>()V
new-instance v18, Ljava/lang/StringBuilder;
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v19
invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v19
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/16 v19, 0x2d
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v18
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v19
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v18
const-string/jumbo v19, "connectivity"
invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/net/ConnectivityManager;
const-string/jumbo v18, "window"
move-object/from16 v0, p0
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v17
check-cast v17, Landroid/view/WindowManager;
new-instance v8, Landroid/util/DisplayMetrics;
invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V
invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v18
move-object/from16 v0, v18
invoke-virtual {v0, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I
move/from16 v16, v0
iget v15, v8, Landroid/util/DisplayMetrics;->heightPixels:I
invoke-static {v6}, Lcom/pinguo/lib/network/NetworkUtils;->getNetworkType(Landroid/net/ConnectivityManager;)Ljava/lang/String;
move-result-object v12
new-instance v18, Ljava/lang/StringBuilder;
sget-object v19, Landroid/os/Build;->DEVICE:Ljava/lang/String;
invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v19
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/16 v19, 0x5f
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v18
sget-object v19, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static/range {p0 .. p0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackNetworkUtils;->getCclient(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
const v18, 0x7f080084
move-object/from16 v0, p0
move/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v4
const-string/jumbo v18, "pref_last_known_location"
const/16 v19, 0x0
move-object/from16 v0, p0
move-object/from16 v1, v18
move/from16 v2, v19
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v18
const-string/jumbo v19, "lat"
const-string/jumbo v20, ""
invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
const-string/jumbo v18, "pref_last_known_location"
const/16 v19, 0x0
move-object/from16 v0, p0
move-object/from16 v1, v18
move/from16 v2, v19
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v18
const-string/jumbo v19, "lon"
const-string/jumbo v20, ""
invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
invoke-static/range {p0 .. p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCloudUserId(Landroid/content/Context;)Ljava/lang/String;
move-result-object v7
new-instance v18, Lcom/pinguo/camera360/push/utils/PushPreference;
move-object/from16 v0, v18
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lcom/pinguo/camera360/push/utils/PushPreference;-><init>(Landroid/content/Context;)V
const-string/jumbo v19, "clientId"
const-string/jumbo v20, "_"
invoke-virtual/range {v18 .. v20}, Lcom/pinguo/camera360/push/utils/PushPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string/jumbo v18, "test"
new-instance v19, Ljava/lang/StringBuilder;
const-string/jumbo v20, "\u4e2a\u63a8\u7684cid="
invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v19
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
invoke-static/range {v18 .. v19}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v18, "clang"
invoke-static {v9}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v18, "cnet"
invoke-static {v12}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v18, "cclient"
invoke-static {v3}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v18, "cdeivce"
invoke-static {v14}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v18, "channel"
invoke-static {v4}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v10}, Ljava/lang/String;->length()I
move-result v18
const/16 v19, 0x2
move/from16 v0, v18
move/from16 v1, v19
if-le v0, v1, :cond_163
invoke-virtual {v11}, Ljava/lang/String;->length()I
move-result v18
const/16 v19, 0x2
move/from16 v0, v18
move/from16 v1, v19
if-le v0, v1, :cond_163
const-string/jumbo v18, "clatitude"
invoke-static {v10}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v18, "clongitude"
invoke-static {v11}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_163
const-string/jumbo v18, "cuid"
invoke-static {v7}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v18, "cid"
invoke-static {v5}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v18, "w"
invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v19
invoke-static/range {v19 .. v19}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v18, "h"
invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v19
invoke-static/range {v19 .. v19}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v18, "debug"
const/16 v19, 0x0
invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;
move-result-object v19
invoke-static/range {v19 .. v19}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object v13
.end method
.method public static getQueryFeedbackUrl()Ljava/lang/String;
.registers 6
new-instance v0, Ljava/lang/StringBuffer;
sget-object v4, LvStudio/Android/Camera360/RemoteConstants;->HOST_FEEDBACK:Ljava/lang/String;
invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-static {v2, v3}, Lcom/pinguo/camera360/feedback/Camera360FeedbackNetworkUtils;->getSign(J)Ljava/lang/String;
move-result-object v1
sget-object v4, Lcom/pinguo/camera360/feedback/Camera360FeedbackNetworkUtils;->KEY_APPKEY:Ljava/lang/Object;
invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v4
const-string/jumbo v5, "ea8d04692735bc1f"
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v4
sget-object v5, Lcom/pinguo/camera360/feedback/Camera360FeedbackNetworkUtils;->KEY_TIME:Ljava/lang/Object;
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v4
invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;
move-result-object v4
const-string/jumbo v5, "/sign/"
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
return-object v4
.end method
.method private static getSign(J)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lcom/pinguo/camera360/feedback/Camera360FeedbackNetworkUtils;->KEY_APPKEY:Ljava/lang/Object;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "ea8d04692735bc1f"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget-object v1, Lcom/pinguo/camera360/feedback/Camera360FeedbackNetworkUtils;->KEY_TIME:Ljava/lang/Object;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sget-object v2, Lcom/pinguo/camera360/feedback/Camera360FeedbackNetworkUtils;->SECRET:Ljava/lang/String;
invoke-static {v1, v2}, Lorg/pinguo/cloudshare/support/HelperConsole;->md5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method