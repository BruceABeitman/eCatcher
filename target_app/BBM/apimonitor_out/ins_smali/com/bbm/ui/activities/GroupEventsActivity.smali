.class public Lcom/bbm/ui/activities/GroupEventsActivity;
.super Lcom/bbm/ui/activities/md;
.source "GroupEventsActivity.java"
.field private a:Landroid/content/Context;
.field private b:Lcom/bbm/ui/FooterActionBar;
.field private d:Lcom/bbm/ui/activities/np;
.field private e:Landroid/widget/ListView;
.field private f:Lcom/bbm/ui/ObservingImageView;
.field private g:Lcom/bbm/ui/InlineImageTextView;
.field private h:Lcom/bbm/ui/InlineImageTextView;
.field private i:Landroid/widget/TextView;
.field private j:Landroid/view/View;
.field private final k:Lcom/bbm/ui/cj;
.field private final l:Lcom/bbm/j/k;
.method public constructor <init>()V
.registers 2
const-class v0, Lcom/bbm/ui/activities/MainActivity;
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/md;-><init>(Ljava/lang/Class;)V
new-instance v0, Lcom/bbm/ui/activities/nn;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/nn;-><init>(Lcom/bbm/ui/activities/GroupEventsActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->k:Lcom/bbm/ui/cj;
new-instance v0, Lcom/bbm/ui/activities/no;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/no;-><init>(Lcom/bbm/ui/activities/GroupEventsActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->l:Lcom/bbm/j/k;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupEventsActivity;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/GroupEventsAddActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "groupUri"
iget-object v2, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "newOrEdit"
const-string v2, "new"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupEventsActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method static synthetic b(Lcom/bbm/ui/activities/GroupEventsActivity;)Lcom/bbm/ui/activities/np;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->d:Lcom/bbm/ui/activities/np;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/activities/GroupEventsActivity;)Lcom/bbm/ui/ObservingImageView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->f:Lcom/bbm/ui/ObservingImageView;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/activities/GroupEventsActivity;)Lcom/bbm/ui/InlineImageTextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->g:Lcom/bbm/ui/InlineImageTextView;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/activities/GroupEventsActivity;)Lcom/bbm/ui/InlineImageTextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->h:Lcom/bbm/ui/InlineImageTextView;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/activities/GroupEventsActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->i:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/activities/GroupEventsActivity;)Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->e:Landroid/widget/ListView;
return-object v0
.end method
.method static synthetic h(Lcom/bbm/ui/activities/GroupEventsActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->j:Landroid/view/View;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/activities/GroupEventsActivity;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->a:Landroid/content/Context;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/bbm/ui/activities/GroupEventsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V
iput-object p0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->a:Landroid/content/Context;
const v0, 0x7f030029
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupEventsActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupEventsActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v1
const v0, 0x7f03010a
invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(I)V
const/16 v0, 0x10
invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V
invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v2, 0x7f0a0535
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->f:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v2, 0x7f0a0539
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->g:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v2, 0x7f0a053a
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->h:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v2, 0x7f0a0538
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->i:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/bbm/ui/activities/nk;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/nk;-><init>(Lcom/bbm/ui/activities/GroupEventsActivity;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a018d
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupEventsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->e:Landroid/widget/ListView;
const v0, 0x7f0a018e
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupEventsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->j:Landroid/view/View;
const v0, 0x7f0a0191
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupEventsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/bbm/ui/activities/nl;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/nl;-><init>(Lcom/bbm/ui/activities/GroupEventsActivity;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v0, Lcom/bbm/ui/activities/np;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/np;-><init>(Lcom/bbm/ui/activities/GroupEventsActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->d:Lcom/bbm/ui/activities/np;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->e:Landroid/widget/ListView;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->d:Lcom/bbm/ui/activities/np;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->e:Landroid/widget/ListView;
new-instance v1, Lcom/bbm/ui/activities/nm;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/nm;-><init>(Lcom/bbm/ui/activities/GroupEventsActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
const v0, 0x7f0a00be
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupEventsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/FooterActionBar;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->b:Lcom/bbm/ui/FooterActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->b:Lcom/bbm/ui/FooterActionBar;
new-instance v1, Lcom/bbm/ui/ActionBarItem;
const v2, 0x7f020214
const v3, 0x7f0e03ab
invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V
invoke-virtual {v0, v1, v4}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->b:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0, v4}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->b:Lcom/bbm/ui/FooterActionBar;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->k:Lcom/bbm/ui/cj;
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
sget-object v2, Lcom/bbm/g/aw;->d:Lcom/bbm/g/aw;
invoke-static {v1, v2}, Lcom/bbm/g/an;->a(Ljava/lang/String;Lcom/bbm/g/aw;)Lcom/bbm/g/av;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
const-string v1, " - Lcom/bbm/ui/activities/GroupEventsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/GroupEventsActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onDestroy()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->d:Lcom/bbm/ui/activities/np;
invoke-virtual {v0}, Lcom/bbm/ui/activities/np;->b()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->e:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->e:Landroid/widget/ListView;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->b:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->f:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->b()V
const-string v1, " - Lcom/bbm/ui/activities/GroupEventsActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPause()V
.registers 4
const-string v1, " + Lcom/bbm/ui/activities/GroupEventsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->l:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->d:Lcom/bbm/ui/activities/np;
invoke-virtual {v0}, Lcom/bbm/ui/activities/np;->b()V
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
sget-object v1, Lcom/bbm/c/n;->n:Lcom/bbm/c/n;
invoke-virtual {v0, v1}, Lcom/bbm/c/c;->c(Lcom/bbm/c/n;)V
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onPause()V
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
sget-object v2, Lcom/bbm/g/aw;->d:Lcom/bbm/g/aw;
invoke-static {v1, v2}, Lcom/bbm/g/an;->a(Ljava/lang/String;Lcom/bbm/g/aw;)Lcom/bbm/g/av;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
const-string v1, " - Lcom/bbm/ui/activities/GroupEventsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 4
const-string v1, " + Lcom/bbm/ui/activities/GroupEventsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onResume()V
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
sget-object v1, Lcom/bbm/c/n;->n:Lcom/bbm/c/n;
invoke-virtual {v0, v1}, Lcom/bbm/c/c;->a(Lcom/bbm/c/n;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->l:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupEventsActivity;->d:Lcom/bbm/ui/activities/np;
invoke-virtual {v0}, Lcom/bbm/ui/activities/np;->c()V
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
sget-object v2, Lcom/bbm/g/aw;->d:Lcom/bbm/g/aw;
invoke-static {v1, v2}, Lcom/bbm/g/an;->a(Ljava/lang/String;Lcom/bbm/g/aw;)Lcom/bbm/g/av;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
const-string v1, " - Lcom/bbm/ui/activities/GroupEventsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method