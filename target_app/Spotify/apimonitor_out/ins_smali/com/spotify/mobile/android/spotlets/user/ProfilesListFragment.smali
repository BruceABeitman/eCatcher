.class public final Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;
.super Landroid/support/v4/app/x;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/util/aa;
.field private Y:Lcom/spotify/cosmos/android/DeferredResolver;
.field private Z:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
.field private aa:Ljava/lang/String;
.field private ab:Ljava/lang/String;
.field private ac:Lcom/spotify/mobile/android/util/z;
.field private ad:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
.field private ae:Landroid/support/v4/app/z;
.field private i:Lcom/spotify/mobile/android/spotlets/user/h;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$2;-><init>(Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->ae:Landroid/support/v4/app/z;
return-void
.end method
.method public static a(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$Type;)Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;
.registers 5
new-instance v0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;-><init>()V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "uri"
invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "type"
invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->c_(Landroid/os/Bundle;)V
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->ab:Ljava/lang/String;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;)[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->Z:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;)[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->Z:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
return-object p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;)V
.registers 5
new-instance v0, Lcom/spotify/mobile/android/spotlets/user/h;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->Z:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->ab:Ljava/lang/String;
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/user/h;-><init>(Landroid/content/Context;[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;Ljava/lang/String;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->i:Lcom/spotify/mobile/android/spotlets/user/h;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->i:Lcom/spotify/mobile/android/spotlets/user/h;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->a(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->ad:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->d:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;)Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->ad:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->ab:Ljava/lang/String;
return-object v0
.end method
.method public final D()Landroid/support/v4/app/Fragment;
.registers 1
return-object p0
.end method
.method protected final E()V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->ad:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a()Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_d
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->ad:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->b:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "uri"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->aa:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "type"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$Type;
sget-object v1, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$3;->a:[I
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$Type;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_70
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->aa:Ljava/lang/String;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/user/g;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:goto_3d
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$Type;->mHermesUrlTemplate:Ljava/lang/String;
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object v1, v3, v4
invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->get(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->Y:Lcom/spotify/cosmos/android/DeferredResolver;
new-instance v2, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$1;
new-instance v3, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v4
invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
const-class v4, Lcom/spotify/mobile/android/spotlets/user/ProfileListModel;
invoke-direct {v2, p0, v3, v4}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$1;-><init>(Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;Landroid/os/Handler;Ljava/lang/Class;)V
invoke-virtual {v1, v0, v2}, Lcom/spotify/cosmos/android/DeferredResolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
goto :goto_c
:pswitch_69
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->ab:Ljava/lang/String;
invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
goto :goto_3d
:pswitch_data_70
.packed-switch 0x1
:pswitch_69
:pswitch_69
.end packed-switch
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 9
const/4 v4, 0x0
const v0, 0x7f030088
invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
const v1, 0x102000a
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
new-instance v2, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-direct {v2, v3, p1, v1, v0}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)V
iput-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->ad:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
new-instance v1, Lcom/spotify/mobile/android/util/z;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v1, v2, p0}, Lcom/spotify/mobile/android/util/z;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->ac:Lcom/spotify/mobile/android/util/z;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->u()Landroid/support/v4/app/y;
move-result-object v1
const v2, 0x7f0a019a
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->ac:Lcom/spotify/mobile/android/util/z;
invoke-virtual {v1, v2, v4, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-object v0
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->Y:Lcom/spotify/cosmos/android/DeferredResolver;
return-void
.end method
.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->i:Lcom/spotify/mobile/android/spotlets/user/h;
invoke-virtual {v0, p3}, Lcom/spotify/mobile/android/spotlets/user/h;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getUri()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const/4 v2, 0x0
invoke-static {v1, v0, v2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->a(Landroid/content/Intent;)V
return-void
.end method
.method public final c(Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1}, Landroid/support/v4/app/x;->c(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "type"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$Type;
iget v0, v0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$Type;->mTitleResource:I
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->k()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
invoke-interface {v0, p0, v1}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a01a0
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->ae:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-void
.end method
.method public final d(Z)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->ad:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Z)V
if-eqz p1, :cond_e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->ab:Ljava/lang/String;
if-eqz v0, :cond_e
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->E()V
:cond_e
return-void
.end method
.method public final z()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->Y:Lcom/spotify/cosmos/android/DeferredResolver;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->Y:Lcom/spotify/cosmos/android/DeferredResolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/DeferredResolver;->destroy()V
:cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->i:Lcom/spotify/mobile/android/spotlets/user/h;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->i:Lcom/spotify/mobile/android/spotlets/user/h;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/user/h;->a()V
:cond_12
invoke-super {p0}, Landroid/support/v4/app/x;->z()V
return-void
.end method