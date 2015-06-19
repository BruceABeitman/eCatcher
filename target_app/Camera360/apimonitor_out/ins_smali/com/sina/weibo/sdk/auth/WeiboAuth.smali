.class public Lcom/sina/weibo/sdk/auth/WeiboAuth;
.super Ljava/lang/Object;
.source "WeiboAuth.java"
.field private static final OAUTH2_BASE_URL:Ljava/lang/String; = "https://open.weibo.cn/oauth2/authorize?"
.field public static final OBTAIN_AUTH_CODE:I = 0x0
.field public static final OBTAIN_AUTH_TOKEN:I = 0x1
.field public static final TAG:Ljava/lang/String; = "Weibo_web_login"
.field private mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;
.field private mContext:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mContext:Landroid/content/Context;
new-instance v0, Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;
return-void
.end method
.method private startDialog(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;I)V
.registers 9
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;
invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V
const-string/jumbo v3, "client_id"
iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;
#getter for: Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->mAppKey:Ljava/lang/String;
invoke-static {v4}, Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->access$0(Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v3, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "redirect_uri"
iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;
#getter for: Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->mRedirectUrl:Ljava/lang/String;
invoke-static {v4}, Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->access$1(Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v3, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "scope"
iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;
#getter for: Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->mScope:Ljava/lang/String;
invoke-static {v4}, Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->access$2(Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v3, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "response_type"
const-string/jumbo v4, "code"
invoke-virtual {v1, v3, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "display"
const-string/jumbo v4, "mobile"
invoke-virtual {v1, v3, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V
const/4 v3, 0x1
if-ne v3, p2, :cond_59
const-string/jumbo v3, "packagename"
iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;
#getter for: Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->mPackageName:Ljava/lang/String;
invoke-static {v4}, Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->access$3(Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v3, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "key_hash"
iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;
#getter for: Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->mKeyHash:Ljava/lang/String;
invoke-static {v4}, Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->access$4(Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v3, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_59
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "https://open.weibo.cn/oauth2/authorize?"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->encodeUrl()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mContext:Landroid/content/Context;
invoke-static {v3}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->hasInternetPermission(Landroid/content/Context;)Z
move-result v3
if-nez v3, :cond_81
iget-object v3, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mContext:Landroid/content/Context;
const-string/jumbo v4, "Error"
const-string/jumbo v5, "Application requires permission to access the Internet"
invoke-static {v3, v4, v5}, Lcom/sina/weibo/sdk/utils/UIUtils;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2
:cond_81
iget-object v3, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mContext:Landroid/content/Context;
invoke-static {v3}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->isNetworkAvailable(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_95
new-instance v3, Lcom/sina/weibo/sdk/auth/WeiboDialog;
iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mContext:Landroid/content/Context;
invoke-direct {v3, v4, v2, p1, p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;Lcom/sina/weibo/sdk/auth/WeiboAuth;)V
invoke-virtual {v3}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->show()V
goto/16 :goto_2
:cond_95
iget-object v3, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mContext:Landroid/content/Context;
const/4 v4, 0x2
invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v0
const-string/jumbo v3, "Weibo_web_login"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "String: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v3, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mContext:Landroid/content/Context;
const/4 v4, 0x0
invoke-static {v3, v0, v4}, Lcom/sina/weibo/sdk/utils/UIUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V
goto/16 :goto_2
.end method
.method public anthorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Lcom/sina/weibo/sdk/auth/WeiboAuth;->authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;I)V
return-void
.end method
.method public authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/auth/WeiboAuth;->startDialog(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;I)V
return-void
.end method
.method public getAuthInfo()Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;
.registers 2
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;
return-object v0
.end method
.method public setAuthInfo(Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;)V
.registers 2
iput-object p1, p0, Lcom/sina/weibo/sdk/auth/WeiboAuth;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;
return-void
.end method