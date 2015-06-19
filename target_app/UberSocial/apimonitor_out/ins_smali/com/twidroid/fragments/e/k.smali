.class public Lcom/twidroid/fragments/e/k;
.super Lcom/twidroid/fragments/base/d;
.source "SourceFile"
.field private static final d:I = 0x66
.field private e:Landroid/view/View;
.field private f:Landroid/view/View;
.field private g:Landroid/widget/Button;
.field private h:Ljava/util/List;
.field private i:Z
.field private j:J
.field private k:J
.field private n:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/twidroid/fragments/base/d;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/fragments/e/k;->i:Z
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/k;->setRetainInstance(Z)V
return-void
.end method
.method private A()V
.registers 4
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/fragments/e/k;->i:Z
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/k;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const-class v2, Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/k;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method private B()V
.registers 3
new-instance v0, Lcom/twidroid/fragments/e/k$2;
invoke-direct {v0, p0, p0}, Lcom/twidroid/fragments/e/k$2;-><init>(Lcom/twidroid/fragments/e/k;Lcom/twidroid/fragments/e/k;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/k$2;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/k;J)J
.registers 3
iput-wide p1, p0, Lcom/twidroid/fragments/e/k;->j:J
return-wide p1
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/k;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/fragments/e/k;->A()V
return-void
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/k;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/fragments/e/k;->n:Z
return p1
.end method
.method static synthetic b(Lcom/twidroid/fragments/e/k;J)J
.registers 3
iput-wide p1, p0, Lcom/twidroid/fragments/e/k;->k:J
return-wide p1
.end method
.method static synthetic b(Lcom/twidroid/fragments/e/k;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->f:Landroid/view/View;
return-object v0
.end method
.method static synthetic c(Lcom/twidroid/fragments/e/k;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic d(Lcom/twidroid/fragments/e/k;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->w:Lcom/twidroid/d/v;
return-object v0
.end method
.method static synthetic e(Lcom/twidroid/fragments/e/k;)Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/fragments/e/k;->n:Z
return v0
.end method
.method static synthetic f(Lcom/twidroid/fragments/e/k;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->w:Lcom/twidroid/d/v;
return-object v0
.end method
.method static synthetic g(Lcom/twidroid/fragments/e/k;)Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/twidroid/fragments/e/k;->m()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic h(Lcom/twidroid/fragments/e/k;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic i(Lcom/twidroid/fragments/e/k;)Landroid/database/sqlite/SQLiteDatabase;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->y:Landroid/database/sqlite/SQLiteDatabase;
return-object v0
.end method
.method static synthetic j(Lcom/twidroid/fragments/e/k;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->w:Lcom/twidroid/d/v;
return-object v0
.end method
.method static synthetic k(Lcom/twidroid/fragments/e/k;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic l(Lcom/twidroid/fragments/e/k;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method private y()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method private z()V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->g:Landroid/widget/Button;
new-instance v1, Lcom/twidroid/fragments/e/k$1;
invoke-direct {v1, p0}, Lcom/twidroid/fragments/e/k$1;-><init>(Lcom/twidroid/fragments/e/k;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method public S()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->u:Lcom/twidroid/net/c/a/f;
const v1, 0x7f0c0183
invoke-interface {v0, v1}, Lcom/twidroid/net/c/a/f;->e(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.registers 3
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/fragments/e/k;->n:Z
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/k;->b(Z)V
return-void
.end method
.method public a(Ljava/util/List;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/fragments/e/k;->h:Ljava/util/List;
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->h:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->f:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/k;->d(Ljava/lang/String;)V
:goto_14
return-void
:cond_15
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->f:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
const v0, 0x7f0c0204
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/k;->b(I)V
goto :goto_14
.end method
.method protected b()V
.registers 1
return-void
.end method
.method public b(Z)V
.registers 11
const/4 v8, 0x1
const/4 v0, 0x0
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->b(Z)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/k;->i()Lcom/twidroid/ui/a/am;
move-result-object v1
if-nez v1, :cond_29
move-object v5, v0
move-object v4, v0
move-object v3, v0
:goto_e
new-instance v0, Lcom/twidroid/fragments/e/l;
iget-object v6, p0, Lcom/twidroid/fragments/e/k;->h:Ljava/util/List;
invoke-direct {p0}, Lcom/twidroid/fragments/e/k;->y()Z
move-result v7
move-object v1, p0
move v2, p1
invoke-direct/range {v0 .. v7}, Lcom/twidroid/fragments/e/l;-><init>(Lcom/twidroid/fragments/e/k;ZLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Z)V
new-instance v1, Lcom/twidroid/fragments/e/m;
invoke-direct {v1, p0, p0}, Lcom/twidroid/fragments/e/m;-><init>(Lcom/twidroid/fragments/e/k;Lcom/twidroid/fragments/e/k;)V
new-array v2, v8, [Lcom/twidroid/fragments/e/l;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-virtual {v1, v2}, Lcom/twidroid/fragments/e/m;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
:cond_29
if-eqz p1, :cond_45
iget-wide v2, p0, Lcom/twidroid/fragments/e/k;->j:J
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
const-class v2, Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v1, v2, v8}, Lcom/twidroid/ui/a/am;->a(Ljava/lang/Class;Z)Ljava/lang/Long;
move-result-object v5
invoke-direct {p0}, Lcom/twidroid/fragments/e/k;->y()Z
move-result v1
if-eqz v1, :cond_43
iget-wide v0, p0, Lcom/twidroid/fragments/e/k;->k:J
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
:cond_43
move-object v4, v0
goto :goto_e
:cond_45
invoke-virtual {v1}, Lcom/twidroid/ui/a/am;->e()Ljava/lang/Long;
move-result-object v3
const-class v2, Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v1, v2, v8}, Lcom/twidroid/ui/a/am;->b(Ljava/lang/Class;Z)Ljava/lang/Long;
move-result-object v5
invoke-direct {p0}, Lcom/twidroid/fragments/e/k;->y()Z
move-result v2
if-eqz v2, :cond_5b
const-class v0, Lcom/twidroid/model/twitter/DirectMessage;
invoke-virtual {v1, v0}, Lcom/twidroid/ui/a/am;->b(Ljava/lang/Class;)Ljava/lang/Long;
move-result-object v0
:cond_5b
move-object v4, v0
goto :goto_e
.end method
.method protected c()V
.registers 3
invoke-virtual {p0}, Lcom/twidroid/fragments/e/k;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
invoke-virtual {p0}, Lcom/twidroid/fragments/e/k;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/d/v;->n(Landroid/content/Context;)I
move-result v0
if-lez v0, :cond_6
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->w:Lcom/twidroid/d/v;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/k;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/d/v;->k(Landroid/content/Context;)Z
invoke-virtual {p0}, Lcom/twidroid/fragments/e/k;->k()V
goto :goto_6
.end method
.method public d()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/k;->b(Z)V
return-void
.end method
.method protected e()V
.registers 5
new-instance v0, Lcom/twidroid/ui/a/am;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/k;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const/4 v2, 0x0
const/4 v3, 0x1
invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/ui/a/am;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V
iget-object v1, p0, Lcom/twidroid/fragments/e/k;->F:Lcom/twidroid/net/b/f;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->a(Lcom/twidroid/net/b/f;)V
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/k;->setListAdapter(Landroid/widget/ListAdapter;)V
invoke-direct {p0}, Lcom/twidroid/fragments/e/k;->B()V
return-void
.end method
.method public l()I
.registers 2
invoke-virtual {p0}, Lcom/twidroid/fragments/e/k;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return v0
:cond_8
invoke-virtual {p0}, Lcom/twidroid/fragments/e/k;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/d/v;->n(Landroid/content/Context;)I
move-result v0
goto :goto_7
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/e/k; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
const/16 v0, 0x66
const v1, 0x7f0c01a3
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/e/k;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x1080033
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/d;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
const-string v1, " - Lcom/twidroid/fragments/e/k; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 8
const/4 v3, -0x1
new-instance v1, Landroid/widget/FrameLayout;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/k;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
invoke-super {p0, p1, p2, p3}, Lcom/twidroid/fragments/base/d;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/e/k;->e:Landroid/view/View;
new-instance v2, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->e:Landroid/view/View;
invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
const v0, 0x7f030049
const/4 v3, 0x0
invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/e/k;->f:Landroid/view/View;
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->f:Landroid/view/View;
const/16 v3, 0x8
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->f:Landroid/view/View;
const v3, 0x7f0900fb
invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/twidroid/fragments/e/k;->g:Landroid/widget/Button;
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->e:Landroid/view/View;
const v3, 0x7f0900c2
invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/fragments/e/k;->C:Landroid/widget/TextView;
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->f:Landroid/view/View;
invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/k;->setHasOptionsMenu(Z)V
invoke-direct {p0}, Lcom/twidroid/fragments/e/k;->z()V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/k;->v()Z
move-result v0
if-eqz v0, :cond_66
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->C:Landroid/widget/TextView;
iget-object v2, p0, Lcom/twidroid/fragments/e/k;->c:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/ui/themes/r;->o()I
move-result v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V
:cond_66
return-object v1
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/e/k; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v0
const/16 v1, 0x66
if-ne v0, v1, :cond_d
invoke-direct {p0}, Lcom/twidroid/fragments/e/k;->A()V
const/4 v0, 0x1
:goto_c
move v2, v0
const-string v1, " - Lcom/twidroid/fragments/e/k; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_d
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
goto :goto_c
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/twidroid/fragments/e/k; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/d;->onResume()V
iget-boolean v0, p0, Lcom/twidroid/fragments/e/k;->i:Z
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->x:Lcom/twidroid/b/a/b;
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->n()V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/k;->e()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/fragments/e/k;->i:Z
:cond_12
invoke-virtual {p0}, Lcom/twidroid/fragments/e/k;->b()V
const-string v1, " - Lcom/twidroid/fragments/e/k; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected t()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public x()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/k;->h:Ljava/util/List;
return-object v0
.end method