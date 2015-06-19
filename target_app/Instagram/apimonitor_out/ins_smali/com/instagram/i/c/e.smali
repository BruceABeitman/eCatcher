.class public final Lcom/instagram/i/c/e;
.super Lcom/instagram/base/a/c;
.source "NewsfeedFollowingFragment.java"
.implements Lcom/instagram/i/c/l;
.field private aa:Lcom/instagram/i/a/a;
.field private ab:Z
.field private ac:Z
.field private ad:Z
.field private i:Lcom/instagram/common/a/a/m;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/base/a/c;-><init>()V
return-void
.end method
.method private W()Lcom/instagram/i/a/a;
.registers 5
iget-object v0, p0, Lcom/instagram/i/c/e;->aa:Lcom/instagram/i/a/a;
if-nez v0, :cond_19
new-instance v1, Lcom/instagram/i/a/a;
invoke-virtual {p0}, Lcom/instagram/i/c/e;->n()Landroid/content/Context;
move-result-object v2
invoke-virtual {p0}, Lcom/instagram/i/c/e;->y()Landroid/support/v4/app/an;
move-result-object v3
invoke-virtual {p0}, Lcom/instagram/i/c/e;->r()Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/instagram/i/a/a/a;
invoke-direct {v1, v2, v3, v0}, Lcom/instagram/i/a/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/i/a/a/a;)V
iput-object v1, p0, Lcom/instagram/i/c/e;->aa:Lcom/instagram/i/a/a;
:cond_19
iget-object v0, p0, Lcom/instagram/i/c/e;->aa:Lcom/instagram/i/a/a;
return-object v0
.end method
.method private X()V
.registers 5
iget-object v0, p0, Lcom/instagram/i/c/e;->i:Lcom/instagram/common/a/a/m;
new-instance v1, Lcom/instagram/i/b/a/a;
invoke-direct {v1}, Lcom/instagram/i/b/a/a;-><init>()V
new-instance v2, Lcom/instagram/i/c/f;
const/4 v3, 0x0
invoke-direct {v2, p0, v3}, Lcom/instagram/i/c/f;-><init>(Lcom/instagram/i/c/e;B)V
invoke-virtual {v1, v2}, Lcom/instagram/i/b/a/a;->a(Lcom/instagram/common/a/a/l;)Lcom/instagram/common/a/a/a;
move-result-object v1
invoke-interface {v0, v1}, Lcom/instagram/common/a/a/m;->a(Lcom/instagram/common/a/a/a;)V
return-void
.end method
.method private Y()V
.registers 5
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/instagram/i/c/e;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_5b
invoke-virtual {p0}, Lcom/instagram/i/c/e;->q_()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_22
invoke-virtual {p0}, Lcom/instagram/i/c/e;->D()Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {p0}, Lcom/instagram/i/c/e;->q_()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_22
iget-boolean v0, p0, Lcom/instagram/i/c/e;->ab:Z
if-nez v0, :cond_5b
iget-boolean v0, p0, Lcom/instagram/i/c/e;->ad:Z
if-nez v0, :cond_5c
invoke-virtual {p0}, Lcom/instagram/i/c/e;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
sget v2, Lcom/facebook/aw;->newsfeed_empty:I
invoke-virtual {p0}, Lcom/instagram/i/c/e;->D()Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
sget v0, Lcom/facebook/av;->newsfeed_empty_view_title:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
sget v2, Lcom/facebook/az;->newsfeed_following_empty_view_title:I
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V
:goto_4b
invoke-virtual {p0}, Lcom/instagram/i/c/e;->D()Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/instagram/i/c/e;->q_()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
:cond_5b
return-void
:cond_5c
invoke-virtual {p0}, Lcom/instagram/i/c/e;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
sget v2, Lcom/facebook/aw;->newsfeed_failed:I
invoke-virtual {p0}, Lcom/instagram/i/c/e;->D()Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
move-object v1, v0
goto :goto_4b
.end method
.method static synthetic a(Lcom/instagram/i/c/e;)Lcom/instagram/i/a/a;
.registers 2
invoke-direct {p0}, Lcom/instagram/i/c/e;->W()Lcom/instagram/i/a/a;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Lcom/instagram/i/c/e;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/instagram/i/c/e;->ad:Z
return p1
.end method
.method static synthetic b(Lcom/instagram/i/c/e;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/i/c/e;->Y()V
return-void
.end method
.method static synthetic b(Lcom/instagram/i/c/e;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/instagram/i/c/e;->ab:Z
return p1
.end method
.method static synthetic c(Lcom/instagram/i/c/e;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/i/c/e;->ac:Z
return v0
.end method
.method static synthetic d(Lcom/instagram/i/c/e;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/i/c/e;->ac:Z
return v0
.end method
.method public final U()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/i/c/e;->ab:Z
return v0
.end method
.method public final V()V
.registers 2
invoke-virtual {p0}, Lcom/instagram/i/c/e;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_a
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/instagram/i/c/e;->a_(I)V
:cond_a
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
sget v0, Lcom/facebook/aw;->layout_listview_with_progress:I
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Lcom/instagram/base/a/c;->a(Landroid/os/Bundle;)V
new-instance v0, Lcom/instagram/common/a/a/i;
invoke-virtual {p0}, Lcom/instagram/i/c/e;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/i/c/e;->y()Landroid/support/v4/app/an;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/instagram/common/a/a/i;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V
iput-object v0, p0, Lcom/instagram/i/c/e;->i:Lcom/instagram/common/a/a/m;
invoke-direct {p0}, Lcom/instagram/i/c/e;->W()Lcom/instagram/i/a/a;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/instagram/i/c/e;->a(Landroid/widget/ListAdapter;)V
invoke-direct {p0}, Lcom/instagram/i/c/e;->X()V
return-void
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/instagram/base/a/c;->a(Landroid/view/View;Landroid/os/Bundle;)V
invoke-direct {p0}, Lcom/instagram/i/c/e;->Y()V
iget-boolean v0, p0, Lcom/instagram/i/c/e;->ab:Z
invoke-virtual {p0}, Lcom/instagram/i/c/e;->D()Landroid/view/View;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V
return-void
.end method
.method public final d()V
.registers 1
invoke-direct {p0}, Lcom/instagram/i/c/e;->X()V
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "newsfeed_following"
return-object v0
.end method