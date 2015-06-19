.class public final Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
.super Landroid/widget/HeaderViewListAdapter;
.source "SourceFile"
.field private final a:Landroid/view/View$OnClickListener;
.field private final b:Ljava/lang/Object;
.field private final c:Ljava/util/ArrayList;
.field private final d:Ljava/util/ArrayList;
.field private final e:Landroid/widget/ListView$FixedViewInfo;
.field private final f:Landroid/widget/ListView$FixedViewInfo;
.field private g:Lcom/spotify/mobile/android/spotlets/common/adapter/h;
.field private h:Z
.field private i:Z
.field private j:Z
.field private k:Z
.method protected constructor <init>(Landroid/widget/ListView$FixedViewInfo;Landroid/widget/ListView$FixedViewInfo;Landroid/widget/ListAdapter;ZZ)V
.registers 12
invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->a(Ljava/lang/Object;)Ljava/util/ArrayList;
move-result-object v1
invoke-static {p2}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->a(Ljava/lang/Object;)Ljava/util/ArrayList;
move-result-object v2
move-object v0, p0
move-object v3, p3
move v4, p4
move v5, p5
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;ZZ)V
return-void
.end method
.method private constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;ZZ)V
.registers 10
const/4 v2, 0x1
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/ArrayList;
invoke-direct {p0, v0, v1, p3}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$1;-><init>(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->a:Landroid/view/View$OnClickListener;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->b:Ljava/lang/Object;
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->c:Ljava/util/ArrayList;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->d:Ljava/util/ArrayList;
invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->a(Ljava/util/ArrayList;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ListView$FixedViewInfo;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->e:Landroid/widget/ListView$FixedViewInfo;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->e:Landroid/widget/ListView$FixedViewInfo;
if-eqz v0, :cond_79
move v0, v2
:goto_30
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->h:Z
invoke-static {p2}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->a(Ljava/util/ArrayList;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ListView$FixedViewInfo;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->f:Landroid/widget/ListView$FixedViewInfo;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->f:Landroid/widget/ListView$FixedViewInfo;
if-eqz v0, :cond_7b
:goto_3e
iput-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->i:Z
iput-boolean p4, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->j:Z
iput-boolean p5, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->k:Z
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;
move-result-object v0
if-eqz v0, :cond_7d
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v0
:goto_52
if-nez v0, :cond_6e
if-eqz p4, :cond_61
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->h:Z
if-eqz v0, :cond_61
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->e:Landroid/widget/ListView$FixedViewInfo;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->c:Ljava/util/ArrayList;
invoke-direct {p0, v0, v1, v3, v3}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->a(Landroid/widget/ListView$FixedViewInfo;Ljava/util/ArrayList;ZZ)V
:cond_61
if-eqz p5, :cond_6e
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->i:Z
if-eqz v0, :cond_6e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->f:Landroid/widget/ListView$FixedViewInfo;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->d:Ljava/util/ArrayList;
invoke-direct {p0, v0, v1, v3, v3}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->a(Landroid/widget/ListView$FixedViewInfo;Ljava/util/ArrayList;ZZ)V
:cond_6e
instance-of v0, p3, Landroid/widget/BaseAdapter;
new-instance v1, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;
invoke-direct {v1, p0, p3, v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$2;-><init>(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;Landroid/widget/ListAdapter;Z)V
invoke-interface {p3, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
return-void
:cond_79
move v0, v3
goto :goto_30
:cond_7b
move v2, v3
goto :goto_3e
:cond_7d
move v0, v3
goto :goto_52
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Lcom/spotify/mobile/android/spotlets/common/adapter/h;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->g:Lcom/spotify/mobile/android/spotlets/common/adapter/h;
return-object v0
.end method
.method private static a(Ljava/util/ArrayList;)Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
const/4 v0, 0x0
invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
goto :goto_7
.end method
.method private static a(Ljava/lang/Object;)Ljava/util/ArrayList;
.registers 3
new-instance v1, Ljava/util/ArrayList;
if-eqz p0, :cond_e
const/4 v0, 0x1
:goto_5
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V
if-eqz p0, :cond_d
invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_d
return-object v1
:cond_e
const/4 v0, 0x0
goto :goto_5
.end method
.method private a(Landroid/widget/ListView$FixedViewInfo;Ljava/util/ArrayList;ZZ)V
.registers 7
const-string v0, "view does not exist"
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-ne p3, v0, :cond_27
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->b:Ljava/lang/Object;
monitor-enter v1
if-eqz p3, :cond_28
:try_start_10
invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_13
if-eqz p4, :cond_26
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;
move-result-object v0
instance-of v0, v0, Landroid/widget/BaseAdapter;
if-eqz v0, :cond_26
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Landroid/widget/BaseAdapter;
invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
:cond_26
monitor-exit v1
:cond_27
return-void
:cond_28
invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:try_end_2b
.catchall {:try_start_10 .. :try_end_2b} :catchall_2c
goto :goto_13
:catchall_2c
move-exception v0
monitor-exit v1
throw v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;Landroid/widget/ListView$FixedViewInfo;Ljava/util/ArrayList;Z)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3, v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->a(Landroid/widget/ListView$FixedViewInfo;Ljava/util/ArrayList;ZZ)V
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Landroid/widget/ListView$FixedViewInfo;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->e:Landroid/widget/ListView$FixedViewInfo;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Landroid/widget/ListView$FixedViewInfo;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->f:Landroid/widget/ListView$FixedViewInfo;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->j:Z
return v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->c:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->k:Z
return v0
.end method
.method static synthetic g(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->d:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic h(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->h:Z
return v0
.end method
.method static synthetic i(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->i:Z
return v0
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/common/adapter/h;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->g:Lcom/spotify/mobile/android/spotlets/common/adapter/h;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->e:Landroid/widget/ListView$FixedViewInfo;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->e:Landroid/widget/ListView$FixedViewInfo;
iget-object v0, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->a:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->f:Landroid/widget/ListView$FixedViewInfo;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->f:Landroid/widget/ListView$FixedViewInfo;
iget-object v0, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->a:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_1c
return-void
.end method
.method public final a(Z)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->e:Landroid/widget/ListView$FixedViewInfo;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->c:Ljava/util/ArrayList;
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->h:Z
const/4 v2, 0x1
invoke-direct {p0, v0, v1, p1, v2}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->a(Landroid/widget/ListView$FixedViewInfo;Ljava/util/ArrayList;ZZ)V
return-void
.end method
.method public final a()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final b(Z)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->f:Landroid/widget/ListView$FixedViewInfo;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->d:Ljava/util/ArrayList;
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->i:Z
const/4 v2, 0x1
invoke-direct {p0, v0, v1, p1, v2}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->a(Landroid/widget/ListView$FixedViewInfo;Ljava/util/ArrayList;ZZ)V
return-void
.end method
.method public final b()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final isEnabled(I)Z
.registers 5
const/4 v1, 0x0
const/4 v0, 0x1
if-nez p1, :cond_c
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->c:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-eq v2, v0, :cond_1c
:cond_c
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->getCount()I
move-result v2
add-int/lit8 v2, v2, -0x1
if-ne p1, v2, :cond_2a
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->d:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ne v2, v0, :cond_2a
:cond_1c
move v2, v0
:goto_1d
if-eqz v2, :cond_23
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->g:Lcom/spotify/mobile/android/spotlets/common/adapter/h;
if-nez v2, :cond_2c
:cond_23
invoke-super {p0, p1}, Landroid/widget/HeaderViewListAdapter;->isEnabled(I)Z
move-result v2
if-eqz v2, :cond_2c
:goto_29
return v0
:cond_2a
move v2, v1
goto :goto_1d
:cond_2c
move v0, v1
goto :goto_29
.end method
.method public final removeFooter(Landroid/view/View;)Z
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final removeHeader(Landroid/view/View;)Z
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method