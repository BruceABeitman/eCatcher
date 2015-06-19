.class Lcom/facebook/katana/RequestsAdapter$OnClick;
.super Ljava/lang/Object;
.source "RequestsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/RequestsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClick"
.end annotation


# instance fields
.field mConfirm:Z

.field mFriendRequest:Lcom/facebook/katana/RequestsAdapter$FriendRequest;

.field final synthetic this$0:Lcom/facebook/katana/RequestsAdapter;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/RequestsAdapter;Lcom/facebook/katana/RequestsAdapter$FriendRequest;Z)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->this$0:Lcom/facebook/katana/RequestsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->mFriendRequest:Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    iput-boolean p3, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->mConfirm:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->mFriendRequest:Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    iget-boolean v1, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->mConfirm:Z

    if-eqz v1, :cond_25

    sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_CONFIRMING:Lcom/facebook/katana/RequestsAdapter$RequestState;

    :goto_8
    invoke-virtual {v0, v1}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->setState(Lcom/facebook/katana/RequestsAdapter$RequestState;)V

    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->this$0:Lcom/facebook/katana/RequestsAdapter;

    #getter for: Lcom/facebook/katana/RequestsAdapter;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v0}, Lcom/facebook/katana/RequestsAdapter;->access$3(Lcom/facebook/katana/RequestsAdapter;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->this$0:Lcom/facebook/katana/RequestsAdapter;

    #getter for: Lcom/facebook/katana/RequestsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/facebook/katana/RequestsAdapter;->access$2(Lcom/facebook/katana/RequestsAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->mFriendRequest:Lcom/facebook/katana/RequestsAdapter$FriendRequest;

    iget-object v2, v2, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mRequestor:Lcom/facebook/katana/service/api/FacebookUser;

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->mConfirm:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/katana/binding/AppSession;->respondToFriendRequest(Landroid/content/Context;JZ)Ljava/lang/String;

    return-void

    :cond_25
    sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_IGNORING:Lcom/facebook/katana/RequestsAdapter$RequestState;

    goto :goto_8
.end method
