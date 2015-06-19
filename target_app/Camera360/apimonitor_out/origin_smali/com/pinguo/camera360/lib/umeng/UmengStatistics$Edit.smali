.class public Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Edit;
.super Ljava/lang/Object;
.source "UmengStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/umeng/UmengStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Edit"
.end annotation


# static fields
.field private static final EDIT_11_1:Ljava/lang/String; = "edit_11_1"

.field private static final EDIT_11_10:Ljava/lang/String; = "edit_11_10"

.field private static final EDIT_11_11:Ljava/lang/String; = "edit_11_11"

.field private static final EDIT_11_12:Ljava/lang/String; = "edit_11_12"

.field private static final EDIT_11_2:Ljava/lang/String; = "edit_11_2"

.field private static final EDIT_11_3:Ljava/lang/String; = "edit_11_3"

.field private static final EDIT_11_4:Ljava/lang/String; = "edit_11_4"

.field private static final EDIT_11_5:Ljava/lang/String; = "edit_11_5"

.field private static final EDIT_11_6:Ljava/lang/String; = "edit_11_6"

.field private static final EDIT_11_7:Ljava/lang/String; = "edit_11_7"

.field private static final EDIT_11_8:Ljava/lang/String; = "edit_11_8"

.field private static final EDIT_11_9:Ljava/lang/String; = "edit_11_9"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static editAdjustmentClick(Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "edit_11_10"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->sharpen:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->sharpen:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_10:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->exposure:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->exposure:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_10:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->contrast:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->contrast:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_10:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->highlight:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9a

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->highlight:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_10:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9a
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->shadow:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_be

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->shadow:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_10:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->saturation:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e2

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->saturation:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_10:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e2
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->colorTemp:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_106

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->colorTemp:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_10:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "edit_11_10_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static editBackLast(Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "edit_11_7"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$other;->cancel:Lcom/pinguo/camera360/lib/feedback/F$other;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_8:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionOther(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$other;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "edit_11_7_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static editBtnClick(Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "edit_11_5"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->effect:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->effect:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_1:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->rotate:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->rotate:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_2:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->crop:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->crop:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_3:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->adjust:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9a

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->adjust:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_4:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9a
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->texture:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_be

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->texture:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_5:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->tiltShift:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e2

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->tiltShift:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_6:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "edit_11_5_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static editChildEffectClick(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "edit_11_4"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "edit_11_4_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static editCropClick(Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "edit_11_9"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->crop11:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->crop11:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_13:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->crop23:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->crop23:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_13:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->crop34:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->crop34:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_13:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->crop916:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9a

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->crop916:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_13:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9a
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->cropFree:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_be

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->cropFree:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_13:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "edit_11_9_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static editEnterEffectLay()V
    .registers 2

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "edit_11_6"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "edit_11_6"

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static editLayFirstCancel()V
    .registers 2

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "edit_11_1"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "edit_11_1"

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static editRotateClick(Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "edit_11_8"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->rotateLeft:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->rotateLeft:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_9:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->rotateRight:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->rotateRight:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_9:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->rotateX:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->rotateX:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_9:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->rotateY:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9a

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->rotateY:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_9:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "edit_11_8_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static editSaveLastUse(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "edit_11_2"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "edit_11_2_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static editSaveNestUse(Ljava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$other;->save:Lcom/pinguo/camera360/lib/feedback/F$other;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_7:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionOther(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$other;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "edit_11_3"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "edit_11_3_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static editTextureClick(Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "edit_11_11"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->textureItem1:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->textureItem1:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_11:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->textureItem6:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->textureItem6:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_11:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->textureItem9:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->textureItem9:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_11:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->textureItem10:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9a

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->textureItem10:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_11:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9a
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->textureItem12:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_be

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->textureItem12:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_11:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->textureItem14:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e2

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->textureItem14:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_11:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e2
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->textureItem17:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_106

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->textureItem17:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_11:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_106
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->textureItem18:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12a

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->textureItem18:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_11:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "edit_11_11_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static editTiltShiftClick(Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "edit_11_12"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->roundTiltShift:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->roundTiltShift:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_12:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->verticalTiltShift:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->verticalTiltShift:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_12:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$edit;->horizontalTiltShift:Lcom/pinguo/camera360/lib/feedback/F$edit;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/F$edit;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->edit:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$edit;->horizontalTiltShift:Lcom/pinguo/camera360/lib/feedback/F$edit;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->id_12_12:Lcom/pinguo/camera360/lib/feedback/FeventId$edit;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$edit;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEdit(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "edit_11_12_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method
