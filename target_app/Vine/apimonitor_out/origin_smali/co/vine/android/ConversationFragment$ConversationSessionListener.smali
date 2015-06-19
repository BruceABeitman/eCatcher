.class Lco/vine/android/ConversationFragment$ConversationSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "ConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversationSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ConversationFragment;


# direct methods
.method private constructor <init>(Lco/vine/android/ConversationFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/ConversationFragment$ConversationSessionListener;->this$0:Lco/vine/android/ConversationFragment;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/ConversationFragment;Lco/vine/android/ConversationFragment$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/ConversationFragment$ConversationSessionListener;-><init>(Lco/vine/android/ConversationFragment;)V

    return-void
.end method


# virtual methods
.method public onGetConversationComplete(Ljava/lang/String;ILjava/lang/String;JIZ)V
    .registers 13

    const/4 v4, 0x0

    iget-object v2, p0, Lco/vine/android/ConversationFragment$ConversationSessionListener;->this$0:Lco/vine/android/ConversationFragment;

    invoke-virtual {v2, p1}, Lco/vine/android/ConversationFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v1

    if-eqz v1, :cond_54

    iget-object v2, p0, Lco/vine/android/ConversationFragment$ConversationSessionListener;->this$0:Lco/vine/android/ConversationFragment;

    #getter for: Lco/vine/android/ConversationFragment;->mConversationRowId:J
    invoke-static {v2}, Lco/vine/android/ConversationFragment;->access$700(Lco/vine/android/ConversationFragment;)J

    move-result-wide v2

    cmp-long v2, p4, v2

    if-nez v2, :cond_54

    iget-object v2, p0, Lco/vine/android/ConversationFragment$ConversationSessionListener;->this$0:Lco/vine/android/ConversationFragment;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lco/vine/android/ConversationFragment;->hideProgress(I)V

    if-eqz p7, :cond_55

    iget-object v2, p0, Lco/vine/android/ConversationFragment$ConversationSessionListener;->this$0:Lco/vine/android/ConversationFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v4}, Lco/vine/android/ConversationFragment;->showSadface(ZZ)V

    :goto_21
    iget-object v2, p0, Lco/vine/android/ConversationFragment$ConversationSessionListener;->this$0:Lco/vine/android/ConversationFragment;

    iget-object v0, v2, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lco/vine/android/ConversationAdapter;

    iget-object v2, p0, Lco/vine/android/ConversationFragment$ConversationSessionListener;->this$0:Lco/vine/android/ConversationFragment;

    #getter for: Lco/vine/android/ConversationFragment;->mFetched:Z
    invoke-static {v2}, Lco/vine/android/ConversationFragment;->access$1300(Lco/vine/android/ConversationFragment;)Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual {v0}, Lco/vine/android/ConversationAdapter;->atLastPage()Z

    move-result v2

    if-nez v2, :cond_3d

    if-nez p7, :cond_3d

    invoke-virtual {v0}, Lco/vine/android/ConversationAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_48

    :cond_3d
    iget-object v2, p0, Lco/vine/android/ConversationFragment$ConversationSessionListener;->this$0:Lco/vine/android/ConversationFragment;

    #getter for: Lco/vine/android/ConversationFragment;->mLoadMoreHeaderContent:Landroid/view/View;
    invoke-static {v2}, Lco/vine/android/ConversationFragment;->access$1400(Lco/vine/android/ConversationFragment;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_48
    const/4 v2, 0x4

    if-ne p6, v2, :cond_54

    iget-object v2, p0, Lco/vine/android/ConversationFragment$ConversationSessionListener;->this$0:Lco/vine/android/ConversationFragment;

    #getter for: Lco/vine/android/ConversationFragment;->mLoadMoreHeaderContent:Landroid/view/View;
    invoke-static {v2}, Lco/vine/android/ConversationFragment;->access$1400(Lco/vine/android/ConversationFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_54
    return-void

    :cond_55
    iget-object v2, p0, Lco/vine/android/ConversationFragment$ConversationSessionListener;->this$0:Lco/vine/android/ConversationFragment;

    invoke-virtual {v2, v4}, Lco/vine/android/ConversationFragment;->showSadface(Z)V

    goto :goto_21
.end method

.method public onGetConversationRemoteIdComplete(J)V
    .registers 5

    iget-object v0, p0, Lco/vine/android/ConversationFragment$ConversationSessionListener;->this$0:Lco/vine/android/ConversationFragment;

    #setter for: Lco/vine/android/ConversationFragment;->mConversationId:J
    invoke-static {v0, p1, p2}, Lco/vine/android/ConversationFragment;->access$1502(Lco/vine/android/ConversationFragment;J)J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_16

    iget-object v0, p0, Lco/vine/android/ConversationFragment$ConversationSessionListener;->this$0:Lco/vine/android/ConversationFragment;

    #getter for: Lco/vine/android/ConversationFragment;->mLoadMoreHeaderContent:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/ConversationFragment;->access$1400(Lco/vine/android/ConversationFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    return-void
.end method

.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/image/ImageKey;",
            "Lco/vine/android/util/image/UrlImage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/ConversationFragment$ConversationSessionListener;->this$0:Lco/vine/android/ConversationFragment;

    iget-object v0, v0, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lco/vine/android/ConversationAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/ConversationAdapter;->setImages(Ljava/util/HashMap;)V

    return-void
.end method

.method public onVideoPathObtained(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/video/VideoKey;",
            "Lco/vine/android/util/video/UrlVideo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/ConversationFragment$ConversationSessionListener;->this$0:Lco/vine/android/ConversationFragment;

    iget-object v0, v0, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lco/vine/android/ConversationAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/ConversationAdapter;->onVideoPathObtained(Ljava/util/HashMap;)V

    return-void
.end method
