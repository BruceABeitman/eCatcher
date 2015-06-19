.class  Lcom/twidroid/activity/PremiumThemeFoundActivity$1;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/PremiumThemeFoundActivity;
.method constructor <init>(Lcom/twidroid/activity/PremiumThemeFoundActivity;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/PremiumThemeFoundActivity$1;->a:Lcom/twidroid/activity/PremiumThemeFoundActivity;
invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/PremiumThemeFoundActivity$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.VIEW"
const-string v2, "https://play.google.com/store/apps/details?id=com.shoutem.n31513&hl=en"
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
iget-object v1, p0, Lcom/twidroid/activity/PremiumThemeFoundActivity$1;->a:Lcom/twidroid/activity/PremiumThemeFoundActivity;
invoke-virtual {v1, v0}, Lcom/twidroid/activity/PremiumThemeFoundActivity;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/twidroid/activity/PremiumThemeFoundActivity$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method