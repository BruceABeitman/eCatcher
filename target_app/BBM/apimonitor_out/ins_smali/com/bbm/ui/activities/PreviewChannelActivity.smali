.class public Lcom/bbm/ui/activities/PreviewChannelActivity;
.super Lcom/bbm/ui/activities/cn;
.source "PreviewChannelActivity.java"
.field public a:Lcom/bbm/util/ba;
.field private b:Lcom/bbm/ui/FooterActionBar;
.field private c:Lcom/bbm/ui/SegmentedControl;
.field private d:I
.field private e:Z
.field private f:Lcom/bbm/d/ec;
.field private g:Lcom/bbm/ui/c/l;
.field private h:Lcom/bbm/ui/c/aj;
.field private final i:Lcom/bbm/d;
.field private final j:Lcom/bbm/d/a;
.field private k:Ljava/lang/String;
.field private l:Z
.field private final m:Lcom/bbm/ui/fs;
.field private final n:Lcom/bbm/ui/cj;
.field private final o:Lcom/bbm/ui/c/fq;
.field private final p:Lcom/bbm/j/k;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/cn;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;
const/4 v0, -0x1
iput v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->d:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->e:Z
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->i:Lcom/bbm/d;
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iput-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->j:Lcom/bbm/d/a;
new-instance v0, Lcom/bbm/ui/activities/abh;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/abh;-><init>(Lcom/bbm/ui/activities/PreviewChannelActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->m:Lcom/bbm/ui/fs;
new-instance v0, Lcom/bbm/ui/activities/abi;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/abi;-><init>(Lcom/bbm/ui/activities/PreviewChannelActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->n:Lcom/bbm/ui/cj;
new-instance v0, Lcom/bbm/ui/activities/abj;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/abj;-><init>(Lcom/bbm/ui/activities/PreviewChannelActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->o:Lcom/bbm/ui/c/fq;
new-instance v0, Lcom/bbm/ui/activities/abk;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/abk;-><init>(Lcom/bbm/ui/activities/PreviewChannelActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->p:Lcom/bbm/j/k;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/PreviewChannelActivity;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->d:I
return v0
.end method
.method static synthetic a(Lcom/bbm/ui/activities/PreviewChannelActivity;I)I
.registers 2
iput p1, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->d:I
return p1
.end method
.method static synthetic a(Lcom/bbm/ui/activities/PreviewChannelActivity;Lcom/bbm/d/ec;)Lcom/bbm/d/ec;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->f:Lcom/bbm/d/ec;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/ui/activities/PreviewChannelActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->k:Ljava/lang/String;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/ui/activities/PreviewChannelActivity;Lcom/bbm/ui/c/fm;)V
.registers 2
invoke-direct {p0, p1}, Lcom/bbm/ui/activities/PreviewChannelActivity;->b(Lcom/bbm/ui/c/fm;)V
return-void
.end method
.method static synthetic b(Lcom/bbm/ui/activities/PreviewChannelActivity;)Lcom/bbm/ui/c/l;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->g:Lcom/bbm/ui/c/l;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/activities/PreviewChannelActivity;I)V
.registers 4
const/4 v1, 0x1
sparse-switch p1, :sswitch_data_3e
:goto_4
return-void
:sswitch_5
invoke-static {}, Lcom/bbm/util/ac;->b()Z
move-result v0
if-eqz v0, :cond_1b
new-instance v0, Lcom/bbm/ui/b/a;
invoke-direct {v0, p0}, Lcom/bbm/ui/b/a;-><init>(Landroid/app/Activity;)V
new-instance v1, Lcom/bbm/ui/activities/abl;
invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/abl;-><init>(Lcom/bbm/ui/activities/PreviewChannelActivity;Lcom/bbm/ui/b/a;)V
iput-object v1, v0, Lcom/bbm/ui/b/a;->a:Lcom/bbm/ui/b/f;
invoke-virtual {v0}, Lcom/bbm/ui/b/a;->show()V
goto :goto_4
:cond_1b
invoke-direct {p0}, Lcom/bbm/ui/activities/PreviewChannelActivity;->f()V
goto :goto_4
:sswitch_1f
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->f:Lcom/bbm/d/ec;
iget-object v0, v0, Lcom/bbm/d/ec;->O:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/bbm/util/ac;->a(Lcom/bbm/ui/activities/ev;Ljava/lang/String;)V
goto :goto_4
:sswitch_2e
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->f:Lcom/bbm/d/ec;
iget-object v0, v0, Lcom/bbm/d/ec;->O:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/ac;->d(Ljava/lang/String;)V
goto :goto_4
nop
:sswitch_data_3e
.sparse-switch
0x7f0a003d -> :sswitch_5
0x7f0a0041 -> :sswitch_2e
0x7f0a0045 -> :sswitch_1f
.end sparse-switch
.end method
.method private b(Lcom/bbm/ui/c/fm;)V
.registers 11
const v7, 0x7f020297
const/4 v2, 0x1
const/4 v1, 0x0
const/4 v8, 0x0
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
new-instance v4, Lcom/bbm/ui/slidingmenu/a;
const v0, 0x7f0a003d
const v5, 0x7f02001d
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
const v6, 0x7f0e04bc
invoke-virtual {p0, v6}, Lcom/bbm/ui/activities/PreviewChannelActivity;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-direct {v4, v0, v5, v6, v8}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->e:Z
if-eqz v0, :cond_29
iget-boolean v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->l:Z
if-eqz v0, :cond_78
:cond_29
move v0, v2
:goto_2a
invoke-virtual {v4, v0}, Lcom/bbm/ui/slidingmenu/a;->d(Z)V
iget-boolean v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->e:Z
if-nez v0, :cond_35
iget-boolean v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->l:Z
if-nez v0, :cond_7a
:cond_35
move v0, v2
:goto_36
invoke-virtual {v4, v0}, Lcom/bbm/ui/slidingmenu/a;->b(Z)V
invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->f:Lcom/bbm/d/ec;
iget-boolean v0, v0, Lcom/bbm/d/ec;->l:Z
if-eqz v0, :cond_7c
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
const v5, 0x7f0a0041
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
const v7, 0x7f0e01f2
invoke-virtual {p0, v7}, Lcom/bbm/ui/activities/PreviewChannelActivity;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-direct {v0, v5, v6, v7, v8}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_58
iget-boolean v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->e:Z
if-eqz v0, :cond_60
iget-boolean v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->l:Z
if-eqz v0, :cond_93
:cond_60
move v0, v2
:goto_61
invoke-virtual {v4, v0}, Lcom/bbm/ui/slidingmenu/a;->d(Z)V
iget-boolean v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->e:Z
if-nez v0, :cond_6c
iget-boolean v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->l:Z
if-nez v0, :cond_6d
:cond_6c
move v1, v2
:cond_6d
invoke-virtual {v4, v1}, Lcom/bbm/ui/slidingmenu/a;->b(Z)V
invoke-virtual {p1, v3, v8, v8}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->o:Lcom/bbm/ui/c/fq;
iput-object v0, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;
return-void
:cond_78
move v0, v1
goto :goto_2a
:cond_7a
move v0, v1
goto :goto_36
:cond_7c
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
const v5, 0x7f0a0045
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
const v7, 0x7f0e0609
invoke-virtual {p0, v7}, Lcom/bbm/ui/activities/PreviewChannelActivity;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-direct {v0, v5, v6, v7, v8}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_58
:cond_93
move v0, v1
goto :goto_61
.end method
.method static synthetic c(Lcom/bbm/ui/activities/PreviewChannelActivity;)Lcom/bbm/ui/c/aj;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->h:Lcom/bbm/ui/c/aj;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/activities/PreviewChannelActivity;)Lcom/bbm/d;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->i:Lcom/bbm/d;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/activities/PreviewChannelActivity;)Lcom/bbm/d/ec;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->f:Lcom/bbm/d/ec;
return-object v0
.end method
.method private f()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->f:Lcom/bbm/d/ec;
iget-object v0, v0, Lcom/bbm/d/ec;->O:Ljava/lang/String;
sget-object v1, Lcom/bbm/d/az;->h:Lcom/bbm/d/az;
invoke-static {v0, v1}, Lcom/bbm/d/z;->a(Ljava/lang/String;Lcom/bbm/d/az;)Lcom/bbm/d/ay;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->f:Lcom/bbm/d/ec;
iget-wide v1, v1, Lcom/bbm/d/ec;->z:J
invoke-virtual {v0, v1, v2}, Lcom/bbm/d/ay;->a(J)Lcom/bbm/d/ay;
iget-object v1, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->k:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/ay;->a(Ljava/lang/String;)Lcom/bbm/d/ay;
new-instance v1, Lcom/bbm/ui/activities/abm;
iget-object v2, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->f:Lcom/bbm/d/ec;
iget-object v2, v2, Lcom/bbm/d/ec;->O:Ljava/lang/String;
invoke-direct {v1, p0, v2}, Lcom/bbm/ui/activities/abm;-><init>(Lcom/bbm/ui/activities/PreviewChannelActivity;Ljava/lang/String;)V
iget-object v2, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->k:Ljava/lang/String;
invoke-virtual {v1, v2, p0}, Lcom/bbm/ui/d/e;->a(Ljava/lang/String;Ljava/lang/Object;)V
iget-object v1, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->j:Lcom/bbm/d/a;
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
return-void
.end method
.method static synthetic f(Lcom/bbm/ui/activities/PreviewChannelActivity;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->l:Z
return v0
.end method
.method static synthetic g(Lcom/bbm/ui/activities/PreviewChannelActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->l:Z
return v0
.end method
.method static synthetic h(Lcom/bbm/ui/activities/PreviewChannelActivity;)Lcom/bbm/ui/FooterActionBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/activities/PreviewChannelActivity;)V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/activities/PreviewChannelActivity;->f()V
return-void
.end method
.method protected final a()V
.registers 2
invoke-super {p0}, Lcom/bbm/ui/activities/cn;->a()V
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->a:Lcom/bbm/util/ba;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->a:Lcom/bbm/util/ba;
invoke-interface {v0}, Lcom/bbm/util/ba;->d()V
:cond_c
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 5
const/4 v2, 0x0
const v0, 0x7f0a0272
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/PreviewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
const v0, 0x7f0a0273
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/PreviewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->c:Lcom/bbm/ui/SegmentedControl;
iget-object v1, v0, Lcom/bbm/ui/SegmentedControl;->a:Landroid/widget/LinearLayout;
invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V
iget-object v1, v0, Lcom/bbm/ui/SegmentedControl;->a:Landroid/widget/LinearLayout;
invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V
iget-object v1, v0, Lcom/bbm/ui/SegmentedControl;->b:Landroid/widget/LinearLayout;
invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V
iget-object v0, v0, Lcom/bbm/ui/SegmentedControl;->b:Landroid/widget/LinearLayout;
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;
const v1, 0x7f0a003d
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/FooterActionBar;->setActionEnabled(IZ)V
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->e:Z
return-void
.end method
.method protected final a(Lcom/bbm/ui/c/fm;)Z
.registers 3
invoke-direct {p0, p1}, Lcom/bbm/ui/activities/PreviewChannelActivity;->b(Lcom/bbm/ui/c/fm;)V
invoke-static {p0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
const/4 v0, 0x1
return v0
.end method
.method protected final c()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public onActivityResult(IILandroid/content/Intent;)V
.registers 5
invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/cn;->onActivityResult(IILandroid/content/Intent;)V
if-nez p1, :cond_19
const/4 v0, 0x1
if-ne p2, v0, :cond_19
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->f:Lcom/bbm/d/ec;
if-nez v0, :cond_14
new-instance v0, Lcom/bbm/ui/activities/abn;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/abn;-><init>(Lcom/bbm/ui/activities/PreviewChannelActivity;)V
invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
:cond_14
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->f:Lcom/bbm/d/ec;
invoke-static {p3, p0, v0}, Lcom/bbm/util/ac;->a(Landroid/content/Intent;Landroid/content/Context;Lcom/bbm/d/ec;)V
:cond_19
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lcom/bbm/ui/activities/PreviewChannelActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v5, 0x7f0a003d
const/4 v4, 0x1
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/PreviewChannelActivity;->requestWindowFeature(I)Z
invoke-super {p0, p1}, Lcom/bbm/ui/activities/cn;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030047
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/PreviewChannelActivity;->setContentView(I)V
const v0, 0x7f0a0271
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/PreviewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/SegmentedControl;
iput-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->c:Lcom/bbm/ui/SegmentedControl;
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->c:Lcom/bbm/ui/SegmentedControl;
iget-object v1, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->m:Lcom/bbm/ui/fs;
invoke-virtual {v0, v1}, Lcom/bbm/ui/SegmentedControl;->setOnOptionSelectedListener(Lcom/bbm/ui/fs;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/PreviewChannelActivity;->b()Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/bbm/ui/c/l;
invoke-direct {v1}, Lcom/bbm/ui/c/l;-><init>()V
iput-object v1, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->g:Lcom/bbm/ui/c/l;
iget-object v1, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->g:Lcom/bbm/ui/c/l;
iput-object v0, v1, Lcom/bbm/ui/c/l;->d:Ljava/lang/String;
new-instance v1, Lcom/bbm/ui/c/aj;
invoke-direct {v1}, Lcom/bbm/ui/c/aj;-><init>()V
iput-object v1, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->h:Lcom/bbm/ui/c/aj;
iget-object v1, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->h:Lcom/bbm/ui/c/aj;
iput-object v0, v1, Lcom/bbm/ui/c/aj;->a:Ljava/lang/String;
const v0, 0x7f0a00be
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/PreviewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/FooterActionBar;
iput-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;
new-instance v1, Lcom/bbm/ui/ActionBarItem;
const v2, 0x7f02001d
const v3, 0x7f0e04bc
invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V
invoke-virtual {v0, v1, v5}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0, v4}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;
iget-object v1, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->n:Lcom/bbm/ui/cj;
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;
iget-boolean v1, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->l:Z
invoke-virtual {v0, v5, v1}, Lcom/bbm/ui/FooterActionBar;->setActionEnabled(IZ)V
if-eqz p1, :cond_78
const-string v0, "activeFragment"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
:goto_72
iget-object v1, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->c:Lcom/bbm/ui/SegmentedControl;
invoke-virtual {v1, v0}, Lcom/bbm/ui/SegmentedControl;->a(I)V
const-string v1, " - Lcom/bbm/ui/activities/PreviewChannelActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_78
const/4 v0, 0x0
goto :goto_72
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/PreviewChannelActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {p0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->p:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
invoke-super {p0}, Lcom/bbm/ui/activities/cn;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/PreviewChannelActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/PreviewChannelActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/cn;->onResume()V
iget-object v0, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->p:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
const-string v1, " - Lcom/bbm/ui/activities/PreviewChannelActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/bbm/ui/activities/PreviewChannelActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/bbm/ui/activities/cn;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "activeFragment"
iget v1, p0, Lcom/bbm/ui/activities/PreviewChannelActivity;->d:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, " - Lcom/bbm/ui/activities/PreviewChannelActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method