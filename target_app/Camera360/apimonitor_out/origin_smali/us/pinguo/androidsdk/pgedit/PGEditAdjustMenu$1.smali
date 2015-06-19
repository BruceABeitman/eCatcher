.class Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu$1;
.super Ljava/lang/Object;
.source "PGEditAdjustMenu.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekValueChanged(F)V
    .registers 5

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mAutoHideTextView:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;
    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;)Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->setRateTextView(F)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mAdjustMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;
    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;

    move-result-object v1

    invoke-virtual {v1, p1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->setRate(F)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mAdjustSet:Ljava/util/Set;
    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mAdjustMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;

    move-result-object v2

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->getEffect()Ljava/lang/Enum;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;

    iget-object v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mAdjustMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;
    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;

    move-result-object v1

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->getChildEffect()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mAdjustMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;

    move-result-object v2

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->getParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->adjustChange(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;

    iget-object v1, v1, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;

    invoke-virtual {v1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->showEffect(Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;

    const/4 v2, 0x1

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->isNeedMake:Z
    invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;Z)V

    return-void
.end method
