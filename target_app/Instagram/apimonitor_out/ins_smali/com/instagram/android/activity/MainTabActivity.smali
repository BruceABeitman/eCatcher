.class public Lcom/instagram/android/activity/MainTabActivity;
.super Lcom/instagram/base/activity/tabactivity/a;
.source "MainTabActivity.java"
.implements Lcom/instagram/android/activity/e;
.field private static a:Z
.field private b:Ljava/util/LinkedList;
.field private c:Z
.field private d:Lcom/instagram/android/activity/t;
.field private e:I
.field private f:I
.field private g:Z
.field private h:Lcom/instagram/ui/widget/c/a;
.field private i:Landroid/view/View;
.field private j:Landroid/view/View;
.field private k:Landroid/view/View;
.field private l:Lcom/instagram/android/activity/c;
.field private m:Z
.field private n:Z
.field private final o:Landroid/os/Handler;
.field private p:Landroid/os/Bundle;
.field private q:Landroid/content/BroadcastReceiver;
.field private r:Lcom/instagram/common/h/e;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/instagram/base/activity/tabactivity/a;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->b:Ljava/util/LinkedList;
iput-boolean v1, p0, Lcom/instagram/android/activity/MainTabActivity;->c:Z
iput v1, p0, Lcom/instagram/android/activity/MainTabActivity;->e:I
iput v1, p0, Lcom/instagram/android/activity/MainTabActivity;->f:I
iput-boolean v1, p0, Lcom/instagram/android/activity/MainTabActivity;->g:Z
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->o:Landroid/os/Handler;
new-instance v0, Lcom/instagram/android/activity/l;
invoke-direct {v0, p0}, Lcom/instagram/android/activity/l;-><init>(Lcom/instagram/android/activity/MainTabActivity;)V
iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->q:Landroid/content/BroadcastReceiver;
new-instance v0, Lcom/instagram/android/activity/q;
invoke-direct {v0, p0}, Lcom/instagram/android/activity/q;-><init>(Lcom/instagram/android/activity/MainTabActivity;)V
iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->r:Lcom/instagram/common/h/e;
return-void
.end method
.method private a(Landroid/content/res/Configuration;)I
.registers 4
iget v0, p1, Landroid/content/res/Configuration;->orientation:I
const/4 v1, 0x2
if-ne v0, v1, :cond_8
const/16 v0, 0x8
:goto_7
return v0
:cond_8
iget v0, p0, Lcom/instagram/android/activity/MainTabActivity;->f:I
goto :goto_7
.end method
.method static synthetic a(Lcom/instagram/android/activity/MainTabActivity;I)I
.registers 2
iput p1, p0, Lcom/instagram/android/activity/MainTabActivity;->e:I
return p1
.end method
.method private a(Lcom/instagram/android/activity/t;)Landroid/view/View;
.registers 6
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/instagram/android/activity/ActivityInTab;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "com.instagram.extra.EXTRA_STARTING_FRAGMENT"
invoke-virtual {p1}, Lcom/instagram/android/activity/t;->a()I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "MainTabActivity.EXTRA_TAB_NAME"
invoke-virtual {p1}, Lcom/instagram/android/activity/t;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v2, "MainTabActivity.INITIAL_TAB"
const/4 v3, -0x1
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v2
invoke-virtual {p1}, Lcom/instagram/android/activity/t;->a()I
move-result v3
if-ne v2, v3, :cond_35
const-string v2, "MainTabActivity.INITIAL_TAB_ARGUMENTS"
const-string v3, "MainTabActivity.INITIAL_TAB_ARGUMENTS"
invoke-virtual {v1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v1
invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
:cond_35
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->e()Lcom/instagram/base/activity/tabactivity/IgTabWidget;
move-result-object v1
invoke-direct {p0, p1, v1}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/t;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->d()Lcom/instagram/base/activity/tabactivity/IgTabHost;
move-result-object v2
invoke-virtual {p1}, Lcom/instagram/android/activity/t;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a(Ljava/lang/String;)Lcom/instagram/base/activity/tabactivity/h;
move-result-object v2
invoke-virtual {v2, v1}, Lcom/instagram/base/activity/tabactivity/h;->a(Landroid/view/View;)Lcom/instagram/base/activity/tabactivity/h;
move-result-object v2
invoke-virtual {v2, v0}, Lcom/instagram/base/activity/tabactivity/h;->a(Landroid/content/Intent;)Lcom/instagram/base/activity/tabactivity/h;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->d()Lcom/instagram/base/activity/tabactivity/IgTabHost;
move-result-object v2
invoke-virtual {v2, v0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a(Lcom/instagram/base/activity/tabactivity/h;)V
return-object v1
.end method
.method private a(Lcom/instagram/android/activity/t;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
const/4 v3, 0x0
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->tab_button:I
invoke-virtual {v0, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
sget v0, Lcom/facebook/av;->tab_icon:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
invoke-virtual {p1}, Lcom/instagram/android/activity/t;->c()I
move-result v2
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V
sget-object v0, Lcom/instagram/android/activity/t;->c:Lcom/instagram/android/activity/t;
if-ne p1, v0, :cond_3e
sget v0, Lcom/facebook/au;->tab_background_camera:I
invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V
:goto_23
:cond_23
move-object v0, v1
check-cast v0, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;
new-instance v2, Lcom/instagram/android/activity/n;
invoke-direct {v2, p0, p1}, Lcom/instagram/android/activity/n;-><init>(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)V
invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->a(Landroid/view/View$OnClickListener;)V
sget-object v2, Lcom/instagram/android/activity/t;->c:Lcom/instagram/android/activity/t;
if-ne p1, v2, :cond_5a
invoke-virtual {v0, v3}, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->setProxyToOnClickListener(Z)V
new-instance v2, Lcom/instagram/android/activity/o;
invoke-direct {v2, p0}, Lcom/instagram/android/activity/o;-><init>(Lcom/instagram/android/activity/MainTabActivity;)V
invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->a(Landroid/view/View$OnClickListener;)V
:goto_3d
return-object v1
:cond_3e
sget-object v0, Lcom/instagram/android/activity/t;->b:Lcom/instagram/android/activity/t;
if-ne p1, v0, :cond_4d
iput-object v1, p0, Lcom/instagram/android/activity/MainTabActivity;->i:Landroid/view/View;
sget v0, Lcom/facebook/av;->notification:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->j:Landroid/view/View;
goto :goto_23
:cond_4d
sget-object v0, Lcom/instagram/android/activity/t;->e:Lcom/instagram/android/activity/t;
if-ne p1, v0, :cond_23
sget v0, Lcom/facebook/av;->notification:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->k:Landroid/view/View;
goto :goto_23
:cond_5a
new-instance v2, Lcom/instagram/android/activity/p;
invoke-direct {v2, p0, p1}, Lcom/instagram/android/activity/p;-><init>(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)V
invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->a(Landroid/view/View$OnClickListener;)V
goto :goto_3d
.end method
.method static synthetic a(Lcom/instagram/android/activity/MainTabActivity;)Ljava/util/LinkedList;
.registers 2
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->b:Ljava/util/LinkedList;
return-object v0
.end method
.method private a(IIII)V
.registers 12
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->o:Landroid/os/Handler;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->i:Landroid/view/View;
if-eqz v0, :cond_1e
invoke-virtual {v0}, Landroid/view/View;->getWidth()I
move-result v1
if-eqz v1, :cond_1e
invoke-virtual {v0}, Landroid/view/View;->getHeight()I
move-result v0
if-eqz v0, :cond_1e
invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->i()Lcom/instagram/ui/widget/c/a;
move-result-object v0
invoke-virtual {v0, p1, p2, p3, p4}, Lcom/instagram/ui/widget/c/a;->a(IIII)V
:goto_1d
return-void
:cond_1e
iget-object v6, p0, Lcom/instagram/android/activity/MainTabActivity;->o:Landroid/os/Handler;
new-instance v0, Lcom/instagram/android/activity/r;
move-object v1, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
invoke-direct/range {v0 .. v5}, Lcom/instagram/android/activity/r;-><init>(Lcom/instagram/android/activity/MainTabActivity;IIII)V
const-wide/16 v1, 0x64
invoke-virtual {v6, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_1d
.end method
.method private a(Landroid/view/View;Lcom/instagram/android/activity/t;)V
.registers 6
const/4 v2, 0x0
invoke-direct {p0, p2}, Lcom/instagram/android/activity/MainTabActivity;->d(Lcom/instagram/android/activity/t;)Z
move-result v0
if-eqz v0, :cond_37
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getCurrentActivity()Landroid/app/Activity;
move-result-object v0
check-cast v0, Landroid/support/v4/app/k;
invoke-virtual {v0}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I
move-result v1
if-lez v1, :cond_1b
invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V
:goto_1a
:cond_1a
return-void
:cond_1b
sget-object v1, Lcom/instagram/android/activity/t;->b:Lcom/instagram/android/activity/t;
if-ne p2, v1, :cond_1a
sget v1, Lcom/facebook/av;->layout_container_main:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/instagram/i/c/g;
invoke-virtual {v0}, Lcom/instagram/i/c/g;->c()I
move-result v0
sget-object v1, Lcom/instagram/i/c/g;->a:Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
if-ne v0, v1, :cond_1a
invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V
goto :goto_1a
:cond_37
invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V
invoke-direct {p0, p2}, Lcom/instagram/android/activity/MainTabActivity;->b(Lcom/instagram/android/activity/t;)V
goto :goto_1a
.end method
.method static synthetic a(Lcom/instagram/android/activity/MainTabActivity;IIII)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/android/activity/MainTabActivity;->a(IIII)V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/activity/MainTabActivity;Landroid/view/View;Lcom/instagram/android/activity/t;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/instagram/android/activity/MainTabActivity;->a(Landroid/view/View;Lcom/instagram/android/activity/t;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;Lcom/instagram/android/activity/t;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/t;Lcom/instagram/android/activity/t;)V
return-void
.end method
.method private a(Lcom/instagram/android/activity/t;Lcom/instagram/android/activity/t;)V
.registers 6
invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;
move-result-object v1
invoke-virtual {p1}, Lcom/instagram/android/activity/t;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;
move-result-object v1
invoke-virtual {p2}, Lcom/instagram/android/activity/t;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/instagram/b/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)V
return-void
.end method
.method public static a(Z)V
.registers 1
sput-boolean p0, Lcom/instagram/android/activity/MainTabActivity;->a:Z
return-void
.end method
.method private a(ZLandroid/os/Bundle;)V
.registers 8
const/4 v4, 0x2
iget-boolean v0, p0, Lcom/instagram/android/activity/MainTabActivity;->g:Z
if-eqz v0, :cond_6
:goto_5
:cond_5
return-void
:cond_6
invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->g()V
if-eqz p1, :cond_6a
const-string v0, "android.intent.extra.TEXT"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3a
const-string v2, "image"
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_3a
sget-object v0, Lcom/instagram/o/a;->i:Lcom/instagram/o/a;
invoke-virtual {v0}, Lcom/instagram/o/a;->c()V
const-string v0, "android.intent.extra.STREAM"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/Uri;
invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->f()Lcom/instagram/android/activity/c;
move-result-object v2
const/16 v3, 0x2714
invoke-virtual {v2, v0, v4, v3, v1}, Lcom/instagram/android/activity/c;->a(Landroid/net/Uri;IILjava/lang/String;)V
goto :goto_5
:cond_3a
if-eqz v0, :cond_5
const-string v2, "video"
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_5
invoke-static {}, Lcom/instagram/creation/c/a;->d()Z
move-result v0
if-eqz v0, :cond_5f
sget-object v0, Lcom/instagram/o/a;->o:Lcom/instagram/o/a;
invoke-virtual {v0}, Lcom/instagram/o/a;->c()V
const-string v0, "android.intent.extra.STREAM"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/Uri;
invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->f()Lcom/instagram/android/activity/c;
move-result-object v2
invoke-virtual {v2, v0, v4, v1}, Lcom/instagram/android/activity/c;->a(Landroid/net/Uri;ILjava/lang/String;)V
goto :goto_5
:cond_5f
sget v0, Lcom/facebook/az;->video_import_min_requirements:I
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_5
:cond_6a
sget v0, Lcom/facebook/az;->must_login_before_share:I
const/4 v1, 0x1
invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_5
.end method
.method private a(Landroid/content/Intent;)Z
.registers 12
const/4 v1, 0x1
const/4 v7, -0x1
const/4 v2, 0x0
invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v0
if-eqz v0, :cond_17
iget-object v3, p0, Lcom/instagram/android/activity/MainTabActivity;->p:Landroid/os/Bundle;
const-string v4, "SAVED_LAST_HANDLED_NOTIFICATION"
invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_19
:cond_17
move v0, v2
:cond_18
:goto_18
return v0
:cond_19
iget-object v3, p0, Lcom/instagram/android/activity/MainTabActivity;->p:Landroid/os/Bundle;
const-string v4, "SAVED_LAST_HANDLED_NOTIFICATION"
invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v3, "from_notification_id"
invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
new-instance v4, Lcom/instagram/common/q/a/a;
const/4 v5, 0x0
const-string v6, "notification_clicked"
invoke-direct {v4, v5, v6}, Lcom/instagram/common/q/a/a;-><init>(Lcom/instagram/common/q/c/a;Ljava/lang/String;)V
const-string v5, "pi"
invoke-virtual {v4, v5, v3}, Lcom/instagram/common/q/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v3
invoke-interface {v3, v4}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V
invoke-static {v0}, Lcom/instagram/android/util/a;->a(Landroid/net/Uri;)Landroid/os/Bundle;
move-result-object v4
const-string v0, "MainTabActivity.INITIAL_TAB"
invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v5
if-eq v5, v7, :cond_6a
invoke-static {}, Lcom/instagram/android/activity/t;->values()[Lcom/instagram/android/activity/t;
move-result-object v6
array-length v7, v6
move v3, v2
move v0, v2
:goto_4d
if-ge v3, v7, :cond_6b
aget-object v8, v6, v3
invoke-virtual {v8}, Lcom/instagram/android/activity/t;->a()I
move-result v9
if-ne v9, v5, :cond_67
invoke-direct {p0, v8}, Lcom/instagram/android/activity/MainTabActivity;->c(Lcom/instagram/android/activity/t;)V
const-string v0, "MainTabActivity.INITIAL_TAB_ARGUMENTS"
invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
invoke-static {v0}, Lcom/instagram/android/activity/ActivityInTab;->a(Landroid/os/Bundle;)V
invoke-direct {p0, v8}, Lcom/instagram/android/activity/MainTabActivity;->b(Lcom/instagram/android/activity/t;)V
move v0, v1
:cond_67
add-int/lit8 v3, v3, 0x1
goto :goto_4d
:cond_6a
move v0, v2
:cond_6b
const/4 v3, 0x3
if-ne v5, v3, :cond_71
invoke-static {}, Lcom/instagram/i/c/g;->d()V
:cond_71
const-string v3, "MainTabActivity.EXTRA_LAUNCH_CAMERA"
invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v2
if-eqz v2, :cond_18
iput-boolean v1, p0, Lcom/instagram/android/activity/MainTabActivity;->n:Z
goto :goto_18
.end method
.method static synthetic a(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)Z
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/activity/MainTabActivity;->d(Lcom/instagram/android/activity/t;)Z
move-result v0
return v0
.end method
.method static synthetic a(Lcom/instagram/android/activity/MainTabActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/instagram/android/activity/MainTabActivity;->c:Z
return p1
.end method
.method static synthetic b(Lcom/instagram/android/activity/MainTabActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->j:Landroid/view/View;
return-object v0
.end method
.method static synthetic b(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/activity/MainTabActivity;->b(Lcom/instagram/android/activity/t;)V
return-void
.end method
.method private b(Lcom/instagram/android/activity/t;)V
.registers 5
new-instance v0, Landroid/content/Intent;
const-string v1, "MainTabActivity.BROADCAST_POP_TO_ROOT"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "MainTabActivity.EXTRA_TAB_NAME"
invoke-virtual {p1}, Lcom/instagram/android/activity/t;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/support/v4/a/e;->b(Landroid/content/Intent;)V
return-void
.end method
.method public static b()Z
.registers 2
sget-boolean v0, Lcom/instagram/android/activity/MainTabActivity;->a:Z
const/4 v1, 0x0
sput-boolean v1, Lcom/instagram/android/activity/MainTabActivity;->a:Z
return v0
.end method
.method static synthetic c(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)Lcom/instagram/android/activity/t;
.registers 2
iput-object p1, p0, Lcom/instagram/android/activity/MainTabActivity;->d:Lcom/instagram/android/activity/t;
return-object p1
.end method
.method static synthetic c(Lcom/instagram/android/activity/MainTabActivity;)Lcom/instagram/ui/widget/c/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/c/a;
return-object v0
.end method
.method private c(Lcom/instagram/android/activity/t;)V
.registers 4
iput-object p1, p0, Lcom/instagram/android/activity/MainTabActivity;->d:Lcom/instagram/android/activity/t;
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->d()Lcom/instagram/base/activity/tabactivity/IgTabHost;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/android/activity/t;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->setCurrentTabByTag(Ljava/lang/String;)V
return-void
.end method
.method static synthetic d(Lcom/instagram/android/activity/MainTabActivity;)I
.registers 2
iget v0, p0, Lcom/instagram/android/activity/MainTabActivity;->e:I
return v0
.end method
.method static synthetic d(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/activity/MainTabActivity;->c(Lcom/instagram/android/activity/t;)V
return-void
.end method
.method private d(Lcom/instagram/android/activity/t;)Z
.registers 4
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getCurrentActivity()Landroid/app/Activity;
move-result-object v0
check-cast v0, Lcom/instagram/android/activity/ActivityInTab;
if-eqz v0, :cond_18
invoke-virtual {v0}, Lcom/instagram/android/activity/ActivityInTab;->f()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/android/activity/t;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_18
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method static synthetic e(Lcom/instagram/android/activity/MainTabActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->k:Landroid/view/View;
return-object v0
.end method
.method private f()Lcom/instagram/android/activity/c;
.registers 2
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->l:Lcom/instagram/android/activity/c;
if-nez v0, :cond_b
new-instance v0, Lcom/instagram/android/activity/c;
invoke-direct {v0, p0}, Lcom/instagram/android/activity/c;-><init>(Landroid/app/Activity;)V
iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->l:Lcom/instagram/android/activity/c;
:cond_b
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->l:Lcom/instagram/android/activity/c;
return-object v0
.end method
.method static synthetic f(Lcom/instagram/android/activity/MainTabActivity;)Lcom/instagram/android/activity/t;
.registers 2
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->d:Lcom/instagram/android/activity/t;
return-object v0
.end method
.method static synthetic g(Lcom/instagram/android/activity/MainTabActivity;)Lcom/instagram/android/activity/c;
.registers 2
invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->f()Lcom/instagram/android/activity/c;
move-result-object v0
return-object v0
.end method
.method private g()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/activity/MainTabActivity;->g:Z
return-void
.end method
.method private h()Z
.registers 3
const-string v0, "android.intent.action.SEND"
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "android.intent.extra.STREAM"
invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1e
const/4 v0, 0x1
:goto_1d
return v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method
.method static synthetic h(Lcom/instagram/android/activity/MainTabActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/activity/MainTabActivity;->c:Z
return v0
.end method
.method private i()Lcom/instagram/ui/widget/c/a;
.registers 4
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/c/a;
if-nez v0, :cond_30
new-instance v0, Lcom/instagram/ui/widget/c/a;
iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity;->i:Landroid/view/View;
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->d()Lcom/instagram/base/activity/tabactivity/IgTabHost;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->getWidth()I
move-result v2
invoke-direct {v0, v1, v2}, Lcom/instagram/ui/widget/c/a;-><init>(Landroid/view/View;I)V
iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/c/a;
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/c/a;
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v1
invoke-direct {p0, v1}, Lcom/instagram/android/activity/MainTabActivity;->a(Landroid/content/res/Configuration;)I
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/c/a;->a(I)V
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/c/a;
new-instance v1, Lcom/instagram/android/activity/s;
invoke-direct {v1, p0}, Lcom/instagram/android/activity/s;-><init>(Lcom/instagram/android/activity/MainTabActivity;)V
invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/c/a;->a(Landroid/view/View$OnClickListener;)V
:cond_30
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/c/a;
return-object v0
.end method
.method public final a(I)V
.registers 2
invoke-virtual {p0, p1}, Lcom/instagram/android/activity/MainTabActivity;->b(I)V
return-void
.end method
.method public final a(II)V
.registers 4
const/16 v0, 0x2714
if-ne p1, v0, :cond_a
const/4 v0, 0x2
if-ne p2, v0, :cond_a
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->finish()V
:cond_a
return-void
.end method
.method public final a(Ljava/io/File;)V
.registers 3
const/16 v0, 0x2712
invoke-static {p0, v0, p1}, Lcom/instagram/creation/base/e;->a(Landroid/app/Activity;ILjava/io/File;)V
return-void
.end method
.method public final a(Ljava/io/File;ILjava/lang/String;)V
.registers 4
invoke-static {p0, p2, p1, p3}, Lcom/instagram/creation/photo/b/a;->a(Landroid/app/Activity;ILjava/io/File;Ljava/lang/String;)V
return-void
.end method
.method public final a_(Landroid/content/Intent;I)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/instagram/android/activity/MainTabActivity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method public final b(I)V
.registers 4
iput p1, p0, Lcom/instagram/android/activity/MainTabActivity;->f:I
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget v0, v0, Landroid/content/res/Configuration;->orientation:I
const/4 v1, 0x1
if-ne v0, v1, :cond_1f
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->e()Lcom/instagram/base/activity/tabactivity/IgTabWidget;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/c/a;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/c/a;
invoke-virtual {v0, p1}, Lcom/instagram/ui/widget/c/a;->a(I)V
:cond_1f
return-void
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/instagram/android/activity/MainTabActivity;->e:I
return v0
.end method
.method public final g_()V
.registers 4
sget-object v0, Lcom/instagram/o/a;->e:Lcom/instagram/o/a;
invoke-virtual {v0}, Lcom/instagram/o/a;->b()Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-static {}, Lcom/instagram/android/activity/MainTabActivity;->b()Z
move-result v1
if-eqz v1, :cond_25
const-string v1, "return_to"
const-string v2, "feed"
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V
invoke-static {}, Lcom/instagram/android/fragment/ct;->ao()V
sget-object v0, Lcom/instagram/android/activity/t;->a:Lcom/instagram/android/activity/t;
invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->c(Lcom/instagram/android/activity/t;)V
sget-object v0, Lcom/instagram/android/activity/t;->a:Lcom/instagram/android/activity/t;
invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->b(Lcom/instagram/android/activity/t;)V
:goto_24
return-void
:cond_25
const-string v1, "return_to"
const-string v2, "ds_inbox"
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getCurrentActivity()Landroid/app/Activity;
move-result-object v0
check-cast v0, Landroid/support/v4/app/k;
invoke-virtual {v0}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;
move-result-object v0
sget v1, Lcom/facebook/av;->layout_container_main:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v0
instance-of v0, v0, Lcom/instagram/android/directshare/c/c;
if-nez v0, :cond_48
const/4 v0, 0x1
:goto_45
iput-boolean v0, p0, Lcom/instagram/android/activity/MainTabActivity;->m:Z
goto :goto_24
:cond_48
const/4 v0, 0x0
goto :goto_45
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 5
invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->f()Lcom/instagram/android/activity/c;
move-result-object v0
invoke-virtual {v0, p1, p2, p3}, Lcom/instagram/android/activity/c;->a(IILandroid/content/Intent;)V
return-void
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/base/activity/tabactivity/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->d()Lcom/instagram/base/activity/tabactivity/IgTabHost;
move-result-object v0
if-eqz v0, :cond_1d
invoke-direct {p0, p1}, Lcom/instagram/android/activity/MainTabActivity;->a(Landroid/content/res/Configuration;)I
move-result v0
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->e()Lcom/instagram/base/activity/tabactivity/IgTabWidget;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->setVisibility(I)V
iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/c/a;
if-eqz v1, :cond_1d
iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/c/a;
invoke-virtual {v1, v0}, Lcom/instagram/ui/widget/c/a;->a(I)V
:cond_1d
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/instagram/android/activity/MainTabActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
invoke-super {p0, p1}, Lcom/instagram/base/activity/tabactivity/a;->onCreate(Landroid/os/Bundle;)V
if-eqz p1, :cond_e
const-string v0, "SAVED_STATE_BUNDLE"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->p:Landroid/os/Bundle;
:cond_e
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->p:Landroid/os/Bundle;
if-nez v0, :cond_19
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->p:Landroid/os/Bundle;
:cond_19
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
const-string v0, "android.intent.category.LAUNCHER"
invoke-virtual {v2, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_44
const-string v0, "android.intent.action.MAIN"
invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_44
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->isTaskRoot()Z
move-result v0
if-nez v0, :cond_3b
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->finish()V
:goto_3a
const-string v1, " - Lcom/instagram/android/activity/MainTabActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_3b
invoke-static {}, Lcom/instagram/j/d;->a()Lcom/instagram/j/d;
move-result-object v0
sget-object v3, Lcom/instagram/j/f;->b:Lcom/instagram/j/f;
invoke-virtual {v0, v3}, Lcom/instagram/j/d;->a(Lcom/instagram/j/f;)V
:cond_44
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
invoke-static {}, Lcom/instagram/service/a/a;->d()Z
move-result v3
invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v4
if-eqz p1, :cond_6b
const-string v0, "MainTabActivity.tookSendIntent"
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_6b
const/4 v0, 0x1
:goto_5a
iput-boolean v0, p0, Lcom/instagram/android/activity/MainTabActivity;->g:Z
invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->h()Z
move-result v0
if-eqz v0, :cond_65
invoke-direct {p0, v3, v4}, Lcom/instagram/android/activity/MainTabActivity;->a(ZLandroid/os/Bundle;)V
:cond_65
if-nez v3, :cond_6d
invoke-static {p0}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->a(Landroid/app/Activity;)V
goto :goto_3a
:cond_6b
move v0, v1
goto :goto_5a
:cond_6d
sget v0, Lcom/facebook/aw;->layout_activity_main_tabs:I
invoke-virtual {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->setContentView(I)V
invoke-static {}, Lcom/instagram/strings/StringBridge;->a()Z
move-result v0
if-eqz v0, :cond_a7
const-string v0, "failed_to_load_library_logged_in"
const-string v2, "failed_to_load_library_logged_in"
invoke-static {v0, v2}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/instagram/ui/dialog/b;
invoke-direct {v0, p0}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v2, Lcom/facebook/az;->error:I
invoke-virtual {v0, v2}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->unable_to_start:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->ok:I
new-instance v2, Lcom/instagram/android/activity/m;
invoke-direct {v2, p0}, Lcom/instagram/android/activity/m;-><init>(Lcom/instagram/android/activity/MainTabActivity;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
goto :goto_3a
:cond_a7
sget-object v0, Lcom/instagram/android/activity/t;->a:Lcom/instagram/android/activity/t;
invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/t;)Landroid/view/View;
sget-object v0, Lcom/instagram/android/activity/t;->d:Lcom/instagram/android/activity/t;
invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/t;)Landroid/view/View;
sget-object v0, Lcom/instagram/android/activity/t;->c:Lcom/instagram/android/activity/t;
invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/t;)Landroid/view/View;
sget-object v0, Lcom/instagram/android/activity/t;->b:Lcom/instagram/android/activity/t;
invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/t;)Landroid/view/View;
sget-object v0, Lcom/instagram/android/activity/t;->e:Lcom/instagram/android/activity/t;
invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/t;)Landroid/view/View;
invoke-direct {p0, v2}, Lcom/instagram/android/activity/MainTabActivity;->a(Landroid/content/Intent;)Z
move-result v0
if-nez v0, :cond_cb
sget-object v0, Lcom/instagram/android/activity/t;->a:Lcom/instagram/android/activity/t;
invoke-direct {p0, v0}, Lcom/instagram/android/activity/MainTabActivity;->c(Lcom/instagram/android/activity/t;)V
:cond_cb
invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/a/b;->e()Z
move-result v0
if-eqz v0, :cond_dc
invoke-static {}, Lcom/instagram/common/q/b/i;->a()Lcom/instagram/common/q/b/h;
move-result-object v0
invoke-interface {v0, p0}, Lcom/instagram/common/q/b/h;->a(Landroid/content/Context;)V
:cond_dc
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->d()Lcom/instagram/base/activity/tabactivity/IgTabHost;
move-result-object v0
new-instance v2, Lcom/instagram/android/activity/u;
invoke-direct {v2, p0, v1}, Lcom/instagram/android/activity/u;-><init>(Lcom/instagram/android/activity/MainTabActivity;B)V
invoke-virtual {v0, v2}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->setOnTabChangedListener(Lcom/instagram/base/activity/tabactivity/g;)V
goto/16 :goto_3a
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/instagram/android/activity/MainTabActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/c/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->h:Lcom/instagram/ui/widget/c/a;
invoke-virtual {v0}, Lcom/instagram/ui/widget/c/a;->a()V
:cond_9
invoke-super {p0}, Lcom/instagram/base/activity/tabactivity/a;->onDestroy()V
const-string v1, " - Lcom/instagram/android/activity/MainTabActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onNewIntent(Landroid/content/Intent;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/activity/MainTabActivity;->a(Landroid/content/Intent;)Z
invoke-super {p0, p1}, Lcom/instagram/base/activity/tabactivity/a;->onNewIntent(Landroid/content/Intent;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/instagram/android/activity/MainTabActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/instagram/base/activity/tabactivity/a;->onPause()V
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->o:Landroid/os/Handler;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->q:Landroid/content/BroadcastReceiver;
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/BroadcastReceiver;)V
const-string v1, " - Lcom/instagram/android/activity/MainTabActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/instagram/android/activity/MainTabActivity; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/instagram/base/activity/tabactivity/a;->onRestoreInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->b:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
const-string v0, "backTabList"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_12
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_28
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v2, p0, Lcom/instagram/android/activity/MainTabActivity;->b:Ljava/util/LinkedList;
invoke-static {v0}, Lcom/instagram/android/activity/t;->valueOf(Ljava/lang/String;)Lcom/instagram/android/activity/t;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto :goto_12
:cond_28
const-string v0, "MainTabActivity.tookSendIntent"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/instagram/android/activity/MainTabActivity;->g:Z
invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->f()Lcom/instagram/android/activity/c;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/android/activity/c;->b(Landroid/os/Bundle;)V
const-string v1, " - Lcom/instagram/android/activity/MainTabActivity; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 5
const-string v1, " + Lcom/instagram/android/activity/MainTabActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
invoke-super {p0}, Lcom/instagram/base/activity/tabactivity/a;->onResume()V
invoke-static {}, Lcom/instagram/android/c2dm/c;->a()Lcom/instagram/android/c2dm/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/c2dm/c;->e()V
new-instance v0, Lcom/instagram/registrationpush/a;
invoke-direct {v0, p0}, Lcom/instagram/registrationpush/a;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/instagram/registrationpush/a;->b()V
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
const-string v1, "MainTabActivity.BROADCAST_BACK_PUSHED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v1, "LogoutManager.BROADCAST_POST_LOGOUT"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v1, "NewsfeedStore.BROADCAST_TOAST"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v1, "NewsfeedStore.BROADCAST_NEW_PHOTOS_OF_YOU"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v1, "com.instagram.android.fragment.NewsFeedYouFragment.BROADCAST_YOU_MODE_SEEN"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v1, "SelfFragment.BROADCAST_SELF_PROFILE_SHOWN"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/activity/MainTabActivity;->q:Landroid/content/BroadcastReceiver;
invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
new-instance v0, Landroid/content/Intent;
const-string v2, "com.instagram.android.activity.BROADCAST_REFRESH_MAIN_FEED"
invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z
iget-boolean v0, p0, Lcom/instagram/android/activity/MainTabActivity;->m:Z
if-eqz v0, :cond_6a
iput-boolean v3, p0, Lcom/instagram/android/activity/MainTabActivity;->m:Z
new-instance v1, Lcom/instagram/base/a/a/a;
invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity;->getCurrentActivity()Landroid/app/Activity;
move-result-object v0
check-cast v0, Landroid/support/v4/app/k;
invoke-virtual {v0}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;
move-result-object v0
invoke-direct {v1, v0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v0, Lcom/instagram/android/directshare/c/c;
invoke-direct {v0}, Lcom/instagram/android/directshare/c/c;-><init>()V
invoke-virtual {v1, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
:cond_6a
iget-boolean v0, p0, Lcom/instagram/android/activity/MainTabActivity;->n:Z
if-eqz v0, :cond_77
iput-boolean v3, p0, Lcom/instagram/android/activity/MainTabActivity;->n:Z
invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->f()Lcom/instagram/android/activity/c;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/instagram/android/activity/c;->a(Z)V
:cond_77
invoke-static {}, Lcom/instagram/l/j;->a()Lcom/instagram/l/i;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/l/i;->a()V
const-string v0, "mainActivityResume"
invoke-static {v0}, Lcom/facebook/e/c/k;->b(Ljava/lang/String;)V
const-string v1, " - Lcom/instagram/android/activity/MainTabActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/instagram/android/activity/MainTabActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/instagram/base/activity/tabactivity/a;->onSaveInstanceState(Landroid/os/Bundle;)V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity;->b:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_e
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_22
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/activity/t;
invoke-virtual {v0}, Lcom/instagram/android/activity/t;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_e
:cond_22
const-string v0, "backTabList"
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
const-string v0, "MainTabActivity.tookSendIntent"
iget-boolean v1, p0, Lcom/instagram/android/activity/MainTabActivity;->g:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-direct {p0}, Lcom/instagram/android/activity/MainTabActivity;->f()Lcom/instagram/android/activity/c;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/android/activity/c;->a(Landroid/os/Bundle;)V
const-string v0, "SAVED_STATE_BUNDLE"
iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity;->p:Landroid/os/Bundle;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
const-string v1, " - Lcom/instagram/android/activity/MainTabActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStart()V
.registers 4
const-string v1, " + Lcom/instagram/android/activity/MainTabActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/instagram/base/activity/tabactivity/a;->onStart()V
invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;
move-result-object v0
const-class v1, Lcom/instagram/android/c2dm/a;
iget-object v2, p0, Lcom/instagram/android/activity/MainTabActivity;->r:Lcom/instagram/common/h/e;
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->a(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;
const-string v1, " - Lcom/instagram/android/activity/MainTabActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStop()V
.registers 4
const-string v1, " + Lcom/instagram/android/activity/MainTabActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;
move-result-object v0
const-class v1, Lcom/instagram/android/c2dm/a;
iget-object v2, p0, Lcom/instagram/android/activity/MainTabActivity;->r:Lcom/instagram/common/h/e;
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->b(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;
invoke-super {p0}, Lcom/instagram/base/activity/tabactivity/a;->onStop()V
const-string v1, " - Lcom/instagram/android/activity/MainTabActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method