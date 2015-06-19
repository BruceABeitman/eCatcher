.class Lcom/facebook/katana/FeedbackAdapter$2;
.super Ljava/lang/Object;
.source "FeedbackAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/FeedbackAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;Lcom/facebook/katana/service/api/FacebookPost;Lcom/facebook/katana/binding/UserImagesCache;Lcom/facebook/katana/binding/StreamPhotosCache;ZLcom/facebook/katana/FeedbackAdapter$CommentsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/FeedbackAdapter;

.field private final synthetic val$commentListener:Lcom/facebook/katana/FeedbackAdapter$CommentsListener;


# direct methods
.method constructor <init>(Lcom/facebook/katana/FeedbackAdapter;Lcom/facebook/katana/FeedbackAdapter$CommentsListener;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/katana/FeedbackAdapter$2;->this$0:Lcom/facebook/katana/FeedbackAdapter;

    iput-object p2, p0, Lcom/facebook/katana/FeedbackAdapter$2;->val$commentListener:Lcom/facebook/katana/FeedbackAdapter$CommentsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/facebook/katana/FeedbackAdapter$2;->this$0:Lcom/facebook/katana/FeedbackAdapter;

    #setter for: Lcom/facebook/katana/FeedbackAdapter;->mLikePending:Z
    invoke-static {v0, v2}, Lcom/facebook/katana/FeedbackAdapter;->access$0(Lcom/facebook/katana/FeedbackAdapter;Z)V

    iget-object v0, p0, Lcom/facebook/katana/FeedbackAdapter$2;->this$0:Lcom/facebook/katana/FeedbackAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/FeedbackAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/facebook/katana/FeedbackAdapter$2;->val$commentListener:Lcom/facebook/katana/FeedbackAdapter$CommentsListener;

    iget-object v1, p0, Lcom/facebook/katana/FeedbackAdapter$2;->this$0:Lcom/facebook/katana/FeedbackAdapter;

    #getter for: Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
    invoke-static {v1}, Lcom/facebook/katana/FeedbackAdapter;->access$1(Lcom/facebook/katana/FeedbackAdapter;)Lcom/facebook/katana/service/api/FacebookPost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost;->getLikes()Lcom/facebook/katana/service/api/FacebookPost$Likes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost$Likes;->doesUserLike()Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    :goto_1e
    invoke-interface {v0, v1}, Lcom/facebook/katana/FeedbackAdapter$CommentsListener;->onLike(Z)V

    return-void

    :cond_22
    move v1, v2

    goto :goto_1e
.end method
