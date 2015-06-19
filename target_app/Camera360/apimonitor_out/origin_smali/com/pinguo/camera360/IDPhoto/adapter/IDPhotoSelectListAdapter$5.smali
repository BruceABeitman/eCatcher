.class Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$5;
.super Ljava/lang/Object;
.source "IDPhotoSelectListAdapter.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->slideRightToCenter(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;

.field private final synthetic val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$5;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;

    iput-object p2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$5;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .registers 5

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$5;->this$0:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$5;->val$holder:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->idPhotoIconBtn:Landroid/widget/FrameLayout;

    #calls: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->setLeftMargin(Landroid/view/View;I)V
    invoke-static {v1, v2, v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->access$5(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Landroid/view/View;I)V

    return-void
.end method
