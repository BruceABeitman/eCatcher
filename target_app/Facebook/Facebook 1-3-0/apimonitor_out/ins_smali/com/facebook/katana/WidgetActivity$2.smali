.class  Lcom/facebook/katana/WidgetActivity$2;
.super Ljava/lang/Object;
.source "WidgetActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/facebook/katana/WidgetActivity;
.field private final synthetic val$textInput:Landroid/widget/TextView;
.method constructor <init>(Lcom/facebook/katana/WidgetActivity;Landroid/widget/TextView;)V
.registers 3
iput-object p1, p0, Lcom/facebook/katana/WidgetActivity$2;->this$0:Lcom/facebook/katana/WidgetActivity;
iput-object p2, p0, Lcom/facebook/katana/WidgetActivity$2;->val$textInput:Landroid/widget/TextView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/WidgetActivity$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v3, p0, Lcom/facebook/katana/WidgetActivity$2;->val$textInput:Landroid/widget/TextView;
invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v3
invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v3
if-nez v3, :cond_1a
iget-object v3, p0, Lcom/facebook/katana/WidgetActivity$2;->this$0:Lcom/facebook/katana/WidgetActivity;
invoke-virtual {v3}, Lcom/facebook/katana/WidgetActivity;->finish()V
:goto_19
const-string v1, " - Lcom/facebook/katana/WidgetActivity$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1a
iget-object v3, p0, Lcom/facebook/katana/WidgetActivity$2;->this$0:Lcom/facebook/katana/WidgetActivity;
#setter for: Lcom/facebook/katana/WidgetActivity;->mText:Ljava/lang/String;
invoke-static {v3, v2}, Lcom/facebook/katana/WidgetActivity;->access$0(Lcom/facebook/katana/WidgetActivity;Ljava/lang/String;)V
:try_start_1f
new-instance v1, Landroid/content/Intent;
iget-object v3, p0, Lcom/facebook/katana/WidgetActivity$2;->this$0:Lcom/facebook/katana/WidgetActivity;
const-class v4, Lcom/facebook/katana/service/FacebookService;
invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v3, "type"
const/16 v4, 0x5c
invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v3, "status"
invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v3, p0, Lcom/facebook/katana/WidgetActivity$2;->this$0:Lcom/facebook/katana/WidgetActivity;
const/4 v4, 0x0
const/high16 v5, 0x1000
invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v3
invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
iget-object v3, p0, Lcom/facebook/katana/WidgetActivity$2;->this$0:Lcom/facebook/katana/WidgetActivity;
const/4 v4, 0x2
invoke-virtual {v3, v4}, Lcom/facebook/katana/WidgetActivity;->showDialog(I)V
:try_end_46
.catch Ljava/lang/Exception; {:try_start_1f .. :try_end_46} :catch_47
goto :goto_19
:catch_47
move-exception v3
move-object v0, v3
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_19
.end method