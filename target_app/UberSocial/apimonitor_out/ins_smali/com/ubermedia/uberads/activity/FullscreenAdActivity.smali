.class public Lcom/ubermedia/uberads/activity/FullscreenAdActivity;
.super Landroid/app/Activity;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "EXTRA_AD"
.field private b:Landroid/webkit/WebView;
.field private c:Lcom/ubermedia/uberads/UberAd;
.field private d:Lcom/twidroid/d/v;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lcom/ubermedia/uberads/activity/FullscreenAdActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
iput-object v0, p0, Lcom/ubermedia/uberads/activity/FullscreenAdActivity;->d:Lcom/twidroid/d/v;
invoke-virtual {p0}, Lcom/ubermedia/uberads/activity/FullscreenAdActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v2, "EXTRA_AD"
invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_83
invoke-virtual {p0}, Lcom/ubermedia/uberads/activity/FullscreenAdActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v2, "EXTRA_AD"
invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/ubermedia/uberads/UberAd;
iput-object v0, p0, Lcom/ubermedia/uberads/activity/FullscreenAdActivity;->c:Lcom/ubermedia/uberads/UberAd;
const v0, 0x7f03001c
invoke-virtual {p0, v0}, Lcom/ubermedia/uberads/activity/FullscreenAdActivity;->setContentView(I)V
const v0, 0x7f09002f
invoke-virtual {p0, v0}, Lcom/ubermedia/uberads/activity/FullscreenAdActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/webkit/WebView;
iput-object v0, p0, Lcom/ubermedia/uberads/activity/FullscreenAdActivity;->b:Landroid/webkit/WebView;
iget-object v0, p0, Lcom/ubermedia/uberads/activity/FullscreenAdActivity;->b:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v0
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
iget-object v0, p0, Lcom/ubermedia/uberads/activity/FullscreenAdActivity;->b:Landroid/webkit/WebView;
const/high16 v2, 0x200
invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V
iget-object v0, p0, Lcom/ubermedia/uberads/activity/FullscreenAdActivity;->b:Landroid/webkit/WebView;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "<html><head><style type=\'text/css\'>html,body {margin: 0;padding: 0;width: 100%;height: 100%;}html {display: table;}body {display: table-cell;vertical-align: middle;text-align: center;}</style></head><body>"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/ubermedia/uberads/activity/FullscreenAdActivity;->c:Lcom/ubermedia/uberads/UberAd;
invoke-virtual {v3}, Lcom/ubermedia/uberads/UberAd;->f()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "</body></html>"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const-string v3, "text/html"
const-string v4, "UTF-8"
move-object v5, v1
invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
const v0, 0x7f090057
invoke-virtual {p0, v0}, Lcom/ubermedia/uberads/activity/FullscreenAdActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/ubermedia/uberads/activity/FullscreenAdActivity$1;
invoke-direct {v1, p0}, Lcom/ubermedia/uberads/activity/FullscreenAdActivity$1;-><init>(Lcom/ubermedia/uberads/activity/FullscreenAdActivity;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_82
const-string v1, " - Lcom/ubermedia/uberads/activity/FullscreenAdActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_83
invoke-virtual {p0}, Lcom/ubermedia/uberads/activity/FullscreenAdActivity;->finish()V
goto :goto_82
.end method
.method protected onResume()V
.registers 5
const-string v1, " + Lcom/ubermedia/uberads/activity/FullscreenAdActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
new-instance v1, Lcom/ubermedia/uberads/activity/FullscreenAdActivity$2;
invoke-direct {v1, p0}, Lcom/ubermedia/uberads/activity/FullscreenAdActivity$2;-><init>(Lcom/ubermedia/uberads/activity/FullscreenAdActivity;)V
iget-object v2, p0, Lcom/ubermedia/uberads/activity/FullscreenAdActivity;->d:Lcom/twidroid/d/v;
invoke-virtual {v2}, Lcom/twidroid/d/v;->cr()J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
const-string v1, " - Lcom/ubermedia/uberads/activity/FullscreenAdActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method