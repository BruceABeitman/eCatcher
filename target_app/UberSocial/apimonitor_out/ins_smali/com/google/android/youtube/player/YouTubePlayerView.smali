.class public final Lcom/google/android/youtube/player/YouTubePlayerView;
.super Landroid/view/ViewGroup;
.implements Lcom/google/android/youtube/player/YouTubePlayer$Provider;
.field private final a:Lcom/google/android/youtube/player/YouTubePlayerView$a;
.field private final b:Ljava/util/Set;
.field private final c:Lcom/google/android/youtube/player/YouTubePlayerView$b;
.field private d:Lcom/google/android/youtube/player/internal/b;
.field private e:Lcom/google/android/youtube/player/internal/s;
.field private f:Landroid/view/View;
.field private g:Lcom/google/android/youtube/player/internal/n;
.field private h:Lcom/google/android/youtube/player/YouTubePlayer$Provider;
.field private i:Landroid/os/Bundle;
.field private j:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
.field private k:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/player/YouTubePlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/player/YouTubePlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
instance-of v0, p1, Lcom/google/android/youtube/player/YouTubeBaseActivity;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "A YouTubePlayerView can only be created with an Activity  which extends YouTubeBaseActivity as its context."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
move-object v0, p1
check-cast v0, Lcom/google/android/youtube/player/YouTubeBaseActivity;
invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->a()Lcom/google/android/youtube/player/YouTubePlayerView$b;
move-result-object v0
invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/youtube/player/YouTubePlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/android/youtube/player/YouTubePlayerView$b;)V
return-void
.end method
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/android/youtube/player/YouTubePlayerView$b;)V
.registers 7
const/4 v1, 0x0
const-string v0, "context cannot be null"
invoke-static {p1, v0}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
invoke-direct {p0, v0, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const-string v0, "listener cannot be null"
invoke-static {p4, v0}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/youtube/player/YouTubePlayerView$b;
iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/YouTubePlayerView$b;
invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerView;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-nez v0, :cond_21
const/high16 v0, -0x100
invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->setBackgroundColor(I)V
:cond_21
invoke-virtual {p0, v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->setClipToPadding(Z)V
new-instance v0, Lcom/google/android/youtube/player/internal/n;
invoke-direct {v0, p1}, Lcom/google/android/youtube/player/internal/n;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->g:Lcom/google/android/youtube/player/internal/n;
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->g:Lcom/google/android/youtube/player/internal/n;
invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->requestTransparentRegion(Landroid/view/View;)V
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->g:Lcom/google/android/youtube/player/internal/n;
invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->addView(Landroid/view/View;)V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->b:Ljava/util/Set;
new-instance v0, Lcom/google/android/youtube/player/YouTubePlayerView$a;
invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/player/YouTubePlayerView$a;-><init>(Lcom/google/android/youtube/player/YouTubePlayerView;B)V
iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->a:Lcom/google/android/youtube/player/YouTubePlayerView$a;
return-void
.end method
.method static synthetic a(Lcom/google/android/youtube/player/YouTubePlayerView;)Lcom/google/android/youtube/player/internal/b;
.registers 2
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->d:Lcom/google/android/youtube/player/internal/b;
return-object v0
.end method
.method private a(Landroid/view/View;)V
.registers 4
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->g:Lcom/google/android/youtube/player/internal/n;
if-eq p1, v0, :cond_c
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->f:Landroid/view/View;
if-ne p1, v0, :cond_17
:cond_c
const/4 v0, 0x1
:goto_d
if-nez v0, :cond_19
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "No views can be added on top of the player"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
const/4 v0, 0x0
goto :goto_d
:cond_19
return-void
.end method
.method private a(Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
.registers 5
const/4 v2, 0x0
iput-object v2, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->g:Lcom/google/android/youtube/player/internal/n;
invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/n;->c()V
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->j:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->j:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->h:Lcom/google/android/youtube/player/YouTubePlayer$Provider;
invoke-interface {v0, v1, p1}, Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;->onInitializationFailure(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
iput-object v2, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->j:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
:cond_15
return-void
.end method
.method static synthetic a(Lcom/google/android/youtube/player/YouTubePlayerView;Landroid/app/Activity;)V
.registers 7
const/4 v4, 0x0
:try_start_1
invoke-static {}, Lcom/google/android/youtube/player/internal/ab;->a()Lcom/google/android/youtube/player/internal/ab;
move-result-object v0
iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->d:Lcom/google/android/youtube/player/internal/b;
invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/player/internal/ab;->a(Landroid/app/Activity;Lcom/google/android/youtube/player/internal/b;)Lcom/google/android/youtube/player/internal/d;
:try_end_a
.catch Lcom/google/android/youtube/player/internal/w$a; {:try_start_1 .. :try_end_a} :catch_4a
move-result-object v0
new-instance v1, Lcom/google/android/youtube/player/internal/s;
iget-object v2, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->d:Lcom/google/android/youtube/player/internal/b;
invoke-direct {v1, v2, v0}, Lcom/google/android/youtube/player/internal/s;-><init>(Lcom/google/android/youtube/player/internal/b;Lcom/google/android/youtube/player/internal/d;)V
iput-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/s;->a()Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->f:Landroid/view/View;
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->f:Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->g:Lcom/google/android/youtube/player/internal/n;
invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->removeView(Landroid/view/View;)V
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/YouTubePlayerView$b;
invoke-interface {v0, p0}, Lcom/google/android/youtube/player/YouTubePlayerView$b;->a(Lcom/google/android/youtube/player/YouTubePlayerView;)V
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->j:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
if-eqz v0, :cond_49
const/4 v0, 0x0
iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Landroid/os/Bundle;
if-eqz v1, :cond_3e
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Landroid/os/Bundle;
invoke-virtual {v0, v1}, Lcom/google/android/youtube/player/internal/s;->a(Landroid/os/Bundle;)Z
move-result v0
iput-object v4, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Landroid/os/Bundle;
:cond_3e
iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->j:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
iget-object v2, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->h:Lcom/google/android/youtube/player/YouTubePlayer$Provider;
iget-object v3, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
invoke-interface {v1, v2, v3, v0}, Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;->onInitializationSuccess(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubePlayer;Z)V
iput-object v4, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->j:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
:cond_49
:goto_49
return-void
:catch_4a
move-exception v0
sget-object v0, Lcom/google/android/youtube/player/YouTubeInitializationResult;->INTERNAL_ERROR:Lcom/google/android/youtube/player/YouTubeInitializationResult;
invoke-direct {p0, v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
goto :goto_49
.end method
.method static synthetic a(Lcom/google/android/youtube/player/YouTubePlayerView;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
return-void
.end method
.method static synthetic b(Lcom/google/android/youtube/player/YouTubePlayerView;)Lcom/google/android/youtube/player/internal/b;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->d:Lcom/google/android/youtube/player/internal/b;
return-object v0
.end method
.method static synthetic c(Lcom/google/android/youtube/player/YouTubePlayerView;)Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->k:Z
return v0
.end method
.method static synthetic d(Lcom/google/android/youtube/player/YouTubePlayerView;)Lcom/google/android/youtube/player/internal/s;
.registers 2
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
return-object v0
.end method
.method static synthetic e(Lcom/google/android/youtube/player/YouTubePlayerView;)Lcom/google/android/youtube/player/internal/n;
.registers 2
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->g:Lcom/google/android/youtube/player/internal/n;
return-object v0
.end method
.method static synthetic f(Lcom/google/android/youtube/player/YouTubePlayerView;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->f:Landroid/view/View;
return-object v0
.end method
.method static synthetic g(Lcom/google/android/youtube/player/YouTubePlayerView;)Landroid/view/View;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->f:Landroid/view/View;
return-object v0
.end method
.method static synthetic h(Lcom/google/android/youtube/player/YouTubePlayerView;)Lcom/google/android/youtube/player/internal/s;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
return-object v0
.end method
.method static synthetic i(Lcom/google/android/youtube/player/YouTubePlayerView;)Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->b:Ljava/util/Set;
return-object v0
.end method
.method final a()V
.registers 2
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/s;->b()V
:cond_9
return-void
.end method
.method final a(Landroid/app/Activity;Lcom/google/android/youtube/player/YouTubePlayer$Provider;Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;Landroid/os/Bundle;)V
.registers 10
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
if-nez v0, :cond_8
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->j:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
if-eqz v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
const-string v0, "activity cannot be null"
invoke-static {p1, v0}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "provider cannot be null"
invoke-static {p2, v0}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/youtube/player/YouTubePlayer$Provider;
iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->h:Lcom/google/android/youtube/player/YouTubePlayer$Provider;
const-string v0, "listener cannot be null"
invoke-static {p4, v0}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->j:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
iput-object p5, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Landroid/os/Bundle;
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->g:Lcom/google/android/youtube/player/internal/n;
invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/n;->b()V
invoke-static {}, Lcom/google/android/youtube/player/internal/ab;->a()Lcom/google/android/youtube/player/internal/ab;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerView;->getContext()Landroid/content/Context;
move-result-object v1
new-instance v2, Lcom/google/android/youtube/player/YouTubePlayerView$1;
invoke-direct {v2, p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView$1;-><init>(Lcom/google/android/youtube/player/YouTubePlayerView;Landroid/app/Activity;)V
new-instance v3, Lcom/google/android/youtube/player/YouTubePlayerView$2;
invoke-direct {v3, p0}, Lcom/google/android/youtube/player/YouTubePlayerView$2;-><init>(Lcom/google/android/youtube/player/YouTubePlayerView;)V
invoke-virtual {v0, v1, p3, v2, v3}, Lcom/google/android/youtube/player/internal/ab;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/youtube/player/internal/t$a;Lcom/google/android/youtube/player/internal/t$b;)Lcom/google/android/youtube/player/internal/b;
move-result-object v0
iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->d:Lcom/google/android/youtube/player/internal/b;
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->d:Lcom/google/android/youtube/player/internal/b;
invoke-interface {v0}, Lcom/google/android/youtube/player/internal/b;->e()V
goto :goto_8
.end method
.method final a(Z)V
.registers 3
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
invoke-virtual {v0, p1}, Lcom/google/android/youtube/player/internal/s;->b(Z)V
invoke-virtual {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->b(Z)V
:cond_c
return-void
.end method
.method public final addFocusables(Ljava/util/ArrayList;I)V
.registers 5
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;I)V
invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->b:Ljava/util/Set;
invoke-interface {v1}, Ljava/util/Set;->clear()V
iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->b:Ljava/util/Set;
invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
return-void
.end method
.method public final addFocusables(Ljava/util/ArrayList;II)V
.registers 6
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-super {p0, v0, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V
invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->b:Ljava/util/Set;
invoke-interface {v1}, Ljava/util/Set;->clear()V
iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->b:Ljava/util/Set;
invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
return-void
.end method
.method public final addView(Landroid/view/View;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Landroid/view/View;)V
invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
return-void
.end method
.method public final addView(Landroid/view/View;I)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Landroid/view/View;)V
invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
return-void
.end method
.method public final addView(Landroid/view/View;II)V
.registers 4
invoke-direct {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Landroid/view/View;)V
invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
return-void
.end method
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.registers 4
invoke-direct {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Landroid/view/View;)V
invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Landroid/view/View;)V
invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method final b()V
.registers 2
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/s;->c()V
:cond_9
return-void
.end method
.method final b(Z)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->k:Z
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
invoke-virtual {v0, p1}, Lcom/google/android/youtube/player/internal/s;->a(Z)V
:cond_c
return-void
.end method
.method final c()V
.registers 2
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/s;->d()V
:cond_9
return-void
.end method
.method public final clearChildFocus(Landroid/view/View;)V
.registers 3
invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerView;->hasFocusable()Z
move-result v0
if-eqz v0, :cond_a
invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerView;->requestFocus()Z
:goto_9
return-void
:cond_a
invoke-super {p0, p1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V
goto :goto_9
.end method
.method final d()V
.registers 2
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/s;->e()V
:cond_9
return-void
.end method
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.registers 6
const/4 v0, 0x0
const/4 v1, 0x1
iget-object v2, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
if-eqz v2, :cond_3a
invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
move-result v2
if-nez v2, :cond_20
iget-object v2, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v3
invoke-virtual {v2, v3, p1}, Lcom/google/android/youtube/player/internal/s;->a(ILandroid/view/KeyEvent;)Z
move-result v2
if-nez v2, :cond_1e
invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
move-result v2
if-eqz v2, :cond_1f
:cond_1e
move v0, v1
:goto_1f
:cond_1f
return v0
:cond_20
invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
move-result v2
if-ne v2, v1, :cond_3a
iget-object v2, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v3
invoke-virtual {v2, v3, p1}, Lcom/google/android/youtube/player/internal/s;->b(ILandroid/view/KeyEvent;)Z
move-result v2
if-nez v2, :cond_38
invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
move-result v2
if-eqz v2, :cond_1f
:cond_38
move v0, v1
goto :goto_1f
:cond_3a
invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
move-result v0
goto :goto_1f
.end method
.method final e()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
if-nez v0, :cond_7
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Landroid/os/Bundle;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/s;->h()Landroid/os/Bundle;
move-result-object v0
goto :goto_6
.end method
.method public final focusableViewAvailable(Landroid/view/View;)V
.registers 3
invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->b:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V
.registers 4
const-string v0, "Developer key cannot be null or empty"
invoke-static {p1, v0}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/YouTubePlayerView$b;
invoke-interface {v0, p0, p1, p2}, Lcom/google/android/youtube/player/YouTubePlayerView$b;->a(Lcom/google/android/youtube/player/YouTubePlayerView;Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V
return-void
.end method
.method protected final onAttachedToWindow()V
.registers 3
invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V
invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->a:Lcom/google/android/youtube/player/YouTubePlayerView$a;
invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
return-void
.end method
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 3
invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/s;
invoke-virtual {v0, p1}, Lcom/google/android/youtube/player/internal/s;->a(Landroid/content/res/Configuration;)V
:cond_c
return-void
.end method
.method protected final onDetachedFromWindow()V
.registers 3
invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V
invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->a:Lcom/google/android/youtube/player/YouTubePlayerView$a;
invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
return-void
.end method
.method protected final onLayout(ZIIII)V
.registers 10
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerView;->getChildCount()I
move-result v0
if-lez v0, :cond_12
invoke-virtual {p0, v3}, Lcom/google/android/youtube/player/YouTubePlayerView;->getChildAt(I)Landroid/view/View;
move-result-object v0
sub-int v1, p4, p2
sub-int v2, p5, p3
invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V
:cond_12
return-void
.end method
.method protected final onMeasure(II)V
.registers 5
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerView;->getChildCount()I
move-result v0
if-lez v0, :cond_1a
invoke-virtual {p0, v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v0
invoke-virtual {p0, v1, v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->setMeasuredDimension(II)V
:goto_19
return-void
:cond_1a
invoke-virtual {p0, v1, v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->setMeasuredDimension(II)V
goto :goto_19
.end method
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z
const/4 v0, 0x1
return v0
.end method
.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->b:Ljava/util/Set;
invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final setClipToPadding(Z)V
.registers 2
return-void
.end method
.method public final setPadding(IIII)V
.registers 5
return-void
.end method