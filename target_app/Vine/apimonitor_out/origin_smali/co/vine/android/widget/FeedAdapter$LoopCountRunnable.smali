.class Lco/vine/android/widget/FeedAdapter$LoopCountRunnable;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/widget/FeedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoopCountRunnable"
.end annotation


# instance fields
.field public final lastCurrentPlaying:I

.field public final postId:J

.field final synthetic this$0:Lco/vine/android/widget/FeedAdapter;


# direct methods
.method public constructor <init>(Lco/vine/android/widget/FeedAdapter;IJ)V
    .registers 5

    iput-object p1, p0, Lco/vine/android/widget/FeedAdapter$LoopCountRunnable;->this$0:Lco/vine/android/widget/FeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lco/vine/android/widget/FeedAdapter$LoopCountRunnable;->lastCurrentPlaying:I

    iput-wide p3, p0, Lco/vine/android/widget/FeedAdapter$LoopCountRunnable;->postId:J

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$LoopCountRunnable;->this$0:Lco/vine/android/widget/FeedAdapter;

    #getter for: Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I
    invoke-static {v0}, Lco/vine/android/widget/FeedAdapter;->access$000(Lco/vine/android/widget/FeedAdapter;)I

    move-result v0

    iget v1, p0, Lco/vine/android/widget/FeedAdapter$LoopCountRunnable;->lastCurrentPlaying:I

    if-ne v0, v1, :cond_28

    const-string v0, "incrementing loops for currentPlaying={},  postId={}"

    iget v1, p0, Lco/vine/android/widget/FeedAdapter$LoopCountRunnable;->lastCurrentPlaying:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Lco/vine/android/widget/FeedAdapter$LoopCountRunnable;->postId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$LoopCountRunnable;->this$0:Lco/vine/android/widget/FeedAdapter;

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lco/vine/android/util/LoopManager;->get(Landroid/content/Context;)Lco/vine/android/util/LoopManager;

    move-result-object v0

    iget-wide v1, p0, Lco/vine/android/widget/FeedAdapter$LoopCountRunnable;->postId:J

    invoke-virtual {v0, v1, v2}, Lco/vine/android/util/LoopManager;->increment(J)V

    :cond_28
    return-void
.end method
