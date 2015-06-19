.class  Lcom/facebook/katana/WidgetActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WidgetActivity.java"
.field final synthetic this$0:Lcom/facebook/katana/WidgetActivity;
.method constructor <init>(Lcom/facebook/katana/WidgetActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/WidgetActivity$1;->this$0:Lcom/facebook/katana/WidgetActivity;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 8
const/4 v4, 0x0
iget-object v1, p0, Lcom/facebook/katana/WidgetActivity$1;->this$0:Lcom/facebook/katana/WidgetActivity;
const/4 v2, 0x2
invoke-virtual {v1, v2}, Lcom/facebook/katana/WidgetActivity;->removeDialog(I)V
const-string v1, "extra_error_code"
invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
const/16 v1, 0xc8
if-ne v0, v1, :cond_25
const v1, 0x7f08019b
invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
iget-object v1, p0, Lcom/facebook/katana/WidgetActivity$1;->this$0:Lcom/facebook/katana/WidgetActivity;
invoke-virtual {v1}, Lcom/facebook/katana/WidgetActivity;->finish()V
:goto_24
return-void
:cond_25
iget-object v1, p0, Lcom/facebook/katana/WidgetActivity$1;->this$0:Lcom/facebook/katana/WidgetActivity;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lcom/facebook/katana/WidgetActivity;->showDialog(I)V
iget-object v1, p0, Lcom/facebook/katana/WidgetActivity$1;->this$0:Lcom/facebook/katana/WidgetActivity;
iget-object v2, p0, Lcom/facebook/katana/WidgetActivity$1;->this$0:Lcom/facebook/katana/WidgetActivity;
const v3, 0x7f08013f
invoke-virtual {v2, v3}, Lcom/facebook/katana/WidgetActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
goto :goto_24
.end method