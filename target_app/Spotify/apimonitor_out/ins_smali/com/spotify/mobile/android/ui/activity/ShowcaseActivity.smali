.class public Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"
.field private n:Landroid/support/v4/view/ViewPager;
.field private p:Lcom/spotify/mobile/android/ui/activity/m;
.field private q:Landroid/widget/Button;
.field private r:Landroid/widget/Button;
.field private s:Lcom/spotify/mobile/android/util/d/e;
.field private t:Ljava/util/List;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)Landroid/support/v4/view/ViewPager;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->n:Landroid/support/v4/view/ViewPager;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)Lcom/spotify/mobile/android/ui/activity/m;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->p:Lcom/spotify/mobile/android/ui/activity/m;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->t:Ljava/util/List;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)Lcom/spotify/mobile/android/util/d/e;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->s:Lcom/spotify/mobile/android/util/d/e;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->r:Landroid/widget/Button;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)V
.registers 4
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/high16 v1, 0x3f80
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
const-wide/16 v1, 0x96
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
new-instance v1, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$4;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$4;-><init>(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)V
invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->r:Landroid/widget/Button;
invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->q:Landroid/widget/Button;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
return-void
.end method
.method static synthetic g(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)V
.registers 4
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/4 v1, 0x0
const/high16 v2, 0x3f80
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
const-wide/16 v1, 0x96
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
new-instance v1, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$5;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$5;-><init>(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)V
invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->r:Landroid/widget/Button;
invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method
.method static synthetic h(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->q:Landroid/widget/Button;
return-object v0
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030028
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->setContentView(I)V
new-instance v0, Lcom/spotify/mobile/android/ui/activity/m;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->y_()Landroid/support/v4/app/r;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/ui/activity/m;-><init>(Landroid/support/v4/app/r;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->p:Lcom/spotify/mobile/android/ui/activity/m;
const v0, 0x7f0a0237
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v4/view/ViewPager;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->n:Landroid/support/v4/view/ViewPager;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->n:Landroid/support/v4/view/ViewPager;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->p:Lcom/spotify/mobile/android/ui/activity/m;
invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ah;)V
const v0, 0x7f0a0238
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->n:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->a(Landroid/support/v4/view/ViewPager;)V
const v1, 0x7f0a0239
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
iput-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->q:Landroid/widget/Button;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->q:Landroid/widget/Button;
new-instance v2, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$1;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)V
invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f0a023a
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
iput-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->r:Landroid/widget/Button;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->r:Landroid/widget/Button;
new-instance v2, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$2;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)V
invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v1, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$3;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$3;-><init>(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)V
new-instance v2, Lcom/spotify/mobile/android/util/d/e;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/util/d/e;-><init>(Landroid/content/Context;)V
iput-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->s:Lcom/spotify/mobile/android/util/d/e;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->s:Lcom/spotify/mobile/android/util/d/e;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/d/e;->a()Ljava/util/List;
move-result-object v2
iput-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->t:Ljava/util/List;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->p:Lcom/spotify/mobile/android/ui/activity/m;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->t:Ljava/util/List;
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/ui/activity/m;->a(Ljava/util/List;)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->t:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
const/4 v3, 0x1
if-ne v2, v3, :cond_8e
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->q:Landroid/widget/Button;
const/4 v3, 0x4
invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->r:Landroid/widget/Button;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V
:cond_8e
new-instance v2, Lcom/spotify/mobile/android/util/ui/b;
invoke-direct {v2}, Lcom/spotify/mobile/android/util/ui/b;-><init>()V
invoke-virtual {v2, v1}, Lcom/spotify/mobile/android/util/ui/b;->a(Landroid/support/v4/view/br;)V
invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/util/ui/b;->a(Landroid/support/v4/view/br;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->n:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/br;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method