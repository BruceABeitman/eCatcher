.class public Lco/vine/android/widget/FeedAdapter$PlayCurrentPositionRunnable;
.super Ljava/lang/Object;
.source "FeedAdapter.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/widget/FeedAdapter;
.method public constructor <init>(Lco/vine/android/widget/FeedAdapter;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/FeedAdapter$PlayCurrentPositionRunnable;->this$0:Lco/vine/android/widget/FeedAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public declared-synchronized run()V
.registers 3
monitor-enter p0
:try_start_1
iget-object v1, p0, Lco/vine/android/widget/FeedAdapter$PlayCurrentPositionRunnable;->this$0:Lco/vine/android/widget/FeedAdapter;
#calls: Lco/vine/android/widget/FeedAdapter;->calculateCurrentPosition()I
invoke-static {v1}, Lco/vine/android/widget/FeedAdapter;->access$900(Lco/vine/android/widget/FeedAdapter;)I
move-result v0
const/4 v1, -0x1
if-le v0, v1, :cond_17
iget-object v1, p0, Lco/vine/android/widget/FeedAdapter$PlayCurrentPositionRunnable;->this$0:Lco/vine/android/widget/FeedAdapter;
#calls: Lco/vine/android/widget/FeedAdapter;->getExplicit(I)Z
invoke-static {v1, v0}, Lco/vine/android/widget/FeedAdapter;->access$1000(Lco/vine/android/widget/FeedAdapter;I)Z
move-result v1
if-nez v1, :cond_19
iget-object v1, p0, Lco/vine/android/widget/FeedAdapter$PlayCurrentPositionRunnable;->this$0:Lco/vine/android/widget/FeedAdapter;
invoke-virtual {v1, v0}, Lco/vine/android/widget/FeedAdapter;->play(I)V
:cond_17
:try_end_17
.catchall {:try_start_1 .. :try_end_17} :catchall_1f
:goto_17
monitor-exit p0
return-void
:cond_19
:try_start_19
iget-object v1, p0, Lco/vine/android/widget/FeedAdapter$PlayCurrentPositionRunnable;->this$0:Lco/vine/android/widget/FeedAdapter;
invoke-virtual {v1}, Lco/vine/android/widget/FeedAdapter;->pauseCurrentPlayer()V
:try_end_1e
.catchall {:try_start_19 .. :try_end_1e} :catchall_1f
goto :goto_17
:catchall_1f
move-exception v1
monitor-exit p0
throw v1
.end method