.class public Lcom/pinguo/camera360/order/PayResultActivity;
.super Landroid/app/Activity;
.source "PayResultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRA_KEY_ORDER_ID:Ljava/lang/String; = "oid"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mBackToCamera:Landroid/widget/ImageView;

.field protected mBackToCameraFlag:Z

.field private mContentBox:Landroid/view/View;

.field mNetworkIV:Landroid/widget/ImageView;

.field mNetworkRefreshAnim:Landroid/view/animation/Animation;

.field protected mPgOrder:Lcom/pinguo/camera360/order/model/Order;

.field private mRetryBox:Landroid/view/View;

.field private mVerifyFuture:Lcom/pinguo/lib/os/AsyncFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<",
            "Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/order/PayResultActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/order/PayResultActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mBackToCameraFlag:Z

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/order/PayResultActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mRetryBox:Landroid/view/View;

    return-object v0
.end method

.method private initAnim()V
    .registers 3

    const v1, 0x7f040006

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mNetworkRefreshAnim:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v1, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mNetworkRefreshAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_44

    :goto_7
    return-void

    :sswitch_8
    invoke-static {p0}, Lcom/pinguo/camera360/PgCameraApplication;->startCameraActivity(Landroid/content/Context;)V

    goto :goto_7

    :sswitch_c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/order/OrderDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "oid"

    iget-object v2, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;

    iget-object v2, v2, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget-object v2, v2, Lcom/pinguo/camera360/order/model/Order$Info;->mOrderId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "back"

    iget-boolean v2, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mBackToCameraFlag:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/order/PayResultActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/order/PayResultActivity;->finish()V

    goto :goto_7

    :sswitch_33
    invoke-virtual {p0}, Lcom/pinguo/camera360/order/PayResultActivity;->finish()V

    goto :goto_7

    :sswitch_37
    iget-object v1, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mNetworkIV:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mNetworkRefreshAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/order/PayResultActivity;->verifyOrder(Z)V

    goto :goto_7

    nop

    :sswitch_data_44
    .sparse-switch
        0x7f0a03a9 -> :sswitch_8
        0x7f0a03b2 -> :sswitch_c
        0x7f0a03b3 -> :sswitch_33
        0x7f0a03b5 -> :sswitch_37
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f03009b

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/order/PayResultActivity;->setContentView(I)V

    new-instance v3, Lcom/pinguo/camera360/order/model/Order;

    invoke-virtual {p0}, Lcom/pinguo/camera360/order/PayResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/pinguo/camera360/order/model/Order;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;

    invoke-virtual {p0}, Lcom/pinguo/camera360/order/PayResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "oid"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-object v3, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;

    iget-object v3, v3, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iput-object v1, v3, Lcom/pinguo/camera360/order/model/Order$Info;->mOrderId:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/pinguo/camera360/order/PayResultActivity;->verifyOrder(Z)V

    :cond_2b
    const v3, 0x7f0a03a9

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/order/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mBackToCamera:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mBackToCamera:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a03b2

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/order/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a03b3

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/order/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a03aa

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/order/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mContentBox:Landroid/view/View;

    const v3, 0x7f0a03b4

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/order/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mRetryBox:Landroid/view/View;

    const v3, 0x7f0a03b5

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/order/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mNetworkIV:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mNetworkIV:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/order/PayResultActivity;->initAnim()V

    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/order/model/Transaction;->getCouponType()I

    move-result v3

    if-eq v3, v5, :cond_85

    invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportPromoUseSuccess()V

    :cond_85
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/order/PayResultActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mVerifyFuture:Lcom/pinguo/lib/os/AsyncFuture;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mVerifyFuture:Lcom/pinguo/lib/os/AsyncFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z

    :cond_12
    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/Transaction;->clear()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public updateOrderInfo(Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pinguo/camera360/order/PayResultActivity;->mRetryBox:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pinguo/camera360/order/PayResultActivity;->mContentBox:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    const v10, 0x7f0a03ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/pinguo/camera360/order/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;->data:Ljava/lang/Object;

    check-cast v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data;

    iget-object v10, v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data;->orderInfo:Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo;

    iget-object v10, v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo;->showStatus:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f0a03ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/pinguo/camera360/order/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;->data:Ljava/lang/Object;

    check-cast v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data;

    iget-object v10, v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data;->orderInfo:Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo;

    iget-object v10, v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo;->oid:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f0a03ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/pinguo/camera360/order/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string/jumbo v11, "\uffe5%.2f"

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;->data:Ljava/lang/Object;

    check-cast v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data;

    iget-object v10, v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data;->orderInfo:Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo;

    iget v10, v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo;->amount:I

    int-to-double v14, v10

    const-wide/high16 v16, 0x4059

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f0a03ae

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/pinguo/camera360/order/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;->data:Ljava/lang/Object;

    check-cast v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data;

    iget-object v10, v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data;->orderInfo:Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo;

    iget-wide v10, v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo;->createTime:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    const-string/jumbo v12, "yyyy-MM-dd"

    invoke-static {v10, v11, v12}, Lcom/pinguo/lib/util/TimeUtils;->getStringDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f0a03af

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/pinguo/camera360/order/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;->data:Ljava/lang/Object;

    check-cast v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data;

    iget-object v10, v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data;->orderInfo:Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo;

    iget-object v10, v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo;->deliver:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo$Deliver;

    iget-object v10, v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo$Deliver;->consignee:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f0a03b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/pinguo/camera360/order/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;->data:Ljava/lang/Object;

    check-cast v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data;

    iget-object v10, v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data;->orderInfo:Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo;

    iget-object v10, v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo;->deliver:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo$Deliver;

    iget-object v10, v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo$Deliver;->mobile:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;->data:Ljava/lang/Object;

    check-cast v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data;

    iget-object v10, v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data;->orderInfo:Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo;

    iget-object v10, v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo;->deliver:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_123

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;->data:Ljava/lang/Object;

    check-cast v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data;

    iget-object v10, v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data;->orderInfo:Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo;

    iget-object v10, v10, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo;->deliver:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo$Deliver;

    const v10, 0x7f0a03b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/pinguo/camera360/order/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, v5, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo$Deliver;->province:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo$Deliver;->city:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo$Deliver;->district:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response$Data$OrderInfo$Deliver;->address:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_123
    return-void
.end method

.method protected verifyOrder(Z)V
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V

    :cond_13
    move-object v0, v1

    iget-object v2, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mVerifyFuture:Lcom/pinguo/lib/os/AsyncFuture;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mVerifyFuture:Lcom/pinguo/lib/os/AsyncFuture;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z

    :cond_1e
    iget-object v2, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;

    invoke-virtual {v2}, Lcom/pinguo/camera360/order/model/Order;->verify()Lcom/pinguo/lib/os/AsyncFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mVerifyFuture:Lcom/pinguo/lib/os/AsyncFuture;

    iget-object v2, p0, Lcom/pinguo/camera360/order/PayResultActivity;->mVerifyFuture:Lcom/pinguo/lib/os/AsyncFuture;

    new-instance v3, Lcom/pinguo/camera360/order/PayResultActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/pinguo/camera360/order/PayResultActivity$1;-><init>(Lcom/pinguo/camera360/order/PayResultActivity;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V

    invoke-interface {v2, v3}, Lcom/pinguo/lib/os/AsyncFuture;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    return-void
.end method
