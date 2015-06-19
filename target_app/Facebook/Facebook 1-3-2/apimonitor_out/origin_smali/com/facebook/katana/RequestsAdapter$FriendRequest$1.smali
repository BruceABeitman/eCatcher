.class Lcom/facebook/katana/RequestsAdapter$FriendRequest$1;
.super Ljava/lang/Object;
.source "RequestsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/RequestsAdapter$FriendRequest;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/katana/RequestsAdapter$FriendRequest;


# direct methods
.method constructor <init>(Lcom/facebook/katana/RequestsAdapter$FriendRequest;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest$1;->this$1:Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest$1;->this$1:Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    #getter for: Lcom/facebook/katana/RequestsAdapter$FriendRequest;->this$0:Lcom/facebook/katana/RequestsAdapter;
    invoke-static {v0}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->access$1(Lcom/facebook/katana/RequestsAdapter$FriendRequest;)Lcom/facebook/katana/RequestsAdapter;

    move-result-object v0

    #getter for: Lcom/facebook/katana/RequestsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/facebook/katana/RequestsAdapter;->access$2(Lcom/facebook/katana/RequestsAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest$1;->this$1:Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    iget-object v1, v1, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mRequestor:Lcom/facebook/katana/service/api/FacebookUser;

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/ApplicationUtils;->OpenUserProfile(Landroid/content/Context;J)V

    return-void
.end method
