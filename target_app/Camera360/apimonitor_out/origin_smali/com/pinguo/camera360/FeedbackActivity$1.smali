.class Lcom/pinguo/camera360/FeedbackActivity$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/FeedbackActivity;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/FeedbackActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/FeedbackActivity$1;->this$0:Lcom/pinguo/camera360/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/FeedbackActivity$1;->this$0:Lcom/pinguo/camera360/FeedbackActivity;

    invoke-static {}, Lcom/pinguo/camera360/FeedbackActivity;->access$0()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    #setter for: Lcom/pinguo/camera360/FeedbackActivity;->mKey:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/pinguo/camera360/FeedbackActivity;->access$1(Lcom/pinguo/camera360/FeedbackActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
