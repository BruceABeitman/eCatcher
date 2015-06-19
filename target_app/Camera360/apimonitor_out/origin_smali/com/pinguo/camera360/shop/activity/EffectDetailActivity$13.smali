.class Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$13;
.super Ljava/lang/Object;
.source "EffectDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->checkMemberOnly()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$13;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalRegisterClick(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$13;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    const/16 v1, 0x3f1

    const/16 v2, -0x3e7

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/login/StartLoginPageAdapter;->launchLoginPageAdapte(Landroid/app/Activity;II)V

    return-void
.end method
