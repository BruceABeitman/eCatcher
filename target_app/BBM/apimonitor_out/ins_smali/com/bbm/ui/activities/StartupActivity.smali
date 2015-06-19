.class public Lcom/bbm/ui/activities/StartupActivity;
.super Landroid/app/Activity;
.source "StartupActivity.java"
.field private a:Landroid/app/AlertDialog;
.field private b:Z
.field private c:Z
.field private d:Z
.field private e:J
.field private f:Z
.field private g:Landroid/widget/ProgressBar;
.field private h:Landroid/content/BroadcastReceiver;
.field private i:Ljava/lang/Runnable;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
new-instance v0, Lcom/bbm/ui/activities/ahx;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ahx;-><init>(Lcom/bbm/ui/activities/StartupActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/StartupActivity;->h:Landroid/content/BroadcastReceiver;
new-instance v0, Lcom/bbm/ui/activities/ahy;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ahy;-><init>(Lcom/bbm/ui/activities/StartupActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/StartupActivity;->i:Ljava/lang/Runnable;
return-void
.end method
.method private a()Z
.registers 2
const-string v0, "connectivity"
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/StartupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_16
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v0
if-eqz v0, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method static synthetic a(Lcom/bbm/ui/activities/StartupActivity;)Z
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/StartupActivity;->a()Z
move-result v0
return v0
.end method
.method static synthetic b(Lcom/bbm/ui/activities/StartupActivity;)Landroid/app/AlertDialog;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/StartupActivity;->a:Landroid/app/AlertDialog;
return-object v0
.end method
.method private b()V
.registers 3
const/4 v1, 0x1
iget-boolean v0, p0, Lcom/bbm/ui/activities/StartupActivity;->c:Z
if-eqz v0, :cond_6
:goto_5
return-void
:cond_6
iput-boolean v1, p0, Lcom/bbm/ui/activities/StartupActivity;->c:Z
iput-boolean v1, p0, Lcom/bbm/ui/activities/StartupActivity;->d:Z
invoke-virtual {p0}, Lcom/bbm/ui/activities/StartupActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/bbm/Alaska;
invoke-virtual {v0}, Lcom/bbm/Alaska;->p()V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
invoke-virtual {v1}, Lcom/bbm/d/a;->a()V
invoke-virtual {v0}, Lcom/bbm/Alaska;->v()V
new-instance v0, Lcom/bbm/ui/activities/aib;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aib;-><init>(Lcom/bbm/ui/activities/StartupActivity;)V
invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
goto :goto_5
.end method
.method static synthetic c(Lcom/bbm/ui/activities/StartupActivity;)Landroid/app/AlertDialog;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/activities/StartupActivity;->a:Landroid/app/AlertDialog;
return-object v0
.end method
.method private c()V
.registers 3
const-string v0, "Launching MainActivity from StartupActivity"
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/MainActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v1, 0x1
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/StartupActivity;->startActivity(Landroid/content/Intent;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/StartupActivity;->finish()V
const v0, 0x7f040003
const v1, 0x7f040004
invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/StartupActivity;->overridePendingTransition(II)V
return-void
.end method
.method private d()V
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/StartupActivity;->b:Z
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/activities/StartupActivity;->b:Z
iget-object v0, p0, Lcom/bbm/ui/activities/StartupActivity;->h:Landroid/content/BroadcastReceiver;
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/StartupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
goto :goto_4
.end method
.method static synthetic d(Lcom/bbm/ui/activities/StartupActivity;)V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/activities/StartupActivity;->d()V
return-void
.end method
.method static synthetic e(Lcom/bbm/ui/activities/StartupActivity;)V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/activities/StartupActivity;->b()V
return-void
.end method
.method static synthetic f(Lcom/bbm/ui/activities/StartupActivity;)Landroid/widget/ProgressBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/StartupActivity;->g:Landroid/widget/ProgressBar;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/activities/StartupActivity;)J
.registers 3
iget-wide v0, p0, Lcom/bbm/ui/activities/StartupActivity;->e:J
return-wide v0
.end method
.method static synthetic h(Lcom/bbm/ui/activities/StartupActivity;)V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/activities/StartupActivity;->c()V
return-void
.end method
.method static synthetic i(Lcom/bbm/ui/activities/StartupActivity;)Z
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/activities/StartupActivity;->c:Z
return v0
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 5
invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V
if-nez p1, :cond_c
const/16 v0, 0xca
if-ne p2, v0, :cond_d
invoke-direct {p0}, Lcom/bbm/ui/activities/StartupActivity;->c()V
:cond_c
:goto_c
return-void
:cond_d
invoke-virtual {p0}, Lcom/bbm/ui/activities/StartupActivity;->finish()V
goto :goto_c
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 10
const-string v1, " + Lcom/bbm/ui/activities/StartupActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v7, 0x4
const/4 v6, 0x1
const/4 v5, -0x1
const/4 v4, -0x2
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/StartupActivity;->isTaskRoot()Z
move-result v0
if-nez v0, :cond_19
const-string v0, "Non-root StartupActivity detected"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/StartupActivity;->finish()V
:goto_18
const-string v1, " - Lcom/bbm/ui/activities/StartupActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_19
new-instance v0, Landroid/widget/RelativeLayout;
invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v1, Landroid/widget/ImageView;
invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
const v2, 0x7f0203ed
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setId(I)V
invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V
new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v3, 0xd
invoke-virtual {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v1, Landroid/view/ContextThemeWrapper;
const v2, 0x7f0f000a
invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V
new-instance v2, Landroid/widget/ProgressBar;
invoke-direct {v2, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V
iput-object v2, p0, Lcom/bbm/ui/activities/StartupActivity;->g:Landroid/widget/ProgressBar;
iget-object v1, p0, Lcom/bbm/ui/activities/StartupActivity;->g:Landroid/widget/ProgressBar;
invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V
new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v2, 0xe
invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
const/4 v2, 0x3
invoke-virtual {v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/StartupActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0b0334
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F
move-result v2
float-to-int v2, v2
iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
iget-object v2, p0, Lcom/bbm/ui/activities/StartupActivity;->g:Landroid/widget/ProgressBar;
invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/StartupActivity;->setContentView(Landroid/view/View;)V
goto :goto_18
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/StartupActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
sget-object v1, Lcom/bbm/c/n;->ai:Lcom/bbm/c/n;
invoke-virtual {v0, v1}, Lcom/bbm/c/c;->c(Lcom/bbm/c/n;)V
invoke-super {p0}, Landroid/app/Activity;->onPause()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/activities/StartupActivity;->f:Z
iget-object v0, p0, Lcom/bbm/ui/activities/StartupActivity;->g:Landroid/widget/ProgressBar;
iget-object v1, p0, Lcom/bbm/ui/activities/StartupActivity;->i:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z
invoke-direct {p0}, Lcom/bbm/ui/activities/StartupActivity;->d()V
const-string v1, " - Lcom/bbm/ui/activities/StartupActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/bbm/ui/activities/StartupActivity; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V
const-string v0, "actiivtyFirstDisplayTime"
const-wide/16 v1, 0x0
invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v0
iput-wide v0, p0, Lcom/bbm/ui/activities/StartupActivity;->e:J
const-string v0, "hasBeenLaunchedBefore"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/ui/activities/StartupActivity;->d:Z
const-string v1, " - Lcom/bbm/ui/activities/StartupActivity; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 7
const-string v1, " + Lcom/bbm/ui/activities/StartupActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x4
const/4 v5, 0x1
const-string v0, "StartupActivity: Resuming"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
sget-object v1, Lcom/bbm/c/n;->ai:Lcom/bbm/c/n;
invoke-virtual {v0, v1}, Lcom/bbm/c/c;->a(Lcom/bbm/c/n;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/StartupActivity;->getPackageName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/cw;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/StartupActivity;->g:Landroid/widget/ProgressBar;
invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-boolean v0, p0, Lcom/bbm/ui/activities/StartupActivity;->d:Z
if-nez v0, :cond_54
invoke-direct {p0}, Lcom/bbm/ui/activities/StartupActivity;->a()Z
move-result v0
if-eqz v0, :cond_55
iget-wide v0, p0, Lcom/bbm/ui/activities/StartupActivity;->e:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-nez v0, :cond_3a
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
iput-wide v0, p0, Lcom/bbm/ui/activities/StartupActivity;->e:J
:cond_3a
iget-boolean v0, p0, Lcom/bbm/ui/activities/StartupActivity;->f:Z
if-nez v0, :cond_51
iget-object v0, p0, Lcom/bbm/ui/activities/StartupActivity;->g:Landroid/widget/ProgressBar;
invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I
move-result v0
if-ne v4, v0, :cond_51
iput-boolean v5, p0, Lcom/bbm/ui/activities/StartupActivity;->f:Z
iget-object v0, p0, Lcom/bbm/ui/activities/StartupActivity;->g:Landroid/widget/ProgressBar;
iget-object v1, p0, Lcom/bbm/ui/activities/StartupActivity;->i:Ljava/lang/Runnable;
const-wide/16 v2, 0x7d0
invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_51
invoke-direct {p0}, Lcom/bbm/ui/activities/StartupActivity;->b()V
:goto_54
:cond_54
const-string v1, " - Lcom/bbm/ui/activities/StartupActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_55
iget-object v0, p0, Lcom/bbm/ui/activities/StartupActivity;->a:Landroid/app/AlertDialog;
if-nez v0, :cond_94
new-instance v0, Lcom/bbm/ui/activities/ahz;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ahz;-><init>(Lcom/bbm/ui/activities/StartupActivity;)V
new-instance v1, Lcom/bbm/ui/activities/aia;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aia;-><init>(Lcom/bbm/ui/activities/StartupActivity;)V
new-instance v2, Landroid/app/AlertDialog$Builder;
new-instance v3, Landroid/view/ContextThemeWrapper;
const v4, 0x7f0f0009
invoke-direct {v3, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V
invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v3, 0x7f0e051c
invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
move-result-object v1
const v2, 0x7f0e0553
invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v1
const v2, 0x7f0e0665
invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/StartupActivity;->a:Landroid/app/AlertDialog;
iget-object v0, p0, Lcom/bbm/ui/activities/StartupActivity;->a:Landroid/app/AlertDialog;
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
:cond_94
iget-boolean v0, p0, Lcom/bbm/ui/activities/StartupActivity;->b:Z
if-nez v0, :cond_54
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v1, p0, Lcom/bbm/ui/activities/StartupActivity;->h:Landroid/content/BroadcastReceiver;
invoke-virtual {p0, v1, v0}, Lcom/bbm/ui/activities/StartupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
iput-boolean v5, p0, Lcom/bbm/ui/activities/StartupActivity;->b:Z
goto :goto_54
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/bbm/ui/activities/StartupActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "actiivtyFirstDisplayTime"
iget-wide v1, p0, Lcom/bbm/ui/activities/StartupActivity;->e:J
invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v0, "hasBeenLaunchedBefore"
iget-boolean v1, p0, Lcom/bbm/ui/activities/StartupActivity;->d:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, " - Lcom/bbm/ui/activities/StartupActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method