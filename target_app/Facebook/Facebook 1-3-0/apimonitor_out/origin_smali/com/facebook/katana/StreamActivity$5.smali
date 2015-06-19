.class Lcom/facebook/katana/StreamActivity$5;
.super Ljava/lang/Object;
.source "StreamActivity.java"

# interfaces
.implements Lcom/facebook/katana/StreamAdapter$StreamAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/StreamActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/StreamActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/StreamActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/StreamActivity$5;->this$0:Lcom/facebook/katana/StreamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenMediaItem(Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$5;->this$0:Lcom/facebook/katana/StreamActivity;

    #calls: Lcom/facebook/katana/StreamActivity;->openMediaItem(Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;)V
    invoke-static {v0, p1}, Lcom/facebook/katana/StreamActivity;->access$20(Lcom/facebook/katana/StreamActivity;Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;)V

    return-void
.end method

.method public onUserImageClicked(Lcom/facebook/katana/service/api/FacebookPost;)V
    .registers 6

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookPost;->getActorId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/katana/StreamActivity$5;->this$0:Lcom/facebook/katana/StreamActivity;

    #getter for: Lcom/facebook/katana/StreamActivity;->mUserId:J
    invoke-static {v2}, Lcom/facebook/katana/StreamActivity;->access$11(Lcom/facebook/katana/StreamActivity;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$5;->this$0:Lcom/facebook/katana/StreamActivity;

    #getter for: Lcom/facebook/katana/StreamActivity;->mHome:Z
    invoke-static {v0}, Lcom/facebook/katana/StreamActivity;->access$17(Lcom/facebook/katana/StreamActivity;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$5;->this$0:Lcom/facebook/katana/StreamActivity;

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookPost;->getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;

    move-result-object v1

    #calls: Lcom/facebook/katana/StreamActivity;->goToProfile(Lcom/facebook/katana/service/api/FacebookPost$Profile;)V
    invoke-static {v0, v1}, Lcom/facebook/katana/StreamActivity;->access$19(Lcom/facebook/katana/StreamActivity;Lcom/facebook/katana/service/api/FacebookPost$Profile;)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookPost;->getActorId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/katana/StreamActivity$5;->this$0:Lcom/facebook/katana/StreamActivity;

    #getter for: Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v2}, Lcom/facebook/katana/StreamActivity;->access$18(Lcom/facebook/katana/StreamActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/facebook/katana/StreamActivity$5;->this$0:Lcom/facebook/katana/StreamActivity;

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookPost;->getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;

    move-result-object v1

    #calls: Lcom/facebook/katana/StreamActivity;->goToProfile(Lcom/facebook/katana/service/api/FacebookPost$Profile;)V
    invoke-static {v0, v1}, Lcom/facebook/katana/StreamActivity;->access$19(Lcom/facebook/katana/StreamActivity;Lcom/facebook/katana/service/api/FacebookPost$Profile;)V

    goto :goto_1f
.end method
