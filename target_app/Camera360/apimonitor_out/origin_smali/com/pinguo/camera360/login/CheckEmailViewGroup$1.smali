.class Lcom/pinguo/camera360/login/CheckEmailViewGroup$1;
.super Ljava/lang/Object;
.source "CheckEmailViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/login/CheckEmailViewGroup;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$1;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$1;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;

    #getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mState:I
    invoke-static {v0}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$2(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/pinguo/camera360/login/CheckEmailViewGroup$1;->this$0:Lcom/pinguo/camera360/login/CheckEmailViewGroup;

    #getter for: Lcom/pinguo/camera360/login/CheckEmailViewGroup;->mEmailInput:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
    invoke-static {v0}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->access$3(Lcom/pinguo/camera360/login/CheckEmailViewGroup;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    return-void
.end method
