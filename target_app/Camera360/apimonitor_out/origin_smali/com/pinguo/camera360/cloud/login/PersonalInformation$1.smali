.class Lcom/pinguo/camera360/cloud/login/PersonalInformation$1;
.super Ljava/lang/Object;
.source "PersonalInformation.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/cloud/login/PersonalInformation;->initSnsBindView()V
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
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;

.field private final synthetic val$snsBindGVAdapter:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$1;->this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;

    iput-object p2, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$1;->val$snsBindGVAdapter:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$1;->val$snsBindGVAdapter:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;

    invoke-virtual {v2, p3}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->getIsBind()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v1, p2}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->onClick(Landroid/view/View;)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_13
.end method
