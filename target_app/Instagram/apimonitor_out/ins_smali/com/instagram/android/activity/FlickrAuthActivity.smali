.class public Lcom/instagram/android/activity/FlickrAuthActivity;
.super Lcom/instagram/base/activity/d;
.source "FlickrAuthActivity.java"
.field private p:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
.field private q:Loauth/signpost/OAuthProvider;
.field private r:Landroid/os/Handler;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/base/activity/d;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/activity/FlickrAuthActivity;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/instagram/android/activity/FlickrAuthActivity;->r:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic b(Lcom/instagram/android/activity/FlickrAuthActivity;)Loauth/signpost/OAuthProvider;
.registers 2
iget-object v0, p0, Lcom/instagram/android/activity/FlickrAuthActivity;->q:Loauth/signpost/OAuthProvider;
return-object v0
.end method
.method public static b(Landroid/support/v4/app/Fragment;)V
.registers 4
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;
move-result-object v1
const-class v2, Lcom/instagram/android/activity/FlickrAuthActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/4 v1, 0x4
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Intent;I)V
return-void
.end method
.method static synthetic c(Lcom/instagram/android/activity/FlickrAuthActivity;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
.registers 2
iget-object v0, p0, Lcom/instagram/android/activity/FlickrAuthActivity;->p:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
return-object v0
.end method
.method static synthetic d(Lcom/instagram/android/activity/FlickrAuthActivity;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/activity/FlickrAuthActivity;->g()V
return-void
.end method
.method private g()V
.registers 4
invoke-virtual {p0}, Lcom/instagram/android/activity/FlickrAuthActivity;->isFinishing()Z
move-result v0
if-nez v0, :cond_25
new-instance v0, Lcom/instagram/ui/dialog/b;
invoke-direct {v0, p0}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->unknown_error_occured:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;
sget v1, Lcom/facebook/az;->ok:I
new-instance v2, Lcom/instagram/android/activity/f;
invoke-direct {v2, p0}, Lcom/instagram/android/activity/f;-><init>(Lcom/instagram/android/activity/FlickrAuthActivity;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
:cond_25
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/instagram/android/activity/FlickrAuthActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x1
const/4 v5, 0x0
invoke-super {p0, p1}, Lcom/instagram/base/activity/d;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/instagram/android/activity/FlickrAuthActivity;->r:Landroid/os/Handler;
sget v0, Lcom/facebook/aw;->foursquare_auth:I
invoke-virtual {p0, v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->setContentView(I)V
sget v0, Lcom/facebook/av;->webView:I
invoke-virtual {p0, v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/webkit/WebView;
new-instance v1, Lcom/instagram/android/activity/h;
invoke-direct {v1, p0, v5}, Lcom/instagram/android/activity/h;-><init>(Lcom/instagram/android/activity/FlickrAuthActivity;B)V
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v1
invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
new-instance v1, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
invoke-static {}, Lcom/instagram/share/c/b;->a()Ljava/lang/String;
move-result-object v2
invoke-static {}, Lcom/instagram/share/c/b;->b()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iput-object v1, p0, Lcom/instagram/android/activity/FlickrAuthActivity;->p:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
new-instance v1, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;
const-string v2, "http://www.flickr.com/services/oauth/request_token"
const-string v3, "http://www.flickr.com/services/oauth/access_token"
const-string v4, "http://www.flickr.com/services/oauth/authorize"
invoke-direct {v1, v2, v3, v4}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v1, p0, Lcom/instagram/android/activity/FlickrAuthActivity;->q:Loauth/signpost/OAuthProvider;
iget-object v1, p0, Lcom/instagram/android/activity/FlickrAuthActivity;->q:Loauth/signpost/OAuthProvider;
invoke-interface {v1, v6}, Loauth/signpost/OAuthProvider;->setOAuth10a(Z)V
new-instance v1, Lcom/instagram/android/activity/j;
iget-object v2, p0, Lcom/instagram/android/activity/FlickrAuthActivity;->q:Loauth/signpost/OAuthProvider;
iget-object v3, p0, Lcom/instagram/android/activity/FlickrAuthActivity;->p:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
invoke-direct {v1, p0, v0, v2, v3}, Lcom/instagram/android/activity/j;-><init>(Lcom/instagram/android/activity/FlickrAuthActivity;Landroid/webkit/WebView;Loauth/signpost/OAuthProvider;Loauth/signpost/OAuthConsumer;)V
new-array v0, v5, [Ljava/lang/Object;
invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
const-string v1, " - Lcom/instagram/android/activity/FlickrAuthActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method