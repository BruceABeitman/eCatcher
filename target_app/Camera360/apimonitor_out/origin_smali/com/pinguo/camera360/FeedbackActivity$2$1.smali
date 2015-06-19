.class Lcom/pinguo/camera360/FeedbackActivity$2$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/FeedbackActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/FeedbackActivity$2;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/FeedbackActivity$2;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/FeedbackActivity$2$1;->this$1:Lcom/pinguo/camera360/FeedbackActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/FeedbackActivity$2$1;->this$1:Lcom/pinguo/camera360/FeedbackActivity$2;

    #getter for: Lcom/pinguo/camera360/FeedbackActivity$2;->this$0:Lcom/pinguo/camera360/FeedbackActivity;
    invoke-static {v0}, Lcom/pinguo/camera360/FeedbackActivity$2;->access$0(Lcom/pinguo/camera360/FeedbackActivity$2;)Lcom/pinguo/camera360/FeedbackActivity;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/FeedbackActivity;->msvLog:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/pinguo/camera360/FeedbackActivity;->access$3(Lcom/pinguo/camera360/FeedbackActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method
