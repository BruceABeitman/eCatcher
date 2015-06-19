.class public Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;
.super Ljava/lang/Object;
.source "UmengStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/umeng/UmengStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Another"
.end annotation


# static fields
.field private static ANOTHER_1:Ljava/lang/String;

.field private static ANOTHER_2:Ljava/lang/String;

.field private static ANOTHER_3:Ljava/lang/String;

.field private static ANOTHER_4:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "another_1"

    sput-object v0, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->ANOTHER_1:Ljava/lang/String;

    const-string/jumbo v0, "another_2"

    sput-object v0, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->ANOTHER_2:Ljava/lang/String;

    const-string/jumbo v0, "another_3"

    sput-object v0, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->ANOTHER_3:Ljava/lang/String;

    const-string/jumbo v0, "another_4"

    sput-object v0, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->ANOTHER_4:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static anotherCurrentNetType(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->ANOTHER_4:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->ANOTHER_4:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static anotherPartnerAppDownLoad(I)V
    .registers 4

    const-string/jumbo v0, ""

    packed-switch p0, :pswitch_data_46

    :goto_6
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->ANOTHER_3:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->ANOTHER_3:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void

    :pswitch_2d
    const-string/jumbo v0, "choice_open"

    goto :goto_6

    :pswitch_31
    const-string/jumbo v0, "choice_close"

    goto :goto_6

    :pswitch_35
    const-string/jumbo v0, "start_down"

    goto :goto_6

    :pswitch_39
    const-string/jumbo v0, "down_success"

    goto :goto_6

    :pswitch_3d
    const-string/jumbo v0, "down_fail"

    goto :goto_6

    :pswitch_41
    const-string/jumbo v0, "down_lay_show"

    goto :goto_6

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_31
        :pswitch_35
        :pswitch_39
        :pswitch_3d
        :pswitch_41
    .end packed-switch
.end method

.method public static anotherStoreBannerError(I)V
    .registers 4

    const-string/jumbo v0, ""

    packed-switch p0, :pswitch_data_46

    :goto_6
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->ANOTHER_2:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->ANOTHER_2:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void

    :pswitch_2d
    const-string/jumbo v0, "IOException_request"

    goto :goto_6

    :pswitch_31
    const-string/jumbo v0, "GeneralSecurityException"

    goto :goto_6

    :pswitch_35
    const-string/jumbo v0, "IOException_save"

    goto :goto_6

    :pswitch_39
    const-string/jumbo v0, "JSONException_services"

    goto :goto_6

    :pswitch_3d
    const-string/jumbo v0, "IOException_data_read_fail"

    goto :goto_6

    :pswitch_41
    const-string/jumbo v0, "JSONException_local"

    goto :goto_6

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_31
        :pswitch_35
        :pswitch_39
        :pswitch_3d
        :pswitch_41
    .end packed-switch
.end method

.method public static anotherWelcomeError(I)V
    .registers 4

    const-string/jumbo v0, ""

    packed-switch p0, :pswitch_data_3e

    :goto_6
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->ANOTHER_1:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->ANOTHER_1:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void

    :pswitch_2d
    const-string/jumbo v0, "IOException"

    goto :goto_6

    :pswitch_31
    const-string/jumbo v0, "GeneralSecurityException"

    goto :goto_6

    :pswitch_35
    const-string/jumbo v0, "JSONException"

    goto :goto_6

    :pswitch_39
    const-string/jumbo v0, "DownloadFail"

    goto :goto_6

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_31
        :pswitch_35
        :pswitch_39
    .end packed-switch
.end method
