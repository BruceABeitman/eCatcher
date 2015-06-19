.class Lcom/pinguo/share/local/LocalCloudShareModel$2;
.super Landroid/os/AsyncTask;
.source "LocalCloudShareModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/local/LocalCloudShareModel;->share(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/local/LocalCloudShareModel;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/pinguo/share/local/LocalCloudShareModel;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/share/local/LocalCloudShareModel$2;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;

    iput-object p2, p0, Lcom/pinguo/share/local/LocalCloudShareModel$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/pinguo/share/local/LocalCloudShareModel$2;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pinguo/share/local/LocalCloudShareModel$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$2;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;

    #getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
    invoke-static {v0}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/share/CloudShareInfo;->shareType:Lcom/pinguo/share/ShareType;

    sget-object v1, Lcom/pinguo/share/ShareType;->LOCAL_WX_CHATS:Lcom/pinguo/share/ShareType;

    if-ne v0, v1, :cond_44

    invoke-static {}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$2()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wx share"

    invoke-static {v0, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/pinguo/share/local/LocalCloudShareModel$2;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;

    #getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
    invoke-static {v1}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/share/CloudShareInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/pinguo/share/util/ShareModuleUtil;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/share/local/LocalCloudShareModel$2;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;

    #getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
    invoke-static {v2}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/pinguo/share/CloudShareInfo;->imageUrl:Ljava/lang/String;

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/pinguo/share/local/LocalWXShare;->newSendImageForChats(Landroid/app/Activity;[BLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Z

    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$2;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;

    #getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
    invoke-static {v0}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/pinguo/share/CloudShareInfo;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$2;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;

    #setter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mShareProcessing:Z
    invoke-static {v0, v6}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$3(Lcom/pinguo/share/local/LocalCloudShareModel;Z)V

    return-void

    :cond_44
    iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$2;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;

    #getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
    invoke-static {v0}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/share/CloudShareInfo;->shareType:Lcom/pinguo/share/ShareType;

    sget-object v1, Lcom/pinguo/share/ShareType;->LOCAL_WX_FRIENDS:Lcom/pinguo/share/ShareType;

    if-ne v0, v1, :cond_35

    invoke-static {}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$2()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wx friends share"

    invoke-static {v0, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/share/local/LocalCloudShareModel$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/pinguo/share/local/LocalCloudShareModel$2;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;

    #getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
    invoke-static {v1}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/share/CloudShareInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/pinguo/share/util/ShareModuleUtil;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/share/local/LocalCloudShareModel$2;->this$0:Lcom/pinguo/share/local/LocalCloudShareModel;

    #getter for: Lcom/pinguo/share/local/LocalCloudShareModel;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
    invoke-static {v2}, Lcom/pinguo/share/local/LocalCloudShareModel;->access$1(Lcom/pinguo/share/local/LocalCloudShareModel;)Lcom/pinguo/share/CloudShareInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/pinguo/share/CloudShareInfo;->imageUrl:Ljava/lang/String;

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/pinguo/share/local/LocalWXShare;->newSendImageForFriends(Landroid/app/Activity;[BLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_35
.end method
