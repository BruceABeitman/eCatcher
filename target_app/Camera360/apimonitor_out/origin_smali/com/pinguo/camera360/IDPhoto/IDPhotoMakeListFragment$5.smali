.class Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$5;
.super Ljava/lang/Object;
.source "IDPhotoMakeListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->initUI(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$5;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportCartLayBtnClick(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$5;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$5;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    invoke-virtual {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/pinguo/camera360/order/ShareForCouponActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x3ea

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
