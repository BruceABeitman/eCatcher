.class public Lcom/tencent/open/yyb/AppbarJsBridge;
.super Ljava/lang/Object;
.source "ProGuard"
.field public static final AUTHORIZE_FAIL:I = -0x5
.field public static final BUTTON_CLICK_CALLBACK_FUNCTION_NAME:Ljava/lang/String; = "clickCallback"
.field public static final CALLBACK_LOGIN:Ljava/lang/String; = "loginCallback"
.field public static final CALLBACK_SHARE:Ljava/lang/String; = "shareCallback"
.field public static final Code_Java_Exception:I = -0x3
.field public static final Code_None:I = -0x2
.field public static final JSBRIDGE_VERSION:I = 0x1
.field public static final JS_BRIDGE_SCHEME:Ljava/lang/String; = "jsb://"
.field public static final READY_CALLBACK_FUNCTION_NAME:Ljava/lang/String; = "readyCallback"
.field public static final Result_Fail:I = -0x1
.field public static final Result_OK:I = 0x0
.field public static final SHARE_QQ:I = 0x1
.field public static final SHARE_QZ:I = 0x2
.field public static final SHARE_TIMELINE:I = 0x4
.field public static final SHARE_WX:I = 0x3
.field private a:Landroid/webkit/WebView;
.field private b:Landroid/app/Activity;
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/tencent/open/yyb/AppbarJsBridge;->b:Landroid/app/Activity;
iput-object p2, p0, Lcom/tencent/open/yyb/AppbarJsBridge;->a:Landroid/webkit/WebView;
return-void
.end method
.method private a(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)V
.registers 9
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "-->callAMethod : uri = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0, p2}, Lcom/tencent/open/yyb/AppbarJsBridge;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_81
:try_start_20
const-class v0, Lcom/tencent/open/yyb/AppbarJsBridge;
const/4 v1, 0x4
new-array v1, v1, [Ljava/lang/Class;
const/4 v2, 0x0
const-class v3, Landroid/net/Uri;
aput-object v3, v1, v2
const/4 v2, 0x1
sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v3, v1, v2
const/4 v2, 0x2
const-class v3, Ljava/lang/String;
aput-object v3, v1, v2
const/4 v2, 0x3
const-class v3, Ljava/lang/String;
aput-object v3, v1, v2
invoke-virtual {v0, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
const/4 v1, 0x4
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
const/4 v2, 0x1
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x2
aput-object p2, v1, v2
const/4 v2, 0x3
aput-object p4, v1, v2
invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_53
.catch Ljava/lang/Exception; {:try_start_20 .. :try_end_53} :catch_54
:goto_53
:cond_53
return-void
:catch_54
move-exception v0
const-string/jumbo v1, "openSDK_LOG"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "-->callAMethod : Exception = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_53
const/4 v0, -0x3
invoke-virtual {p0, p4, p3, p2, v0}, Lcom/tencent/open/yyb/AppbarJsBridge;->responseFail(Ljava/lang/String;ILjava/lang/String;I)V
goto :goto_53
:cond_81
invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_53
const/4 v0, -0x5
invoke-virtual {p0, p4, p3, p2, v0}, Lcom/tencent/open/yyb/AppbarJsBridge;->responseFail(Ljava/lang/String;ILjava/lang/String;I)V
goto :goto_53
.end method
.method private a(Ljava/lang/String;)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public callback(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarJsBridge;->a:Landroid/webkit/WebView;
if-eqz v0, :cond_38
new-instance v0, Ljava/lang/StringBuffer;
const-string/jumbo v1, "javascript:"
invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "if(!!"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string/jumbo v2, "){"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string/jumbo v1, "("
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string/jumbo v1, ")}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarJsBridge;->a:Landroid/webkit/WebView;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
:cond_38
return-void
.end method
.method public clickCallback()V
.registers 5
const-string/jumbo v0, "clickCallback"
const/4 v1, 0x0
const/4 v2, 0x0
const-string/jumbo v3, ""
invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tencent/open/yyb/AppbarJsBridge;->response(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public closeWebView(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)V
.registers 8
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "-->closeWebView : url = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarJsBridge;->b:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->finish()V
return-void
.end method
.method public getAppInfo(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)V
.registers 14
const/4 v0, 0x0
const-string/jumbo v1, "packagenames"
invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "openSDK_LOG"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "-->getAppInfo : packageNames = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_2e
invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_2f
:goto_2e
:cond_2e
return-void
:cond_2f
const-string/jumbo v2, ","
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_2e
array-length v1, v2
if-eqz v1, :cond_2e
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
array-length v4, v2
move v1, v0
:goto_42
if-ge v1, v4, :cond_9e
aget-object v0, v2, v1
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v5
const/4 v0, 0x0
:try_start_4b
iget-object v6, p0, Lcom/tencent/open/yyb/AppbarJsBridge;->b:Landroid/app/Activity;
invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v6
const/4 v7, 0x0
invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:try_end_55
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4b .. :try_end_55} :catch_85
move-result-object v0
:try_start_56
:goto_56
new-instance v6, Lorg/json/JSONObject;
invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
if-eqz v0, :cond_90
const-string/jumbo v7, "install"
const/4 v8, 0x1
invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v7, "appName"
iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;
invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v7, "verCode"
iget v8, v0, Landroid/content/pm/PackageInfo;->versionCode:I
invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v7, "verName"
iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:goto_7e
invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:goto_81
:try_end_81
.catch Ljava/lang/Exception; {:try_start_56 .. :try_end_81} :catch_98
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_42
:catch_85
move-exception v6
const-string/jumbo v6, "openSDK_LOG"
const-string/jumbo v7, "-->getAppInfo : NameNotFoundException e1"
invoke-static {v6, v7}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_56
:cond_90
:try_start_90
const-string/jumbo v0, "install"
const/4 v7, 0x0
invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
:try_end_97
.catch Ljava/lang/Exception; {:try_start_90 .. :try_end_97} :catch_98
goto :goto_7e
:catch_98
move-exception v0
const/4 v0, -0x3
invoke-virtual {p0, p4, p2, p3, v0}, Lcom/tencent/open/yyb/AppbarJsBridge;->responseFail(Ljava/lang/String;ILjava/lang/String;I)V
goto :goto_81
:cond_9e
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "-->getAppInfo : result = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p4, p2, p3, v0}, Lcom/tencent/open/yyb/AppbarJsBridge;->response(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
goto/16 :goto_2e
.end method
.method public getVersion()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public invoke(Ljava/lang/String;)V
.registers 18
const-string/jumbo v1, "openSDK_LOG"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "-->invoke : url = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move-object/from16 v0, p1
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v4
invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v6
const-string/jumbo v1, "openSDK_LOG"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "-->invoke : hostAsMethodName = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_45
:goto_44
:cond_44
return-void
:cond_45
invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v5
const/4 v1, 0x0
const/4 v2, 0x0
if-eqz v5, :cond_162
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v3
if-lez v3, :cond_162
const/4 v1, 0x0
invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v1}, Lcom/tencent/utils/Util;->parseIntValue(Ljava/lang/String;)I
move-result v3
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v1
const/4 v7, 0x1
if-le v1, v7, :cond_6d
const/4 v1, 0x1
invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
move-object v2, v1
:goto_6d
:cond_6d
const-string/jumbo v1, "openSDK_LOG"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "-->invoke : seqid = "
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v7, " callbackName = "
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v1, v5}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "callBatch"
invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_15b
:try_start_9b
const-string/jumbo v1, "param"
invoke-virtual {v4, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v7, Lorg/json/JSONArray;
invoke-direct {v7, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
invoke-virtual {v7}, Lorg/json/JSONArray;->length()I
move-result v8
const/4 v1, 0x0
move v5, v1
:goto_ad
if-ge v5, v8, :cond_44
invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v1
const-string/jumbo v4, "method"
invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
const-string/jumbo v4, "seqid"
invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v10
const-string/jumbo v4, "callback"
invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string/jumbo v11, "args"
invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v11
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "jsb://"
invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v13, "/"
invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v13, "/"
invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_145
move-object v1, v4
:goto_f8
invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v13, "?"
invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-eqz v11, :cond_149
invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v13
:goto_108
invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_149
invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v14
invoke-static {v14}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v14
invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v15, "="
invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {v14}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v14
invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v14, "&"
invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_135
.catch Ljava/lang/Exception; {:try_start_9b .. :try_end_135} :catch_136
goto :goto_108
:catch_136
move-exception v1
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_44
const/4 v1, -0x5
move-object/from16 v0, p0
invoke-virtual {v0, v2, v3, v6, v1}, Lcom/tencent/open/yyb/AppbarJsBridge;->responseFail(Ljava/lang/String;ILjava/lang/String;I)V
goto/16 :goto_44
:try_start_145
:cond_145
const-string/jumbo v1, ""
goto :goto_f8
:cond_149
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
move-object/from16 v0, p0
invoke-direct {v0, v1, v9, v10, v4}, Lcom/tencent/open/yyb/AppbarJsBridge;->a(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)V
:try_end_156
.catch Ljava/lang/Exception; {:try_start_145 .. :try_end_156} :catch_136
add-int/lit8 v1, v5, 0x1
move v5, v1
goto/16 :goto_ad
:cond_15b
move-object/from16 v0, p0
invoke-direct {v0, v4, v6, v3, v2}, Lcom/tencent/open/yyb/AppbarJsBridge;->a(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)V
goto/16 :goto_44
:cond_162
move v3, v1
goto/16 :goto_6d
.end method
.method public openLoginActivity(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)V
.registers 8
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "-->openLoginActivity : url = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarJsBridge;->b:Landroid/app/Activity;
check-cast v0, Lcom/tencent/open/yyb/AppbarActivity;
invoke-virtual {v0}, Lcom/tencent/open/yyb/AppbarActivity;->login()V
return-void
.end method
.method public openNewWindow(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)V
.registers 9
const-string/jumbo v0, "url"
invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:try_start_7
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/tencent/open/yyb/AppbarJsBridge;->b:Landroid/app/Activity;
const-class v3, Lcom/tencent/open/yyb/AppbarActivity;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v2, "url"
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarJsBridge;->b:Landroid/app/Activity;
invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
:goto_1b
:try_end_1b
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_1c
return-void
:catch_1c
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_1b
.end method
.method public pageControl(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)V
.registers 8
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "-->pageControl : url = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "type"
invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/tencent/utils/Util;->parseIntValue(Ljava/lang/String;)I
move-result v0
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarJsBridge;->a:Landroid/webkit/WebView;
if-eqz v1, :cond_31
const/4 v1, 0x1
if-ne v0, v1, :cond_38
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarJsBridge;->a:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V
:goto_31
:cond_31
const-string/jumbo v0, ""
invoke-virtual {p0, p4, p2, p3, v0}, Lcom/tencent/open/yyb/AppbarJsBridge;->response(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
return-void
:cond_38
const/4 v1, 0x2
if-ne v0, v1, :cond_41
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarJsBridge;->a:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V
goto :goto_31
:cond_41
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarJsBridge;->a:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V
goto :goto_31
.end method
.method public ready()V
.registers 5
const-string/jumbo v0, "readyCallback"
const/4 v1, 0x1
const/4 v2, 0x0
const-string/jumbo v3, "true"
invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tencent/open/yyb/AppbarJsBridge;->response(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public response(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move v2, p2
move-object v3, p3
move-object v4, p4
invoke-virtual/range {v0 .. v5}, Lcom/tencent/open/yyb/AppbarJsBridge;->response(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
return-void
.end method
.method public response(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.registers 10
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_7
:goto_6
return-void
:cond_7
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
:try_start_c
const-string/jumbo v0, "result"
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v0, "data"
invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_25
const-string/jumbo v0, "method"
invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_25
const-string/jumbo v0, "seqid"
invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
if-eqz p5, :cond_4e
invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_35
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_48
.catch Ljava/lang/Exception; {:try_start_c .. :try_end_48} :catch_49
goto :goto_35
:catch_49
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_6
:try_start_4e
:cond_4e
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/tencent/open/yyb/AppbarJsBridge;->callback(Ljava/lang/String;Ljava/lang/String;)V
:try_end_55
.catch Ljava/lang/Exception; {:try_start_4e .. :try_end_55} :catch_49
goto :goto_6
.end method
.method public responseFail(Ljava/lang/String;ILjava/lang/String;I)V
.registers 8
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_7
:goto_6
return-void
:cond_7
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
:try_start_c
const-string/jumbo v1, "result"
const/4 v2, -0x1
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v1, "code"
invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v1, "method"
invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "seqid"
invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/tencent/open/yyb/AppbarJsBridge;->callback(Ljava/lang/String;Ljava/lang/String;)V
:try_end_2c
.catch Ljava/lang/Exception; {:try_start_c .. :try_end_2c} :catch_2d
goto :goto_6
:catch_2d
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_6
.end method
.method public responseShare(I)V
.registers 8
new-instance v5, Ljava/util/HashMap;
invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
const-string/jumbo v0, "type"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "shareCallback"
const/4 v2, 0x0
const/4 v3, 0x0
const-string/jumbo v4, "0"
move-object v0, p0
invoke-virtual/range {v0 .. v5}, Lcom/tencent/open/yyb/AppbarJsBridge;->response(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
return-void
.end method
.method public responseShareFail(I)V
.registers 8
new-instance v5, Ljava/util/HashMap;
invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
const-string/jumbo v0, "type"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "shareCallback"
const/4 v2, 0x0
const/4 v3, 0x0
const-string/jumbo v4, "1"
move-object v0, p0
invoke-virtual/range {v0 .. v5}, Lcom/tencent/open/yyb/AppbarJsBridge;->response(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
return-void
.end method
.method public setWebView(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)V
.registers 10
const/4 v1, 0x1
const/4 v2, 0x0
:try_start_2
const-string/jumbo v0, "title"
invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string/jumbo v0, "buttonVisible"
invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const/4 v4, 0x0
invoke-static {v0, v4}, Lcom/tencent/utils/Util;->parseIntValue(Ljava/lang/String;I)I
move-result v4
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_22
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarJsBridge;->b:Landroid/app/Activity;
check-cast v0, Lcom/tencent/open/yyb/AppbarActivity;
invoke-virtual {v0, v3}, Lcom/tencent/open/yyb/AppbarActivity;->setAppbarTitle(Ljava/lang/String;)V
:cond_22
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarJsBridge;->b:Landroid/app/Activity;
check-cast v0, Lcom/tencent/open/yyb/AppbarActivity;
if-ne v4, v1, :cond_57
:goto_28
invoke-virtual {v0, v1}, Lcom/tencent/open/yyb/AppbarActivity;->setShareVisibility(Z)V
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "-->setWebView : url = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " -- buttonVisiable = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, ""
invoke-virtual {p0, p4, p2, p3, v0}, Lcom/tencent/open/yyb/AppbarJsBridge;->response(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
:goto_56
:try_end_56
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_56} :catch_59
return-void
:cond_57
move v1, v2
goto :goto_28
:catch_59
move-exception v0
const/4 v0, -0x3
invoke-virtual {p0, p4, p2, p3, v0}, Lcom/tencent/open/yyb/AppbarJsBridge;->responseFail(Ljava/lang/String;ILjava/lang/String;I)V
goto :goto_56
.end method
.method public share(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)V
.registers 12
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "-->share : url = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "title"
invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v0, "summary"
invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v0, "iconUrl"
invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_38
const-string/jumbo v0, "http://qzs.qq.com/open/mobile/jsbridge/demo.htm"
:cond_38
const-string/jumbo v3, "jumpUrl"
invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "openSDK_LOG"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "-->share : title = "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v4, "openSDK_LOG"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "-->share : summary = "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v4, "openSDK_LOG"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "-->share : iconUrl = "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v4, "openSDK_LOG"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "-->share : jumpUrl = "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v4, Lcom/tencent/open/yyb/ShareModel;
invoke-direct {v4}, Lcom/tencent/open/yyb/ShareModel;-><init>()V
iput-object v1, v4, Lcom/tencent/open/yyb/ShareModel;->a:Ljava/lang/String;
iput-object v2, v4, Lcom/tencent/open/yyb/ShareModel;->b:Ljava/lang/String;
iput-object v0, v4, Lcom/tencent/open/yyb/ShareModel;->c:Ljava/lang/String;
iput-object v3, v4, Lcom/tencent/open/yyb/ShareModel;->d:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarJsBridge;->b:Landroid/app/Activity;
check-cast v0, Lcom/tencent/open/yyb/AppbarActivity;
invoke-virtual {v0, v4}, Lcom/tencent/open/yyb/AppbarActivity;->setShareModel(Lcom/tencent/open/yyb/ShareModel;)V
const-string/jumbo v0, "type"
invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/tencent/utils/Util;->parseIntValue(Ljava/lang/String;I)I
move-result v0
packed-switch v0, :pswitch_data_f2
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarJsBridge;->b:Landroid/app/Activity;
check-cast v0, Lcom/tencent/open/yyb/AppbarActivity;
invoke-virtual {v0}, Lcom/tencent/open/yyb/AppbarActivity;->showFloatingDialog()V
:goto_d1
return-void
:pswitch_d2
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarJsBridge;->b:Landroid/app/Activity;
check-cast v0, Lcom/tencent/open/yyb/AppbarActivity;
invoke-virtual {v0}, Lcom/tencent/open/yyb/AppbarActivity;->shareToQQ()V
goto :goto_d1
:pswitch_da
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarJsBridge;->b:Landroid/app/Activity;
check-cast v0, Lcom/tencent/open/yyb/AppbarActivity;
invoke-virtual {v0}, Lcom/tencent/open/yyb/AppbarActivity;->shareToQzone()V
goto :goto_d1
:pswitch_e2
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarJsBridge;->b:Landroid/app/Activity;
check-cast v0, Lcom/tencent/open/yyb/AppbarActivity;
invoke-virtual {v0}, Lcom/tencent/open/yyb/AppbarActivity;->shareToWX()V
goto :goto_d1
:pswitch_ea
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarJsBridge;->b:Landroid/app/Activity;
check-cast v0, Lcom/tencent/open/yyb/AppbarActivity;
invoke-virtual {v0}, Lcom/tencent/open/yyb/AppbarActivity;->shareToTimeline()V
goto :goto_d1
:pswitch_data_f2
.packed-switch 0x1
:pswitch_d2
:pswitch_da
:pswitch_e2
:pswitch_ea
.end packed-switch
.end method