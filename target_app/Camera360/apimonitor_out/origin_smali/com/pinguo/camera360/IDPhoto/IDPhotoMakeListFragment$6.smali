.class Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$6;
.super Ljava/lang/Object;
.source "IDPhotoMakeListFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->doTitleClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$6;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackClick()V
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportCartLayBtnClick(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$6;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #calls: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->doIntentResult()V
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$23(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)V

    return-void
.end method

.method public onRightBtnClick()V
    .registers 1

    return-void
.end method
