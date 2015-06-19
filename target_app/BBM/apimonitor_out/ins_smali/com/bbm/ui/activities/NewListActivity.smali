.class public Lcom/bbm/ui/activities/NewListActivity;
.super Lcom/bbm/ui/activities/md;
.source "NewListActivity.java"
.field final a:Landroid/text/TextWatcher;
.field private b:Landroid/widget/EditText;
.field private d:Lcom/bbm/ui/HeaderButtonActionBar;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/md;-><init>()V
new-instance v0, Lcom/bbm/ui/activities/za;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/za;-><init>(Lcom/bbm/ui/activities/NewListActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/NewListActivity;->a:Landroid/text/TextWatcher;
new-instance v0, Lcom/bbm/ui/fv;
invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewListActivity;->a(Lcom/bbm/ui/activities/aka;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/NewListActivity;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewListActivity;->b:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/activities/NewListActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewListActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/activities/NewListActivity;)V
.registers 5
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/NewListActivity;->b:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_21
iget-object v2, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
new-instance v3, Lcom/bbm/g/ca;
invoke-direct {v3, v2, v1}, Lcom/bbm/g/ca;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v3}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewListActivity;->finish()V
:cond_21
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/bbm/ui/activities/NewListActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x0
const/4 v5, -0x1
invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03003f
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewListActivity;->setContentView(I)V
iput-boolean v6, p0, Lcom/bbm/ui/activities/ev;->y:Z
const v0, 0x7f0a023f
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewListActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/NewListActivity;->b:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/activities/NewListActivity;->b:Landroid/widget/EditText;
iget-object v1, p0, Lcom/bbm/ui/activities/NewListActivity;->a:Landroid/text/TextWatcher;
invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewListActivity;->b:Landroid/widget/EditText;
new-instance v1, Lcom/bbm/ui/activities/zb;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/zb;-><init>(Lcom/bbm/ui/activities/NewListActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewListActivity;->b:Landroid/widget/EditText;
const/16 v1, 0x200
invoke-static {v0, v1}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewListActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e03bf
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewListActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0173
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewListActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0e02d7
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lcom/bbm/ui/activities/NewListActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/NewListActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {v0, v6}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewListActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v1, Lcom/bbm/ui/activities/zc;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/zc;-><init>(Lcom/bbm/ui/activities/NewListActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewListActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v1, Lcom/bbm/ui/activities/zd;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/zd;-><init>(Lcom/bbm/ui/activities/NewListActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewListActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/NewListActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v2, Landroid/app/ActionBar$LayoutParams;
invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V
const-string v1, " - Lcom/bbm/ui/activities/NewListActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/NewListActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/NewListActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method