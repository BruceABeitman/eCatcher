.class public final Lcom/instagram/i/c/g;
.super Lcom/instagram/base/a/b;
.source "NewsfeedFragment.java"
.implements Lcom/instagram/a/b;
.implements Lcom/instagram/base/a/e;
.implements Lcom/instagram/i/a/a/a;
.field public static final a:Ljava/lang/Integer;
.field public static final b:Ljava/lang/Integer;
.field private static c:Z
.field private aa:Lcom/instagram/ui/widget/bannertoast/BannerToast;
.field private final ab:Landroid/content/BroadcastReceiver;
.field private final ac:Lcom/instagram/common/h/e;
.field private d:Lcom/instagram/i/c/n;
.field private e:Lcom/instagram/i/c/m;
.field private f:Landroid/content/IntentFilter;
.field private g:Lcom/instagram/user/c/a;
.field private h:Lcom/instagram/feed/i/a;
.field private i:I
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
sput-object v0, Lcom/instagram/i/c/g;->a:Ljava/lang/Integer;
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
sput-object v0, Lcom/instagram/i/c/g;->b:Ljava/lang/Integer;
sput-boolean v1, Lcom/instagram/i/c/g;->c:Z
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V
sget-object v0, Lcom/instagram/i/c/g;->b:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iput v0, p0, Lcom/instagram/i/c/g;->i:I
new-instance v0, Lcom/instagram/i/c/h;
invoke-direct {v0, p0}, Lcom/instagram/i/c/h;-><init>(Lcom/instagram/i/c/g;)V
iput-object v0, p0, Lcom/instagram/i/c/g;->ab:Landroid/content/BroadcastReceiver;
new-instance v0, Lcom/instagram/i/c/i;
invoke-direct {v0, p0}, Lcom/instagram/i/c/i;-><init>(Lcom/instagram/i/c/g;)V
iput-object v0, p0, Lcom/instagram/i/c/g;->ac:Lcom/instagram/common/h/e;
return-void
.end method
.method private U()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/i/c/g;->c()I
move-result v0
sget-object v1, Lcom/instagram/i/c/g;->b:Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
if-ne v0, v1, :cond_41
iget-object v0, p0, Lcom/instagram/i/c/g;->g:Lcom/instagram/user/c/a;
invoke-virtual {v0}, Lcom/instagram/user/c/a;->p()Ljava/lang/Integer;
move-result-object v0
if-eqz v0, :cond_3d
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-nez v0, :cond_3d
iget-object v0, p0, Lcom/instagram/i/c/g;->h:Lcom/instagram/feed/i/a;
if-nez v0, :cond_3c
invoke-virtual {p0}, Lcom/instagram/i/c/g;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_3c
new-instance v1, Lcom/instagram/feed/i/a;
invoke-virtual {p0}, Lcom/instagram/i/c/g;->D()Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-direct {v1, v0}, Lcom/instagram/feed/i/a;-><init>(Landroid/view/ViewGroup;)V
iput-object v1, p0, Lcom/instagram/i/c/g;->h:Lcom/instagram/feed/i/a;
invoke-virtual {p0}, Lcom/instagram/i/c/g;->u()Z
move-result v0
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/instagram/i/c/g;->h:Lcom/instagram/feed/i/a;
invoke-virtual {v0}, Lcom/instagram/feed/i/a;->a()V
:goto_3c
:cond_3c
return-void
:cond_3d
invoke-direct {p0}, Lcom/instagram/i/c/g;->W()V
goto :goto_3c
:cond_41
invoke-direct {p0}, Lcom/instagram/i/c/g;->W()V
goto :goto_3c
.end method
.method private W()V
.registers 2
iget-object v0, p0, Lcom/instagram/i/c/g;->h:Lcom/instagram/feed/i/a;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/i/c/g;->h:Lcom/instagram/feed/i/a;
invoke-virtual {v0}, Lcom/instagram/feed/i/a;->b()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/i/c/g;->h:Lcom/instagram/feed/i/a;
:cond_c
return-void
.end method
.method private X()V
.registers 2
invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/instagram/b/c/a;->a(Lcom/instagram/common/analytics/e;)V
return-void
.end method
.method private Y()Lcom/instagram/i/c/l;
.registers 3
iget-object v0, p0, Lcom/instagram/i/c/g;->e:Lcom/instagram/i/c/m;
invoke-virtual {p0}, Lcom/instagram/i/c/g;->c()I
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/i/c/m;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/instagram/i/c/l;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/i/c/g;I)I
.registers 2
iput p1, p0, Lcom/instagram/i/c/g;->i:I
return p1
.end method
.method static synthetic a(Lcom/instagram/i/c/g;)Lcom/instagram/i/c/n;
.registers 2
iget-object v0, p0, Lcom/instagram/i/c/g;->d:Lcom/instagram/i/c/n;
return-object v0
.end method
.method private a(I)V
.registers 5
invoke-virtual {p0}, Lcom/instagram/i/c/g;->c()I
move-result v0
if-eq p1, v0, :cond_1f
invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/i/c/g;->p()Landroid/support/v4/app/s;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I
move-result v2
sget-object v0, Lcom/instagram/i/c/g;->b:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-ne p1, v0, :cond_20
const-string v0, "newsfeed_you"
:goto_1c
invoke-virtual {v1, p0, v2, v0}, Lcom/instagram/b/c/a;->a(Lcom/instagram/common/analytics/e;ILjava/lang/String;)V
:cond_1f
return-void
:cond_20
const-string v0, "newsfeed_following"
goto :goto_1c
.end method
.method private a(Landroid/view/View;)V
.registers 3
new-instance v0, Lcom/instagram/i/c/n;
invoke-direct {v0, p0, p1}, Lcom/instagram/i/c/n;-><init>(Lcom/instagram/i/c/g;Landroid/view/View;)V
iput-object v0, p0, Lcom/instagram/i/c/g;->d:Lcom/instagram/i/c/n;
iget-object v0, p0, Lcom/instagram/i/c/g;->d:Lcom/instagram/i/c/n;
invoke-virtual {v0}, Lcom/instagram/i/c/n;->a()V
iget-object v0, p0, Lcom/instagram/i/c/g;->d:Lcom/instagram/i/c/n;
invoke-virtual {v0}, Lcom/instagram/i/c/n;->c()V
return-void
.end method
.method static synthetic b(Lcom/instagram/i/c/g;)Lcom/instagram/i/c/l;
.registers 2
invoke-direct {p0}, Lcom/instagram/i/c/g;->Y()Lcom/instagram/i/c/l;
move-result-object v0
return-object v0
.end method
.method private b(Landroid/view/View;)V
.registers 4
sget v0, Lcom/facebook/av;->newsfeed_pager:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;
iget-object v1, p0, Lcom/instagram/i/c/g;->e:Lcom/instagram/i/c/m;
invoke-virtual {v1, v0}, Lcom/instagram/i/c/m;->a(Landroid/view/ViewGroup;)V
iget-object v1, p0, Lcom/instagram/i/c/g;->e:Lcom/instagram/i/c/m;
invoke-virtual {v0, v1}, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->setAdapter(Landroid/support/v4/view/ae;)V
new-instance v1, Lcom/instagram/i/c/j;
invoke-direct {v1, p0}, Lcom/instagram/i/c/j;-><init>(Lcom/instagram/i/c/g;)V
invoke-virtual {v0, v1}, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->setOnPageChangeListener(Landroid/support/v4/view/bm;)V
return-void
.end method
.method static synthetic b(Lcom/instagram/i/c/g;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/i/c/g;->a(I)V
return-void
.end method
.method private b(Lcom/instagram/user/c/a;)V
.registers 9
const/4 v5, 0x1
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;
move-result-object v3
const/4 v0, 0x0
sget-object v4, Lcom/instagram/i/c/k;->a:[I
invoke-virtual {v3}, Lcom/instagram/user/c/c;->ordinal()I
move-result v3
aget v3, v4, v3
packed-switch v3, :pswitch_data_7a
move v6, v1
move-object v1, v0
move v0, v6
:goto_19
if-eqz v1, :cond_33
iget-object v2, p0, Lcom/instagram/i/c/g;->aa:Lcom/instagram/ui/widget/bannertoast/BannerToast;
if-eqz v2, :cond_33
iget-object v2, p0, Lcom/instagram/i/c/g;->aa:Lcom/instagram/ui/widget/bannertoast/BannerToast;
invoke-virtual {v2, v0}, Lcom/instagram/ui/widget/bannertoast/BannerToast;->setBackgroundResource(I)V
iget-object v0, p0, Lcom/instagram/i/c/g;->aa:Lcom/instagram/ui/widget/bannertoast/BannerToast;
invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/bannertoast/BannerToast;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/instagram/i/c/g;->aa:Lcom/instagram/ui/widget/bannertoast/BannerToast;
invoke-virtual {v0}, Lcom/instagram/ui/widget/bannertoast/BannerToast;->bringToFront()V
iget-object v0, p0, Lcom/instagram/i/c/g;->aa:Lcom/instagram/ui/widget/bannertoast/BannerToast;
invoke-virtual {v0}, Lcom/instagram/ui/widget/bannertoast/BannerToast;->a()V
:cond_33
return-void
:pswitch_34
sget v0, Lcom/facebook/as;->red_medium:I
invoke-virtual {p1}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/e;
move-result-object v3
sget-object v4, Lcom/instagram/user/c/e;->c:Lcom/instagram/user/c/e;
if-ne v3, v4, :cond_49
invoke-virtual {p0}, Lcom/instagram/i/c/g;->n()Landroid/content/Context;
move-result-object v1
sget v2, Lcom/facebook/az;->requested_cancel_confirmation_toast:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
goto :goto_19
:cond_49
invoke-virtual {p0}, Lcom/instagram/i/c/g;->n()Landroid/content/Context;
move-result-object v3
sget v4, Lcom/facebook/az;->unfollowing_confirmation_toast:I
new-array v5, v5, [Ljava/lang/Object;
aput-object v2, v5, v1
invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
goto :goto_19
:pswitch_58
sget v0, Lcom/facebook/as;->green_medium:I
invoke-virtual {p0}, Lcom/instagram/i/c/g;->n()Landroid/content/Context;
move-result-object v3
sget v4, Lcom/facebook/az;->following_confirmation_toast:I
new-array v5, v5, [Ljava/lang/Object;
aput-object v2, v5, v1
invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
goto :goto_19
:pswitch_69
sget v0, Lcom/facebook/as;->grey_light:I
invoke-virtual {p0}, Lcom/instagram/i/c/g;->n()Landroid/content/Context;
move-result-object v3
sget v4, Lcom/facebook/az;->requested_following_confirmation_toast:I
new-array v5, v5, [Ljava/lang/Object;
aput-object v2, v5, v1
invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
goto :goto_19
:pswitch_data_7a
.packed-switch 0x1
:pswitch_34
:pswitch_58
:pswitch_69
.end packed-switch
.end method
.method static synthetic c(Lcom/instagram/i/c/g;)Lcom/instagram/user/c/a;
.registers 2
iget-object v0, p0, Lcom/instagram/i/c/g;->g:Lcom/instagram/user/c/a;
return-object v0
.end method
.method public static d()V
.registers 1
const/4 v0, 0x1
sput-boolean v0, Lcom/instagram/i/c/g;->c:Z
return-void
.end method
.method static synthetic d(Lcom/instagram/i/c/g;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/i/c/g;->U()V
return-void
.end method
.method static synthetic e(Lcom/instagram/i/c/g;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/i/c/g;->X()V
return-void
.end method
.method public final E()V
.registers 4
invoke-super {p0}, Lcom/instagram/base/a/b;->E()V
invoke-virtual {p0}, Lcom/instagram/i/c/g;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/i/c/g;->ab:Landroid/content/BroadcastReceiver;
iget-object v2, p0, Lcom/instagram/i/c/g;->f:Landroid/content/IntentFilter;
invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
sget-boolean v0, Lcom/instagram/i/c/g;->c:Z
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/instagram/i/c/g;->d:Lcom/instagram/i/c/n;
sget-object v1, Lcom/instagram/i/c/g;->b:Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/i/c/n;->a(I)V
const/4 v0, 0x0
sput-boolean v0, Lcom/instagram/i/c/g;->c:Z
:cond_24
iget-object v0, p0, Lcom/instagram/i/c/g;->h:Lcom/instagram/feed/i/a;
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/instagram/i/c/g;->h:Lcom/instagram/feed/i/a;
invoke-virtual {v0}, Lcom/instagram/feed/i/a;->a()V
:cond_2d
return-void
.end method
.method public final F()V
.registers 3
invoke-super {p0}, Lcom/instagram/base/a/b;->F()V
invoke-virtual {p0}, Lcom/instagram/i/c/g;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/i/c/g;->ab:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V
return-void
.end method
.method public final V()V
.registers 2
invoke-direct {p0}, Lcom/instagram/i/c/g;->Y()Lcom/instagram/i/c/l;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/i/c/l;->V()V
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
sget v0, Lcom/facebook/aw;->fragment_newsfeed:I
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;
move-result-object v0
iput-object v0, p0, Lcom/instagram/i/c/g;->g:Lcom/instagram/user/c/a;
new-instance v0, Lcom/instagram/i/c/m;
invoke-virtual {p0}, Lcom/instagram/i/c/g;->q()Landroid/support/v4/app/s;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/instagram/i/c/m;-><init>(Lcom/instagram/i/c/g;Landroid/support/v4/app/s;)V
iput-object v0, p0, Lcom/instagram/i/c/g;->e:Lcom/instagram/i/c/m;
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
iput-object v0, p0, Lcom/instagram/i/c/g;->f:Landroid/content/IntentFilter;
iget-object v0, p0, Lcom/instagram/i/c/g;->f:Landroid/content/IntentFilter;
const-string v1, "ActionBarService.action_bar_refresh_click"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/i/c/g;->f:Landroid/content/IntentFilter;
const-string v1, "ActionBarService.action_bar_clicked"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/i/c/g;->f:Landroid/content/IntentFilter;
const-string v1, "NewsfeedFragment.BROADCAST_SWITCH_TO_MODE_YOU"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
return-void
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V
sget v0, Lcom/facebook/av;->newsfeed_banner_toast:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/ui/widget/bannertoast/BannerToast;
iput-object v0, p0, Lcom/instagram/i/c/g;->aa:Lcom/instagram/ui/widget/bannertoast/BannerToast;
invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;
move-result-object v0
const-class v1, Lcom/instagram/user/c/f;
iget-object v2, p0, Lcom/instagram/i/c/g;->ac:Lcom/instagram/common/h/e;
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->a(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;
invoke-direct {p0}, Lcom/instagram/i/c/g;->U()V
invoke-direct {p0, p1}, Lcom/instagram/i/c/g;->a(Landroid/view/View;)V
invoke-direct {p0, p1}, Lcom/instagram/i/c/g;->b(Landroid/view/View;)V
if-eqz p2, :cond_33
const-string v0, "NewsfeedFragment.EXTRA_CURRENT_MODE"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_33
const-string v0, "NewsfeedFragment.EXTRA_CURRENT_MODE"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/instagram/i/c/g;->i:I
:cond_33
iget-object v0, p0, Lcom/instagram/i/c/g;->d:Lcom/instagram/i/c/n;
invoke-virtual {p0}, Lcom/instagram/i/c/g;->c()I
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/i/c/n;->a(I)V
return-void
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 3
sget v0, Lcom/facebook/az;->news:I
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V
const/4 v0, 0x1
invoke-interface {p1, v0}, Lcom/instagram/a/a;->b(Z)V
invoke-direct {p0}, Lcom/instagram/i/c/g;->Y()Lcom/instagram/i/c/l;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/i/c/l;->U()Z
move-result v0
invoke-interface {p1, v0}, Lcom/instagram/a/a;->c(Z)V
return-void
.end method
.method final a(Lcom/instagram/i/c/l;)V
.registers 4
invoke-virtual {p0}, Lcom/instagram/i/c/g;->u()Z
move-result v0
if-eqz v0, :cond_17
invoke-direct {p0}, Lcom/instagram/i/c/g;->Y()Lcom/instagram/i/c/l;
move-result-object v0
if-ne p1, v0, :cond_17
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-interface {p1}, Lcom/instagram/i/c/l;->U()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
:cond_17
return-void
.end method
.method public final a(Lcom/instagram/user/c/a;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/i/c/g;->b(Lcom/instagram/user/c/a;)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/i/c/g;->p()Landroid/support/v4/app/s;
move-result-object v1
invoke-interface {v0, v1, p1}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method
.method public final b()V
.registers 3
new-instance v0, Lcom/instagram/base/a/a/a;
invoke-virtual {p0}, Lcom/instagram/i/c/g;->p()Landroid/support/v4/app/s;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v1, Lcom/instagram/i/c/a;
invoke-direct {v1}, Lcom/instagram/i/c/a;-><init>()V
invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method
.method final b(Lcom/instagram/i/c/l;)V
.registers 5
invoke-virtual {p0}, Lcom/instagram/i/c/g;->u()Z
move-result v0
if-eqz v0, :cond_1a
invoke-direct {p0}, Lcom/instagram/i/c/g;->Y()Lcom/instagram/i/c/l;
move-result-object v0
if-ne p1, v0, :cond_1a
invoke-virtual {p0}, Lcom/instagram/i/c/g;->l()Landroid/support/v4/app/k;
move-result-object v0
sget v1, Lcom/facebook/az;->could_not_refresh_feed:I
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:cond_1a
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/instagram/i/c/g;->c()I
move-result v1
sget-object v2, Lcom/instagram/i/c/g;->b:Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
if-ne v1, v2, :cond_27
invoke-static {}, Lcom/instagram/i/e/a;->a()Lcom/instagram/i/e/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/i/e/a;->f()Ljava/util/HashSet;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_27
const/4 v0, 0x1
invoke-static {}, Lcom/instagram/i/e/a;->a()Lcom/instagram/i/e/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/i/e/a;->f()Ljava/util/HashSet;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
:cond_27
invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/i/c/g;->p()Landroid/support/v4/app/s;
move-result-object v2
invoke-interface {v1, v2, p1, v0}, Lcom/instagram/n/f/e;->b(Landroid/support/v4/app/s;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/instagram/i/c/g;->i:I
return v0
.end method
.method public final c(Ljava/lang/String;)V
.registers 4
invoke-static {}, Lcom/instagram/n/f/b;->a()Lcom/instagram/n/f/a;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/i/c/g;->p()Landroid/support/v4/app/s;
move-result-object v1
invoke-interface {v0, v1, p1}, Lcom/instagram/n/f/a;->a(Landroid/support/v4/app/s;Ljava/lang/String;)V
return-void
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 2
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->d(Landroid/os/Bundle;)V
return-void
.end method
.method public final d(Ljava/lang/String;)V
.registers 4
invoke-static {}, Lcom/instagram/n/f/d;->a()Lcom/instagram/n/f/c;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/i/c/g;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-interface {v0, v1, p1}, Lcom/instagram/n/f/c;->a(Landroid/app/Activity;Ljava/lang/String;)V
return-void
.end method
.method public final e(Landroid/os/Bundle;)V
.registers 4
const-string v0, "NewsfeedFragment.EXTRA_CURRENT_MODE"
invoke-virtual {p0}, Lcom/instagram/i/c/g;->c()I
move-result v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->e(Landroid/os/Bundle;)V
return-void
.end method
.method public final e(Ljava/lang/String;)V
.registers 4
invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/i/c/g;->p()Landroid/support/v4/app/s;
move-result-object v1
invoke-interface {v0, v1, p1}, Lcom/instagram/n/f/e;->d(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method
.method public final f(Ljava/lang/String;)V
.registers 4
invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/i/c/g;->p()Landroid/support/v4/app/s;
move-result-object v1
invoke-interface {v0, v1, p1}, Lcom/instagram/n/f/e;->b(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "newsfeed"
return-object v0
.end method
.method public final l_()V
.registers 5
const/4 v3, 0x0
iput-object v3, p0, Lcom/instagram/i/c/g;->h:Lcom/instagram/feed/i/a;
iget-object v0, p0, Lcom/instagram/i/c/g;->e:Lcom/instagram/i/c/m;
invoke-virtual {v0, v3}, Lcom/instagram/i/c/m;->a(Landroid/view/ViewGroup;)V
invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;
move-result-object v0
const-class v1, Lcom/instagram/user/c/f;
iget-object v2, p0, Lcom/instagram/i/c/g;->ac:Lcom/instagram/common/h/e;
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->b(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;
iget-object v0, p0, Lcom/instagram/i/c/g;->d:Lcom/instagram/i/c/n;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/instagram/i/c/g;->d:Lcom/instagram/i/c/n;
invoke-virtual {v0}, Lcom/instagram/i/c/n;->b()V
iput-object v3, p0, Lcom/instagram/i/c/g;->d:Lcom/instagram/i/c/n;
:cond_1e
invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V
return-void
.end method