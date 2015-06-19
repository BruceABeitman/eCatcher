.class  Lcom/facebook/katana/HtmlAboutActivity$1;
.super Ljava/lang/Object;
.source "HtmlAboutActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/facebook/katana/HtmlAboutActivity;
.method constructor <init>(Lcom/facebook/katana/HtmlAboutActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/HtmlAboutActivity$1;->this$0:Lcom/facebook/katana/HtmlAboutActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/HtmlAboutActivity$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/HtmlAboutActivity$1;->this$0:Lcom/facebook/katana/HtmlAboutActivity;
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
const-string v3, "http://www.facebook.com/terms.php"
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {v0, v1}, Lcom/facebook/katana/HtmlAboutActivity;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/facebook/katana/HtmlAboutActivity$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method