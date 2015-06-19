.class Lcom/facebook/katana/FeedbackAdapter$1;
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

    iput-object p1, p0, Lcom/facebook/katana/FeedbackAdapter$1;->this$0:Lcom/facebook/katana/FeedbackAdapter;

    iput-object p2, p0, Lcom/facebook/katana/FeedbackAdapter$1;->val$commentListener:Lcom/facebook/katana/FeedbackAdapter$CommentsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;

    iget-object v1, p0, Lcom/facebook/katana/FeedbackAdapter$1;->val$commentListener:Lcom/facebook/katana/FeedbackAdapter$CommentsListener;

    invoke-interface {v1, v0}, Lcom/facebook/katana/FeedbackAdapter$CommentsListener;->onMediaItemClicked(Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;)V

    return-void
.end method
