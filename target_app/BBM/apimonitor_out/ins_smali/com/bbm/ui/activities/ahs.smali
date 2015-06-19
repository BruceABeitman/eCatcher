.class final Lcom/bbm/ui/activities/ahs;
.super Ljava/lang/Object;
.source "SponsoredAdActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/SponsoredAdActivity;
.method constructor <init>(Lcom/bbm/ui/activities/SponsoredAdActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ahs;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/ahs; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/ahs;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->c(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/b/a;
move-result-object v0
if-nez v0, :cond_a
:goto_9
const-string v1, " - Lcom/bbm/ui/activities/ahs; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_a
iget-object v0, p0, Lcom/bbm/ui/activities/ahs;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->c(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/b/a;
move-result-object v0
iget-object v0, v0, Lcom/bbm/b/a;->j:Lorg/json/JSONObject;
const-string v1, "interstitialBrowseUrl"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/bbm/ui/activities/ahv;->a:[I
iget-object v2, p0, Lcom/bbm/ui/activities/ahs;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/SponsoredAdActivity;->c(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/b/a;
move-result-object v2
invoke-static {v2}, Lcom/bbm/b/e;->b(Lcom/bbm/b/a;)Lcom/bbm/b/p;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/b/p;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_82
:goto_2d
const-string v0, "Sponsored Ad activity, unspecific type handled"
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_9
:pswitch_35
iget-object v1, p0, Lcom/bbm/ui/activities/ahs;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SponsoredAdActivity;->b(Lcom/bbm/ui/activities/SponsoredAdActivity;)Ljava/lang/String;
move-result-object v1
sget-object v2, Lcom/bbm/b/e;->b:Lcom/bbm/b/aj;
iget-object v3, p0, Lcom/bbm/ui/activities/ahs;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/SponsoredAdActivity;->c(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/b/a;
move-result-object v3
iget-boolean v3, v3, Lcom/bbm/b/a;->n:Z
invoke-static {v0, v1, v2, v3}, Lcom/bbm/b/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/b/aj;Z)V
goto :goto_9
:pswitch_49
iget-object v1, p0, Lcom/bbm/ui/activities/ahs;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SponsoredAdActivity;->b(Lcom/bbm/ui/activities/SponsoredAdActivity;)Ljava/lang/String;
move-result-object v1
sget-object v2, Lcom/bbm/b/e;->b:Lcom/bbm/b/aj;
iget-object v3, p0, Lcom/bbm/ui/activities/ahs;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/SponsoredAdActivity;->c(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/b/a;
move-result-object v3
iget-boolean v3, v3, Lcom/bbm/b/a;->n:Z
invoke-static {v0, v1, v2, v3}, Lcom/bbm/b/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/b/aj;Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/ahs;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->b(Lcom/bbm/ui/activities/SponsoredAdActivity;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/b/e;->a(Ljava/lang/String;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/ahs;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->finish()V
goto :goto_9
:pswitch_6b
const-string v0, "Sponsored Ad, DisplayNoInterstitialAd type handled"
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_9
:pswitch_73
const-string v0, "Sponsored invite clicked, do nothing"
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
:pswitch_7a
const-string v0, "Sponsored post clicked, do nothing"
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_2d
:pswitch_data_82
.packed-switch 0x1
:pswitch_35
:pswitch_49
:pswitch_73
:pswitch_7a
:pswitch_6b
.end packed-switch
.end method