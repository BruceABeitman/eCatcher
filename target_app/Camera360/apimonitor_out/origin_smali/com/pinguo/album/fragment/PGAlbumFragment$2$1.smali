.class Lcom/pinguo/album/fragment/PGAlbumFragment$2$1;
.super Ljava/lang/Object;
.source "PGAlbumFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/album/fragment/PGAlbumFragment$2;->onStatusChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/album/fragment/PGAlbumFragment$2;

.field private final synthetic val$msg:Ljava/lang/String;

.field private final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/pinguo/album/fragment/PGAlbumFragment$2;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2$1;->this$1:Lcom/pinguo/album/fragment/PGAlbumFragment$2;

    iput p2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2$1;->val$status:I

    iput-object p3, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2$1;->this$1:Lcom/pinguo/album/fragment/PGAlbumFragment$2;

    #getter for: Lcom/pinguo/album/fragment/PGAlbumFragment$2;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
    invoke-static {v2}, Lcom/pinguo/album/fragment/PGAlbumFragment$2;->access$0(Lcom/pinguo/album/fragment/PGAlbumFragment$2;)Lcom/pinguo/album/fragment/PGAlbumFragment;

    move-result-object v2

    #getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mHeadUploadStatusView:Lcom/pinguo/album/surpport/GLTextView;
    invoke-static {v2}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$1(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/surpport/GLTextView;

    move-result-object v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2$1;->this$1:Lcom/pinguo/album/fragment/PGAlbumFragment$2;

    #getter for: Lcom/pinguo/album/fragment/PGAlbumFragment$2;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
    invoke-static {v2}, Lcom/pinguo/album/fragment/PGAlbumFragment$2;->access$0(Lcom/pinguo/album/fragment/PGAlbumFragment$2;)Lcom/pinguo/album/fragment/PGAlbumFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v3, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2$1;->val$status:I

    iget-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2$1;->val$msg:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->status2String(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2$1;->val$status:I

    packed-switch v2, :pswitch_data_9a

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2$1;->this$1:Lcom/pinguo/album/fragment/PGAlbumFragment$2;

    #getter for: Lcom/pinguo/album/fragment/PGAlbumFragment$2;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
    invoke-static {v2}, Lcom/pinguo/album/fragment/PGAlbumFragment$2;->access$0(Lcom/pinguo/album/fragment/PGAlbumFragment$2;)Lcom/pinguo/album/fragment/PGAlbumFragment;

    move-result-object v2

    #getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mHeadUploadStatusView:Lcom/pinguo/album/surpport/GLTextView;
    invoke-static {v2}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$1(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/surpport/GLTextView;

    move-result-object v2

    const v3, 0x7f020009

    invoke-virtual {v2, v3}, Lcom/pinguo/album/surpport/GLTextView;->setIconLeft(I)V

    :cond_33
    :goto_33
    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2$1;->this$1:Lcom/pinguo/album/fragment/PGAlbumFragment$2;

    #getter for: Lcom/pinguo/album/fragment/PGAlbumFragment$2;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
    invoke-static {v2}, Lcom/pinguo/album/fragment/PGAlbumFragment$2;->access$0(Lcom/pinguo/album/fragment/PGAlbumFragment$2;)Lcom/pinguo/album/fragment/PGAlbumFragment;

    move-result-object v2

    #getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mHeadUploadStatusView:Lcom/pinguo/album/surpport/GLTextView;
    invoke-static {v2}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$1(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/surpport/GLTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2$1;->this$1:Lcom/pinguo/album/fragment/PGAlbumFragment$2;

    #getter for: Lcom/pinguo/album/fragment/PGAlbumFragment$2;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
    invoke-static {v3}, Lcom/pinguo/album/fragment/PGAlbumFragment$2;->access$0(Lcom/pinguo/album/fragment/PGAlbumFragment$2;)Lcom/pinguo/album/fragment/PGAlbumFragment;

    move-result-object v3

    #calls: Lcom/pinguo/album/fragment/PGAlbumFragment;->getUploadStatusStringArray(Ljava/lang/String;)Lcom/pinguo/album/opengles/StringTexture$StringArray;
    invoke-static {v3, v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$4(Lcom/pinguo/album/fragment/PGAlbumFragment;Ljava/lang/String;)Lcom/pinguo/album/opengles/StringTexture$StringArray;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pinguo/album/surpport/GLTextView;->setText(Lcom/pinguo/album/opengles/StringTexture$StringArray;)V

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2$1;->this$1:Lcom/pinguo/album/fragment/PGAlbumFragment$2;

    #getter for: Lcom/pinguo/album/fragment/PGAlbumFragment$2;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
    invoke-static {v2}, Lcom/pinguo/album/fragment/PGAlbumFragment$2;->access$0(Lcom/pinguo/album/fragment/PGAlbumFragment$2;)Lcom/pinguo/album/fragment/PGAlbumFragment;

    move-result-object v2

    #getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mPullRefreshGLView:Lcom/pinguo/album/surpport/GLPullToRefreshView;
    invoke-static {v2}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$0(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/surpport/GLPullToRefreshView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->invalidate()V

    :cond_57
    return-void

    :pswitch_58
    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2$1;->this$1:Lcom/pinguo/album/fragment/PGAlbumFragment$2;

    #getter for: Lcom/pinguo/album/fragment/PGAlbumFragment$2;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
    invoke-static {v2}, Lcom/pinguo/album/fragment/PGAlbumFragment$2;->access$0(Lcom/pinguo/album/fragment/PGAlbumFragment$2;)Lcom/pinguo/album/fragment/PGAlbumFragment;

    move-result-object v2

    #getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mHeadUploadStatusView:Lcom/pinguo/album/surpport/GLTextView;
    invoke-static {v2}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$1(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/surpport/GLTextView;

    move-result-object v2

    const v3, 0x7f020007

    invoke-virtual {v2, v3}, Lcom/pinguo/album/surpport/GLTextView;->setIconLeft(I)V

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2$1;->val$msg:Ljava/lang/String;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_33

    :try_start_74
    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2$1;->val$msg:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_33

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2$1;->this$1:Lcom/pinguo/album/fragment/PGAlbumFragment$2;

    #getter for: Lcom/pinguo/album/fragment/PGAlbumFragment$2;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
    invoke-static {v2}, Lcom/pinguo/album/fragment/PGAlbumFragment$2;->access$0(Lcom/pinguo/album/fragment/PGAlbumFragment$2;)Lcom/pinguo/album/fragment/PGAlbumFragment;

    move-result-object v2

    #calls: Lcom/pinguo/album/fragment/PGAlbumFragment;->startDownIncrementData()V
    invoke-static {v2}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$3(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_85} :catch_86

    goto :goto_33

    :catch_86
    move-exception v2

    goto :goto_33

    :pswitch_88
    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2$1;->this$1:Lcom/pinguo/album/fragment/PGAlbumFragment$2;

    #getter for: Lcom/pinguo/album/fragment/PGAlbumFragment$2;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
    invoke-static {v2}, Lcom/pinguo/album/fragment/PGAlbumFragment$2;->access$0(Lcom/pinguo/album/fragment/PGAlbumFragment$2;)Lcom/pinguo/album/fragment/PGAlbumFragment;

    move-result-object v2

    #getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mHeadUploadStatusView:Lcom/pinguo/album/surpport/GLTextView;
    invoke-static {v2}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$1(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/surpport/GLTextView;

    move-result-object v2

    const v3, 0x7f020008

    invoke-virtual {v2, v3}, Lcom/pinguo/album/surpport/GLTextView;->setIconLeft(I)V

    goto :goto_33

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_88
        :pswitch_58
    .end packed-switch
.end method
