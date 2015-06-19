.class  Lcom/pinguo/share/website/WebSiteShareMainActivity$1$5;
.super Ljava/lang/Object;
.source "WebSiteShareMainActivity.java"
.implements Landroid/content/DialogInterface$OnKeyListener;
.field final synthetic this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;
.field private final synthetic val$isFirstShareSuccess:Z
.field private final synthetic val$map:Ljava/util/Map;
.field private final synthetic val$successList:Ljava/util/List;
.method constructor <init>(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;Ljava/util/List;Ljava/util/Map;Z)V
.registers 5
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$5;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;
iput-object p2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$5;->val$successList:Ljava/util/List;
iput-object p3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$5;->val$map:Ljava/util/Map;
iput-boolean p4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$5;->val$isFirstShareSuccess:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/share/website/WebSiteShareMainActivity$1$5; onKey "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
const/4 v2, 0x0
const/4 v3, 0x4
if-ne p2, v3, :cond_41
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$5;->val$successList:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
iget-object v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$5;->val$map:Ljava/util/Map;
invoke-interface {v4}, Ljava/util/Map;->size()I
move-result v4
if-ne v3, v4, :cond_42
move v0, v1
:goto_17
iget-boolean v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$5;->val$isFirstShareSuccess:Z
if-eqz v3, :cond_44
iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$5;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-static {v3}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;)Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-result-object v3
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;
invoke-static {v3}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$4(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/share/bind/BindSharedPreferences;->isSelectedBind(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_44
iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$5;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;)Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-result-object v1
iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$5;->val$successList:Ljava/util/List;
#calls: Lcom/pinguo/share/website/WebSiteShareMainActivity;->setAttention(Ljava/util/List;)V
invoke-static {v1, v3}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$5(Lcom/pinguo/share/website/WebSiteShareMainActivity;Ljava/util/List;)V
if-eqz v0, :cond_41
iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$5;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;)Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->finish()V
:goto_41
:cond_41
const-string v1, " - Lcom/pinguo/share/website/WebSiteShareMainActivity$1$5; onKey"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v2
:cond_42
move v0, v2
goto :goto_17
:cond_44
iget-boolean v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$5;->val$isFirstShareSuccess:Z
if-eqz v3, :cond_55
iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$5;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-static {v3}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;)Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3, v1}, Lcom/pinguo/share/bind/BindSharedPreferences;->saveSelectedBind(Landroid/content/Context;Z)V
:cond_55
if-eqz v0, :cond_41
iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$5;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;)Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->finish()V
goto :goto_41
.end method