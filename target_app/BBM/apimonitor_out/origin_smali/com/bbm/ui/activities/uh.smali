.class final Lcom/bbm/ui/activities/uh;
.super Ljava/lang/Object;
.source "InAppUpgradeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/InAppUpgradeActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/InAppUpgradeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/uh;->a:Lcom/bbm/ui/activities/InAppUpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/bbm/ui/activities/uh;->a:Lcom/bbm/ui/activities/InAppUpgradeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/InAppUpgradeActivity;->a(Lcom/bbm/ui/activities/InAppUpgradeActivity;)Z

    invoke-static {}, Lcom/bbm/Alaska;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "inapp_upgrade_notification_last_show_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/bbm/ui/activities/uh;->a:Lcom/bbm/ui/activities/InAppUpgradeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/InAppUpgradeActivity;->b(Lcom/bbm/ui/activities/InAppUpgradeActivity;)V

    return-void
.end method
