.class public final Lcom/spotify/mobile/android/util/f;
.super Ljava/lang/Object;
.source "SourceFile"
.field  a:Ljava/util/LinkedList;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/util/f;->a:Ljava/util/LinkedList;
return-void
.end method
.method private a()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/util/f;->a:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->element()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/d;
iget-object v1, v0, Lcom/spotify/mobile/android/util/d;->a:Landroid/view/View;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v1, v0, Lcom/spotify/mobile/android/util/d;->a:Landroid/view/View;
iget-object v2, v0, Lcom/spotify/mobile/android/util/d;->b:Landroid/view/animation/Animation;
invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v1, v0, Lcom/spotify/mobile/android/util/d;->b:Landroid/view/animation/Animation;
new-instance v2, Lcom/spotify/mobile/android/util/f$1;
invoke-direct {v2, p0, v0}, Lcom/spotify/mobile/android/util/f$1;-><init>(Lcom/spotify/mobile/android/util/f;Lcom/spotify/mobile/android/util/d;)V
invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/util/f;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/util/f;->a()V
return-void
.end method
.method public final a(Landroid/view/View;Landroid/view/animation/Animation;Z)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/util/f;->a:Ljava/util/LinkedList;
new-instance v1, Lcom/spotify/mobile/android/util/d;
invoke-direct {v1, p1, p2, p3}, Lcom/spotify/mobile/android/util/d;-><init>(Landroid/view/View;Landroid/view/animation/Animation;Z)V
invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/util/f;->a:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_16
invoke-direct {p0}, Lcom/spotify/mobile/android/util/f;->a()V
:cond_16
return-void
.end method