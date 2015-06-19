.class public abstract Lcom/bbm/ui/activities/ev;
.super Lcom/slidingmenu/lib/a/a;
.source "ChildActivity.java"
.field  A:Lcom/bbm/ui/c/fm;
.field public B:Lcom/bbm/ui/c/fm;
.field protected C:Lcom/bbm/j/k;
.field private a:Landroid/support/v4/view/n;
.field private b:Landroid/support/v4/view/n;
.field private c:Landroid/support/v4/view/n;
.field private final d:Z
.field private final e:Lcom/slidingmenu/lib/i;
.field private final f:Lcom/slidingmenu/lib/h;
.field protected final x:Lcom/bbm/ui/a;
.field public y:Z
.field protected z:Ljava/lang/Class;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/ev;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/Class;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0}, Lcom/slidingmenu/lib/a/a;-><init>()V
iput-boolean v0, p0, Lcom/bbm/ui/activities/ev;->d:Z
iput-boolean v0, p0, Lcom/bbm/ui/activities/ev;->y:Z
new-instance v0, Lcom/bbm/ui/activities/ew;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ew;-><init>(Lcom/bbm/ui/activities/ev;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ev;->e:Lcom/slidingmenu/lib/i;
new-instance v0, Lcom/bbm/ui/activities/ex;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ex;-><init>(Lcom/bbm/ui/activities/ev;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ev;->f:Lcom/slidingmenu/lib/h;
new-instance v0, Lcom/bbm/ui/activities/ey;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ey;-><init>(Lcom/bbm/ui/activities/ev;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ev;->C:Lcom/bbm/j/k;
iput-object p1, p0, Lcom/bbm/ui/activities/ev;->z:Ljava/lang/Class;
new-instance v0, Lcom/bbm/ui/a;
invoke-direct {v0}, Lcom/bbm/ui/a;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/ev;->x:Lcom/bbm/ui/a;
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->x:Lcom/bbm/ui/a;
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ev;->a(Lcom/bbm/ui/activities/aka;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/ev;)Landroid/support/v4/view/n;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->b:Landroid/support/v4/view/n;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/activities/ev;)Landroid/support/v4/view/n;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->c:Landroid/support/v4/view/n;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/activities/ev;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/ev;->y:Z
return v0
.end method
.method protected a()V
.registers 1
return-void
.end method
.method public final a(Lcom/bbm/ui/c;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->x:Lcom/bbm/ui/a;
iput-object p1, v0, Lcom/bbm/ui/a;->b:Lcom/bbm/ui/c;
return-void
.end method
.method protected c()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected d()V
.registers 1
invoke-virtual {p0}, Lcom/bbm/ui/activities/ev;->finish()V
return-void
.end method
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->a:Landroid/support/v4/view/n;
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->a()Z
move-result v0
if-nez v0, :cond_22
invoke-static {p1}, Lcom/bbm/ui/EmoticonStickerPager;->a(Landroid/view/MotionEvent;)Z
move-result v0
if-nez v0, :cond_22
iget-boolean v0, p0, Lcom/bbm/ui/activities/ev;->y:Z
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->a:Landroid/support/v4/view/n;
invoke-virtual {v0, p1}, Landroid/support/v4/view/n;->a(Landroid/view/MotionEvent;)Z
move-result v0
if-eqz v0, :cond_22
const/4 v0, 0x1
:goto_21
return v0
:cond_22
invoke-super {p0, p1}, Lcom/slidingmenu/lib/a/a;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
goto :goto_21
.end method
.method protected e()V
.registers 1
invoke-virtual {p0}, Lcom/bbm/ui/activities/ev;->finish()V
return-void
.end method
.method protected g()V
.registers 1
return-void
.end method
.method public final h()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->z:Ljava/lang/Class;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
invoke-virtual {p0}, Lcom/bbm/ui/activities/ev;->finish()V
goto :goto_4
.end method
.method public final i()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->x:Lcom/bbm/ui/a;
sget-object v1, Lcom/bbm/ui/c;->c:Lcom/bbm/ui/c;
iput-object v1, v0, Lcom/bbm/ui/a;->b:Lcom/bbm/ui/c;
return-void
.end method
.method public final j()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->x:Lcom/bbm/ui/a;
sget-object v1, Lcom/bbm/ui/c;->c:Lcom/bbm/ui/c;
iput-object v1, v0, Lcom/bbm/ui/a;->a:Lcom/bbm/ui/c;
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 9
const v6, 0x7f0a0649
const v5, 0x7f0a0641
const/4 v1, 0x1
invoke-super {p0, p1}, Lcom/slidingmenu/lib/a/a;->onCreate(Landroid/os/Bundle;)V
invoke-static {}, Lcom/bbm/util/fb;->a()V
invoke-virtual {p0}, Lcom/bbm/ui/activities/ev;->getPackageName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/cw;->a(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/slidingmenu/lib/a/a;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v0
const v2, 0x7f030146
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/a/a;->setBehindContentView(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/ev;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_30
invoke-virtual {p0}, Lcom/bbm/ui/activities/ev;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V
:cond_30
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setMode(I)V
const v2, 0x7f030142
invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setSecondaryMenu(I)V
const/4 v2, 0x2
invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V
const v2, 0x7f0b0354
invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowWidthRes(I)V
const v2, 0x7f0203e7
invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/ev;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I
invoke-virtual {p0}, Lcom/bbm/ui/activities/ev;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0c0022
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I
move-result v3
div-int/2addr v2, v3
invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V
iget-object v2, p0, Lcom/bbm/ui/activities/ev;->e:Lcom/slidingmenu/lib/i;
invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setOnClosedListener(Lcom/slidingmenu/lib/i;)V
iget-object v2, p0, Lcom/bbm/ui/activities/ev;->f:Lcom/slidingmenu/lib/h;
invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setOnCloseListener(Lcom/slidingmenu/lib/h;)V
const/4 v2, 0x0
invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindScrollScale(F)V
const v2, 0x3eb33333
invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V
if-nez p1, :cond_122
new-instance v0, Lcom/bbm/ui/c/fm;
invoke-direct {v0}, Lcom/bbm/ui/c/fm;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/ev;->A:Lcom/bbm/ui/c/fm;
invoke-virtual {p0}, Lcom/bbm/ui/activities/ev;->getFragmentManager()Landroid/app/FragmentManager;
move-result-object v0
invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;
move-result-object v0
iget-object v2, p0, Lcom/bbm/ui/activities/ev;->A:Lcom/bbm/ui/c/fm;
invoke-virtual {v0, v6, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
move-result-object v0
invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
new-instance v0, Lcom/bbm/ui/c/fm;
invoke-direct {v0}, Lcom/bbm/ui/c/fm;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
invoke-virtual {p0}, Lcom/bbm/ui/activities/ev;->getFragmentManager()Landroid/app/FragmentManager;
move-result-object v0
invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;
move-result-object v0
iget-object v2, p0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
invoke-virtual {v0, v5, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
move-result-object v0
invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
:goto_ac
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->A:Lcom/bbm/ui/c/fm;
new-instance v2, Lcom/bbm/ui/activities/ez;
invoke-direct {v2, p0}, Lcom/bbm/ui/activities/ez;-><init>(Lcom/bbm/ui/activities/ev;)V
invoke-virtual {v0, v2}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
new-instance v2, Lcom/bbm/ui/activities/fa;
invoke-direct {v2, p0}, Lcom/bbm/ui/activities/fa;-><init>(Lcom/bbm/ui/activities/ev;)V
invoke-virtual {v0, v2}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
iput-boolean v1, v0, Lcom/bbm/ui/c/fm;->d:Z
new-instance v0, Landroid/support/v4/view/n;
new-instance v2, Lcom/bbm/ui/activities/fe;
new-instance v3, Lcom/bbm/ui/activities/fb;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/fb;-><init>(Lcom/bbm/ui/activities/ev;)V
invoke-direct {v2, p0, v3}, Lcom/bbm/ui/activities/fe;-><init>(Lcom/bbm/ui/activities/ev;Lcom/bbm/ui/activities/ff;)V
invoke-direct {v0, p0, v2}, Landroid/support/v4/view/n;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ev;->b:Landroid/support/v4/view/n;
new-instance v0, Landroid/support/v4/view/n;
new-instance v2, Lcom/bbm/ui/activities/fe;
new-instance v3, Lcom/bbm/ui/activities/fc;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/fc;-><init>(Lcom/bbm/ui/activities/ev;)V
invoke-direct {v2, p0, v3}, Lcom/bbm/ui/activities/fe;-><init>(Lcom/bbm/ui/activities/ev;Lcom/bbm/ui/activities/ff;)V
invoke-direct {v0, p0, v2}, Landroid/support/v4/view/n;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ev;->c:Landroid/support/v4/view/n;
new-instance v0, Landroid/support/v4/view/n;
new-instance v2, Lcom/bbm/ui/activities/fe;
new-instance v3, Lcom/bbm/ui/activities/fd;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/fd;-><init>(Lcom/bbm/ui/activities/ev;)V
invoke-direct {v2, p0, v3}, Lcom/bbm/ui/activities/fe;-><init>(Lcom/bbm/ui/activities/ev;Lcom/bbm/ui/activities/ff;)V
invoke-direct {v0, p0, v2}, Landroid/support/v4/view/n;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ev;->a:Landroid/support/v4/view/n;
invoke-virtual {p0}, Lcom/bbm/ui/activities/ev;->getIntent()Landroid/content/Intent;
move-result-object v0
if-eqz v0, :cond_13c
invoke-virtual {p0}, Lcom/bbm/ui/activities/ev;->getIntent()Landroid/content/Intent;
move-result-object v0
sget-object v2, Lcom/bbm/setup/s;->a:Ljava/lang/String;
invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v2
invoke-virtual {p0}, Lcom/bbm/ui/activities/ev;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v3, "com.bbm.ui.activities.ChildActivity.show_default_animation"
invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
move v1, v2
:goto_112
if-eqz v1, :cond_11c
new-instance v1, Lcom/bbm/setup/s;
invoke-direct {v1, p0}, Lcom/bbm/setup/s;-><init>(Landroid/app/Activity;)V
invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ev;->a(Lcom/bbm/ui/activities/aka;)V
:cond_11c
if-eqz v0, :cond_121
invoke-virtual {p0}, Lcom/bbm/ui/activities/ev;->i()V
:cond_121
return-void
:cond_122
invoke-virtual {p0}, Lcom/bbm/ui/activities/ev;->getFragmentManager()Landroid/app/FragmentManager;
move-result-object v0
invoke-virtual {v0, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c/fm;
iput-object v0, p0, Lcom/bbm/ui/activities/ev;->A:Lcom/bbm/ui/c/fm;
invoke-virtual {p0}, Lcom/bbm/ui/activities/ev;->getFragmentManager()Landroid/app/FragmentManager;
move-result-object v0
invoke-virtual {v0, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c/fm;
iput-object v0, p0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
goto/16 :goto_ac
:cond_13c
move v0, v1
goto :goto_112
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 3
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v0
packed-switch v0, :pswitch_data_12
invoke-super {p0, p1}, Lcom/slidingmenu/lib/a/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
:goto_b
return v0
:pswitch_c
invoke-virtual {p0}, Lcom/bbm/ui/activities/ev;->h()V
const/4 v0, 0x1
goto :goto_b
nop
:pswitch_data_12
.packed-switch 0x102002c
:pswitch_c
.end packed-switch
.end method
.method public onPause()V
.registers 2
invoke-super {p0}, Lcom/slidingmenu/lib/a/a;->onPause()V
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->C:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
return-void
.end method
.method public onResume()V
.registers 2
invoke-virtual {p0}, Lcom/bbm/ui/activities/ev;->getApplication()Landroid/app/Application;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/cw;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->C:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
invoke-super {p0}, Lcom/slidingmenu/lib/a/a;->onResume()V
return-void
.end method
.method protected onUserLeaveHint()V
.registers 1
invoke-static {}, Lcom/bbm/util/fb;->a()V
invoke-super {p0}, Lcom/slidingmenu/lib/a/a;->onUserLeaveHint()V
return-void
.end method