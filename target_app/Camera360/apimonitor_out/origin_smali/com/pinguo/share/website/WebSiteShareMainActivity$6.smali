.class Lcom/pinguo/share/website/WebSiteShareMainActivity$6;
.super Landroid/os/AsyncTask;
.source "WebSiteShareMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/website/WebSiteShareMainActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$6;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .registers 10

    const/16 v7, 0x50

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$6;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
    invoke-static {v6}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$28(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/CloudShareInfo;

    move-result-object v6

    iget-object v4, v6, Lcom/pinguo/share/CloudShareInfo;->imagePath:Ljava/lang/String;

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1b

    invoke-static {v4, v7, v7}, Lcom/pinguo/share/util/ShareModuleUtil;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/pinguo/share/util/ShareModuleUtil;->getRotateBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1b
    if-eqz v1, :cond_1f

    move-object v2, v1

    :goto_1e
    return-object v2

    :cond_1f
    iget-object v6, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$6;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mCloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
    invoke-static {v6}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$28(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/CloudShareInfo;

    move-result-object v6

    iget-object v5, v6, Lcom/pinguo/share/CloudShareInfo;->imageUrl:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v0, 0x0

    :cond_29
    invoke-static {v5}, Lcom/pinguo/share/net/NetConnection;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_39

    :goto_2f
    if-eqz v0, :cond_37

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_37
    move-object v2, v1

    goto :goto_1e

    :cond_39
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x3

    if-le v3, v6, :cond_29

    goto :goto_2f
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$6;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$6;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #setter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$26(Lcom/pinguo/share/website/WebSiteShareMainActivity;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$6;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mPreView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$27(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$6;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$21(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$6;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
