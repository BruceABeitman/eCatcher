.class  Lcom/facebook/katana/MailboxThreadsAdapter$1;
.super Ljava/lang/Object;
.source "MailboxThreadsAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/facebook/katana/MailboxThreadsAdapter;
.field private final synthetic val$checkboxListener:Lcom/facebook/katana/CheckboxAdapterListener;
.method constructor <init>(Lcom/facebook/katana/MailboxThreadsAdapter;Lcom/facebook/katana/CheckboxAdapterListener;)V
.registers 3
iput-object p1, p0, Lcom/facebook/katana/MailboxThreadsAdapter$1;->this$0:Lcom/facebook/katana/MailboxThreadsAdapter;
iput-object p2, p0, Lcom/facebook/katana/MailboxThreadsAdapter$1;->val$checkboxListener:Lcom/facebook/katana/CheckboxAdapterListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/MailboxThreadsAdapter$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Long;
move-object v0, p1
check-cast v0, Landroid/widget/CheckBox;
move-object v1, v0
invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z
move-result v3
if-eqz v3, :cond_39
iget-object v3, p0, Lcom/facebook/katana/MailboxThreadsAdapter$1;->this$0:Lcom/facebook/katana/MailboxThreadsAdapter;
#getter for: Lcom/facebook/katana/MailboxThreadsAdapter;->mMarkedThreads:Ljava/util/Map;
invoke-static {v3}, Lcom/facebook/katana/MailboxThreadsAdapter;->access$0(Lcom/facebook/katana/MailboxThreadsAdapter;)Ljava/util/Map;
move-result-object v3
const/4 v4, 0x0
invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_1a
iget-object v3, p0, Lcom/facebook/katana/MailboxThreadsAdapter$1;->val$checkboxListener:Lcom/facebook/katana/CheckboxAdapterListener;
invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
move-result-wide v4
invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z
move-result v6
iget-object v7, p0, Lcom/facebook/katana/MailboxThreadsAdapter$1;->this$0:Lcom/facebook/katana/MailboxThreadsAdapter;
#getter for: Lcom/facebook/katana/MailboxThreadsAdapter;->mMarkedThreads:Ljava/util/Map;
invoke-static {v7}, Lcom/facebook/katana/MailboxThreadsAdapter;->access$0(Lcom/facebook/katana/MailboxThreadsAdapter;)Ljava/util/Map;
move-result-object v7
invoke-interface {v7}, Ljava/util/Map;->size()I
move-result v7
invoke-interface {v3, v4, v5, v6, v7}, Lcom/facebook/katana/CheckboxAdapterListener;->onMarkChanged(JZI)Z
move-result v3
if-nez v3, :cond_38
const/4 v3, 0x0
invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V
:cond_38
const-string v1, " - Lcom/facebook/katana/MailboxThreadsAdapter$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_39
iget-object v3, p0, Lcom/facebook/katana/MailboxThreadsAdapter$1;->this$0:Lcom/facebook/katana/MailboxThreadsAdapter;
#getter for: Lcom/facebook/katana/MailboxThreadsAdapter;->mMarkedThreads:Ljava/util/Map;
invoke-static {v3}, Lcom/facebook/katana/MailboxThreadsAdapter;->access$0(Lcom/facebook/katana/MailboxThreadsAdapter;)Ljava/util/Map;
move-result-object v3
invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_1a
.end method