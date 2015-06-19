.class public final Lcom/spotify/mobile/android/spotlets/follow/c;
.super Landroid/support/v4/app/x;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/util/aa;
.field private Y:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
.field private Z:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
.field private aa:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
.field private ab:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
.field private ac:Ljava/lang/Integer;
.field private ad:Lcom/spotify/mobile/android/ui/adapter/o;
.field private ae:Ljava/lang/String;
.field private af:Ljava/lang/String;
.field private ag:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
.field private ah:Lcom/spotify/mobile/android/util/z;
.field private ai:Landroid/view/ViewGroup;
.field private aj:Landroid/support/v4/app/z;
.field private i:Lcom/spotify/cosmos/android/Resolver;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V
const/4 v0, 0x3
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ac:Ljava/lang/Integer;
new-instance v0, Lcom/spotify/mobile/android/spotlets/follow/c$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/follow/c$1;-><init>(Lcom/spotify/mobile/android/spotlets/follow/c;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->aj:Landroid/support/v4/app/z;
return-void
.end method
.method private E()V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ag:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a()Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_d
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ag:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->b:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V
sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v1, "hm://follow-suggestions-view/v1/android/suggestions/%s/people"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ae:Ljava/lang/String;
invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
new-instance v1, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v2
invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->get(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->i:Lcom/spotify/cosmos/android/Resolver;
new-instance v3, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewFragment$2;
const-class v4, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewModel;
invoke-direct {v3, p0, v1, v4}, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewFragment$2;-><init>(Lcom/spotify/mobile/android/spotlets/follow/c;Landroid/os/Handler;Ljava/lang/Class;)V
invoke-virtual {v2, v0, v3}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
goto :goto_c
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/follow/c;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ae:Ljava/lang/String;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/follow/c;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ae:Ljava/lang/String;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/follow/c;[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;)[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->Y:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
return-object p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/follow/c;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/follow/c;->E()V
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/follow/c;[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;)[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->Z:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
return-object p1
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/follow/c;)V
.registers 7
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/follow/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ad:Lcom/spotify/mobile/android/ui/adapter/o;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->Y:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
if-eqz v0, :cond_4b
new-instance v0, Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/follow/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ai:Landroid/view/ViewGroup;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ai:Landroid/view/ViewGroup;
check-cast v0, Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/follow/c;->k()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0f021c
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;
move-result-object v0
const v1, 0x7f020189
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ai:Landroid/view/ViewGroup;
new-instance v1, Lcom/spotify/mobile/android/spotlets/follow/c$2;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/follow/c$2;-><init>(Lcom/spotify/mobile/android/spotlets/follow/c;)V
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/follow/c;->a()Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ai:Landroid/view/ViewGroup;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V
:cond_4b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->Z:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
if-eqz v0, :cond_ba
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->Z:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
array-length v0, v0
if-le v0, v5, :cond_ba
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->Z:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ac:Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->Z:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
array-length v2, v2
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v1
invoke-static {v0, v4, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->aa:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
new-instance v0, Lcom/spotify/mobile/android/spotlets/user/h;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/follow/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->aa:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ae:Ljava/lang/String;
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/user/h;-><init>(Landroid/content/Context;[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;Ljava/lang/String;)V
new-instance v1, Lcom/spotify/mobile/android/spotlets/common/adapter/g;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/follow/c;->a()Landroid/widget/ListView;
move-result-object v2
invoke-direct {v1, v2}, Lcom/spotify/mobile/android/spotlets/common/adapter/g;-><init>(Landroid/widget/ListView;)V
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->a(Landroid/widget/ListAdapter;)Lcom/spotify/mobile/android/spotlets/common/adapter/g;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->Z:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
array-length v0, v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ac:Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
if-le v0, v2, :cond_ba
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/follow/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const/4 v2, 0x0
invoke-static {v0, v2}, Lcom/spotify/android/paste/widget/h;->k(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/follow/c;->k()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0f021f
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
new-instance v2, Lcom/spotify/mobile/android/spotlets/follow/c$3;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/follow/c$3;-><init>(Lcom/spotify/mobile/android/spotlets/follow/c;)V
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ad:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/common/adapter/g;->b()Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
move-result-object v1
const v3, 0x7f0f0231
invoke-virtual {v2, v1, v3, v4, v0}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;IILandroid/view/View;)V
:cond_ba
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ab:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
if-eqz v0, :cond_d3
new-instance v0, Lcom/spotify/mobile/android/spotlets/user/h;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/follow/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ab:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ae:Ljava/lang/String;
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/user/h;-><init>(Landroid/content/Context;[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;Ljava/lang/String;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ad:Lcom/spotify/mobile/android/ui/adapter/o;
const v2, 0x7f0f0220
invoke-virtual {v1, v0, v2, v5}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;II)V
:cond_d3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ad:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/follow/c;->a(Landroid/widget/ListAdapter;)V
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/follow/c;[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;)[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ab:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
return-object p1
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/follow/c;)Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ag:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/spotlets/follow/c;)V
.registers 4
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/follow/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const-string v1, "spotify:follow:artists"
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/follow/c;->a(Landroid/content/Intent;)V
return-void
.end method
.method public final D()Landroid/support/v4/app/Fragment;
.registers 1
return-object p0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 8
const v0, 0x7f030088
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
const v1, 0x102000a
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
new-instance v2, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/follow/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-direct {v2, v3, p1, v1, v0}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)V
iput-object v2, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ag:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ag:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
const v2, 0x7f0f021d
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(I)V
return-object v0
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->af:Ljava/lang/String;
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/follow/c;->k()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0f021e
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->af:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/follow/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->i:Lcom/spotify/cosmos/android/Resolver;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->i:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V
return-void
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 7
const/4 v3, 0x0
invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/follow/c;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a01a0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->aj:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
new-instance v0, Lcom/spotify/mobile/android/util/z;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/follow/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/z;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ah:Lcom/spotify/mobile/android/util/z;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/follow/c;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a019a
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ah:Lcom/spotify/mobile/android/util/z;
invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-void
.end method
.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ai:Landroid/view/ViewGroup;
if-eqz v0, :cond_b
if-nez p3, :cond_28
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ai:Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->performClick()Z
:goto_b
:cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ad:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v0, p3}, Lcom/spotify/mobile/android/ui/adapter/o;->getItem(I)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
if-eqz v1, :cond_27
check-cast v0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getUri()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/follow/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const/4 v2, 0x0
invoke-static {v1, v0, v2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/follow/c;->a(Landroid/content/Intent;)V
:cond_27
return-void
:cond_28
add-int/lit8 p3, p3, -0x1
goto :goto_b
.end method
.method public final d(Z)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ag:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Z)V
if-eqz p1, :cond_e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->ae:Ljava/lang/String;
if-eqz v0, :cond_e
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/follow/c;->E()V
:cond_e
return-void
.end method
.method public final r_()V
.registers 3
invoke-super {p0}, Landroid/support/v4/app/x;->r_()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/follow/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->af:Ljava/lang/String;
invoke-interface {v0, p0, v1}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
return-void
.end method
.method public final z()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/c;->i:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V
invoke-super {p0}, Landroid/support/v4/app/x;->z()V
return-void
.end method