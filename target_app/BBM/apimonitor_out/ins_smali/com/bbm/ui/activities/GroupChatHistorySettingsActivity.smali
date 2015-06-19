.class public Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;
.super Lcom/bbm/ui/activities/md;
.source "GroupChatHistorySettingsActivity.java"
.field protected a:Lcom/bbm/g/am;
.field private b:Landroid/content/Context;
.field private d:Ljava/lang/String;
.field private e:Landroid/widget/ListView;
.field private f:Lcom/bbm/ui/activities/lo;
.field private final g:Ljava/util/List;
.field private h:Lcom/bbm/g/r;
.field private final i:Lcom/bbm/j/k;
.method public constructor <init>()V
.registers 2
const-class v0, Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/md;-><init>(Ljava/lang/Class;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->g:Ljava/util/List;
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->h:Lcom/bbm/g/r;
new-instance v0, Lcom/bbm/ui/activities/lm;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/lm;-><init>(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->i:Lcom/bbm/j/k;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)Lcom/bbm/g/r;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->h:Lcom/bbm/g/r;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;Lcom/bbm/g/r;)Lcom/bbm/g/r;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->h:Lcom/bbm/g/r;
return-object p1
.end method
.method static synthetic b(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->d:Ljava/lang/String;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)Lcom/bbm/ui/activities/lo;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->f:Lcom/bbm/ui/activities/lo;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->g:Ljava/util/List;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, -0x1
invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V
iput-object p0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->b:Landroid/content/Context;
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->a:Lcom/bbm/g/am;
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_22
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "groupConversationUri"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->d:Ljava/lang/String;
:cond_22
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->d:Ljava/lang/String;
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->d:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_38
const/4 v0, 0x1
:goto_2f
const-string v1, "GroupChatHistorySettingsActivity invoked without group conversation uri"
invoke-static {p0, v0, v1}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3a
:goto_37
const-string v1, " - Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_38
const/4 v0, 0x0
goto :goto_2f
:cond_3a
const v0, 0x7f030026
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->setContentView(I)V
new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e03cd
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0173
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0e0302
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/bbm/ui/activities/lk;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/lk;-><init>(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v1, Lcom/bbm/ui/activities/ll;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ll;-><init>(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v1
new-instance v2, Landroid/app/ActionBar$LayoutParams;
invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V
invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
const/16 v0, 0x10
invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->g:Ljava/util/List;
new-instance v1, Lcom/bbm/ui/activities/ln;
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e03c7
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/bbm/g/r;->a:Lcom/bbm/g/r;
invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/activities/ln;-><init>(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;Ljava/lang/String;Lcom/bbm/g/r;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->g:Ljava/util/List;
new-instance v1, Lcom/bbm/ui/activities/ln;
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e03c8
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/bbm/g/r;->b:Lcom/bbm/g/r;
invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/activities/ln;-><init>(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;Ljava/lang/String;Lcom/bbm/g/r;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->g:Ljava/util/List;
new-instance v1, Lcom/bbm/ui/activities/ln;
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e03c9
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/bbm/g/r;->c:Lcom/bbm/g/r;
invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/activities/ln;-><init>(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;Ljava/lang/String;Lcom/bbm/g/r;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->g:Ljava/util/List;
new-instance v1, Lcom/bbm/ui/activities/ln;
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e03ce
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/bbm/g/r;->d:Lcom/bbm/g/r;
invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/activities/ln;-><init>(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;Ljava/lang/String;Lcom/bbm/g/r;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->g:Ljava/util/List;
new-instance v1, Lcom/bbm/ui/activities/ln;
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e03cf
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/bbm/g/r;->e:Lcom/bbm/g/r;
invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/activities/ln;-><init>(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;Ljava/lang/String;Lcom/bbm/g/r;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->g:Ljava/util/List;
new-instance v1, Lcom/bbm/ui/activities/ln;
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e03d0
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/bbm/g/r;->f:Lcom/bbm/g/r;
invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/activities/ln;-><init>(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;Ljava/lang/String;Lcom/bbm/g/r;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->g:Ljava/util/List;
new-instance v1, Lcom/bbm/ui/activities/ln;
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e03cc
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/bbm/g/r;->g:Lcom/bbm/g/r;
invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/activities/ln;-><init>(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;Ljava/lang/String;Lcom/bbm/g/r;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->g:Ljava/util/List;
new-instance v1, Lcom/bbm/ui/activities/ln;
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e03ca
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/bbm/g/r;->h:Lcom/bbm/g/r;
invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/activities/ln;-><init>(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;Ljava/lang/String;Lcom/bbm/g/r;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/bbm/ui/activities/lo;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->b:Landroid/content/Context;
invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/lo;-><init>(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;Landroid/content/Context;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->f:Lcom/bbm/ui/activities/lo;
const v0, 0x7f0a018b
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->e:Landroid/widget/ListView;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->e:Landroid/widget/ListView;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->f:Lcom/bbm/ui/activities/lo;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
goto/16 :goto_37
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->i:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onResume()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->i:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
const-string v1, " - Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method