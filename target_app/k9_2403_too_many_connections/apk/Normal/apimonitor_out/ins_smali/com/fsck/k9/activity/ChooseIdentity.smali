.class public Lcom/fsck/k9/activity/ChooseIdentity;
.super Lcom/fsck/k9/K9ListActivity;
.source "ChooseIdentity.java"
.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "com.fsck.k9.ChooseIdentity_account"
.field public static final EXTRA_IDENTITY:Ljava/lang/String; = "com.fsck.k9.ChooseIdentity_identity"
.field  adapter:Landroid/widget/ArrayAdapter;
.field protected identities:Ljava/util/List;
.field  mAccount:Lcom/fsck/k9/Account;
.field private mHandler:Lcom/fsck/k9/activity/ChooseIdentity$ChooseIdentityHandler;
.field  mUID:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/fsck/k9/K9ListActivity;-><init>()V
new-instance v0, Lcom/fsck/k9/activity/ChooseIdentity$ChooseIdentityHandler;
invoke-direct {v0, p0}, Lcom/fsck/k9/activity/ChooseIdentity$ChooseIdentityHandler;-><init>(Lcom/fsck/k9/activity/ChooseIdentity;)V
iput-object v0, p0, Lcom/fsck/k9/activity/ChooseIdentity;->mHandler:Lcom/fsck/k9/activity/ChooseIdentity$ChooseIdentityHandler;
const/4 v0, 0x0
iput-object v0, p0, Lcom/fsck/k9/activity/ChooseIdentity;->identities:Ljava/util/List;
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/fsck/k9/activity/ChooseIdentity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
invoke-super {p0, p1}, Lcom/fsck/k9/K9ListActivity;->onCreate(Landroid/os/Bundle;)V
const/4 v1, 0x5
invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/ChooseIdentity;->requestWindowFeature(I)Z
invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->getListView()Landroid/widget/ListView;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->getListView()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->getListView()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "com.fsck.k9.ChooseIdentity_account"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v1
check-cast v1, Lcom/fsck/k9/Account;
iput-object v1, p0, Lcom/fsck/k9/activity/ChooseIdentity;->mAccount:Lcom/fsck/k9/Account;
new-instance v1, Landroid/widget/ArrayAdapter;
const v2, 0x1090003
invoke-direct {v1, p0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V
iput-object v1, p0, Lcom/fsck/k9/activity/ChooseIdentity;->adapter:Landroid/widget/ArrayAdapter;
iget-object v1, p0, Lcom/fsck/k9/activity/ChooseIdentity;->adapter:Landroid/widget/ArrayAdapter;
invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/ChooseIdentity;->setListAdapter(Landroid/widget/ListAdapter;)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->setupClickListeners()V
const-string v1, " - Lcom/fsck/k9/activity/ChooseIdentity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/fsck/k9/activity/ChooseIdentity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/fsck/k9/K9ListActivity;->onResume()V
invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->refreshView()V
const-string v1, " - Lcom/fsck/k9/activity/ChooseIdentity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected refreshView()V
.registers 9
iget-object v4, p0, Lcom/fsck/k9/activity/ChooseIdentity;->adapter:Landroid/widget/ArrayAdapter;
invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->clear()V
iget-object v4, p0, Lcom/fsck/k9/activity/ChooseIdentity;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v4}, Lcom/fsck/k9/Account;->getIdentities()Ljava/util/List;
move-result-object v4
iput-object v4, p0, Lcom/fsck/k9/activity/ChooseIdentity;->identities:Ljava/util/List;
iget-object v4, p0, Lcom/fsck/k9/activity/ChooseIdentity;->identities:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_13
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_51
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/fsck/k9/Account$Identity;
invoke-virtual {v3}, Lcom/fsck/k9/Account$Identity;->getEmail()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3}, Lcom/fsck/k9/Account$Identity;->getDescription()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_33
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v4
if-nez v4, :cond_4b
:cond_33
const v4, 0x7f08009e
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
invoke-virtual {v3}, Lcom/fsck/k9/Account$Identity;->getName()Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x1
invoke-virtual {v3}, Lcom/fsck/k9/Account$Identity;->getEmail()Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
invoke-virtual {p0, v4, v5}, Lcom/fsck/k9/activity/ChooseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:cond_4b
iget-object v4, p0, Lcom/fsck/k9/activity/ChooseIdentity;->adapter:Landroid/widget/ArrayAdapter;
invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V
goto :goto_13
:cond_51
return-void
.end method
.method protected setupClickListeners()V
.registers 3
invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->getListView()Landroid/widget/ListView;
move-result-object v0
new-instance v1, Lcom/fsck/k9/activity/ChooseIdentity$1;
invoke-direct {v1, p0}, Lcom/fsck/k9/activity/ChooseIdentity$1;-><init>(Lcom/fsck/k9/activity/ChooseIdentity;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return-void
.end method