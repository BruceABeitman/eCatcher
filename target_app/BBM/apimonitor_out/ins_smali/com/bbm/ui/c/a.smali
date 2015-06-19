.class public abstract Lcom/bbm/ui/c/a;
.super Landroid/app/Fragment;
.source "BlockedContactsFragment.java"
.implements Lcom/bbm/ui/ds;
.field protected final a:Lcom/bbm/d/a;
.field protected b:Landroid/widget/ListView;
.field public c:Lcom/bbm/ui/dn;
.field private d:Ljava/lang/Object;
.field private final e:Lcom/bbm/j/u;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Fragment;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/a;->a:Lcom/bbm/d/a;
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/c/a;->d:Ljava/lang/Object;
new-instance v0, Lcom/bbm/ui/c/c;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/c;-><init>(Lcom/bbm/ui/c/a;)V
iput-object v0, p0, Lcom/bbm/ui/c/a;->e:Lcom/bbm/j/u;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/c/a;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/a;->d:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/c/a;Lcom/bbm/ui/c/fm;Ljava/lang/String;Ljava/lang/String;)V
.registers 11
const/4 v6, 0x0
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
new-instance v1, Lcom/bbm/ui/slidingmenu/a;
invoke-direct {v1, v6, p2, p3}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Lcom/bbm/ui/slidingmenu/a;
const v3, 0x7f0a0057
const v4, 0x7f020278
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
const v5, 0x7f0e0138
invoke-virtual {p0, v5}, Lcom/bbm/ui/c/a;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-direct {v2, v3, v4, v5, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v2, Lcom/bbm/ui/c/d;
invoke-direct {v2, p0, v0}, Lcom/bbm/ui/c/d;-><init>(Lcom/bbm/ui/c/a;Ljava/util/List;)V
iput-object v2, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;
new-instance v2, Lcom/bbm/ui/slidingmenu/a;
const v3, 0x7f020268
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
const v4, 0x7f0e0137
invoke-virtual {p0, v4}, Lcom/bbm/ui/c/a;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v2, v3, v4, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1, v0, v1, v2}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
new-instance v0, Lcom/bbm/ui/c/e;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/e;-><init>(Lcom/bbm/ui/c/a;)V
invoke-virtual {p1, v0}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method static synthetic b(Lcom/bbm/ui/c/a;)Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/c/a;->d:Ljava/lang/Object;
return-object v0
.end method
.method abstract a()Lcom/bbm/j/r;
.end method
.method public final a(Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/c/a;->c:Lcom/bbm/ui/dn;
invoke-virtual {v0}, Lcom/bbm/ui/dn;->a()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x2
if-le v0, v1, :cond_12
iget-object v0, p0, Lcom/bbm/ui/c/a;->c:Lcom/bbm/ui/dn;
invoke-virtual {v0}, Lcom/bbm/ui/dn;->b()V
:cond_12
return-void
.end method
.method abstract a(Ljava/util/List;)V
.end method
.method public final a(Landroid/view/MenuItem;)Z
.registers 4
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v0
packed-switch v0, :pswitch_data_26
const/4 v0, 0x0
:goto_8
return v0
:pswitch_9
const-string v0, "onActionItemClicked"
const-class v1, Lcom/bbm/ui/c/a;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/c/a;->c:Lcom/bbm/ui/dn;
invoke-virtual {v0}, Lcom/bbm/ui/dn;->a()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_24
iget-object v1, p0, Lcom/bbm/ui/c/a;->c:Lcom/bbm/ui/dn;
invoke-virtual {v1}, Lcom/bbm/ui/dn;->b()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/c/a;->a(Ljava/util/List;)V
:cond_24
const/4 v0, 0x1
goto :goto_8
:pswitch_data_26
.packed-switch 0x7f0a0670
:pswitch_9
.end packed-switch
.end method
.method public final b(Ljava/lang/Object;)Z
.registers 5
const/4 v2, 0x1
const-string v0, "mListView onItemLongClick"
const-class v1, Lcom/bbm/ui/c/a;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/c/a;->d:Ljava/lang/Object;
if-eqz v0, :cond_d
:goto_c
return v2
:cond_d
iput-object p1, p0, Lcom/bbm/ui/c/a;->d:Ljava/lang/Object;
iget-object v0, p0, Lcom/bbm/ui/c/a;->e:Lcom/bbm/j/u;
invoke-virtual {v0}, Lcom/bbm/j/u;->c()V
goto :goto_c
.end method
.method abstract c(Ljava/lang/Object;)Lcom/bbm/d/a/a;
.end method
.method abstract d(Ljava/lang/Object;)Ljava/lang/Object;
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V
const-string v0, "onActivityCreated"
const-class v1, Lcom/bbm/ui/c/a;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 9
const v0, 0x7f030080
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/bbm/ui/c/b;
invoke-virtual {p0}, Lcom/bbm/ui/c/a;->getActivity()Landroid/app/Activity;
move-result-object v0
invoke-virtual {p0}, Lcom/bbm/ui/c/a;->a()Lcom/bbm/j/r;
move-result-object v3
invoke-direct {v2, p0, v0, v3}, Lcom/bbm/ui/c/b;-><init>(Lcom/bbm/ui/c/a;Landroid/content/Context;Lcom/bbm/j/r;)V
const v0, 0x7f0a036f
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
new-instance v3, Landroid/view/View;
invoke-virtual {p0}, Lcom/bbm/ui/c/a;->getActivity()Landroid/app/Activity;
move-result-object v4
invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
const v2, 0x7f0a0370
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
const-string v2, "onCreateView"
const-class v3, Lcom/bbm/ui/c/a;
invoke-static {v2, v3}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
iput-object v0, p0, Lcom/bbm/ui/c/a;->b:Landroid/widget/ListView;
new-instance v0, Lcom/bbm/ui/dn;
const v2, 0x7f100002
iget-object v3, p0, Lcom/bbm/ui/c/a;->b:Landroid/widget/ListView;
const/4 v4, 0x0
invoke-direct {v0, p0, v2, v3, v4}, Lcom/bbm/ui/dn;-><init>(Lcom/bbm/ui/ds;ILandroid/widget/AbsListView;Lcom/bbm/ui/dt;)V
iput-object v0, p0, Lcom/bbm/ui/c/a;->c:Lcom/bbm/ui/dn;
return-object v1
.end method
.method public onDetach()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/a;->c:Lcom/bbm/ui/dn;
invoke-virtual {v0}, Lcom/bbm/ui/dn;->b()V
invoke-super {p0}, Landroid/app/Fragment;->onDetach()V
return-void
.end method
.method public onPause()V
.registers 1
invoke-super {p0}, Landroid/app/Fragment;->onPause()V
return-void
.end method