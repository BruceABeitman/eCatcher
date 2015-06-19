.class Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$1;
.super Landroid/os/Handler;
.source "IdPhotoSeventhGuideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$1;->this$0:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    :goto_6
    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$1;->this$0:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;

    #getter for: Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mFirstLineView:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->access$0(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$1;->this$0:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;

    #calls: Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->startFirstLineAnimation()V
    invoke-static {v0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->access$1(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)V

    goto :goto_6

    :pswitch_16
    iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$1;->this$0:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;

    #getter for: Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mSecondLineView:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->access$2(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$1;->this$0:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;

    #calls: Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->startSecondLineAnimation()V
    invoke-static {v0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->access$3(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)V

    goto :goto_6

    :pswitch_25
    iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$1;->this$0:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;

    #getter for: Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mThirdLineView:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->access$4(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$1;->this$0:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;

    #calls: Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->startThirdLineAnimation()V
    invoke-static {v0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->access$5(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)V

    goto :goto_6

    :pswitch_34
    iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$1;->this$0:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;

    #getter for: Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mStartMakeBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->access$6(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$1;->this$0:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;

    #calls: Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->startBtnAnimation()V
    invoke-static {v0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->access$7(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)V

    goto :goto_6

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_7
        :pswitch_16
        :pswitch_25
        :pswitch_34
    .end packed-switch
.end method
