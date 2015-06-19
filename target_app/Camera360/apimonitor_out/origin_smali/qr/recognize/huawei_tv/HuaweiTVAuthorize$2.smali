.class Lqr/recognize/huawei_tv/HuaweiTVAuthorize$2;
.super Ljava/lang/Object;
.source "HuaweiTVAuthorize.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;


# direct methods
.method constructor <init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V
    .registers 2

    iput-object p1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$2;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3

    const/high16 v0, 0x3f80

    sub-float/2addr v0, p1

    return v0
.end method
