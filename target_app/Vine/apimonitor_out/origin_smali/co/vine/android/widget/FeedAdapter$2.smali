.class Lco/vine/android/widget/FeedAdapter$2;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Lco/vine/android/player/VideoViewInterface$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/widget/FeedAdapter;->initVideoView(ILco/vine/android/widget/FeedViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/widget/FeedAdapter;

.field final synthetic val$position:I

.field final synthetic val$tag:Lco/vine/android/widget/FeedViewHolder;

.field final synthetic val$view:Lco/vine/android/player/SdkVideoView;


# direct methods
.method constructor <init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/player/SdkVideoView;ILco/vine/android/widget/FeedViewHolder;)V
    .registers 5

    iput-object p1, p0, Lco/vine/android/widget/FeedAdapter$2;->this$0:Lco/vine/android/widget/FeedAdapter;

    iput-object p2, p0, Lco/vine/android/widget/FeedAdapter$2;->val$view:Lco/vine/android/player/SdkVideoView;

    iput p3, p0, Lco/vine/android/widget/FeedAdapter$2;->val$position:I

    iput-object p4, p0, Lco/vine/android/widget/FeedAdapter$2;->val$tag:Lco/vine/android/widget/FeedViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lco/vine/android/player/VideoViewInterface;II)Z
    .registers 8

    const/4 v3, 0x1

    const-string v0, "Got error, try recycling it more aggressively: {}, {}"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$2;->this$0:Lco/vine/android/widget/FeedAdapter;

    iget-object v1, p0, Lco/vine/android/widget/FeedAdapter$2;->this$0:Lco/vine/android/widget/FeedAdapter;

    #getter for: Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I
    invoke-static {v1}, Lco/vine/android/widget/FeedAdapter;->access$300(Lco/vine/android/widget/FeedAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #setter for: Lco/vine/android/widget/FeedAdapter;->maxPlayer:I
    invoke-static {v0, v1}, Lco/vine/android/widget/FeedAdapter;->access$202(Lco/vine/android/widget/FeedAdapter;I)I

    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$2;->this$0:Lco/vine/android/widget/FeedAdapter;

    #setter for: Lco/vine/android/widget/FeedAdapter;->mNeedReleaseOtherPlayers:Z
    invoke-static {v0, v3}, Lco/vine/android/widget/FeedAdapter;->access$402(Lco/vine/android/widget/FeedAdapter;Z)Z

    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$2;->this$0:Lco/vine/android/widget/FeedAdapter;

    iget-object v1, p0, Lco/vine/android/widget/FeedAdapter$2;->val$view:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0, v1}, Lco/vine/android/widget/FeedAdapter;->releaseOtherPlayers(Lco/vine/android/player/SdkVideoView;)V

    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$2;->val$view:Lco/vine/android/player/SdkVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->retryOpenVideo(Z)Z

    move-result v0

    if-nez v0, :cond_7c

    const-string v0, "Replay video using videoLowUrl."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$2;->this$0:Lco/vine/android/widget/FeedAdapter;

    #getter for: Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;
    invoke-static {v0}, Lco/vine/android/widget/FeedAdapter;->access$500(Lco/vine/android/widget/FeedAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lco/vine/android/widget/FeedAdapter$2;->val$position:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$2;->val$tag:Lco/vine/android/widget/FeedViewHolder;

    iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->post:Lco/vine/android/api/VinePost;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$2;->val$tag:Lco/vine/android/widget/FeedViewHolder;

    iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->post:Lco/vine/android/api/VinePost;

    iget-object v0, v0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$2;->val$tag:Lco/vine/android/widget/FeedViewHolder;

    iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->post:Lco/vine/android/api/VinePost;

    iget-object v1, p0, Lco/vine/android/widget/FeedAdapter$2;->val$tag:Lco/vine/android/widget/FeedViewHolder;

    iget-object v1, v1, Lco/vine/android/widget/FeedViewHolder;->post:Lco/vine/android/api/VinePost;

    iget-object v1, v1, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    iput-object v1, v0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$2;->val$tag:Lco/vine/android/widget/FeedViewHolder;

    iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->post:Lco/vine/android/api/VinePost;

    const/4 v1, 0x0

    iput-object v1, v0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$2;->val$view:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0, v3}, Lco/vine/android/player/SdkVideoView;->setReportOpenError(Z)V

    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$2;->this$0:Lco/vine/android/widget/FeedAdapter;

    #getter for: Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I
    invoke-static {v0}, Lco/vine/android/widget/FeedAdapter;->access$000(Lco/vine/android/widget/FeedAdapter;)I

    move-result v0

    iget v1, p0, Lco/vine/android/widget/FeedAdapter$2;->val$position:I

    if-ne v0, v1, :cond_75

    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$2;->this$0:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v0}, Lco/vine/android/widget/FeedAdapter;->stopCurrentPlayer()V

    :cond_75
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$2;->this$0:Lco/vine/android/widget/FeedAdapter;

    iget v1, p0, Lco/vine/android/widget/FeedAdapter$2;->val$position:I

    invoke-virtual {v0, v1}, Lco/vine/android/widget/FeedAdapter;->play(I)V

    :cond_7c
    return v3
.end method
