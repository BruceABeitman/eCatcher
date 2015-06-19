.class public Lcom/facebook/katana/RequestsAdapter;
.super Ljava/lang/Object;
.source "RequestsAdapter.java"
.implements Landroid/widget/ListAdapter;
.field private mAppSession:Lcom/facebook/katana/binding/AppSession;
.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
.field private mContext:Landroid/content/Context;
.field private mFriendRequests:Ljava/util/ArrayList;
.field private mFriendRequestsById:Ljava/util/Map;
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;Ljava/util/Map;)V
.registers 12
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
iput-object v3, p0, Lcom/facebook/katana/RequestsAdapter;->mFriendRequestsById:Ljava/util/Map;
new-instance v3, Lcom/facebook/katana/RequestsAdapter$1;
invoke-direct {v3, p0}, Lcom/facebook/katana/RequestsAdapter$1;-><init>(Lcom/facebook/katana/RequestsAdapter;)V
iput-object v3, p0, Lcom/facebook/katana/RequestsAdapter;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
iput-object p1, p0, Lcom/facebook/katana/RequestsAdapter;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/facebook/katana/RequestsAdapter;->mAppSession:Lcom/facebook/katana/binding/AppSession;
new-instance v3, Ljava/util/ArrayList;
invoke-interface {p3}, Ljava/util/Map;->size()I
move-result v4
invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V
iput-object v3, p0, Lcom/facebook/katana/RequestsAdapter;->mFriendRequests:Ljava/util/ArrayList;
invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v3
invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_28
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_5b
iget-object v3, p0, Lcom/facebook/katana/RequestsAdapter;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v4, p0, Lcom/facebook/katana/RequestsAdapter;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v3, v4}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V
iget-object v3, p0, Lcom/facebook/katana/RequestsAdapter;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v4, p0, Lcom/facebook/katana/RequestsAdapter;->mContext:Landroid/content/Context;
iget-object v5, p0, Lcom/facebook/katana/RequestsAdapter;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v5}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v5
invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v5
invoke-virtual {v3, v4, v5, v6}, Lcom/facebook/katana/binding/AppSession;->getFriendRequestsMutualFriends(Landroid/content/Context;J)Ljava/lang/String;
iget-object v3, p0, Lcom/facebook/katana/RequestsAdapter;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->getUserImagesCache()Lcom/facebook/katana/binding/UserImagesCache;
move-result-object v0
invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v3
invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_54
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_79
return-void
:cond_5b
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/facebook/katana/service/api/FacebookUser;
new-instance v1, Lcom/facebook/katana/RequestsAdapter$FriendRequest;
invoke-direct {v1, p0, v2}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;-><init>(Lcom/facebook/katana/RequestsAdapter;Lcom/facebook/katana/service/api/FacebookUser;)V
iget-object v4, p0, Lcom/facebook/katana/RequestsAdapter;->mFriendRequests:Ljava/util/ArrayList;
invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v4, p0, Lcom/facebook/katana/RequestsAdapter;->mFriendRequestsById:Ljava/util/Map;
invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_28
:cond_79
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/facebook/katana/service/api/FacebookUser;
iget-object v4, p0, Lcom/facebook/katana/RequestsAdapter;->mFriendRequestsById:Ljava/util/Map;
invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/katana/RequestsAdapter$FriendRequest;
iget-object v4, p0, Lcom/facebook/katana/RequestsAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J
move-result-wide v5
invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookUser;->getImageUrl()Ljava/lang/String;
move-result-object v7
invoke-virtual {v0, v4, v5, v6, v7}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v4
iput-object v4, v1, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mProfilePicture:Landroid/graphics/Bitmap;
goto :goto_54
.end method
.method static synthetic access$0(Lcom/facebook/katana/RequestsAdapter;)Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->mFriendRequestsById:Ljava/util/Map;
return-object v0
.end method
.method static synthetic access$1(Lcom/facebook/katana/RequestsAdapter;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->mFriendRequests:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic access$2(Lcom/facebook/katana/RequestsAdapter;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->mContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic access$3(Lcom/facebook/katana/RequestsAdapter;)Lcom/facebook/katana/binding/AppSession;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->mAppSession:Lcom/facebook/katana/binding/AppSession;
return-object v0
.end method
.method public areAllItemsEnabled()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->mFriendRequests:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->mFriendRequests:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;
iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mRequestor:Lcom/facebook/katana/service/api/FacebookUser;
return-object v0
.end method
.method public getItemId(I)J
.registers 4
iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->mFriendRequests:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;
iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mRequestor:Lcom/facebook/katana/service/api/FacebookUser;
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J
move-result-wide v0
return-wide v0
.end method
.method public getItemViewType(I)I
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
iget-object v2, p0, Lcom/facebook/katana/RequestsAdapter;->mFriendRequests:Ljava/util/ArrayList;
invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/katana/RequestsAdapter$FriendRequest;
iget-object v2, v1, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mView:Landroid/view/View;
if-nez v2, :cond_20
iget-object v2, p0, Lcom/facebook/katana/RequestsAdapter;->mContext:Landroid/content/Context;
const-string v3, "layout_inflater"
invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/LayoutInflater;
const v2, 0x7f03003d
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
iput-object v2, v1, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mView:Landroid/view/View;
:cond_20
invoke-virtual {v1}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->updateView()V
iget-object v2, v1, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mView:Landroid/view/View;
return-object v2
.end method
.method public getViewTypeCount()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public hasStableIds()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public isEmpty()Z
.registers 2
iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->mFriendRequests:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
return v0
.end method
.method public isEnabled(I)Z
.registers 3
iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->mFriendRequests:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/facebook/katana/RequestsAdapter; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V
const-string v1, " - Lcom/facebook/katana/RequestsAdapter; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
.registers 2
return-void
.end method
.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
.registers 2
return-void
.end method