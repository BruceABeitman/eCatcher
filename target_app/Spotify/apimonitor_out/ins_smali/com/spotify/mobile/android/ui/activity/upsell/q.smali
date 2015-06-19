.class public final Lcom/spotify/mobile/android/ui/activity/upsell/q;
.super Lcom/spotify/mobile/android/ui/fragments/x;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/activity/upsell/n;
.implements Lcom/spotify/mobile/android/util/ef;
.field private a:Lcom/spotify/mobile/android/util/ec;
.field private b:Lcom/spotify/mobile/android/ui/activity/upsell/d;
.field private c:Lcom/spotify/mobile/android/ui/activity/upsell/m;
.field private d:Ljava/lang/String;
.field private e:Landroid/net/Uri;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/x;-><init>()V
return-void
.end method
.method private F()V
.registers 6
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->e:Landroid/net/Uri;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->d:Ljava/lang/String;
if-nez v0, :cond_2b
:cond_a
const-string v3, "Not ready to load web, got web token uri: %s, got Google Play country: %s"
const/4 v0, 0x2
new-array v4, v0, [Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->e:Landroid/net/Uri;
if-eqz v0, :cond_29
move v0, v1
:goto_14
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
aput-object v0, v4, v2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->d:Ljava/lang/String;
if-eqz v0, :cond_1f
move v2, v1
:cond_1f
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
aput-object v0, v4, v1
invoke-static {v3, v4}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
:goto_28
return-void
:cond_29
move v0, v2
goto :goto_14
:cond_2b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->e:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v0
const-string v1, "iframe"
const-string v2, "1"
invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
const-string v1, "app_version"
const v2, 0x2809bb
invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->c:Lcom/spotify/mobile/android/ui/activity/upsell/m;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->d:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/q;->c(Ljava/lang/String;)V
goto :goto_28
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/upsell/q;)Lcom/spotify/mobile/android/ui/activity/upsell/d;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->b:Lcom/spotify/mobile/android/ui/activity/upsell/d;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/upsell/q;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->d:Ljava/lang/String;
return-object p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/upsell/q;)Lcom/spotify/mobile/android/ui/activity/upsell/d;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->b:Lcom/spotify/mobile/android/ui/activity/upsell/d;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/upsell/q;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/q;->F()V
return-void
.end method
.method public final D()Z
.registers 7
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/q;->E()Landroid/webkit/WebView;
move-result-object v1
if-eqz v1, :cond_31
invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z
move-result v0
if-eqz v0, :cond_31
invoke-virtual {v1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;
move-result-object v2
invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I
move-result v3
add-int/lit8 v0, v3, -0x1
:goto_16
if-lez v0, :cond_2b
invoke-virtual {v2, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;
move-result-object v4
invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;
move-result-object v4
const-string v5, "about:blank"
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_2b
add-int/lit8 v0, v0, -0x1
goto :goto_16
:cond_2b
sub-int/2addr v0, v3
invoke-virtual {v1, v0}, Landroid/webkit/WebView;->goBackOrForward(I)V
const/4 v0, 0x1
:goto_30
return v0
:cond_31
const/4 v0, 0x0
goto :goto_30
.end method
.method protected final a()V
.registers 4
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/q;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v0
if-eqz v0, :cond_22
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
:goto_12
invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->e()Landroid/support/v4/app/y;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/ec;->a(Landroid/app/Activity;Landroid/support/v4/app/y;)Lcom/spotify/mobile/android/util/ec;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->a:Lcom/spotify/mobile/android/util/ec;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->a:Lcom/spotify/mobile/android/util/ec;
invoke-virtual {v1, v0, p0}, Lcom/spotify/mobile/android/util/ec;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ef;)V
return-void
:cond_22
const v0, 0x7f0f02f0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/q;->b(I)Ljava/lang/String;
move-result-object v0
goto :goto_12
.end method
.method public final a(IILandroid/content/Intent;)V
.registers 6
const/4 v0, 0x1
if-ne p1, v0, :cond_1f
packed-switch p2, :pswitch_data_24
:goto_6
:cond_6
return-void
:pswitch_7
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->c:Lcom/spotify/mobile/android/ui/activity/upsell/m;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/q;->E()Landroid/webkit/WebView;
move-result-object v1
invoke-virtual {v0, v1, p3}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Landroid/webkit/WebView;Landroid/content/Intent;)V
goto :goto_6
:pswitch_11
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/q;->D()Z
move-result v0
if-nez v0, :cond_6
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/q;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
goto :goto_6
:cond_1f
invoke-super {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/fragments/x;->a(IILandroid/content/Intent;)V
goto :goto_6
nop
:pswitch_data_24
.packed-switch -0x1
:pswitch_7
:pswitch_11
.end packed-switch
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/x;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/q;->s()V
new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/m;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/q;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/m;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->c:Lcom/spotify/mobile/android/ui/activity/upsell/m;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->c:Lcom/spotify/mobile/android/ui/activity/upsell/m;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Lcom/spotify/mobile/android/ui/activity/upsell/n;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->c:Lcom/spotify/mobile/android/ui/activity/upsell/m;
invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a()Z
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->d:Ljava/lang/String;
return-void
.end method
.method protected final a(Landroid/net/Uri;)Z
.registers 7
const/4 v2, 0x0
const/4 v1, 0x1
invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
const-string v3, "https://www.paypal.com/cgi-bin/webscr"
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_16
const-string v3, "https://www.sandbox.paypal.com/cgi-bin/webscr"
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_33
:cond_16
move v0, v1
:goto_17
if-eqz v0, :cond_35
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/q;->E()Landroid/webkit/WebView;
move-result-object v0
invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/q;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
new-instance v2, Landroid/content/Intent;
const-string v3, "android.intent.action.VIEW"
invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
move v0, v1
:goto_32
return v0
:cond_33
move v0, v2
goto :goto_17
:cond_35
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->c:Lcom/spotify/mobile/android/ui/activity/upsell/m;
if-eqz v0, :cond_4d
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->c:Lcom/spotify/mobile/android/ui/activity/upsell/m;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/q;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/upsell/PremiumSignupActivity;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/q;->E()Landroid/webkit/WebView;
move-result-object v4
invoke-virtual {v3, v0, v4, p1}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Lcom/spotify/mobile/android/ui/activity/upsell/PremiumSignupActivity;Landroid/webkit/WebView;Landroid/net/Uri;)Z
move-result v0
if-eqz v0, :cond_4d
move v0, v1
goto :goto_32
:cond_4d
move v0, v2
goto :goto_32
.end method
.method public final a_(Landroid/net/Uri;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->a:Lcom/spotify/mobile/android/util/ec;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->a:Lcom/spotify/mobile/android/util/ec;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ec;->b()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->a:Lcom/spotify/mobile/android/util/ec;
:cond_c
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->e:Landroid/net/Uri;
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/q;->F()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->b:Lcom/spotify/mobile/android/ui/activity/upsell/d;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->b:Lcom/spotify/mobile/android/ui/activity/upsell/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/d;->c()V
:cond_1a
return-void
.end method
.method public final c()V
.registers 4
new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/d;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->c:Lcom/spotify/mobile/android/ui/activity/upsell/m;
new-instance v2, Lcom/spotify/mobile/android/ui/activity/upsell/q$1;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/q$1;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/q;)V
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/activity/upsell/d;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/m;Lcom/spotify/mobile/android/ui/activity/upsell/e;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->b:Lcom/spotify/mobile/android/ui/activity/upsell/d;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->b:Lcom/spotify/mobile/android/ui/activity/upsell/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/d;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->e:Landroid/net/Uri;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->b:Lcom/spotify/mobile/android/ui/activity/upsell/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/d;->c()V
:cond_1c
return-void
.end method
.method public final z()V
.registers 3
const/4 v1, 0x0
invoke-super {p0}, Lcom/spotify/mobile/android/ui/fragments/x;->z()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->a:Lcom/spotify/mobile/android/util/ec;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->a:Lcom/spotify/mobile/android/util/ec;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ec;->b()V
iput-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->a:Lcom/spotify/mobile/android/util/ec;
:cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->b:Lcom/spotify/mobile/android/ui/activity/upsell/d;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->b:Lcom/spotify/mobile/android/ui/activity/upsell/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/d;->b()V
iput-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->b:Lcom/spotify/mobile/android/ui/activity/upsell/d;
:cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->c:Lcom/spotify/mobile/android/ui/activity/upsell/m;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->c:Lcom/spotify/mobile/android/ui/activity/upsell/m;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->b()V
iput-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/q;->c:Lcom/spotify/mobile/android/ui/activity/upsell/m;
:cond_25
return-void
.end method