.class  Lco/vine/android/widget/FeedAdapter$1;
.super Ljava/lang/Object;
.source "FeedAdapter.java"
.implements Lco/vine/android/player/VideoViewInterface$OnPreparedListener;
.field final synthetic this$0:Lco/vine/android/widget/FeedAdapter;
.field final synthetic val$tag:Lco/vine/android/widget/FeedViewHolder;
.method constructor <init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/widget/FeedViewHolder;)V
.registers 3
iput-object p1, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;
iput-object p2, p0, Lco/vine/android/widget/FeedAdapter$1;->val$tag:Lco/vine/android/widget/FeedViewHolder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPrepared(Lco/vine/android/player/VideoViewInterface;)V
.registers 5
invoke-interface {p1}, Lco/vine/android/player/VideoViewInterface;->getPlayingPosition()I
move-result v0
iget-object v1, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;
#getter for: Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I
invoke-static {v1}, Lco/vine/android/widget/FeedAdapter;->access$000(Lco/vine/android/widget/FeedAdapter;)I
move-result v1
if-ne v0, v1, :cond_25
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;
iget-object v1, p0, Lco/vine/android/widget/FeedAdapter$1;->val$tag:Lco/vine/android/widget/FeedViewHolder;
iget-object v1, v1, Lco/vine/android/widget/FeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget-wide v1, v1, Lco/vine/android/api/VinePost;->postId:J
#calls: Lco/vine/android/widget/FeedAdapter;->countedMediaPlayerStart(Lco/vine/android/player/VideoViewInterface;J)V
invoke-static {v0, p1, v1, v2}, Lco/vine/android/widget/FeedAdapter;->access$100(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/player/VideoViewInterface;J)V
:goto_17
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;
invoke-virtual {v0}, Lco/vine/android/widget/FeedAdapter;->endLoadingTimeProfiling()V
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$1;->val$tag:Lco/vine/android/widget/FeedViewHolder;
iget-object v0, v0, Lco/vine/android/widget/FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V
return-void
:cond_25
const-string v0, "This video should not be played: {}, {}."
invoke-interface {p1}, Lco/vine/android/player/VideoViewInterface;->getPlayingPosition()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
iget-object v2, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;
#getter for: Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I
invoke-static {v2}, Lco/vine/android/widget/FeedAdapter;->access$000(Lco/vine/android/widget/FeedAdapter;)I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
goto :goto_17
.end method