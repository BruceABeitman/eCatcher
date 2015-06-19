.class  Lcom/pinguo/share/website/WebSiteShareMainActivity$1$4;
.super Ljava/lang/Object;
.source "WebSiteShareMainActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;
.field private final synthetic val$isFirstShareSuccess:Z
.field private final synthetic val$successList:Ljava/util/List;
.method constructor <init>(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;ZLjava/util/List;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$4;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;
iput-boolean p2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$4;->val$isFirstShareSuccess:Z
iput-object p3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$4;->val$successList:Ljava/util/List;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/share/website/WebSiteShareMainActivity$1$4; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
iget-boolean v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$4;->val$isFirstShareSuccess:Z
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$4;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;)Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-result-object v0
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$4(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/share/bind/BindSharedPreferences;->isSelectedBind(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$4;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;)Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$4;->val$successList:Ljava/util/List;
#calls: Lcom/pinguo/share/website/WebSiteShareMainActivity;->setAttention(Ljava/util/List;)V
invoke-static {v0, v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$5(Lcom/pinguo/share/website/WebSiteShareMainActivity;Ljava/util/List;)V
:cond_22
:goto_22
const-string v1, " - Lcom/pinguo/share/website/WebSiteShareMainActivity$1$4; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_23
iget-boolean v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$4;->val$isFirstShareSuccess:Z
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$4;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;)Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/pinguo/share/bind/BindSharedPreferences;->saveSelectedBind(Landroid/content/Context;Z)V
goto :goto_22
.end method