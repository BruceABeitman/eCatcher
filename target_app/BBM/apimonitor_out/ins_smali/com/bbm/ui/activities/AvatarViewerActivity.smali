.class public Lcom/bbm/ui/activities/AvatarViewerActivity;
.super Lcom/bbm/ui/activities/ev;
.source "AvatarViewerActivity.java"
.field private a:Lcom/bbm/ui/ObservingImageView;
.field private final b:Lcom/bbm/d/a;
.field private final c:Lcom/bbm/j/k;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/ev;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/AvatarViewerActivity;->b:Lcom/bbm/d/a;
new-instance v0, Lcom/bbm/ui/activities/t;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/t;-><init>(Lcom/bbm/ui/activities/AvatarViewerActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/AvatarViewerActivity;->c:Lcom/bbm/j/k;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/AvatarViewerActivity;)Lcom/bbm/d/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/AvatarViewerActivity;->b:Lcom/bbm/d/a;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/activities/AvatarViewerActivity;Lcom/bbm/ui/c/fm;)V
.registers 7
const/4 v4, 0x0
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
new-instance v1, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f02027b
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
const v3, 0x7f0e0607
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/AvatarViewerActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3, v4}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p1, v0, v4, v4}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
new-instance v0, Lcom/bbm/ui/activities/x;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/x;-><init>(Lcom/bbm/ui/activities/AvatarViewerActivity;)V
iput-object v0, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
const v1, 0x7f020268
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const v2, 0x7f0e0606
invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/AvatarViewerActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2, v4}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1, v0}, Lcom/bbm/ui/c/fm;->a(Lcom/bbm/ui/slidingmenu/a;)V
new-instance v0, Lcom/bbm/ui/activities/y;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/y;-><init>(Lcom/bbm/ui/activities/AvatarViewerActivity;)V
invoke-virtual {p1, v0}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method static synthetic b(Lcom/bbm/ui/activities/AvatarViewerActivity;)Lcom/bbm/ui/ObservingImageView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/AvatarViewerActivity;->a:Lcom/bbm/ui/ObservingImageView;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/activities/AvatarViewerActivity;)V
.registers 3
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/ProfileIconSourceActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AvatarViewerActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lcom/bbm/ui/activities/AvatarViewerActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x1
const/4 v4, 0x0
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v5}, Lcom/slidingmenu/lib/SlidingMenu;->setMode(I)V
const v0, 0x7f030007
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AvatarViewerActivity;->setContentView(I)V
const v0, 0x7f0a00c2
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AvatarViewerActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v1
new-instance v2, Lcom/bbm/ui/activities/u;
invoke-direct {v2, p0, v0}, Lcom/bbm/ui/activities/u;-><init>(Lcom/bbm/ui/activities/AvatarViewerActivity;Landroid/widget/RelativeLayout;)V
invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
const v0, 0x7f0a00be
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AvatarViewerActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/FooterActionBar;
new-instance v1, Lcom/bbm/ui/ActionBarItem;
const v2, 0x7f020390
const v3, 0x7f0e0607
invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V
invoke-virtual {v0, v1, v4}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V
new-instance v1, Lcom/bbm/ui/activities/v;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/v;-><init>(Lcom/bbm/ui/activities/AvatarViewerActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/AvatarViewerActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_63
invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V
invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V
invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/AvatarViewerActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e00e7
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
:cond_63
const v0, 0x7f0a00c4
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AvatarViewerActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/activities/AvatarViewerActivity;->a:Lcom/bbm/ui/ObservingImageView;
iget-object v0, p0, Lcom/bbm/ui/activities/AvatarViewerActivity;->a:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v4}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/AvatarViewerActivity;->a:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v5}, Lcom/bbm/ui/ObservingImageView;->setDrawingCacheEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/AvatarViewerActivity;->a:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v5}, Lcom/bbm/ui/ObservingImageView;->buildDrawingCache(Z)V
new-instance v0, Lcom/bbm/ui/activities/w;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/w;-><init>(Lcom/bbm/ui/activities/AvatarViewerActivity;)V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AvatarViewerActivity;->a(Lcom/slidingmenu/lib/a/b;)V
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchInterceptEnabled(Z)V
iput-boolean v4, p0, Lcom/bbm/ui/activities/ev;->y:Z
const-string v1, " - Lcom/bbm/ui/activities/AvatarViewerActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/AvatarViewerActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/AvatarViewerActivity;->c:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/AvatarViewerActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/AvatarViewerActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onResume()V
iget-object v0, p0, Lcom/bbm/ui/activities/AvatarViewerActivity;->c:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
const-string v1, " - Lcom/bbm/ui/activities/AvatarViewerActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method