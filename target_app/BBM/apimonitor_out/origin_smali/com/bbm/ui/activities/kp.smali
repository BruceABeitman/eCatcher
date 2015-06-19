.class public final Lcom/bbm/ui/activities/kp;
.super Ljava/lang/Object;
.source "GroupActivityHelper.java"


# direct methods
.method public static a(Landroid/app/Activity;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "groupUri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    if-eqz p1, :cond_1f

    const-string v0, "groupUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1f
    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;I)V
    .registers 7

    const v0, 0x7f0e041a

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e0553

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/activities/kq;

    invoke-direct {v2}, Lcom/bbm/ui/activities/kq;-><init>()V

    invoke-static {p1, v0, v1, v2}, Lcom/bbm/util/fb;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/bbm/util/fe;)Landroid/widget/PopupWindow;

    :goto_26
    return-void

    :cond_27
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_26
.end method
