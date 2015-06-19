.class public final Lcom/spotify/mobile/android/spotlets/activityfeed/b;
.super Landroid/support/v4/app/x;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/util/aa;
.field private Y:Ljava/lang/String;
.field private Z:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;
.field private aa:Lcom/spotify/cosmos/android/Resolver;
.field private ab:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
.field private ac:Lcom/spotify/mobile/android/ui/view/LoadingView;
.field private ad:Lcom/spotify/android/paste/widget/EmptyView;
.field private ae:Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
.field private af:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
.field private i:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/activityfeed/b;Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;)Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->af:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/activityfeed/b;Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;)Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->ae:Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/activityfeed/b;)V
.registers 7
const/4 v5, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->ae:Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
if-eqz v0, :cond_53
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->af:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
if-eqz v0, :cond_53
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->af:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getStreams()Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->listCount()I
move-result v0
if-lez v0, :cond_5c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->ab:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->d(Z)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->c()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/a;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->af:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->ae:Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
new-instance v3, Ljava/util/ArrayList;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getStreams()Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
move-result-object v4
invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->getStreamers()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
move-result-object v4
invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v4
invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v4
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getStreams()Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->getIncludeRequestingUser()Z
move-result v1
if-eqz v1, :cond_54
if-nez v4, :cond_54
invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_48
:goto_48
new-array v1, v5, [Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
check-cast v1, [Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/a;->a([Ljava/lang/Object;)V
:goto_53
:cond_53
return-void
:cond_54
if-nez v1, :cond_48
if-eqz v4, :cond_48
invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
goto :goto_48
:cond_5c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->ab:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->d(Z)V
goto :goto_53
.end method
.method public static b(Landroid/content/Intent;)Lcom/spotify/mobile/android/spotlets/activityfeed/b;
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "story_id"
const-string v2, "spotify:internal:social-feed:reactors:story_id"
invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "username"
const-string v2, "spotify:internal:social-feed:reactors:username"
invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/spotify/mobile/android/spotlets/activityfeed/b;
invoke-direct {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;-><init>()V
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->c_(Landroid/os/Bundle;)V
return-object v1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/activityfeed/b;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->ab:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
return-object v0
.end method
.method public final D()Landroid/support/v4/app/Fragment;
.registers 1
return-object p0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
const v0, 0x7f03008a
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-static {p1}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;)Lcom/spotify/mobile/android/ui/view/LoadingView;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->ac:Lcom/spotify/mobile/android/ui/view/LoadingView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->ac:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
const v1, 0x7f0a028c
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/spotify/android/paste/widget/EmptyView;
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->ad:Lcom/spotify/android/paste/widget/EmptyView;
return-object v0
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const v0, 0x7f0f0024
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "story_id"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->i:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "username"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->Y:Ljava/lang/String;
new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->Z:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->aa:Lcom/spotify/cosmos/android/Resolver;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->aa:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V
return-void
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 7
invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/os/Bundle;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/a;-><init>(Landroid/content/Context;)V
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->a(Landroid/widget/ListAdapter;)V
new-instance v0, Lcom/spotify/mobile/android/ui/stuff/c;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->ad:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->a()Landroid/widget/ListView;
move-result-object v3
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/stuff/c;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/widget/EmptyView;Landroid/view/View;)V
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->D:Lcom/spotify/android/paste/graphics/SpotifyIcon;
const v2, 0x7f0f001f
const v3, 0x7f0f0020
invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/stuff/c;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;II)Lcom/spotify/mobile/android/ui/stuff/c;
move-result-object v0
const v1, 0x7f0f0023
const v2, 0x7f0f0022
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/stuff/c;->b(II)Lcom/spotify/mobile/android/ui/stuff/c;
move-result-object v0
const v1, 0x7f0f020b
const v2, 0x7f0f0021
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/stuff/c;->a(II)Lcom/spotify/mobile/android/ui/stuff/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/stuff/c;->a()Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->ab:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
new-instance v0, Lcom/spotify/mobile/android/util/z;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/z;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->u()Landroid/support/v4/app/y;
move-result-object v1
const v2, 0x7f0a014b
const/4 v3, 0x0
invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-void
.end method
.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 8
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;->getUri()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->a(Landroid/content/Intent;)V
return-void
.end method
.method public final d(Z)V
.registers 7
const/4 v4, 0x0
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->ab:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
if-nez p1, :cond_5c
move v0, v1
:goto_8
invoke-virtual {v3, v0}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Z)V
if-eqz p1, :cond_5e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->ab:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->ac:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
const-string v0, "hm://user-profile-view/v1/android/profile/%s"
new-array v1, v1, [Ljava/lang/Object;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->Y:Ljava/lang/String;
if-nez v3, :cond_2a
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-static {v3}, Lcom/spotify/mobile/android/service/session/e;->a(Landroid/app/Activity;)Lcom/spotify/mobile/android/service/session/e;
move-result-object v3
invoke-virtual {v3}, Lcom/spotify/mobile/android/service/session/e;->h()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->Y:Ljava/lang/String;
:cond_2a
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->Y:Ljava/lang/String;
invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->aa:Lcom/spotify/cosmos/android/Resolver;
invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->get(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;
move-result-object v0
new-instance v2, Lcom/spotify/mobile/android/spotlets/activityfeed/ReactorsFragment$1;
new-instance v3, Landroid/os/Handler;
invoke-direct {v3}, Landroid/os/Handler;-><init>()V
const-class v4, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
invoke-direct {v2, p0, v3, v4}, Lcom/spotify/mobile/android/spotlets/activityfeed/ReactorsFragment$1;-><init>(Lcom/spotify/mobile/android/spotlets/activityfeed/b;Landroid/os/Handler;Ljava/lang/Class;)V
invoke-virtual {v1, v0, v2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->Z:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->i:Ljava/lang/String;
new-instance v2, Lcom/spotify/mobile/android/spotlets/activityfeed/b$1;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/b$1;-><init>(Lcom/spotify/mobile/android/spotlets/activityfeed/b;)V
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->a(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/activityfeed/client/d;)V
:goto_5b
return-void
:cond_5c
move v0, v2
goto :goto_8
:cond_5e
iput-object v4, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->ae:Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
iput-object v4, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->af:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->c()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/a;
new-array v1, v2, [Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/a;->a([Ljava/lang/Object;)V
goto :goto_5b
.end method
.method public final z()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->z()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->Z:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->aa:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V
return-void
.end method