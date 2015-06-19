.class  Lcom/twidroid/fragments/whatshotfragments/c$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/fragments/whatshotfragments/c;
.method constructor <init>(Lcom/twidroid/fragments/whatshotfragments/c;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/whatshotfragments/c$2;->a:Lcom/twidroid/fragments/whatshotfragments/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/whatshotfragments/c$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c$2;->a:Lcom/twidroid/fragments/whatshotfragments/c;
invoke-virtual {v0}, Lcom/twidroid/fragments/whatshotfragments/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_2c
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const/high16 v2, 0x1000
invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
const-string v2, "com.android.browser.application_id"
invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:cond_2c
const-string v1, " - Lcom/twidroid/fragments/whatshotfragments/c$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method