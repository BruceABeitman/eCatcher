.class public Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;
.super Lcom/bbm/ui/activities/md;
.source "GroupSelectNewAdminActivity.java"
.field private a:Landroid/widget/ListView;
.field private final b:Lcom/bbm/g/am;
.field private d:Lcom/bbm/ui/activities/th;
.field private final e:Ljava/util/List;
.field private f:Lcom/bbm/ui/HeaderButtonActionBar;
.field private final g:Landroid/widget/AdapterView$OnItemClickListener;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/md;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->b:Lcom/bbm/g/am;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->e:Ljava/util/List;
new-instance v0, Lcom/bbm/ui/activities/td;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/td;-><init>(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->g:Landroid/widget/AdapterView$OnItemClickListener;
new-instance v0, Lcom/bbm/ui/fv;
invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->a(Lcom/bbm/ui/activities/aka;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)Lcom/bbm/ui/activities/th;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->d:Lcom/bbm/ui/activities/th;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->e:Ljava/util/List;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->f:Lcom/bbm/ui/HeaderButtonActionBar;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)Lcom/bbm/g/am;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->b:Lcom/bbm/g/am;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lcom/bbm/ui/activities/GroupSelectNewAdminActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, -0x1
invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030035
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->setContentView(I)V
new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e00e8
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0173
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0e0553
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->f:Lcom/bbm/ui/HeaderButtonActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->f:Lcom/bbm/ui/HeaderButtonActionBar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->f:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v1, Lcom/bbm/ui/activities/te;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/te;-><init>(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->f:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v1, Lcom/bbm/ui/activities/tf;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/tf;-><init>(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->f:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v2, Landroid/app/ActionBar$LayoutParams;
invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V
const v0, 0x7f0a01ef
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->a:Landroid/widget/ListView;
new-instance v0, Lcom/bbm/ui/activities/tg;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->b:Lcom/bbm/g/am;
iget-object v2, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/g/am;->g(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/tg;-><init>(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;Lcom/bbm/j/r;)V
new-instance v1, Lcom/bbm/ui/activities/th;
invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/th;-><init>(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;Lcom/bbm/j/j;)V
iput-object v1, p0, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->d:Lcom/bbm/ui/activities/th;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->a:Landroid/widget/ListView;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->d:Lcom/bbm/ui/activities/th;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->a:Landroid/widget/ListView;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->g:Landroid/widget/AdapterView$OnItemClickListener;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
const-string v1, " - Lcom/bbm/ui/activities/GroupSelectNewAdminActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/GroupSelectNewAdminActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/GroupSelectNewAdminActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method