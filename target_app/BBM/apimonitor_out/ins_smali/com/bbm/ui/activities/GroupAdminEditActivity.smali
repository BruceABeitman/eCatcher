.class public Lcom/bbm/ui/activities/GroupAdminEditActivity;
.super Lcom/bbm/ui/activities/md;
.source "GroupAdminEditActivity.java"
.field  a:Lcom/bbm/ui/activities/lb;
.field private b:Lcom/bbm/ui/FooterActionBar;
.field private final d:Lcom/bbm/g/am;
.field private e:Landroid/widget/ListView;
.field private f:Lcom/bbm/g/ac;
.field private final g:Lcom/bbm/ui/cj;
.field private final h:Lcom/bbm/ui/c/fq;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/md;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupAdminEditActivity;->d:Lcom/bbm/g/am;
new-instance v0, Lcom/bbm/ui/activities/kz;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/kz;-><init>(Lcom/bbm/ui/activities/GroupAdminEditActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupAdminEditActivity;->g:Lcom/bbm/ui/cj;
new-instance v0, Lcom/bbm/ui/activities/la;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/la;-><init>(Lcom/bbm/ui/activities/GroupAdminEditActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupAdminEditActivity;->h:Lcom/bbm/ui/c/fq;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupAdminEditActivity;Lcom/bbm/g/ac;)Lcom/bbm/g/ac;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/GroupAdminEditActivity;->f:Lcom/bbm/g/ac;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupAdminEditActivity;)Lcom/bbm/g/am;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminEditActivity;->d:Lcom/bbm/g/am;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/activities/GroupAdminEditActivity;)Lcom/bbm/g/ac;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminEditActivity;->f:Lcom/bbm/g/ac;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/bbm/ui/activities/GroupAdminEditActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
const/4 v6, 0x0
invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030002
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupAdminEditActivity;->setContentView(I)V
const v0, 0x7f0a00be
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupAdminEditActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/FooterActionBar;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupAdminEditActivity;->b:Lcom/bbm/ui/FooterActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminEditActivity;->b:Lcom/bbm/ui/FooterActionBar;
new-instance v1, Lcom/bbm/ui/ActionBarItem;
const v2, 0x7f0202ac
const v3, 0x7f0e00f4
invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V
invoke-virtual {v0, v1, v4}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminEditActivity;->b:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0, v4}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminEditActivity;->b:Lcom/bbm/ui/FooterActionBar;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupAdminEditActivity;->g:Lcom/bbm/ui/cj;
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupAdminEditActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
const v1, 0x7f03010b
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupAdminEditActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupAdminEditActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a053b
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f0e042c
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v2, Lcom/bbm/ui/slidingmenu/a;
const v3, 0x7f020268
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupAdminEditActivity;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f0e0606
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v2, v3, v4, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v0, v1, v6, v6}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
iget-object v1, p0, Lcom/bbm/ui/activities/GroupAdminEditActivity;->h:Lcom/bbm/ui/c/fq;
iput-object v1, v0, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;
const-string v1, " - Lcom/bbm/ui/activities/GroupAdminEditActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/GroupAdminEditActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/GroupAdminEditActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/GroupAdminEditActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onResume()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminEditActivity;->d:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->g(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v0
new-instance v1, Lcom/bbm/ui/activities/kx;
invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/kx;-><init>(Lcom/bbm/ui/activities/GroupAdminEditActivity;Lcom/bbm/j/r;)V
new-instance v0, Lcom/bbm/ui/activities/lb;
invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/lb;-><init>(Lcom/bbm/ui/activities/GroupAdminEditActivity;Lcom/bbm/j/r;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupAdminEditActivity;->a:Lcom/bbm/ui/activities/lb;
const v0, 0x7f0a00b6
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupAdminEditActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupAdminEditActivity;->e:Landroid/widget/ListView;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminEditActivity;->e:Landroid/widget/ListView;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupAdminEditActivity;->a:Lcom/bbm/ui/activities/lb;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminEditActivity;->e:Landroid/widget/ListView;
new-instance v1, Lcom/bbm/ui/activities/ky;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ky;-><init>(Lcom/bbm/ui/activities/GroupAdminEditActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
const-string v1, " - Lcom/bbm/ui/activities/GroupAdminEditActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method