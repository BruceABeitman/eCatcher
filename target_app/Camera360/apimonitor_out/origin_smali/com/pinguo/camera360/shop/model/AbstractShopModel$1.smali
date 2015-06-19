.class Lcom/pinguo/camera360/shop/model/AbstractShopModel$1;
.super Lcom/pinguo/lib/os/AsyncTask;
.source "AbstractShopModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/model/AbstractShopModel;->install(Lcom/pinguo/camera360/shop/model/entity/Product;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/os/AsyncTask",
        "<",
        "Lcom/pinguo/camera360/shop/model/entity/Product;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/shop/model/AbstractShopModel;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/model/AbstractShopModel;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$1;->this$0:Lcom/pinguo/camera360/shop/model/AbstractShopModel;

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/pinguo/camera360/shop/model/entity/Product;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/AbstractShopModel$1;->doInBackground([Lcom/pinguo/camera360/shop/model/entity/Product;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/pinguo/camera360/shop/model/entity/Product;)Ljava/lang/Void;
    .registers 4

    const/4 v1, 0x0

    aget-object v0, p1, v1

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$1;->this$0:Lcom/pinguo/camera360/shop/model/AbstractShopModel;

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->buy(Lcom/pinguo/camera360/shop/model/entity/Product;)V

    :cond_a
    const/4 v1, 0x0

    return-object v1
.end method
