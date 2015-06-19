.class public Lcom/spotify/mobile/android/spotlets/user/f;
.super Landroid/support/v4/app/x;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/model/l;
.implements Lcom/spotify/mobile/android/spotlets/follow/b;
.implements Lcom/spotify/mobile/android/ui/NavigationItem;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/util/aa;
.field private Y:Landroid/widget/ToggleButton;
.field private Z:Lcom/spotify/mobile/android/ui/adapter/o;
.field private aa:Lcom/spotify/mobile/android/spotlets/user/i;
.field private ab:Lcom/spotify/mobile/android/spotlets/user/d;
.field private ac:Lcom/spotify/mobile/android/ui/adapter/t;
.field private ad:Lcom/spotify/mobile/android/spotlets/user/b;
.field private ae:Ljava/lang/String;
.field private af:Ljava/lang/String;
.field private ag:Ljava/lang/String;
.field private ah:Lcom/spotify/mobile/android/util/dw;
.field private ai:Lcom/spotify/cosmos/android/Resolver;
.field private aj:Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
.field private ak:Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;
.field private al:Landroid/widget/TextView;
.field private am:Landroid/widget/TextView;
.field private an:Landroid/widget/TextView;
.field private ao:Landroid/view/View;
.field private ap:Landroid/view/View;
.field private aq:Landroid/view/View;
.field private ar:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
.field private as:Lcom/spotify/mobile/android/util/tracking/n;
.field private at:Lcom/spotify/mobile/android/ui/prettylist/c;
.field private au:Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;
.field private av:Landroid/support/v4/app/z;
.field private i:Z
.method public constructor <init>()V
.registers 5
invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;
sget-object v1, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanDownload;->b:Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanDownload;
sget-object v2, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;->b:Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;
new-instance v3, Lcom/spotify/mobile/android/spotlets/user/f$1;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/spotlets/user/f$1;-><init>(Lcom/spotify/mobile/android/spotlets/user/f;)V
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;-><init>(Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanDownload;Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;Lcom/spotify/mobile/android/ui/menus/f;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ak:Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;
new-instance v0, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;
sget-object v1, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate$CanDownload;->b:Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate$CanDownload;
new-instance v2, Lcom/spotify/mobile/android/spotlets/user/f$2;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/user/f$2;-><init>(Lcom/spotify/mobile/android/spotlets/user/f;)V
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;-><init>(Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate$CanDownload;Lcom/spotify/mobile/android/ui/menus/c;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->au:Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;
new-instance v0, Lcom/spotify/mobile/android/spotlets/user/f$6;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/user/f$6;-><init>(Lcom/spotify/mobile/android/spotlets/user/f;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->av:Landroid/support/v4/app/z;
return-void
.end method
.method private F()V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ar:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a()Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_d
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ar:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->b:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a01a0
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/user/f;->av:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
const-string v0, "hm://user-profile-view/v1/android/profile/%s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ag:Ljava/lang/String;
invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
new-instance v1, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v2
invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->get(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ai:Lcom/spotify/cosmos/android/Resolver;
new-instance v3, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;
const-class v4, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
invoke-direct {v3, p0, v1, v4}, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;-><init>(Lcom/spotify/mobile/android/spotlets/user/f;Landroid/os/Handler;Ljava/lang/Class;)V
invoke-virtual {v2, v0, v3}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
goto :goto_c
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/user/f;Lcom/spotify/mobile/android/spotlets/user/ProfileModel;)Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/f;->aj:Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
return-object p1
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/user/f;
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "user_uri"
invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "title"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/spotify/mobile/android/spotlets/user/f;
invoke-direct {v1}, Lcom/spotify/mobile/android/spotlets/user/f;-><init>()V
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/user/f;->c_(Landroid/os/Bundle;)V
return-object v1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/user/f;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ae:Ljava/lang/String;
return-object v0
.end method
.method static synthetic a(Landroid/view/View;Landroid/widget/TextView;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/user/f;->b(Landroid/view/View;Landroid/widget/TextView;I)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/user/f;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/user/f;->i:Z
return p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/user/f;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ag:Ljava/lang/String;
return-object v0
.end method
.method private static b(Landroid/view/View;Landroid/widget/TextView;I)V
.registers 4
invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
if-lez p2, :cond_e
const/4 v0, 0x1
:goto_a
invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V
return-void
:cond_e
const/4 v0, 0x0
goto :goto_a
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/user/f;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->aq:Landroid/view/View;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/user/f;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->an:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/ui/prettylist/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->at:Lcom/spotify/mobile/android/ui/prettylist/c;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/ui/adapter/o;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->Z:Lcom/spotify/mobile/android/ui/adapter/o;
return-object v0
.end method
.method static synthetic g(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/util/tracking/n;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->as:Lcom/spotify/mobile/android/util/tracking/n;
return-object v0
.end method
.method static synthetic h(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->aj:Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
return-object v0
.end method
.method static synthetic i(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/spotlets/user/d;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ab:Lcom/spotify/mobile/android/spotlets/user/d;
return-object v0
.end method
.method static synthetic j(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/spotlets/user/i;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->aa:Lcom/spotify/mobile/android/spotlets/user/i;
return-object v0
.end method
.method static synthetic k(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/spotlets/user/b;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ad:Lcom/spotify/mobile/android/spotlets/user/b;
return-object v0
.end method
.method static synthetic l(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ar:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
return-object v0
.end method
.method static synthetic m(Lcom/spotify/mobile/android/spotlets/user/f;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->i:Z
return v0
.end method
.method static synthetic n(Lcom/spotify/mobile/android/spotlets/user/f;)Landroid/widget/ToggleButton;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->Y:Landroid/widget/ToggleButton;
return-object v0
.end method
.method static synthetic o(Lcom/spotify/mobile/android/spotlets/user/f;)V
.registers 5
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0f0233
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v2
const v3, 0x7f0f0234
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
const/4 v3, 0x0
invoke-static {v0, v3, v1, v2}, Lcom/spotify/android/paste/widget/h;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/ToggleButton;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->Y:Landroid/widget/ToggleButton;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->Y:Landroid/widget/ToggleButton;
const v1, 0x7f0a0142
invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setId(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->at:Lcom/spotify/mobile/android/ui/prettylist/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f;->Y:Landroid/widget/ToggleButton;
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->Y:Landroid/widget/ToggleButton;
new-instance v1, Lcom/spotify/mobile/android/spotlets/user/f$7;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/user/f$7;-><init>(Lcom/spotify/mobile/android/spotlets/user/f;)V
invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method static synthetic p(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/ui/adapter/t;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ac:Lcom/spotify/mobile/android/ui/adapter/t;
return-object v0
.end method
.method public final D()Landroid/support/v4/app/Fragment;
.registers 1
return-object p0
.end method
.method public final E()Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;
.registers 2
sget-object v0, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->m:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;
return-object v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 12
const/4 v3, 0x3
const/4 v7, 0x1
const/4 v6, 0x0
const/4 v5, 0x0
new-instance v0, Lcom/spotify/mobile/android/spotlets/user/i;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/user/i;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->aa:Lcom/spotify/mobile/android/spotlets/user/i;
new-instance v0, Lcom/spotify/mobile/android/spotlets/user/d;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/user/d;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ab:Lcom/spotify/mobile/android/spotlets/user/d;
new-instance v0, Lcom/spotify/mobile/android/spotlets/user/b;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/user/b;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ad:Lcom/spotify/mobile/android/spotlets/user/b;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->Z:Lcom/spotify/mobile/android/ui/adapter/o;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->Z:Lcom/spotify/mobile/android/ui/adapter/o;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ad:Lcom/spotify/mobile/android/spotlets/user/b;
const v2, 0x7f0f030c
invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/spotlets/user/f;->b(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2, v3, v5}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;ILandroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->Z:Lcom/spotify/mobile/android/ui/adapter/o;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f;->aa:Lcom/spotify/mobile/android/spotlets/user/i;
const v2, 0x7f0f030e
invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/spotlets/user/f;->b(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2, v6, v5}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;ILandroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->Z:Lcom/spotify/mobile/android/ui/adapter/o;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ab:Lcom/spotify/mobile/android/spotlets/user/d;
const v2, 0x7f0f030d
invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/spotlets/user/f;->b(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2, v7, v5}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;ILandroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->Z:Lcom/spotify/mobile/android/ui/adapter/o;
new-array v1, v3, [I
fill-array-data v1, :array_1be
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->Z:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
new-instance v2, Lcom/spotify/android/paste/widget/EmptyView;
invoke-direct {v2, v1}, Lcom/spotify/android/paste/widget/EmptyView;-><init>(Landroid/content/Context;)V
invoke-virtual {v2}, Lcom/spotify/android/paste/widget/EmptyView;->b()Landroid/widget/TextView;
move-result-object v3
invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSingleLine(Z)V
invoke-virtual {v2}, Lcom/spotify/android/paste/widget/EmptyView;->b()Landroid/widget/TextView;
move-result-object v3
invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
invoke-virtual {v2}, Lcom/spotify/android/paste/widget/EmptyView;->c()Landroid/widget/TextView;
move-result-object v3
invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSingleLine(Z)V
invoke-virtual {v2}, Lcom/spotify/android/paste/widget/EmptyView;->c()Landroid/widget/TextView;
move-result-object v3
invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
const v3, 0x7f0f030a
invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V
const v3, 0x7f0f0309
invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/spotify/android/paste/widget/EmptyView;->b(Ljava/lang/CharSequence;)V
new-instance v3, Lcom/spotify/mobile/android/spotlets/user/f$8;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/spotlets/user/f$8;-><init>(Lcom/spotify/mobile/android/spotlets/user/f;)V
invoke-static {v1, v2}, Lcom/spotify/android/paste/widget/h;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
move-result-object v1
const v4, 0x7f0a0124
invoke-virtual {v1, v4}, Landroid/widget/Button;->setId(I)V
const v4, 0x7f0f0308
invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V
invoke-virtual {v1, v7}, Landroid/widget/Button;->setSingleLine(Z)V
sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v1, v4}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
invoke-virtual {v2, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/view/View;)V
invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v1, Lcom/spotify/mobile/android/ui/adapter/t;
invoke-direct {v1, v2, v6}, Lcom/spotify/mobile/android/ui/adapter/t;-><init>(Landroid/view/View;B)V
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ac:Lcom/spotify/mobile/android/ui/adapter/t;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ac:Lcom/spotify/mobile/android/ui/adapter/t;
const/4 v2, 0x2
invoke-virtual {v0, v1, v5, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_1b8
invoke-static {v1}, Lcom/spotify/mobile/android/ui/prettylist/e;->b(Landroid/app/Activity;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v0
:goto_dd
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->at:Lcom/spotify/mobile/android/ui/prettylist/c;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->at:Lcom/spotify/mobile/android/ui/prettylist/c;
const v2, 0x7f010186
invoke-static {v1, v2}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I
move-result v1
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->at:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;
move-result-object v0
const v1, 0x7f0300c1
invoke-virtual {p1, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/f;->Z:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->at:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->e()Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v2}, Lcom/spotify/mobile/android/ui/stuff/k;->d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
new-instance v2, Landroid/widget/FrameLayout;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v3, 0x1010054
invoke-static {v0, v3}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I
move-result v0
invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->at:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->j()Landroid/view/View;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/user/f;->at:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v4}, Lcom/spotify/mobile/android/ui/prettylist/c;->j()Landroid/view/View;
move-result-object v4
invoke-direct {v0, v3, p1, v4, v2}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ar:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ar:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
const v3, 0x7f0f030b
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(I)V
const v0, 0x7f0a037c
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ao:Landroid/view/View;
const v0, 0x7f0a037f
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ap:Landroid/view/View;
const v0, 0x7f0a0379
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->aq:Landroid/view/View;
const v0, 0x7f0a037d
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->al:Landroid/widget/TextView;
const v0, 0x7f0a0380
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->am:Landroid/widget/TextView;
const v0, 0x7f0a037a
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->an:Landroid/widget/TextView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->aq:Landroid/view/View;
new-instance v1, Lcom/spotify/mobile/android/spotlets/user/f$3;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/user/f$3;-><init>(Lcom/spotify/mobile/android/spotlets/user/f;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ao:Landroid/view/View;
new-instance v1, Lcom/spotify/mobile/android/spotlets/user/f$4;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/user/f$4;-><init>(Lcom/spotify/mobile/android/spotlets/user/f;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ap:Landroid/view/View;
new-instance v1, Lcom/spotify/mobile/android/spotlets/user/f$5;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/user/f$5;-><init>(Lcom/spotify/mobile/android/spotlets/user/f;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a019a
new-instance v3, Lcom/spotify/mobile/android/util/z;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-direct {v3, v4, p0}, Lcom/spotify/mobile/android/util/z;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V
invoke-virtual {v0, v1, v5, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-object v2
:cond_1b8
invoke-static {v1}, Lcom/spotify/mobile/android/ui/prettylist/e;->a(Landroid/app/Activity;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v0
goto/16 :goto_dd
:array_1be
.array-data 0x4
0x3t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const v0, 0x7f0f030f
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "user_uri"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ae:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "title"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->af:Ljava/lang/String;
new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ae:Ljava/lang/String;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->c()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ag:Ljava/lang/String;
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->D:Lcom/spotify/mobile/android/util/ea;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ae:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f;->as:Lcom/spotify/mobile/android/util/tracking/n;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f;->as:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v1, p1}, Lcom/spotify/mobile/android/util/tracking/n;->b(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ah:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ai:Lcom/spotify/cosmos/android/Resolver;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ai:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/user/f;->a(Z)V
return-void
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->a()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
const-class v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ae:Ljava/lang/String;
invoke-virtual {v0, v1, p0}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->a(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/follow/b;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->F()V
return-void
.end method
.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 10
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->a()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I
move-result v0
sub-int v0, p3, v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f;->Z:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/adapter/o;->b(I)I
move-result v0
packed-switch v0, :pswitch_data_9c
:pswitch_13
:goto_13
return-void
:pswitch_14
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;
if-nez v0, :cond_3f
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "artists-json"
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/f;->aj:Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getTopArtists()[Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ae:Ljava/lang/String;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/user/g;->f(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-static {v1, v2, v3, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/user/f;->a(Landroid/content/Intent;)V
goto :goto_13
:cond_3f
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;->getUri()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/user/f;->a(Landroid/content/Intent;)V
goto :goto_13
:pswitch_4f
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_6b
check-cast v0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->getUri()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v2, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/user/f;->a(Landroid/content/Intent;)V
goto :goto_13
:cond_6b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ae:Ljava/lang/String;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/g;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/user/f;->a(Landroid/content/Intent;)V
goto :goto_13
:pswitch_79
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;
if-eqz v0, :cond_89
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v0}, Lcom/spotify/mobile/android/spotlets/user/a;->a(Landroid/app/Activity;Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;)V
goto :goto_13
:cond_89
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ae:Ljava/lang/String;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/user/g;->g(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/user/f;->a(Landroid/content/Intent;)V
goto/16 :goto_13
:pswitch_data_9c
.packed-switch 0x0
:pswitch_14
:pswitch_4f
:pswitch_13
:pswitch_79
.end packed-switch
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/follow/a;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ao:Landroid/view/View;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f;->al:Landroid/widget/TextView;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/follow/a;->b()I
move-result v2
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/user/f;->b(Landroid/view/View;Landroid/widget/TextView;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ap:Landroid/view/View;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f;->am:Landroid/widget/TextView;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/follow/a;->c()I
move-result v2
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/user/f;->b(Landroid/view/View;Landroid/widget/TextView;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->Y:Landroid/widget/ToggleButton;
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->Y:Landroid/widget/ToggleButton;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/follow/a;->d()Z
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V
:cond_23
return-void
.end method
.method public final b(Landroid/view/Menu;)V
.registers 3
invoke-interface {p1}, Landroid/view/Menu;->clear()V
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->i:Z
if-eqz v0, :cond_e
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;Landroid/view/Menu;)V
:cond_e
return-void
.end method
.method public final bridge synthetic c()Landroid/widget/ListAdapter;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->Z:Lcom/spotify/mobile/android/ui/adapter/o;
return-object v0
.end method
.method public final c(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/x;->c(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->af:Ljava/lang/String;
if-nez v0, :cond_14
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0f030f
invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->af:Ljava/lang/String;
:cond_14
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f;->af:Ljava/lang/String;
invoke-interface {v0, p0, v1}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
return-void
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Landroid/support/v4/app/x;->d(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->as:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/os/Bundle;)V
return-void
.end method
.method public final d(Z)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ar:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Z)V
if-eqz p1, :cond_a
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/user/f;->F()V
:cond_a
return-void
.end method
.method public final g_()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ae:Ljava/lang/String;
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/user/f; onCreateContextMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
iget-object v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Lcom/spotify/mobile/android/model/b;
if-eqz v1, :cond_14
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f;->au:Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;
check-cast v0, Lcom/spotify/mobile/android/model/b;
invoke-virtual {v1, p1, v0}, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;->a(Landroid/view/ContextMenu;Lcom/spotify/mobile/android/model/b;)V
:cond_13
:goto_13
const-string v1, " - Lcom/spotify/mobile/android/spotlets/user/f; onCreateContextMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_14
instance-of v1, v0, Lcom/spotify/mobile/android/model/j;
if-eqz v1, :cond_13
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ak:Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;
check-cast v0, Lcom/spotify/mobile/android/model/j;
invoke-virtual {v1, p1, v0}, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->a(Landroid/view/ContextMenu;Lcom/spotify/mobile/android/model/j;)V
goto :goto_13
.end method
.method public final r_()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->r_()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->as:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->a()V
return-void
.end method
.method public final s_()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->s_()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->as:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->c()V
return-void
.end method
.method public final x()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->x()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ah:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V
return-void
.end method
.method public final y()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->y()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ah:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V
return-void
.end method
.method public final z()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ai:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V
const-class v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f;->ae:Ljava/lang/String;
invoke-virtual {v0, v1, p0}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->b(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/follow/b;)V
invoke-super {p0}, Landroid/support/v4/app/x;->z()V
return-void
.end method