.class Lcom/facebook/katana/RequestsAdapter$1;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "RequestsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/RequestsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/RequestsAdapter;


# direct methods
.method constructor <init>(Lcom/facebook/katana/RequestsAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/RequestsAdapter$1;->this$0:Lcom/facebook/katana/RequestsAdapter;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFriendRequestRespondComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;JZ)V
    .registers 13

    iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter$1;->this$0:Lcom/facebook/katana/RequestsAdapter;

    #getter for: Lcom/facebook/katana/RequestsAdapter;->mFriendRequestsById:Ljava/util/Map;
    invoke-static {v1}, Lcom/facebook/katana/RequestsAdapter;->access$0(Lcom/facebook/katana/RequestsAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    if-eqz p8, :cond_23

    invoke-virtual {v0}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->getState()Lcom/facebook/katana/RequestsAdapter$RequestState;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_CONFIRMING:Lcom/facebook/katana/RequestsAdapter$RequestState;

    if-ne v1, v2, :cond_20

    sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_CONFIRMED:Lcom/facebook/katana/RequestsAdapter$RequestState;

    :goto_1c
    invoke-virtual {v0, v1}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->setState(Lcom/facebook/katana/RequestsAdapter$RequestState;)V

    :goto_1f
    return-void

    :cond_20
    sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_IGNORED:Lcom/facebook/katana/RequestsAdapter$RequestState;

    goto :goto_1c

    :cond_23
    iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter$1;->this$0:Lcom/facebook/katana/RequestsAdapter;

    #getter for: Lcom/facebook/katana/RequestsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/facebook/katana/RequestsAdapter;->access$2(Lcom/facebook/katana/RequestsAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080107

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->NOT_RESPONDED:Lcom/facebook/katana/RequestsAdapter$RequestState;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->setState(Lcom/facebook/katana/RequestsAdapter$RequestState;)V

    goto :goto_1f
.end method

.method public onFriendRequestsMutualFriendsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/AppSession;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p6, :cond_20

    invoke-interface {p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_21

    iget-object v3, p0, Lcom/facebook/katana/RequestsAdapter$1;->this$0:Lcom/facebook/katana/RequestsAdapter;

    #getter for: Lcom/facebook/katana/RequestsAdapter;->mFriendRequests:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/facebook/katana/RequestsAdapter;->access$1(Lcom/facebook/katana/RequestsAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_43

    :cond_20
    return-void

    :cond_21
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v3, p0, Lcom/facebook/katana/RequestsAdapter$1;->this$0:Lcom/facebook/katana/RequestsAdapter;

    #getter for: Lcom/facebook/katana/RequestsAdapter;->mFriendRequestsById:Ljava/util/Map;
    invoke-static {v3}, Lcom/facebook/katana/RequestsAdapter;->access$0(Lcom/facebook/katana/RequestsAdapter;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    if-eqz v2, :cond_a

    invoke-interface {p6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->setMutualFriendCount(I)V

    goto :goto_a

    :cond_43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    iget v4, v0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mMutualFriends:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1a

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->setMutualFriendCount(I)V

    goto :goto_1a
.end method

.method public onUserImageDownloaded(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/binding/UserImage;Lcom/facebook/katana/binding/UserImagesCache;)V
    .registers 12

    if-eqz p6, :cond_1f

    iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter$1;->this$0:Lcom/facebook/katana/RequestsAdapter;

    #getter for: Lcom/facebook/katana/RequestsAdapter;->mFriendRequestsById:Ljava/util/Map;
    invoke-static {v1}, Lcom/facebook/katana/RequestsAdapter;->access$0(Lcom/facebook/katana/RequestsAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p6}, Lcom/facebook/katana/binding/UserImage;->getFriendId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    if-eqz v0, :cond_1f

    invoke-virtual {p6}, Lcom/facebook/katana/binding/UserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->setProfilePicture(Landroid/graphics/Bitmap;)V

    :cond_1f
    return-void
.end method
