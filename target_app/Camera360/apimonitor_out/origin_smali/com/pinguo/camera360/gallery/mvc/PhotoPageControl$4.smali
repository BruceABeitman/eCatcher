.class Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$4;
.super Ljava/lang/Object;
.source "PhotoPageControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->onLongPress(Lcom/pinguo/camera360/gallery/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

.field private final synthetic val$item:Lcom/pinguo/camera360/gallery/data/LocalMediaItem;

.field private final synthetic val$picDescriEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;Lcom/pinguo/camera360/gallery/data/LocalMediaItem;Landroid/widget/EditText;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$4;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$4;->val$item:Lcom/pinguo/camera360/gallery/data/LocalMediaItem;

    iput-object p3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$4;->val$picDescriEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$4;->val$item:Lcom/pinguo/camera360/gallery/data/LocalMediaItem;

    instance-of v1, v1, Lcom/pinguo/camera360/gallery/data/Image;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$4;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPicInfoDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$4(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    :goto_f
    return-void

    :cond_10
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$4;->val$picDescriEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$4;->val$item:Lcom/pinguo/camera360/gallery/data/LocalMediaItem;

    iget-object v1, v1, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->picDescribeInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    :cond_2a
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$4;->val$item:Lcom/pinguo/camera360/gallery/data/LocalMediaItem;

    iget-object v1, v1, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->picDescribeInfo:Ljava/lang/String;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$4;->val$item:Lcom/pinguo/camera360/gallery/data/LocalMediaItem;

    iget-object v1, v1, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->picDescribeInfo:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    :cond_3a
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$4;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    #getter for: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->mPicInfoDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$4(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    invoke-static {}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$2()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "needn\'t save pic describe "

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_4e
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$4;->val$item:Lcom/pinguo/camera360/gallery/data/LocalMediaItem;

    iput-object v0, v1, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->picDescribeInfo:Ljava/lang/String;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$4;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$4;->val$picDescriEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$4;->val$item:Lcom/pinguo/camera360/gallery/data/LocalMediaItem;

    iget v3, v3, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->id:I

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$4;->val$item:Lcom/pinguo/camera360/gallery/data/LocalMediaItem;

    iget-object v4, v4, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->filePath:Ljava/lang/String;

    #calls: Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->savePicDescriInfoToDB(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->access$5(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_f
.end method
