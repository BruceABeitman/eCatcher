.class public Lcom/bbm/ui/activities/SelectGroupActivity;
.super Lcom/bbm/ui/activities/ajy;
.source "SelectGroupActivity.java"
.field private final a:Lcom/bbm/g/am;
.field private b:Landroid/widget/ListView;
.field private c:Lcom/bbm/ui/activities/afc;
.field private d:Lcom/bbm/ui/HeaderButtonActionBar;
.field private e:Z
.field private f:Ljava/util/ArrayList;
.field private final g:Ljava/util/ArrayList;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/ajy;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->a:Lcom/bbm/g/am;
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->f:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->g:Ljava/util/ArrayList;
new-instance v0, Lcom/bbm/ui/fv;
invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectGroupActivity;->a(Lcom/bbm/ui/activities/aka;)V
new-instance v0, Lcom/bbm/ui/voice/o;
invoke-direct {v0}, Lcom/bbm/ui/voice/o;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectGroupActivity;->a(Lcom/bbm/ui/activities/aka;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/SelectGroupActivity;)Lcom/bbm/ui/activities/afc;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->c:Lcom/bbm/ui/activities/afc;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/activities/SelectGroupActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->e:Z
return v0
.end method
.method static synthetic c(Lcom/bbm/ui/activities/SelectGroupActivity;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->g:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/activities/SelectGroupActivity;)V
.registers 4
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "com.bbm.selectedgroupuri"
iget-object v2, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->f:Ljava/util/ArrayList;
if-eqz v1, :cond_1f
iget-object v1, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->f:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-lez v1, :cond_1f
const-string v1, "com.bbm.selecteduris"
iget-object v2, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->f:Ljava/util/ArrayList;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
:cond_1f
const/4 v1, -0x1
invoke-virtual {p0, v1, v0}, Lcom/bbm/ui/activities/SelectGroupActivity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectGroupActivity;->finish()V
return-void
.end method
.method static synthetic e(Lcom/bbm/ui/activities/SelectGroupActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/bbm/ui/activities/SelectGroupActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v3, 0x7f0e0173
const/4 v6, 0x0
const/4 v5, -0x1
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030032
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectGroupActivity;->setContentView(I)V
iget-boolean v0, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->e:Z
if-eqz v0, :cond_94
new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectGroupActivity;->getTitle()Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectGroupActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, p0, v1, v2}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;
:goto_29
iget-object v0, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v1, Lcom/bbm/ui/activities/afb;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/afb;-><init>(Lcom/bbm/ui/activities/SelectGroupActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectGroupActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v2, Landroid/app/ActionBar$LayoutParams;
invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectGroupActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "com.bbm.onlyone"
invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->e:Z
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->f:Ljava/util/ArrayList;
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectGroupActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "com.bbm.selecteduris"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
if-eqz v0, :cond_6a
iget-object v1, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->f:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
:cond_6a
const v0, 0x7f0a01e7
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectGroupActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->b:Landroid/widget/ListView;
new-instance v0, Lcom/bbm/ui/activities/afc;
iget-object v1, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->a:Lcom/bbm/g/am;
invoke-virtual {v1}, Lcom/bbm/g/am;->e()Lcom/bbm/j/w;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/afc;-><init>(Lcom/bbm/ui/activities/SelectGroupActivity;Lcom/bbm/j/r;)V
iput-object v0, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->c:Lcom/bbm/ui/activities/afc;
iget-object v0, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->b:Landroid/widget/ListView;
iget-object v1, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->c:Lcom/bbm/ui/activities/afc;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->b:Landroid/widget/ListView;
new-instance v1, Lcom/bbm/ui/activities/aez;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aez;-><init>(Lcom/bbm/ui/activities/SelectGroupActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
const-string v1, " - Lcom/bbm/ui/activities/SelectGroupActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_94
new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectGroupActivity;->getTitle()Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectGroupActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectGroupActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0e0656
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {v0, v6}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v1, Lcom/bbm/ui/activities/afa;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/afa;-><init>(Lcom/bbm/ui/activities/SelectGroupActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V
goto/16 :goto_29
.end method
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/bbm/ui/activities/SelectGroupActivity; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onRestoreInstanceState(Landroid/os/Bundle;)V
const-string v0, "com.bbm.selecteduris"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_13
const-string v0, "com.bbm.selecteduris"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->f:Ljava/util/ArrayList;
:cond_13
const-string v1, " - Lcom/bbm/ui/activities/SelectGroupActivity; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/bbm/ui/activities/SelectGroupActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_f
const-string v0, "com.bbm.selecteduris"
iget-object v1, p0, Lcom/bbm/ui/activities/SelectGroupActivity;->f:Ljava/util/ArrayList;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
:cond_f
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v1, " - Lcom/bbm/ui/activities/SelectGroupActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method