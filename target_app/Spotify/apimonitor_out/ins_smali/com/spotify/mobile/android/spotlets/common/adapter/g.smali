.class public final Lcom/spotify/mobile/android/spotlets/common/adapter/g;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Landroid/widget/ListView;
.field private b:Lcom/spotify/mobile/android/spotlets/common/adapter/h;
.field private c:Landroid/widget/ListAdapter;
.field private d:Landroid/widget/ListView$FixedViewInfo;
.field private e:Landroid/widget/ListView$FixedViewInfo;
.field private f:Lcom/google/common/base/Optional;
.field private g:Lcom/google/common/base/Optional;
.method public constructor <init>(Landroid/widget/ListView;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->f:Lcom/google/common/base/Optional;
invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->g:Lcom/google/common/base/Optional;
const-string v0, "must provide a valid ListView"
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->a:Landroid/widget/ListView;
return-void
.end method
.method private a(Landroid/view/View;Ljava/lang/Object;Z)Landroid/widget/ListView$FixedViewInfo;
.registers 6
new-instance v1, Landroid/widget/ListView$FixedViewInfo;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->a:Landroid/widget/ListView;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
invoke-direct {v1, v0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V
const-string v0, "view cannot be null"
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
iput-object v0, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;
iput-object p2, v1, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;
iput-boolean p3, v1, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z
return-object v1
.end method
.method public final a()Lcom/spotify/mobile/android/spotlets/common/adapter/g;
.registers 4
const/4 v1, 0x1
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->f:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-nez v0, :cond_2c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->g:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-nez v0, :cond_2c
move v0, v1
:goto_12
const-string v2, "hiding headers already set"
invoke-static {v0, v2}, Lcom/google/common/base/i;->b(ZLjava/lang/Object;)V
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->f:Lcom/google/common/base/Optional;
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->g:Lcom/google/common/base/Optional;
return-object p0
:cond_2c
const/4 v0, 0x0
goto :goto_12
.end method
.method public final a(Landroid/view/View;Ljava/lang/Object;)Lcom/spotify/mobile/android/spotlets/common/adapter/g;
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->d:Landroid/widget/ListView$FixedViewInfo;
if-nez v0, :cond_12
const/4 v0, 0x1
:goto_6
const-string v2, "header already set"
invoke-static {v0, v2}, Lcom/google/common/base/i;->b(ZLjava/lang/Object;)V
invoke-direct {p0, p1, p2, v1}, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->a(Landroid/view/View;Ljava/lang/Object;Z)Landroid/widget/ListView$FixedViewInfo;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->d:Landroid/widget/ListView$FixedViewInfo;
return-object p0
:cond_12
move v0, v1
goto :goto_6
.end method
.method public final a(Landroid/widget/ListAdapter;)Lcom/spotify/mobile/android/spotlets/common/adapter/g;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->c:Landroid/widget/ListAdapter;
if-nez v0, :cond_d
const/4 v0, 0x1
:goto_5
const-string v1, "adapter already set"
invoke-static {v0, v1}, Lcom/google/common/base/i;->b(ZLjava/lang/Object;)V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->c:Landroid/widget/ListAdapter;
return-object p0
:cond_d
const/4 v0, 0x0
goto :goto_5
.end method
.method public final b()Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
.registers 8
const/4 v6, 0x0
new-instance v0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->d:Landroid/widget/ListView$FixedViewInfo;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->e:Landroid/widget/ListView$FixedViewInfo;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->c:Landroid/widget/ListAdapter;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->f:Lcom/google/common/base/Optional;
invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
invoke-virtual {v4, v5}, Lcom/google/common/base/Optional;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/Boolean;
invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
move-result v4
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->g:Lcom/google/common/base/Optional;
invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
invoke-virtual {v5, v6}, Lcom/google/common/base/Optional;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/Boolean;
invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
move-result v5
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;-><init>(Landroid/widget/ListView$FixedViewInfo;Landroid/widget/ListView$FixedViewInfo;Landroid/widget/ListAdapter;ZZ)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->b:Lcom/spotify/mobile/android/spotlets/common/adapter/h;
if-eqz v1, :cond_35
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->b:Lcom/spotify/mobile/android/spotlets/common/adapter/h;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->a(Lcom/spotify/mobile/android/spotlets/common/adapter/h;)V
:cond_35
return-object v0
.end method
.method public final b(Landroid/view/View;Ljava/lang/Object;)Lcom/spotify/mobile/android/spotlets/common/adapter/g;
.registers 6
const/4 v1, 0x1
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->e:Landroid/widget/ListView$FixedViewInfo;
if-nez v0, :cond_12
move v0, v1
:goto_6
const-string v2, "footer already set"
invoke-static {v0, v2}, Lcom/google/common/base/i;->b(ZLjava/lang/Object;)V
invoke-direct {p0, p1, p2, v1}, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->a(Landroid/view/View;Ljava/lang/Object;Z)Landroid/widget/ListView$FixedViewInfo;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->e:Landroid/widget/ListView$FixedViewInfo;
return-object p0
:cond_12
const/4 v0, 0x0
goto :goto_6
.end method