.class public Lcom/bbm/ui/c/am;
.super Landroid/app/Fragment;
.source "ChannelsNotificationsFragment.java"
.field private final a:Lcom/bbm/d;
.field private b:Landroid/content/Context;
.field private c:Lcom/bbm/ui/gk;
.field private d:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.field private e:Lcom/bbm/j/w;
.field private f:Landroid/view/View;
.field private g:Landroid/view/View;
.field private final h:Lcom/bbm/j/k;
.field private final i:Lcom/bbm/d/b/q;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Fragment;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/am;->a:Lcom/bbm/d;
new-instance v0, Lcom/bbm/ui/c/an;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/an;-><init>(Lcom/bbm/ui/c/am;)V
iput-object v0, p0, Lcom/bbm/ui/c/am;->h:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/ui/c/ao;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/ao;-><init>(Lcom/bbm/ui/c/am;)V
iput-object v0, p0, Lcom/bbm/ui/c/am;->i:Lcom/bbm/d/b/q;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/c/am;)V
.registers 7
const/16 v5, 0x8
const/4 v4, 0x0
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
new-instance v3, Lcom/bbm/d/at;
invoke-direct {v3, v1, v2}, Lcom/bbm/d/at;-><init>(J)V
invoke-virtual {v0, v3}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
iget-object v0, p0, Lcom/bbm/ui/c/am;->e:Lcom/bbm/j/w;
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_38
const-string v0, "Notifications area: normal contacts"
new-array v1, v4, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/ui/c/am;->f:Landroid/view/View;
invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/am;->g:Landroid/view/View;
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/am;->d:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-virtual {v0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVisibility(I)V
:goto_37
return-void
:cond_38
const-string v0, "Notifications area: zero mode"
new-array v1, v4, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/ui/c/am;->f:Landroid/view/View;
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/am;->g:Landroid/view/View;
invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/am;->d:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-virtual {v0, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVisibility(I)V
goto :goto_37
.end method
.method static synthetic b(Lcom/bbm/ui/c/am;)Lcom/bbm/j/w;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/am;->e:Lcom/bbm/j/w;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/c/am;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/am;->b:Landroid/content/Context;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/c/am;)Lcom/bbm/d;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/am;->a:Lcom/bbm/d;
return-object v0
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 10
const/4 v5, 0x1
const-string v0, "onCreateView"
const-class v1, Lcom/bbm/ui/c/am;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/am;->b:Landroid/content/Context;
const v0, 0x7f030085
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
iget-object v0, p0, Lcom/bbm/ui/c/am;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->N()Lcom/bbm/j/w;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/am;->e:Lcom/bbm/j/w;
iget-object v0, p0, Lcom/bbm/ui/c/am;->c:Lcom/bbm/ui/gk;
if-nez v0, :cond_33
new-instance v0, Lcom/bbm/ui/c/ap;
iget-object v2, p0, Lcom/bbm/ui/c/am;->b:Landroid/content/Context;
iget-object v3, p0, Lcom/bbm/ui/c/am;->i:Lcom/bbm/d/b/q;
invoke-static {}, Lcom/bbm/util/bn;->a()Lcom/bbm/util/bn;
move-result-object v4
invoke-direct {v0, p0, v2, v3, v4}, Lcom/bbm/ui/c/ap;-><init>(Lcom/bbm/ui/c/am;Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V
iput-object v0, p0, Lcom/bbm/ui/c/am;->c:Lcom/bbm/ui/gk;
:cond_33
const v0, 0x7f0a037c
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
iput-object v0, p0, Lcom/bbm/ui/c/am;->d:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
iget-object v0, p0, Lcom/bbm/ui/c/am;->d:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
iget-object v2, p0, Lcom/bbm/ui/c/am;->c:Lcom/bbm/ui/gk;
invoke-virtual {v0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/bbm/ui/c/am;->c:Lcom/bbm/ui/gk;
invoke-virtual {v0, v5}, Lcom/bbm/ui/gk;->b(I)V
iget-object v0, p0, Lcom/bbm/ui/c/am;->d:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-virtual {v0, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setNumColumns(I)V
iget-object v0, p0, Lcom/bbm/ui/c/am;->d:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
iget-object v2, p0, Lcom/bbm/ui/c/am;->b:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0b00e0
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
invoke-virtual {v0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setHorizontalSpacing(I)V
iget-object v0, p0, Lcom/bbm/ui/c/am;->d:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-virtual {v0, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setStickyHeaderIsTranscluent(Z)V
const v0, 0x7f0a037a
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/am;->f:Landroid/view/View;
iget-object v0, p0, Lcom/bbm/ui/c/am;->f:Landroid/view/View;
const/4 v2, 0x4
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
const v0, 0x7f0a037b
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/am;->g:Landroid/view/View;
iget-object v0, p0, Lcom/bbm/ui/c/am;->g:Landroid/view/View;
const/16 v2, 0x8
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
return-object v1
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/c/am; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Fragment;->onPause()V
iget-object v0, p0, Lcom/bbm/ui/c/am;->c:Lcom/bbm/ui/gk;
invoke-virtual {v0}, Lcom/bbm/ui/gk;->e()V
iget-object v0, p0, Lcom/bbm/ui/c/am;->h:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
const-string v1, " - Lcom/bbm/ui/c/am; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/c/am; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Fragment;->onResume()V
iget-object v0, p0, Lcom/bbm/ui/c/am;->c:Lcom/bbm/ui/gk;
iget-object v0, v0, Lcom/bbm/ui/gk;->d:Lcom/bbm/ui/ct;
invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V
iget-object v0, p0, Lcom/bbm/ui/c/am;->h:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
const-string v0, "onResume"
const-class v1, Lcom/bbm/ui/c/am;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
const-string v1, " - Lcom/bbm/ui/c/am; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method