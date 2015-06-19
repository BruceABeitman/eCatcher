.class public Lcom/instagram/android/feed/a/a/q;
.super Lcom/instagram/base/a/d;
.source "LegacyVideoPlayerFragment.java"
.implements Lcom/instagram/android/feed/a/b/ab;
.field private static final aa:Ljava/lang/Class;
.field private ab:Lcom/instagram/android/feed/a/a/j;
.field private ac:Lcom/instagram/android/feed/a/b/x;
.field private ad:Lcom/instagram/feed/d/l;
.field private ae:I
.field private af:Lcom/instagram/android/feed/a/b/ac;
.field private ag:Z
.field private ah:Landroid/view/animation/Animation;
.field private ai:Landroid/view/animation/Animation;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/android/feed/a/a/q;
sput-object v0, Lcom/instagram/android/feed/a/a/q;->aa:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/base/a/d;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/feed/a/a/q;->ag:Z
return-void
.end method
.method private U()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/a/q;->ad:Lcom/instagram/feed/d/l;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/instagram/android/feed/a/a/q;->ab:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/j;->h()V
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/q;->D()Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/feed/a/a/q;->ai:Landroid/view/animation/Animation;
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_12
return-void
.end method
.method private V()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/q;->n()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/aq;->legacy_video_fade_in:I
invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/feed/a/a/q;->ah:Landroid/view/animation/Animation;
iget-object v0, p0, Lcom/instagram/android/feed/a/a/q;->ah:Landroid/view/animation/Animation;
new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;
invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/q;->n()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/aq;->legacy_video_fade_out:I
invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/feed/a/a/q;->ai:Landroid/view/animation/Animation;
iget-object v0, p0, Lcom/instagram/android/feed/a/a/q;->ai:Landroid/view/animation/Animation;
new-instance v1, Landroid/view/animation/LinearInterpolator;
invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/q;->ai:Landroid/view/animation/Animation;
new-instance v1, Lcom/instagram/android/feed/a/a/t;
invoke-direct {v1, p0}, Lcom/instagram/android/feed/a/a/t;-><init>(Lcom/instagram/android/feed/a/a/q;)V
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/feed/a/a/q;)Lcom/instagram/android/feed/a/a/j;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a/q;->ab:Lcom/instagram/android/feed/a/a/j;
return-object v0
.end method
.method static synthetic b(Lcom/instagram/android/feed/a/a/q;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/q;->U()V
return-void
.end method
.method public final E()V
.registers 6
const/4 v4, 0x0
invoke-super {p0}, Lcom/instagram/base/a/d;->E()V
iget-boolean v0, p0, Lcom/instagram/android/feed/a/a/q;->ag:Z
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/instagram/android/feed/a/a/q;->ab:Lcom/instagram/android/feed/a/a/j;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/instagram/android/feed/a/a/q;->ab:Lcom/instagram/android/feed/a/a/j;
iget-object v1, p0, Lcom/instagram/android/feed/a/a/q;->ad:Lcom/instagram/feed/d/l;
iget-object v2, p0, Lcom/instagram/android/feed/a/a/q;->af:Lcom/instagram/android/feed/a/b/ac;
iget v3, p0, Lcom/instagram/android/feed/a/a/q;->ae:I
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/instagram/android/feed/a/a/j;->a(Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;IZ)V
iput-boolean v4, p0, Lcom/instagram/android/feed/a/a/q;->ag:Z
:cond_19
return-void
.end method
.method public final F()V
.registers 2
invoke-super {p0}, Lcom/instagram/base/a/d;->F()V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/q;->ab:Lcom/instagram/android/feed/a/a/j;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/android/feed/a/a/q;->ab:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/j;->i()V
:cond_c
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
iget-object v0, p0, Lcom/instagram/android/feed/a/a/q;->ad:Lcom/instagram/feed/d/l;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
sget v0, Lcom/facebook/aw;->dialog_video_legacy:I
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
goto :goto_5
.end method
.method public final a(Landroid/graphics/Bitmap;Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;)V
.registers 4
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Lcom/instagram/base/a/d;->a(Landroid/os/Bundle;)V
sget v0, Lcom/facebook/ba;->IgDialogLegacyVideo:I
invoke-virtual {p0, v0}, Lcom/instagram/android/feed/a/a/q;->a(I)V
invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/q;->j()Landroid/os/Bundle;
move-result-object v1
const-string v2, "LegacyVideoPlayerFragment.MEDIA_ID"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/feed/a/a/q;->ad:Lcom/instagram/feed/d/l;
iget-object v0, p0, Lcom/instagram/android/feed/a/a/q;->ad:Lcom/instagram/feed/d/l;
if-nez v0, :cond_24
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/q;->a()V
:goto_23
return-void
:cond_24
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/q;->p()Landroid/support/v4/app/s;
move-result-object v0
sget v1, Lcom/facebook/av;->layout_container_main:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v0
new-instance v1, Lcom/instagram/android/feed/a/a/j;
check-cast v0, Lcom/instagram/feed/g/a;
invoke-direct {v1, p0, v0}, Lcom/instagram/android/feed/a/a/j;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;)V
iput-object v1, p0, Lcom/instagram/android/feed/a/a/q;->ab:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/q;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "LegacyVideoPlayerFragement.POSITION"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/instagram/android/feed/a/a/q;->ae:I
new-instance v0, Lcom/instagram/android/feed/a/b/x;
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/q;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p0}, Lcom/instagram/android/feed/a/b/x;-><init>(Landroid/content/Context;Lcom/instagram/android/feed/a/b/ab;)V
iput-object v0, p0, Lcom/instagram/android/feed/a/a/q;->ac:Lcom/instagram/android/feed/a/b/x;
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/q;->V()V
goto :goto_23
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 9
invoke-super {p0, p1, p2}, Lcom/instagram/base/a/d;->a(Landroid/view/View;Landroid/os/Bundle;)V
if-eqz p1, :cond_37
new-instance v0, Lcom/instagram/android/feed/a/a/r;
invoke-direct {v0, p0}, Lcom/instagram/android/feed/a/a/r;-><init>(Lcom/instagram/android/feed/a/a/q;)V
invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
sget v0, Lcom/facebook/av;->media_group:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-static {v0}, Lcom/instagram/android/feed/a/b/x;->a(Landroid/view/View;)Lcom/instagram/android/feed/a/b/ac;
move-result-object v1
iput-object v1, p0, Lcom/instagram/android/feed/a/a/q;->af:Lcom/instagram/android/feed/a/b/ac;
iget-object v1, p0, Lcom/instagram/android/feed/a/a/q;->af:Lcom/instagram/android/feed/a/b/ac;
invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/q;->ac:Lcom/instagram/android/feed/a/b/x;
iget-object v1, p0, Lcom/instagram/android/feed/a/a/q;->af:Lcom/instagram/android/feed/a/b/ac;
iget-object v2, p0, Lcom/instagram/android/feed/a/a/q;->ad:Lcom/instagram/feed/d/l;
iget v3, p0, Lcom/instagram/android/feed/a/a/q;->ae:I
const/4 v4, 0x0
sget v5, Lcom/instagram/android/widget/o;->c:I
invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/feed/a/b/x;->a(Lcom/instagram/android/feed/a/b/ac;Lcom/instagram/feed/d/l;IZI)V
sget v0, Lcom/facebook/av;->animatable_background:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/feed/a/a/q;->ah:Landroid/view/animation/Animation;
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_37
return-void
.end method
.method public final a(Lcom/instagram/feed/d/l;ILcom/instagram/android/feed/a/b/ac;)V
.registers 5
iget-object v0, p0, Lcom/instagram/android/feed/a/a/q;->ab:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {v0, p2, p1, p3}, Lcom/instagram/android/feed/a/a/j;->a(ILcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;)V
return-void
.end method
.method public final b(Lcom/instagram/feed/d/l;ILcom/instagram/android/feed/a/b/ac;)V
.registers 12
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/q;->p()Landroid/support/v4/app/s;
move-result-object v0
sget v1, Lcom/facebook/av;->layout_container_main:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v2
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->ai()Z
move-result v0
if-eqz v0, :cond_27
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/q;->n()Landroid/content/Context;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/q;->y()Landroid/support/v4/app/an;
move-result-object v1
sget v2, Lcom/instagram/feed/d/o;->a:I
sget v3, Lcom/instagram/android/h/g;->b:I
invoke-static {v0, v1, p1, v2, v3}, Lcom/instagram/android/feed/e/h;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;II)V
:goto_1f
invoke-virtual {p3}, Lcom/instagram/android/feed/a/b/ac;->d()Lcom/instagram/android/widget/MediaActionsView;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/widget/MediaActionsView;->a()V
return-void
:cond_27
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/q;->n()Landroid/content/Context;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/q;->y()Landroid/support/v4/app/an;
move-result-object v1
sget v4, Lcom/instagram/feed/d/o;->a:I
sget v5, Lcom/instagram/android/h/g;->b:I
move-object v6, v2
check-cast v6, Lcom/instagram/android/fragment/aa;
move-object v7, v2
check-cast v7, Lcom/instagram/feed/g/a;
move-object v2, p1
move v3, p2
invoke-static/range {v0 .. v7}, Lcom/instagram/android/feed/e/h;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;IIILcom/instagram/android/fragment/aa;Lcom/instagram/feed/g/a;)V
goto :goto_1f
.end method
.method public final c(Landroid/os/Bundle;)Landroid/app/Dialog;
.registers 6
const/4 v3, -0x1
new-instance v0, Lcom/instagram/android/feed/a/a/s;
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/q;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/feed/a/a/q;->d()I
move-result v2
invoke-direct {v0, p0, v1, v2}, Lcom/instagram/android/feed/a/a/s;-><init>(Lcom/instagram/android/feed/a/a/q;Landroid/content/Context;I)V
invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V
return-object v0
.end method
.method public final h_()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a/q;->ab:Lcom/instagram/android/feed/a/a/j;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/j;->d()V
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "legacy_video_player"
return-object v0
.end method