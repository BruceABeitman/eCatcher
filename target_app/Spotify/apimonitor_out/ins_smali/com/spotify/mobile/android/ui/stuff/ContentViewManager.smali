.class public final Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/util/Map;
.field private final b:Ljava/util/PriorityQueue;
.field private final c:Lcom/spotify/android/paste/widget/EmptyView;
.field private final d:Landroid/view/View;
.field private final e:Landroid/content/Context;
.field private final f:Lcom/spotify/mobile/android/ui/stuff/d;
.field private g:Lcom/spotify/mobile/android/ui/view/LoadingView;
.field private h:Lcom/spotify/mobile/android/ui/stuff/e;
.method private constructor <init>(Landroid/content/Context;Lcom/spotify/android/paste/widget/EmptyView;Landroid/view/View;Lcom/spotify/mobile/android/ui/stuff/d;)V
.registers 10
const/16 v4, 0x8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-static {}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->values()[Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
move-result-object v1
array-length v1, v1
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a:Ljava/util/Map;
new-instance v0, Ljava/util/PriorityQueue;
invoke-static {}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->values()[Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
move-result-object v1
array-length v1, v1
new-instance v2, Lcom/spotify/mobile/android/ui/stuff/f;
const/4 v3, 0x0
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/stuff/f;-><init>(B)V
invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->b:Ljava/util/PriorityQueue;
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->h:Lcom/spotify/mobile/android/ui/stuff/e;
iput-object p1, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->e:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c:Lcom/spotify/android/paste/widget/EmptyView;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->d:Landroid/view/View;
iput-object p4, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->f:Lcom/spotify/mobile/android/ui/stuff/d;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v4}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->d:Landroid/view/View;
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method synthetic constructor <init>(Landroid/content/Context;Lcom/spotify/android/paste/widget/EmptyView;Landroid/view/View;Lcom/spotify/mobile/android/ui/stuff/d;B)V
.registers 6
invoke-direct {p0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/widget/EmptyView;Landroid/view/View;Lcom/spotify/mobile/android/ui/stuff/d;)V
return-void
.end method
.method private a()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/EmptyView;->getVisibility()I
move-result v0
if-nez v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c:Lcom/spotify/android/paste/widget/EmptyView;
:goto_a
return-object v0
:cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->d:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-nez v0, :cond_16
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->d:Landroid/view/View;
goto :goto_a
:cond_16
const/4 v0, 0x0
goto :goto_a
.end method
.method private a(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;)Lcom/spotify/mobile/android/ui/stuff/e;
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->b:Ljava/util/PriorityQueue;
invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_17
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/stuff/e;
iget-object v2, v0, Lcom/spotify/mobile/android/ui/stuff/e;->a:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
if-ne v2, p1, :cond_6
:goto_16
return-object v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method private a(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;Z)V
.registers 8
const/4 v4, 0x0
const/16 v3, 0x8
const-string v0, "Not called from main loop"
invoke-static {v0}, Lcom/spotify/mobile/android/util/bt;->b(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
const-string v1, "You can not set to a state you have not configured!"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
if-eqz p2, :cond_71
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;)Lcom/spotify/mobile/android/ui/stuff/e;
move-result-object v0
if-nez v0, :cond_26
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->b:Ljava/util/PriorityQueue;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
:goto_26
:cond_26
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->b:Ljava/util/PriorityQueue;
invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/stuff/e;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->h:Lcom/spotify/mobile/android/ui/stuff/e;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->h:Lcom/spotify/mobile/android/ui/stuff/e;
if-nez v0, :cond_7d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v3}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->d:Landroid/view/View;
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
:cond_3e
:goto_3e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->g:Lcom/spotify/mobile/android/ui/view/LoadingView;
if-eqz v0, :cond_70
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->g:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->d()Z
move-result v0
if-eqz v0, :cond_6d
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_63
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->g:Lcom/spotify/mobile/android/ui/view/LoadingView;
new-instance v2, Lcom/spotify/mobile/android/ui/view/e;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->g:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v3}, Lcom/spotify/mobile/android/ui/view/LoadingView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-direct {v2, v3, v0}, Lcom/spotify/mobile/android/ui/view/e;-><init>(Landroid/content/Context;Landroid/view/View;)V
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Lcom/spotify/mobile/android/ui/view/l;)V
:cond_63
iget-object v1, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->g:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->g:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->b()V
:cond_6d
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->g:Lcom/spotify/mobile/android/ui/view/LoadingView;
:cond_70
return-void
:cond_71
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;)Lcom/spotify/mobile/android/ui/stuff/e;
move-result-object v0
if-eqz v0, :cond_26
iget-object v1, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->b:Ljava/util/PriorityQueue;
invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z
goto :goto_26
:cond_7d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c:Lcom/spotify/android/paste/widget/EmptyView;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->h:Lcom/spotify/mobile/android/ui/stuff/e;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->e:Landroid/content/Context;
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/stuff/e;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c:Lcom/spotify/android/paste/widget/EmptyView;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->e:Landroid/content/Context;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->h:Lcom/spotify/mobile/android/ui/stuff/e;
iget v2, v2, Lcom/spotify/mobile/android/ui/stuff/e;->b:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c:Lcom/spotify/android/paste/widget/EmptyView;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->e:Landroid/content/Context;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->h:Lcom/spotify/mobile/android/ui/stuff/e;
iget v2, v2, Lcom/spotify/mobile/android/ui/stuff/e;->c:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->b(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v4}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->d:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->f:Lcom/spotify/mobile/android/ui/stuff/d;
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->f:Lcom/spotify/mobile/android/ui/stuff/d;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c:Lcom/spotify/android/paste/widget/EmptyView;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->h:Lcom/spotify/mobile/android/ui/stuff/e;
iget-object v2, v2, Lcom/spotify/mobile/android/ui/stuff/e;->a:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/ui/stuff/d;->a(Lcom/spotify/android/paste/widget/EmptyView;Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;)V
goto/16 :goto_3e
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;Lcom/spotify/mobile/android/ui/stuff/e;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a:Ljava/util/Map;
iget-object v1, p1, Lcom/spotify/mobile/android/ui/stuff/e;->a:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
.registers 4
const-string v0, "Not called from main loop"
invoke-static {v0}, Lcom/spotify/mobile/android/util/bt;->b(Ljava/lang/String;)V
iput-object p1, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->g:Lcom/spotify/mobile/android/ui/view/LoadingView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->g:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->c()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->g:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a()Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->g:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a()V
return-void
.end method
.method public final a(Z)V
.registers 3
sget-object v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->a:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
invoke-direct {p0, v0, p1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;Z)V
return-void
.end method
.method public final b(Z)V
.registers 3
sget-object v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->c:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
invoke-direct {p0, v0, p1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;Z)V
return-void
.end method
.method public final c(Z)V
.registers 3
sget-object v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->b:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
invoke-direct {p0, v0, p1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;Z)V
return-void
.end method
.method public final d(Z)V
.registers 3
sget-object v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->d:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
invoke-direct {p0, v0, p1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;Z)V
return-void
.end method