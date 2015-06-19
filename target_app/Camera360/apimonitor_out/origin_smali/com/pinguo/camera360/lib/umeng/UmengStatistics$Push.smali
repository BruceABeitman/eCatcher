.class public Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;
.super Ljava/lang/Object;
.source "UmengStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/umeng/UmengStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Push"
.end annotation


# static fields
.field private static final PUSH_10_1:Ljava/lang/String; = "push_10_1"

.field private static final PUSH_10_2:Ljava/lang/String; = "push_10_2"

.field private static final PUSH_10_3:Ljava/lang/String; = "push_10_3"

.field private static final PUSH_10_4:Ljava/lang/String; = "push_10_4"

.field private static final PUSH_10_5:Ljava/lang/String; = "push_10_5"

.field private static final PUSH_10_6:Ljava/lang/String; = "push_10_6"

.field private static final PUSH_10_7:Ljava/lang/String; = "push_10_7"

.field private static final PUSH_10_8:Ljava/lang/String; = "push_10_8"

.field private static final PUSH_8_1:Ljava/lang/String; = "push_8_1"

.field private static final PUSH_8_2:Ljava/lang/String; = "push_8_2"

.field private static final PUSH_8_3:Ljava/lang/String; = "push_8_3"

.field private static final PUSH_8_4:Ljava/lang/String; = "push_8_4"

.field private static final PUSH_ITEM_BACK:Ljava/lang/String; = "back"

.field private static final PUSH_ITEM_CLICK:Ljava/lang/String; = "click"

.field private static final PUSH_ITEM_RECEIVE:Ljava/lang/String; = "receive"

.field private static final PUSH_ITEM_SHOW:Ljava/lang/String; = "show"

.field private static final PUSH_ITEM_UPDATE_CANCEL:Ljava/lang/String; = "update_cancel"

.field private static final PUSH_ITEM_UPDATE_LATER:Ljava/lang/String; = "update_later"

.field private static final PUSH_ITEM_UPDATE_NOW:Ljava/lang/String; = "update_now"

.field private static messageId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->messageId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pushDialog(I)V
    .registers 9

    const-string/jumbo v0, ""

    packed-switch p0, :pswitch_data_144

    :goto_6
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "push_8_2"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "push_8_2_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void

    :pswitch_24
    const-string/jumbo v0, "click"

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->push:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v2, "_c360-adr-5.4.5_"

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->push:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$push;->push_dialog_hit:Lcom/pinguo/camera360/lib/feedback/F$push;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/pinguo/camera360/lib/feedback/FeventId$push;->id_9_7:Lcom/pinguo/camera360/lib/feedback/FeventId$push;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/feedback/FeventId$push;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/lib/feedback/F$push;->pushid:Lcom/pinguo/camera360/lib/feedback/F$push;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/feedback/F$push;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->messageId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionPush(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$push;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_6b
    const-string/jumbo v0, "update_now"

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->push:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v2, "_c360-adr-5.4.5_"

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->push:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$push;->push_dialog_now:Lcom/pinguo/camera360/lib/feedback/F$push;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/pinguo/camera360/lib/feedback/FeventId$push;->id_9_8:Lcom/pinguo/camera360/lib/feedback/FeventId$push;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/feedback/FeventId$push;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/lib/feedback/F$push;->pushid:Lcom/pinguo/camera360/lib/feedback/F$push;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/feedback/F$push;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->messageId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionPush(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$push;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_b3
    const-string/jumbo v0, "update_later"

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->push:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v2, "_c360-adr-5.4.5_"

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->push:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$push;->push_dialog_later:Lcom/pinguo/camera360/lib/feedback/F$push;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/pinguo/camera360/lib/feedback/FeventId$push;->id_9_9:Lcom/pinguo/camera360/lib/feedback/FeventId$push;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/feedback/FeventId$push;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/lib/feedback/F$push;->pushid:Lcom/pinguo/camera360/lib/feedback/F$push;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/feedback/F$push;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->messageId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionPush(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$push;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_fb
    const-string/jumbo v0, "receive"

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->push:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v2, "_c360-adr-5.4.5_"

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->push:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$push;->push_dialog_receive:Lcom/pinguo/camera360/lib/feedback/F$push;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/pinguo/camera360/lib/feedback/FeventId$push;->id_9_6:Lcom/pinguo/camera360/lib/feedback/FeventId$push;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/feedback/FeventId$push;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/lib/feedback/F$push;->pushid:Lcom/pinguo/camera360/lib/feedback/F$push;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/feedback/F$push;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->messageId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionPush(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$push;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    nop

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_24
        :pswitch_6b
        :pswitch_b3
        :pswitch_fb
    .end packed-switch
.end method

.method public static pushDialogView(I)V
    .registers 4

    const-string/jumbo v0, ""

    packed-switch p0, :pswitch_data_38

    :goto_6
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "push_10_5"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "push_10_5_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void

    :pswitch_24
    const-string/jumbo v0, "show"

    goto :goto_6

    :pswitch_28
    const-string/jumbo v0, "click"

    goto :goto_6

    :pswitch_2c
    const-string/jumbo v0, "button_1"

    goto :goto_6

    :pswitch_30
    const-string/jumbo v0, "button_2"

    goto :goto_6

    :pswitch_34
    const-string/jumbo v0, "back"

    goto :goto_6

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_24
        :pswitch_28
        :pswitch_2c
        :pswitch_30
        :pswitch_34
    .end packed-switch
.end method

.method public static pushOpenActivity(I)V
    .registers 9

    const-string/jumbo v0, ""

    sparse-switch p0, :sswitch_data_b4

    :goto_6
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "push_8_3"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "push_8_3_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void

    :sswitch_24
    const-string/jumbo v0, "click"

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->push:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v2, "_c360-adr-5.4.5_"

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->push:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$push;->push_application_hit:Lcom/pinguo/camera360/lib/feedback/F$push;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/pinguo/camera360/lib/feedback/FeventId$push;->id_9_11:Lcom/pinguo/camera360/lib/feedback/FeventId$push;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/feedback/FeventId$push;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/lib/feedback/F$push;->pushid:Lcom/pinguo/camera360/lib/feedback/F$push;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/feedback/F$push;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->messageId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionPush(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$push;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :sswitch_6b
    const-string/jumbo v0, "receive"

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->push:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v2, "_c360-adr-5.4.5_"

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->push:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$push;->push_application_receive:Lcom/pinguo/camera360/lib/feedback/F$push;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/pinguo/camera360/lib/feedback/FeventId$push;->id_9_10:Lcom/pinguo/camera360/lib/feedback/FeventId$push;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/feedback/FeventId$push;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/lib/feedback/F$push;->pushid:Lcom/pinguo/camera360/lib/feedback/F$push;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/feedback/F$push;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->messageId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionPush(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$push;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    nop

    :sswitch_data_b4
    .sparse-switch
        0x0 -> :sswitch_24
        0x4 -> :sswitch_6b
    .end sparse-switch
.end method

.method public static pushOpenCamera(I)V
    .registers 9

    const-string/jumbo v0, ""

    sparse-switch p0, :sswitch_data_b4

    :goto_6
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "push_8_4"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "push_8_4_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void

    :sswitch_24
    const-string/jumbo v0, "click"

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->push:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v2, "_c360-adr-5.4.5_"

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->push:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$push;->push_camera_hit:Lcom/pinguo/camera360/lib/feedback/F$push;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/pinguo/camera360/lib/feedback/FeventId$push;->id_9_13:Lcom/pinguo/camera360/lib/feedback/FeventId$push;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/feedback/FeventId$push;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/lib/feedback/F$push;->pushid:Lcom/pinguo/camera360/lib/feedback/F$push;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/feedback/F$push;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->messageId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionPush(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$push;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :sswitch_6b
    const-string/jumbo v0, "receive"

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->push:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v2, "_c360-adr-5.4.5_"

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->push:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$push;->push_camera_receive:Lcom/pinguo/camera360/lib/feedback/F$push;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/pinguo/camera360/lib/feedback/FeventId$push;->id_9_12:Lcom/pinguo/camera360/lib/feedback/FeventId$push;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/feedback/FeventId$push;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/lib/feedback/F$push;->pushid:Lcom/pinguo/camera360/lib/feedback/F$push;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/feedback/F$push;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->messageId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionPush(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$push;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    nop

    :sswitch_data_b4
    .sparse-switch
        0x0 -> :sswitch_24
        0x5 -> :sswitch_6b
    .end sparse-switch
.end method

.method public static pushSimple(I)V
    .registers 4

    const-string/jumbo v0, ""

    packed-switch p0, :pswitch_data_2c

    :goto_6
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "push_10_1"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "push_10_1_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void

    :pswitch_24
    const-string/jumbo v0, "show"

    goto :goto_6

    :pswitch_28
    const-string/jumbo v0, "click"

    goto :goto_6

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_24
        :pswitch_28
    .end packed-switch
.end method

.method public static pushUpdate(I)V
    .registers 4

    const-string/jumbo v0, ""

    packed-switch p0, :pswitch_data_38

    :goto_6
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "push_10_6"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "push_10_6_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void

    :pswitch_24
    const-string/jumbo v0, "show"

    goto :goto_6

    :pswitch_28
    const-string/jumbo v0, "click"

    goto :goto_6

    :pswitch_2c
    const-string/jumbo v0, "update_now"

    goto :goto_6

    :pswitch_30
    const-string/jumbo v0, "update_later"

    goto :goto_6

    :pswitch_34
    const-string/jumbo v0, "back"

    goto :goto_6

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_24
        :pswitch_28
        :pswitch_2c
        :pswitch_30
        :pswitch_34
    .end packed-switch
.end method

.method public static pushUpdateGallery(I)V
    .registers 4

    const-string/jumbo v0, ""

    packed-switch p0, :pswitch_data_38

    :goto_6
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "push_10_7"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "push_10_7_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void

    :pswitch_24
    const-string/jumbo v0, "show"

    goto :goto_6

    :pswitch_28
    const-string/jumbo v0, "update_now"

    goto :goto_6

    :pswitch_2c
    const-string/jumbo v0, "update_cancel"

    goto :goto_6

    :pswitch_30
    const-string/jumbo v0, "update_later"

    goto :goto_6

    :pswitch_34
    const-string/jumbo v0, "back"

    goto :goto_6

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_24
        :pswitch_28
        :pswitch_2c
        :pswitch_30
        :pswitch_34
    .end packed-switch
.end method

.method public static pushWakeUp(I)V
    .registers 4

    const-string/jumbo v0, ""

    packed-switch p0, :pswitch_data_2c

    :goto_6
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "push_10_8"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "push_10_8_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void

    :pswitch_24
    const-string/jumbo v0, "show"

    goto :goto_6

    :pswitch_28
    const-string/jumbo v0, "click"

    goto :goto_6

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_24
        :pswitch_28
    .end packed-switch
.end method

.method public static pushWeb(I)V
    .registers 9

    const-string/jumbo v0, ""

    packed-switch p0, :pswitch_data_b4

    :goto_6
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "push_8_1"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "push_8_1_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void

    :pswitch_24
    const-string/jumbo v0, "click"

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->push:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v2, "_c360-adr-5.4.5_"

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->push:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$push;->push_web_hit:Lcom/pinguo/camera360/lib/feedback/F$push;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/pinguo/camera360/lib/feedback/FeventId$push;->id_9_5:Lcom/pinguo/camera360/lib/feedback/FeventId$push;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/feedback/FeventId$push;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/lib/feedback/F$push;->pushid:Lcom/pinguo/camera360/lib/feedback/F$push;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/feedback/F$push;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->messageId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionPush(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$push;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_6b
    const-string/jumbo v0, "receive"

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->push:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v2, "_c360-adr-5.4.5_"

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->push:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$push;->push_web_receive:Lcom/pinguo/camera360/lib/feedback/F$push;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/pinguo/camera360/lib/feedback/FeventId$push;->id_9_4:Lcom/pinguo/camera360/lib/feedback/FeventId$push;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/feedback/FeventId$push;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/lib/feedback/F$push;->pushid:Lcom/pinguo/camera360/lib/feedback/F$push;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/feedback/F$push;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->messageId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionPush(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$push;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_24
        :pswitch_6b
    .end packed-switch
.end method

.method public static pushWebView(I)V
    .registers 4

    const-string/jumbo v0, ""

    packed-switch p0, :pswitch_data_2c

    :goto_6
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "push_10_4"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "push_10_4_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void

    :pswitch_24
    const-string/jumbo v0, "show"

    goto :goto_6

    :pswitch_28
    const-string/jumbo v0, "show"

    goto :goto_6

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_24
        :pswitch_28
    .end packed-switch
.end method

.method public static setMessageId(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->messageId:Ljava/lang/String;

    return-void
.end method
