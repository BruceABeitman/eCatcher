.class Lcom/pinguo/camera360/camera/activity/OptionsSavePath$4;
.super Ljava/lang/Object;
.source "OptionsSavePath.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/activity/OptionsSavePath;
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
.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/OptionsSavePath;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsSavePath;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath$4;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsSavePath;

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

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v3, "path"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_21

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath$4;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsSavePath;

    #calls: Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->updateView(Ljava/io/File;)V
    invoke-static {v3, v2}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->access$1(Lcom/pinguo/camera360/camera/activity/OptionsSavePath;Ljava/io/File;)V

    :goto_20
    return-void

    :cond_21
    iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsSavePath$4;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsSavePath;

    #calls: Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->updateView(Ljava/io/File;)V
    invoke-static {v3, v0}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath;->access$1(Lcom/pinguo/camera360/camera/activity/OptionsSavePath;Ljava/io/File;)V

    goto :goto_20
.end method
