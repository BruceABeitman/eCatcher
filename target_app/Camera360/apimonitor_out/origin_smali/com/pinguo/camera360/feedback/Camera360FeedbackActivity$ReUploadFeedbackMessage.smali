.class Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$ReUploadFeedbackMessage;
.super Ljava/lang/Object;
.source "Camera360FeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReUploadFeedbackMessage"
.end annotation


# instance fields
.field mLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/feedback/Camera360FeedbackData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/feedback/Camera360FeedbackData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$ReUploadFeedbackMessage;->this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$ReUploadFeedbackMessage;->mLists:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;

    iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$ReUploadFeedbackMessage;->this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;

    iget-object v2, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$ReUploadFeedbackMessage;->mLists:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$ReUploadFeedbackMessage;->this$0:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;)V

    return-void
.end method
