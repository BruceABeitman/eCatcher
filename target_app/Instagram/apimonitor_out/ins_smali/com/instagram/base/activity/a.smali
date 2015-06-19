.class public abstract Lcom/instagram/base/activity/a;
.super Lcom/instagram/base/activity/d;
.source "BaseFragmentActivity.java"
.field private static final p:Landroid/content/IntentFilter;
.field private final q:Landroid/content/BroadcastReceiver;
.field private final r:Landroid/support/v4/app/t;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
sput-object v0, Lcom/instagram/base/activity/a;->p:Landroid/content/IntentFilter;
const-string v1, "ActionBarService.action_bar_back_click"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
sget-object v0, Lcom/instagram/base/activity/a;->p:Landroid/content/IntentFilter;
const-string v1, "ActionBarService.action_bar_updated"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/base/activity/d;-><init>()V
new-instance v0, Lcom/instagram/base/activity/b;
invoke-direct {v0, p0}, Lcom/instagram/base/activity/b;-><init>(Lcom/instagram/base/activity/a;)V
iput-object v0, p0, Lcom/instagram/base/activity/a;->q:Landroid/content/BroadcastReceiver;
new-instance v0, Lcom/instagram/base/activity/c;
invoke-direct {v0, p0}, Lcom/instagram/base/activity/c;-><init>(Lcom/instagram/base/activity/a;)V
iput-object v0, p0, Lcom/instagram/base/activity/a;->r:Landroid/support/v4/app/t;
return-void
.end method
.method protected abstract h()V
.end method
.method public final k()V
.registers 4
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/base/activity/a;->d()Landroid/support/v4/app/s;
move-result-object v0
sget v2, Lcom/facebook/av;->layout_container_main:I
invoke-virtual {v0, v2}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/instagram/a/b;
invoke-virtual {v1, v0}, Lcom/instagram/a/e;->a(Lcom/instagram/a/b;)V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 5
const/4 v2, 0x0
invoke-super {p0, p1}, Lcom/instagram/base/activity/d;->onCreate(Landroid/os/Bundle;)V
sget v0, Lcom/facebook/aw;->activity_fragment_host:I
invoke-virtual {p0, v0}, Lcom/instagram/base/activity/a;->setContentView(I)V
invoke-static {}, Lcom/instagram/creation/c/a;->a()Z
move-result v0
if-eqz v0, :cond_28
new-instance v1, Landroid/view/SurfaceView;
invoke-direct {v1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V
new-instance v0, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const v0, 0x1020002
invoke-virtual {p0, v0}, Lcom/instagram/base/activity/a;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
:cond_28
invoke-virtual {p0}, Lcom/instagram/base/activity/a;->h()V
return-void
.end method
.method protected onPause()V
.registers 3
invoke-super {p0}, Lcom/instagram/base/activity/d;->onPause()V
invoke-virtual {p0}, Lcom/instagram/base/activity/a;->d()Landroid/support/v4/app/s;
move-result-object v0
iget-object v1, p0, Lcom/instagram/base/activity/a;->r:Landroid/support/v4/app/t;
invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->b(Landroid/support/v4/app/t;)V
invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/base/activity/a;->q:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V
return-void
.end method
.method protected onResume()V
.registers 4
invoke-super {p0}, Lcom/instagram/base/activity/d;->onResume()V
invoke-virtual {p0}, Lcom/instagram/base/activity/a;->d()Landroid/support/v4/app/s;
move-result-object v0
iget-object v1, p0, Lcom/instagram/base/activity/a;->r:Landroid/support/v4/app/t;
invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Landroid/support/v4/app/t;)V
invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/base/activity/a;->q:Landroid/content/BroadcastReceiver;
sget-object v2, Lcom/instagram/base/activity/a;->p:Landroid/content/IntentFilter;
invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
invoke-virtual {p0}, Lcom/instagram/base/activity/a;->k()V
return-void
.end method