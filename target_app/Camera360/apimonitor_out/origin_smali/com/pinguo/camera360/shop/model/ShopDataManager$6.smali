.class Lcom/pinguo/camera360/shop/model/ShopDataManager$6;
.super Lcom/pinguo/lib/os/AsyncTask;
.source "ShopDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/model/ShopDataManager;->reload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/shop/model/ShopDataManager;

.field private final synthetic val$jsonFilePath:Ljava/lang/String;

.field private final synthetic val$shopJsonFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/model/ShopDataManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$6;->this$0:Lcom/pinguo/camera360/shop/model/ShopDataManager;

    iput-object p2, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$6;->val$shopJsonFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$6;->val$jsonFilePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/ShopDataManager$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 7

    :try_start_0
    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$6;->this$0:Lcom/pinguo/camera360/shop/model/ShopDataManager;

    #getter for: Lcom/pinguo/camera360/shop/model/ShopDataManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->access$2(Lcom/pinguo/camera360/shop/model/ShopDataManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$6;->val$shopJsonFileName:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$6;->val$jsonFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/pinguo/lib/util/AssetsUtils;->copyAssetsFileTo(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_14

    :goto_12
    const/4 v1, 0x0

    return-object v1

    :catch_14
    move-exception v0

    invoke-static {}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Copy assert json file fail! From: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$6;->val$shopJsonFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$6;->val$jsonFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method
