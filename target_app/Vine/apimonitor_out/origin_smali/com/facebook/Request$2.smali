.class final Lcom/facebook/Request$2;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Request;->newMyFriendsRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserListCallback;)Lcom/facebook/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/facebook/Request$GraphUserListCallback;


# direct methods
.method constructor <init>(Lcom/facebook/Request$GraphUserListCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/Request$2;->val$callback:Lcom/facebook/Request$GraphUserListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/Request$2;->val$callback:Lcom/facebook/Request$GraphUserListCallback;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/Request$2;->val$callback:Lcom/facebook/Request$GraphUserListCallback;

    const-class v1, Lcom/facebook/model/GraphUser;

    #calls: Lcom/facebook/Request;->typedListFromResponse(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
    invoke-static {p1, v1}, Lcom/facebook/Request;->access$000(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/Request$GraphUserListCallback;->onCompleted(Ljava/util/List;Lcom/facebook/Response;)V

    :cond_f
    return-void
.end method