.class public Lcom/bbm/ui/activities/GroupChatListActivity;
.super Lcom/bbm/ui/activities/md;
.source "GroupChatListActivity.java"
.field private static final i:Lcom/bbm/g/am;
.field private a:Landroid/app/ActionBar;
.field private b:Lcom/bbm/ui/ObservingImageView;
.field private d:Lcom/bbm/ui/InlineImageTextView;
.field private e:Lcom/bbm/ui/InlineImageTextView;
.field private f:Landroid/widget/TextView;
.field private g:Landroid/widget/ListView;
.field private h:Lcom/bbm/ui/FooterActionBar;
.field private j:Landroid/content/Context;
.field private k:Lcom/bbm/ui/ef;
.field private final l:Lcom/bbm/j/k;
.field private m:Lcom/bbm/ui/ct;
.field private final n:Lcom/bbm/ui/cj;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
sput-object v0, Lcom/bbm/ui/activities/GroupChatListActivity;->i:Lcom/bbm/g/am;
return-void
.end method
.method public constructor <init>()V
.registers 3
const-class v0, Lcom/bbm/ui/activities/MainActivity;
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/md;-><init>(Ljava/lang/Class;)V
new-instance v0, Lcom/bbm/ui/activities/lu;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/lu;-><init>(Lcom/bbm/ui/activities/GroupChatListActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->l:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/ui/activities/lz;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/lz;-><init>(Lcom/bbm/ui/activities/GroupChatListActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->n:Lcom/bbm/ui/cj;
new-instance v0, Lcom/bbm/ui/activities/lr;
sget-object v1, Lcom/bbm/ui/activities/GroupChatListActivity;->i:Lcom/bbm/g/am;
invoke-virtual {v1}, Lcom/bbm/g/am;->d()Lcom/bbm/j/w;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/lr;-><init>(Lcom/bbm/ui/activities/GroupChatListActivity;Lcom/bbm/j/r;)V
new-instance v1, Lcom/bbm/ui/activities/ls;
invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/ls;-><init>(Lcom/bbm/ui/activities/GroupChatListActivity;Lcom/bbm/j/r;)V
iput-object v1, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->k:Lcom/bbm/ui/ef;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupChatListActivity;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->j:Landroid/content/Context;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupChatListActivity;I)V
.registers 8
const/4 v5, 0x0
iget-object v1, p0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
new-instance v2, Lcom/bbm/ui/slidingmenu/a;
const v0, 0x7f020268
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupChatListActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0e03d1
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v0, v3, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
new-instance v3, Lcom/bbm/ui/slidingmenu/a;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->k:Lcom/bbm/ui/ef;
invoke-virtual {v0, p1}, Lcom/bbm/ui/ef;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/q;
invoke-static {p0, v0}, Lcom/bbm/util/bm;->a(Landroid/content/Context;Lcom/bbm/g/q;)Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v5, v0, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1, v5, v3, v2}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
new-instance v0, Lcom/bbm/ui/activities/ly;
invoke-direct {v0, p0, p1}, Lcom/bbm/ui/activities/ly;-><init>(Lcom/bbm/ui/activities/GroupChatListActivity;I)V
invoke-virtual {v1, v0}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method static synthetic b()Lcom/bbm/g/am;
.registers 1
sget-object v0, Lcom/bbm/ui/activities/GroupChatListActivity;->i:Lcom/bbm/g/am;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/activities/GroupChatListActivity;)Lcom/bbm/ui/ObservingImageView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->b:Lcom/bbm/ui/ObservingImageView;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/activities/GroupChatListActivity;)Lcom/bbm/ui/InlineImageTextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->d:Lcom/bbm/ui/InlineImageTextView;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/activities/GroupChatListActivity;)Lcom/bbm/ui/InlineImageTextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->e:Lcom/bbm/ui/InlineImageTextView;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/activities/GroupChatListActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->f:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/activities/GroupChatListActivity;)Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->g:Landroid/widget/ListView;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/activities/GroupChatListActivity;)Lcom/bbm/ui/ef;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->k:Lcom/bbm/ui/ef;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/bbm/ui/activities/GroupChatListActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupChatListActivity;->getBaseContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->j:Landroid/content/Context;
invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030027
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupChatListActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupChatListActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->a:Landroid/app/ActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->a:Landroid/app/ActionBar;
const v1, 0x7f03010a
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->a:Landroid/app/ActionBar;
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->a:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0535
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->b:Lcom/bbm/ui/ObservingImageView;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->a:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0539
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->d:Lcom/bbm/ui/InlineImageTextView;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->a:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a053a
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->e:Lcom/bbm/ui/InlineImageTextView;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->a:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0538
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->f:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->b:Lcom/bbm/ui/ObservingImageView;
new-instance v1, Lcom/bbm/ui/activities/lv;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/lv;-><init>(Lcom/bbm/ui/activities/GroupChatListActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a00be
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupChatListActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/FooterActionBar;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->h:Lcom/bbm/ui/FooterActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->h:Lcom/bbm/ui/FooterActionBar;
new-instance v1, Lcom/bbm/ui/ActionBarItem;
const v2, 0x7f0202ac
const v3, 0x7f0e06b0
invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V
invoke-virtual {v0, v1, v4}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->h:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0, v4}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->h:Lcom/bbm/ui/FooterActionBar;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->n:Lcom/bbm/ui/cj;
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V
const v0, 0x7f0a018c
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupChatListActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->g:Landroid/widget/ListView;
new-instance v0, Lcom/bbm/ui/ct;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->k:Lcom/bbm/ui/ef;
invoke-direct {v0, p0, v1}, Lcom/bbm/ui/ct;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->m:Lcom/bbm/ui/ct;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->m:Lcom/bbm/ui/ct;
const/4 v1, 0x3
iput v1, v0, Lcom/bbm/ui/ct;->h:I
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->g:Landroid/widget/ListView;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->m:Lcom/bbm/ui/ct;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->g:Landroid/widget/ListView;
new-instance v1, Lcom/bbm/ui/activities/lw;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/lw;-><init>(Lcom/bbm/ui/activities/GroupChatListActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->g:Landroid/widget/ListView;
new-instance v1, Lcom/bbm/ui/activities/lx;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/lx;-><init>(Lcom/bbm/ui/activities/GroupChatListActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
sget-object v0, Lcom/bbm/ui/activities/GroupChatListActivity;->i:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
sget-object v2, Lcom/bbm/g/aw;->a:Lcom/bbm/g/aw;
invoke-static {v1, v2}, Lcom/bbm/g/an;->a(Ljava/lang/String;Lcom/bbm/g/aw;)Lcom/bbm/g/av;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
const-string v1, " - Lcom/bbm/ui/activities/GroupChatListActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/GroupChatListActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->m:Lcom/bbm/ui/ct;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->m:Lcom/bbm/ui/ct;
invoke-virtual {v0}, Lcom/bbm/ui/ct;->e()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->m:Lcom/bbm/ui/ct;
:cond_c
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onDestroy()V
const-string v1, " - Lcom/bbm/ui/activities/GroupChatListActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/GroupChatListActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->l:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onPause()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->m:Lcom/bbm/ui/ct;
invoke-virtual {v0}, Lcom/bbm/ui/ct;->b()V
const-string v1, " - Lcom/bbm/ui/activities/GroupChatListActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/GroupChatListActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onResume()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->l:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupChatListActivity;->m:Lcom/bbm/ui/ct;
invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V
const-string v1, " - Lcom/bbm/ui/activities/GroupChatListActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method