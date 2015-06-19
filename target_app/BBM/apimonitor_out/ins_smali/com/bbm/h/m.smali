.class public Lcom/bbm/h/m;
.super Landroid/app/Fragment;
.source "AddContactsFragment.java"
.field public a:Lcom/bbm/util/cr;
.field private b:Landroid/view/View;
.field private c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.field private d:Landroid/view/View;
.field private e:Lcom/bbm/j/k;
.field private f:Lcom/bbm/h/a;
.field private g:Lcom/bbm/j/r;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Landroid/app/Fragment;-><init>()V
new-instance v0, Lcom/bbm/util/cr;
const-string v1, ""
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/h/m;->a:Lcom/bbm/util/cr;
new-instance v0, Lcom/bbm/h/s;
invoke-direct {v0, p0}, Lcom/bbm/h/s;-><init>(Lcom/bbm/h/m;)V
iput-object v0, p0, Lcom/bbm/h/m;->g:Lcom/bbm/j/r;
return-void
.end method
.method static synthetic a(Lcom/bbm/h/m;)Lcom/bbm/util/cr;
.registers 2
iget-object v0, p0, Lcom/bbm/h/m;->a:Lcom/bbm/util/cr;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/h/m;)Lcom/bbm/j/r;
.registers 4
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v0
const-string v1, "adsEnabled"
invoke-virtual {v0, v1}, Lcom/bbm/b/q;->a(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v0
iget-object v0, v0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v1, "value"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_2d
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/b/q;->b()Lcom/bbm/j/w;
move-result-object v0
new-instance v1, Lcom/bbm/h/n;
invoke-direct {v1, p0, v0}, Lcom/bbm/h/n;-><init>(Lcom/bbm/h/m;Lcom/bbm/j/r;)V
new-instance v2, Lcom/bbm/h/y;
invoke-direct {v2, p0, v1}, Lcom/bbm/h/y;-><init>(Lcom/bbm/h/m;Lcom/bbm/j/r;)V
new-instance v0, Lcom/bbm/h/ae;
invoke-direct {v0, p0, v2}, Lcom/bbm/h/ae;-><init>(Lcom/bbm/h/m;Lcom/bbm/j/r;)V
:goto_2c
return-object v0
:cond_2d
new-instance v0, Lcom/bbm/util/cr;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
goto :goto_2c
.end method
.method static synthetic c(Lcom/bbm/h/m;)Lcom/bbm/j/r;
.registers 3
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->r()Lcom/bbm/j/w;
move-result-object v0
new-instance v1, Lcom/bbm/h/af;
invoke-direct {v1, p0, v0}, Lcom/bbm/h/af;-><init>(Lcom/bbm/h/m;Lcom/bbm/j/r;)V
new-instance v0, Lcom/bbm/h/ag;
invoke-direct {v0, p0, v1}, Lcom/bbm/h/ag;-><init>(Lcom/bbm/h/m;Lcom/bbm/j/r;)V
new-instance v1, Lcom/bbm/h/ah;
invoke-direct {v1, p0, v0}, Lcom/bbm/h/ah;-><init>(Lcom/bbm/h/m;Lcom/bbm/j/r;)V
return-object v1
.end method
.method static synthetic d(Lcom/bbm/h/m;)Lcom/bbm/j/r;
.registers 3
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/g/am;->c()Lcom/bbm/j/w;
move-result-object v0
new-instance v1, Lcom/bbm/h/ai;
invoke-direct {v1, p0, v0}, Lcom/bbm/h/ai;-><init>(Lcom/bbm/h/m;Lcom/bbm/j/r;)V
new-instance v0, Lcom/bbm/h/aj;
invoke-direct {v0, p0, v1}, Lcom/bbm/h/aj;-><init>(Lcom/bbm/h/m;Lcom/bbm/j/r;)V
new-instance v1, Lcom/bbm/h/ak;
invoke-direct {v1, p0, v0}, Lcom/bbm/h/ak;-><init>(Lcom/bbm/h/m;Lcom/bbm/j/r;)V
return-object v1
.end method
.method static synthetic e(Lcom/bbm/h/m;)Lcom/bbm/j/r;
.registers 4
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->s()Lcom/bbm/j/w;
move-result-object v0
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v1
invoke-virtual {v1}, Lcom/bbm/g/am;->b()Lcom/bbm/j/w;
move-result-object v1
new-instance v2, Lcom/bbm/h/o;
invoke-direct {v2, p0, v0}, Lcom/bbm/h/o;-><init>(Lcom/bbm/h/m;Lcom/bbm/j/r;)V
new-instance v0, Lcom/bbm/h/p;
invoke-direct {v0, p0, v1}, Lcom/bbm/h/p;-><init>(Lcom/bbm/h/m;Lcom/bbm/j/r;)V
new-instance v1, Lcom/bbm/util/cs;
invoke-direct {v1}, Lcom/bbm/util/cs;-><init>()V
invoke-virtual {v1, v2}, Lcom/bbm/util/cs;->a(Ljava/lang/Object;)V
invoke-virtual {v1, v0}, Lcom/bbm/util/cs;->a(Ljava/lang/Object;)V
new-instance v0, Lcom/bbm/d/b/i;
invoke-direct {v0, v1}, Lcom/bbm/d/b/i;-><init>(Lcom/bbm/j/r;)V
new-instance v1, Lcom/bbm/h/q;
invoke-direct {v1, p0, v0}, Lcom/bbm/h/q;-><init>(Lcom/bbm/h/m;Lcom/bbm/j/r;)V
new-instance v0, Lcom/bbm/h/r;
invoke-direct {v0, p0, v1}, Lcom/bbm/h/r;-><init>(Lcom/bbm/h/m;Lcom/bbm/j/r;)V
return-object v0
.end method
.method static synthetic f(Lcom/bbm/h/m;)V
.registers 4
invoke-virtual {p0}, Lcom/bbm/h/m;->getActivity()Landroid/app/Activity;
move-result-object v0
const/16 v1, 0x3e8
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/d/a;->h()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/bbm/h/aq;->a(Landroid/app/Activity;ILjava/lang/String;)V
return-void
.end method
.method static synthetic g(Lcom/bbm/h/m;)V
.registers 6
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
new-instance v1, Lcom/bbm/ui/b/aa;
const v2, 0x7f0e049e
const v3, 0x7f0202e8
new-instance v4, Lcom/bbm/h/x;
invoke-direct {v4, p0}, Lcom/bbm/h/x;-><init>(Lcom/bbm/h/m;)V
invoke-direct {v1, v2, v3, v4}, Lcom/bbm/ui/b/aa;-><init>(IILcom/bbm/ui/b/ab;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/bbm/ui/b/aa;
const v2, 0x7f0e04a1
const v3, 0x7f0202eb
new-instance v4, Lcom/bbm/h/z;
invoke-direct {v4, p0}, Lcom/bbm/h/z;-><init>(Lcom/bbm/h/m;)V
invoke-direct {v1, v2, v3, v4}, Lcom/bbm/ui/b/aa;-><init>(IILcom/bbm/ui/b/ab;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/bbm/ui/b/aa;
const v2, 0x7f0e049f
const v3, 0x7f0202e9
new-instance v4, Lcom/bbm/h/aa;
invoke-direct {v4, p0}, Lcom/bbm/h/aa;-><init>(Lcom/bbm/h/m;)V
invoke-direct {v1, v2, v3, v4}, Lcom/bbm/ui/b/aa;-><init>(IILcom/bbm/ui/b/ab;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p0}, Lcom/bbm/h/m;->getActivity()Landroid/app/Activity;
move-result-object v1
invoke-static {v1}, Lcom/bbm/h/aq;->c(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_5b
new-instance v1, Lcom/bbm/ui/b/aa;
const v2, 0x7f0e04a2
const v3, 0x7f0202ec
new-instance v4, Lcom/bbm/h/ab;
invoke-direct {v4, p0}, Lcom/bbm/h/ab;-><init>(Lcom/bbm/h/m;)V
invoke-direct {v1, v2, v3, v4}, Lcom/bbm/ui/b/aa;-><init>(IILcom/bbm/ui/b/ab;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_5b
invoke-virtual {p0}, Lcom/bbm/h/m;->getActivity()Landroid/app/Activity;
move-result-object v1
invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
const-string v2, "android.hardware.nfc"
invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_7e
new-instance v1, Lcom/bbm/ui/b/aa;
const v2, 0x7f0e04a0
const v3, 0x7f0202ea
new-instance v4, Lcom/bbm/h/ac;
invoke-direct {v4, p0}, Lcom/bbm/h/ac;-><init>(Lcom/bbm/h/m;)V
invoke-direct {v1, v2, v3, v4}, Lcom/bbm/ui/b/aa;-><init>(IILcom/bbm/ui/b/ab;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_7e
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v1
invoke-static {v1}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;
invoke-virtual {p0}, Lcom/bbm/h/m;->getActivity()Landroid/app/Activity;
move-result-object v1
invoke-static {v1, v0}, Lcom/bbm/h/aq;->b(Landroid/content/Context;Ljava/util/List;)V
return-void
.end method
.method static synthetic h(Lcom/bbm/h/m;)Lcom/bbm/j/r;
.registers 2
iget-object v0, p0, Lcom/bbm/h/m;->g:Lcom/bbm/j/r;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/h/m;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/bbm/h/m;->d:Landroid/view/View;
return-object v0
.end method
.method static synthetic j(Lcom/bbm/h/m;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.registers 2
iget-object v0, p0, Lcom/bbm/h/m;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
return-object v0
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 9
const/4 v4, 0x0
const v0, 0x7f03007f
invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/h/m;->b:Landroid/view/View;
const-string v0, "onCreateView"
const-class v1, Lcom/bbm/h/m;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
new-instance v1, Lcom/bbm/util/eq;
invoke-direct {v1}, Lcom/bbm/util/eq;-><init>()V
new-instance v0, Lcom/bbm/h/a;
invoke-virtual {p0}, Lcom/bbm/h/m;->getActivity()Landroid/app/Activity;
move-result-object v2
iget-object v3, p0, Lcom/bbm/h/m;->g:Lcom/bbm/j/r;
invoke-direct {v0, v2, v3, v1}, Lcom/bbm/h/a;-><init>(Landroid/app/Activity;Lcom/bbm/j/r;Lcom/bbm/util/eq;)V
iput-object v0, p0, Lcom/bbm/h/m;->f:Lcom/bbm/h/a;
iget-object v0, p0, Lcom/bbm/h/m;->b:Landroid/view/View;
const v2, 0x7f0a036b
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/h/m;->d:Landroid/view/View;
iget-object v0, p0, Lcom/bbm/h/m;->b:Landroid/view/View;
const v2, 0x7f0a036a
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
iput-object v0, p0, Lcom/bbm/h/m;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
iget-object v0, p0, Lcom/bbm/h/m;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
const/4 v2, 0x1
invoke-virtual {v0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setNumColumns(I)V
iget-object v0, p0, Lcom/bbm/h/m;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-virtual {v0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setHorizontalSpacing(I)V
iget-object v0, p0, Lcom/bbm/h/m;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-virtual {v0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVerticalSpacing(I)V
iget-object v0, p0, Lcom/bbm/h/m;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
iget-object v2, p0, Lcom/bbm/h/m;->f:Lcom/bbm/h/a;
invoke-virtual {v0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/bbm/h/m;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
iget-object v0, p0, Lcom/bbm/h/m;->b:Landroid/view/View;
const v1, 0x7f0a0368
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/bbm/h/t;
invoke-direct {v1, p0}, Lcom/bbm/h/t;-><init>(Lcom/bbm/h/m;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/h/m;->b:Landroid/view/View;
const v1, 0x7f0a0369
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iget-object v0, p0, Lcom/bbm/h/m;->b:Landroid/view/View;
const v2, 0x7f0a036e
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v2, Lcom/bbm/h/u;
invoke-direct {v2, p0}, Lcom/bbm/h/u;-><init>(Lcom/bbm/h/m;)V
invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/h/m;->b:Landroid/view/View;
const v1, 0x7f0a036c
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/bbm/h/v;
invoke-direct {v1, p0, v0}, Lcom/bbm/h/v;-><init>(Lcom/bbm/h/m;Landroid/view/View;)V
iput-object v1, p0, Lcom/bbm/h/m;->e:Lcom/bbm/j/k;
iget-object v0, p0, Lcom/bbm/h/m;->e:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
iget-object v0, p0, Lcom/bbm/h/m;->b:Landroid/view/View;
new-instance v1, Lcom/bbm/h/w;
invoke-direct {v1, p0}, Lcom/bbm/h/w;-><init>(Lcom/bbm/h/m;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Lcom/bbm/h/m;->b:Landroid/view/View;
return-object v0
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/bbm/h/m; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V
iget-object v0, p0, Lcom/bbm/h/m;->b:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Lcom/bbm/h/m;->e:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
iput-object v1, p0, Lcom/bbm/h/m;->e:Lcom/bbm/j/k;
iget-object v0, p0, Lcom/bbm/h/m;->f:Lcom/bbm/h/a;
invoke-virtual {v0}, Lcom/bbm/h/a;->e()V
iget-object v0, p0, Lcom/bbm/h/m;->f:Lcom/bbm/h/a;
invoke-virtual {v0}, Lcom/bbm/h/a;->f()V
iput-object v1, p0, Lcom/bbm/h/m;->f:Lcom/bbm/h/a;
iget-object v0, p0, Lcom/bbm/h/m;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->removeAllViewsInLayout()V
iget-object v0, p0, Lcom/bbm/h/m;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
iget-object v0, p0, Lcom/bbm/h/m;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a()V
iput-object v1, p0, Lcom/bbm/h/m;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
const-string v1, " - Lcom/bbm/h/m; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/bbm/h/m; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Fragment;->onPause()V
iget-object v0, p0, Lcom/bbm/h/m;->e:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
iget-object v0, p0, Lcom/bbm/h/m;->f:Lcom/bbm/h/a;
invoke-virtual {v0}, Lcom/bbm/h/a;->e()V
const-string v1, " - Lcom/bbm/h/m; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/bbm/h/m; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Fragment;->onResume()V
iget-object v0, p0, Lcom/bbm/h/m;->e:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
iget-object v0, p0, Lcom/bbm/h/m;->f:Lcom/bbm/h/a;
iget-object v0, v0, Lcom/bbm/ui/gk;->d:Lcom/bbm/ui/ct;
invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V
const-string v1, " - Lcom/bbm/h/m; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method