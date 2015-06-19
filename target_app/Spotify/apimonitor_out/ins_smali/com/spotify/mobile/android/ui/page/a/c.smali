.class public final Lcom/spotify/mobile/android/ui/page/a/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Landroid/os/Handler;
.field private b:Landroid/view/ViewGroup;
.field private c:Ljava/util/List;
.field private d:Lcom/spotify/mobile/android/ui/page/a/f;
.field private e:Ljava/lang/Runnable;
.method public constructor <init>(Landroid/os/Handler;Landroid/view/ViewGroup;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/c;->c:Ljava/util/List;
new-instance v0, Lcom/spotify/mobile/android/ui/page/a/c$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/page/a/c$1;-><init>(Lcom/spotify/mobile/android/ui/page/a/c;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/c;->e:Ljava/lang/Runnable;
iput-object p1, p0, Lcom/spotify/mobile/android/ui/page/a/c;->a:Landroid/os/Handler;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/page/a/c;->b:Landroid/view/ViewGroup;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/c;->a:Landroid/os/Handler;
const-string v1, "You must pass a handler that is not null."
invoke-static {v0, v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/c;->b:Landroid/view/ViewGroup;
const-string v1, "You must pass a ViewGroup container that is not null."
invoke-static {v0, v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/page/a/c;)Lcom/spotify/mobile/android/ui/page/a/f;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/c;->d:Lcom/spotify/mobile/android/ui/page/a/f;
return-object v0
.end method
.method private a()V
.registers 6
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/c;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/c;->b:Landroid/view/ViewGroup;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
:goto_10
:cond_10
return-void
:cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/c;->d:Lcom/spotify/mobile/android/ui/page/a/f;
if-nez v0, :cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/c;->c:Ljava/util/List;
invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/page/a/k;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/page/a/k;->a()Lcom/spotify/mobile/android/ui/page/a/f;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/ui/page/a/c;->d:Lcom/spotify/mobile/android/ui/page/a/f;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/page/a/c;->b:Landroid/view/ViewGroup;
invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/page/a/c;->b:Landroid/view/ViewGroup;
invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/page/a/c;->b:Landroid/view/ViewGroup;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/page/a/c;->d:Lcom/spotify/mobile/android/ui/page/a/f;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/page/a/f;->e()Landroid/view/View;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/page/a/k;->b()I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_10
iget-object v1, p0, Lcom/spotify/mobile/android/ui/page/a/c;->a:Landroid/os/Handler;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/page/a/c;->e:Ljava/lang/Runnable;
int-to-long v3, v0
invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_10
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/page/a/c;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/page/a/c;->a()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/ui/page/a/f;)V
.registers 3
const/16 v0, 0x7d0
invoke-virtual {p0, p1, v0}, Lcom/spotify/mobile/android/ui/page/a/c;->a(Lcom/spotify/mobile/android/ui/page/a/f;I)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/ui/page/a/f;I)V
.registers 5
const-string v0, "The page cannot be null."
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const/4 v0, -0x1
if-eq p2, v0, :cond_a
if-lez p2, :cond_26
:cond_a
const/4 v0, 0x1
:goto_b
const-string v1, "delayMs must be OverlayHandler.FOREVER or greater than 0."
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
new-instance v0, Lcom/spotify/mobile/android/ui/page/a/k;
invoke-direct {v0, p1, p2}, Lcom/spotify/mobile/android/ui/page/a/k;-><init>(Lcom/spotify/mobile/android/ui/page/a/f;I)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/page/a/c;->c:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_25
iget-object v1, p0, Lcom/spotify/mobile/android/ui/page/a/c;->c:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/page/a/c;->a()V
:cond_25
return-void
:cond_26
const/4 v0, 0x0
goto :goto_b
.end method
.method public final b(Lcom/spotify/mobile/android/ui/page/a/f;)V
.registers 5
const-string v0, "The page cannot be null."
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/c;->c:Ljava/util/List;
new-instance v1, Lcom/spotify/mobile/android/ui/page/a/k;
const/4 v2, 0x0
invoke-direct {v1, p1, v2}, Lcom/spotify/mobile/android/ui/page/a/k;-><init>(Lcom/spotify/mobile/android/ui/page/a/f;I)V
invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/c;->d:Lcom/spotify/mobile/android/ui/page/a/f;
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/c;->d:Lcom/spotify/mobile/android/ui/page/a/f;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/page/a/f;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/c;->b:Landroid/view/ViewGroup;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/c;->a:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/page/a/c;->e:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/c;->d:Lcom/spotify/mobile/android/ui/page/a/f;
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/page/a/c;->a()V
:cond_30
return-void
.end method