.class  Lcom/facebook/katana/LiveFolderActivity$1;
.super Ljava/lang/Object;
.source "LiveFolderActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/facebook/katana/LiveFolderActivity;
.field private final synthetic val$numbers:[Ljava/lang/String;
.method constructor <init>(Lcom/facebook/katana/LiveFolderActivity;[Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/facebook/katana/LiveFolderActivity$1;->this$0:Lcom/facebook/katana/LiveFolderActivity;
iput-object p2, p0, Lcom/facebook/katana/LiveFolderActivity$1;->val$numbers:[Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/LiveFolderActivity$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.DIAL"
const-string v2, "tel"
iget-object v3, p0, Lcom/facebook/katana/LiveFolderActivity$1;->val$numbers:[Ljava/lang/String;
aget-object v3, v3, p2
const/4 v4, 0x0
invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const/high16 v1, 0x1000
invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
iget-object v1, p0, Lcom/facebook/katana/LiveFolderActivity$1;->this$0:Lcom/facebook/katana/LiveFolderActivity;
invoke-virtual {v1, v0}, Lcom/facebook/katana/LiveFolderActivity;->startActivity(Landroid/content/Intent;)V
iget-object v1, p0, Lcom/facebook/katana/LiveFolderActivity$1;->this$0:Lcom/facebook/katana/LiveFolderActivity;
invoke-virtual {v1}, Lcom/facebook/katana/LiveFolderActivity;->finish()V
const-string v1, " - Lcom/facebook/katana/LiveFolderActivity$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method