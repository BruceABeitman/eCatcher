.class Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$5;
.super Ljava/lang/Object;
.source "EffectItemAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->checkMemberOnly(ILcom/pinguo/camera360/shop/model/entity/Product;Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Landroid/content/Context;I)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$5;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

    iput-object p2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$5;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalRegisterClick(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$5;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x3f1

    iget v2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$5;->val$position:I

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/login/StartLoginPageAdapter;->launchLoginPageAdapte(Landroid/app/Activity;II)V

    return-void
.end method
