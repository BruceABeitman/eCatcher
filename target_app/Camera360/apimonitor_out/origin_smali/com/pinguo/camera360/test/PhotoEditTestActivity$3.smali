.class Lcom/pinguo/camera360/test/PhotoEditTestActivity$3;
.super Ljava/lang/Object;
.source "PhotoEditTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/test/PhotoEditTestActivity;->effectMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/test/PhotoEditTestActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/test/PhotoEditTestActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity$3;->this$0:Lcom/pinguo/camera360/test/PhotoEditTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity$3;->this$0:Lcom/pinguo/camera360/test/PhotoEditTestActivity;

    #getter for: Lcom/pinguo/camera360/test/PhotoEditTestActivity;->btn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->access$0(Lcom/pinguo/camera360/test/PhotoEditTestActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity$3;->this$0:Lcom/pinguo/camera360/test/PhotoEditTestActivity;

    #getter for: Lcom/pinguo/camera360/test/PhotoEditTestActivity;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->access$1(Lcom/pinguo/camera360/test/PhotoEditTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "--------Over---------\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method
