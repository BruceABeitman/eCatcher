.class public final Lcom/spotify/mobile/android/ui/fragments/g;
.super Landroid/support/v4/app/x;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/fragments/logic/q;
.field private static final af:[Ljava/lang/String;
.field private Y:Lcom/spotify/mobile/android/ui/adapter/j;
.field private Z:Landroid/view/View;
.field private aa:Landroid/view/View;
.field private ab:Landroid/view/View;
.field private ac:Landroid/widget/TextView;
.field private ad:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;
.field private ae:Lcom/spotify/mobile/android/ui/actions/a;
.field private ag:Ljava/lang/String;
.field private ah:Landroid/support/v4/app/z;
.field private ai:Lcom/spotify/mobile/android/ui/k;
.field private i:Z
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "capping_enabled"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "total_playback_time"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "should_show_remaining_time"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "remaining_playback_time"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/g;->af:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ae:Lcom/spotify/mobile/android/ui/actions/a;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/g$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/g$2;-><init>(Lcom/spotify/mobile/android/ui/fragments/g;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ah:Landroid/support/v4/app/z;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/g$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/g$3;-><init>(Lcom/spotify/mobile/android/ui/fragments/g;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ai:Lcom/spotify/mobile/android/ui/k;
return-void
.end method
.method static synthetic H()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/g;->af:[Ljava/lang/String;
return-object v0
.end method
.method private I()V
.registers 6
const/16 v2, 0x8
const/4 v1, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ac:Landroid/widget/TextView;
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->i:Z
if-eqz v0, :cond_32
move v0, v1
:goto_a
invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ad:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->a()Z
move-result v0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/g;->Z:Landroid/view/View;
iget-boolean v4, p0, Lcom/spotify/mobile/android/ui/fragments/g;->i:Z
if-nez v4, :cond_1b
if-eqz v0, :cond_34
:cond_1b
move v0, v1
:goto_1c
invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-eqz v0, :cond_36
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ab:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->aa:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
:goto_31
return-void
:cond_32
move v0, v2
goto :goto_a
:cond_34
move v0, v2
goto :goto_1c
:cond_36
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->aa:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ab:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
goto :goto_31
.end method
.method private J()V
.registers 3
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
if-eqz v0, :cond_1f
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->d()Lcom/spotify/mobile/android/ui/f;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/f;->b()Landroid/support/v4/app/Fragment;
move-result-object v0
instance-of v1, v0, Lcom/spotify/mobile/android/ui/NavigationItem;
if-eqz v1, :cond_20
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/g;->Y:Lcom/spotify/mobile/android/ui/adapter/j;
check-cast v0, Lcom/spotify/mobile/android/ui/NavigationItem;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/NavigationItem;->E()Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/adapter/j;->a(Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;)V
:cond_1f
:goto_1f
return-void
:cond_20
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->Y:Lcom/spotify/mobile/android/ui/adapter/j;
sget-object v1, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->a:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/j;->a(Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;)V
goto :goto_1f
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/g;)V
.registers 6
const/4 v4, 0x1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ae:Lcom/spotify/mobile/android/ui/actions/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->B:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const-class v2, Lcom/spotify/music/MainActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "extra_manual_login"
invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "extra_anonymous_signup"
invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v0}, Lcom/spotify/mobile/android/service/LoginActivity;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/g;->a(Landroid/content/Intent;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/g;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/g;->i:Z
return p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/g;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->i:Z
return v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/g;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ac:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/fragments/g;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->I()V
return-void
.end method
.method static synthetic e(Lcom/spotify/mobile/android/ui/fragments/g;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->J()V
return-void
.end method
.method public final D()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->Y:Lcom/spotify/mobile/android/ui/adapter/j;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/j;->notifyDataSetChanged()V
return-void
.end method
.method public final E()V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->Y:Lcom/spotify/mobile/android/ui/adapter/j;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/j;->notifyDataSetChanged()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ae:Lcom/spotify/mobile/android/ui/actions/a;
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;
new-instance v2, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->f:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
invoke-static {v1, v0, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
const-string v0, "input_method"
invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a015b
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ah:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->b(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-void
.end method
.method public final F()V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ae:Lcom/spotify/mobile/android/ui/actions/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;
new-instance v2, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->g:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
return-void
.end method
.method public final G()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->I()V
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 8
const/4 v2, 0x0
const v0, 0x7f03009d
invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/ActionBarManager;->b(Landroid/content/Context;)I
move-result v0
invoke-virtual {v1, v2, v0, v2, v2}, Landroid/view/View;->setPadding(IIII)V
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/j;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v0, v2}, Lcom/spotify/mobile/android/ui/adapter/j;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->Y:Lcom/spotify/mobile/android/ui/adapter/j;
if-eqz p3, :cond_93
const-string v0, "key_current_user"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_93
const-string v0, "key_current_user"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ag:Ljava/lang/String;
:goto_30
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->Y:Lcom/spotify/mobile/android/ui/adapter/j;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ag:Ljava/lang/String;
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/adapter/j;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->Y:Lcom/spotify/mobile/android/ui/adapter/j;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/g;->a(Landroid/widget/ListAdapter;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->J()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->d()Lcom/spotify/mobile/android/ui/f;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ai:Lcom/spotify/mobile/android/ui/k;
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/f;->a(Lcom/spotify/mobile/android/ui/k;)V
const v0, 0x7f0a0324
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->Z:Landroid/view/View;
const v0, 0x7f0a0320
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->aa:Landroid/view/View;
const v0, 0x7f0a0321
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ab:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->Z:Landroid/view/View;
const v2, 0x7f0a0325
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ac:Landroid/widget/TextView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->Z:Landroid/view/View;
const v2, 0x7f0a0326
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ad:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ad:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;
const/4 v2, 0x2
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->a(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ad:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->h:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
return-object v1
:cond_93
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/service/session/e;->a(Landroid/app/Activity;)Lcom/spotify/mobile/android/service/session/e;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->h()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ag:Ljava/lang/String;
goto :goto_30
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a015b
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ah:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
invoke-static {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/p;->a(Lcom/spotify/mobile/android/ui/fragments/logic/q;)V
return-void
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 7
const v3, 0x7f0a0320
invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->m()Landroid/support/v4/app/r;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/support/v4/app/r;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v0
if-nez v0, :cond_25
invoke-static {}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->a()Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->m()Landroid/support/v4/app/r;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;
move-result-object v1
const-string v2, "tag_profile_panel_fragment"
invoke-virtual {v1, v3, v0, v2}, Landroid/support/v4/app/w;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/w;->b()I
:cond_25
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ab:Landroid/view/View;
const v1, 0x7f0a0322
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/ui/stuff/k;->d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ab:Landroid/view/View;
new-instance v1, Lcom/spotify/mobile/android/ui/fragments/g$1;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/g$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/g;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->I()V
return-void
.end method
.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 9
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->h:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
const-string v1, "target"
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/g;->Y:Lcom/spotify/mobile/android/ui/adapter/j;
invoke-virtual {v2, p3}, Lcom/spotify/mobile/android/ui/adapter/j;->b(I)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v2
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ae:Lcom/spotify/mobile/android/ui/actions/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->Y:Lcom/spotify/mobile/android/ui/adapter/j;
invoke-virtual {v0, p3}, Lcom/spotify/mobile/android/ui/adapter/j;->a(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v0}, Lcom/spotify/music/MainActivity;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/g;->a(Landroid/content/Intent;)V
return-void
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/x;->d(Landroid/os/Bundle;)V
const-string v0, "key_current_user"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ag:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final z()V
.registers 3
invoke-super {p0}, Landroid/support/v4/app/x;->z()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->d()Lcom/spotify/mobile/android/ui/f;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/g;->ai:Lcom/spotify/mobile/android/ui/k;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/f;->b(Lcom/spotify/mobile/android/ui/k;)V
invoke-static {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/p;->b(Lcom/spotify/mobile/android/ui/fragments/logic/q;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g;->Y:Lcom/spotify/mobile/android/ui/adapter/j;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/j;->a()V
return-void
.end method