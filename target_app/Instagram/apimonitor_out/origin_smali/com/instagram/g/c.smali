.class public final Lcom/instagram/g/c;
.super Ljava/lang/Object;
.source "FeedbackUtil.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "feedback_title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "feedback_message"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "feedback_appeal_label"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "feedback_ignore_label"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "feedback_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/instagram/g/c;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/instagram/common/c/h;
    .registers 5

    instance-of v0, p0, Lcom/instagram/base/activity/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    move-object v0, p0

    check-cast v0, Lcom/instagram/base/activity/a;

    invoke-virtual {v0}, Lcom/instagram/base/activity/a;->d()Landroid/support/v4/app/s;

    move-result-object v0

    new-instance v1, Lcom/instagram/common/c/j;

    invoke-direct {v1, p0}, Lcom/instagram/common/c/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/instagram/common/c/j;->a()Lcom/instagram/common/c/g;

    move-result-object v1

    const-string v2, "FeedbackUtil.BROADCAST_INTENT_FEEDBACK_REQUIRED"

    new-instance v3, Lcom/instagram/g/d;

    invoke-direct {v3, v0}, Lcom/instagram/g/d;-><init>(Landroid/support/v4/app/s;)V

    invoke-interface {v1, v2, v3}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/c/g;->a()Lcom/instagram/common/c/h;

    move-result-object v0

    goto :goto_5
.end method

.method public static a(Landroid/os/Bundle;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "FeedbackUtil.BROADCAST_INTENT_FEEDBACK_REQUIRED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method public static a(Landroid/support/v4/app/s;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "feedback_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    if-eqz p0, :cond_c

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/instagram/g/e;

    invoke-direct {v1, p1, p0}, Lcom/instagram/g/e;-><init>(Landroid/os/Bundle;Landroid/support/v4/app/s;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method

.method public static a(Landroid/support/v4/app/s;Lcom/instagram/api/j/j;)V
    .registers 3

    invoke-static {p1}, Lcom/instagram/g/c;->d(Lcom/instagram/api/j/j;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instagram/g/c;->a(Landroid/support/v4/app/s;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Lcom/instagram/api/j/j;)V
    .registers 2

    invoke-static {p0}, Lcom/instagram/g/c;->b(Lcom/instagram/api/j/j;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/instagram/g/c;->c(Lcom/instagram/api/j/j;)V

    :cond_9
    return-void
.end method

.method public static b(Lcom/instagram/api/j/j;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    const-string v2, "feedback_required"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const-string v1, "feedback_required"

    invoke-virtual {p0, v1}, Lcom/instagram/api/j/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "true"

    const-string v2, "feedback_required"

    invoke-virtual {p0, v2}, Lcom/instagram/api/j/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_26
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static c(Lcom/instagram/api/j/j;)V
    .registers 2

    invoke-static {p0}, Lcom/instagram/g/c;->d(Lcom/instagram/api/j/j;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/g/c;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method private static d(Lcom/instagram/api/j/j;)Landroid/os/Bundle;
    .registers 7

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/instagram/g/c;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v3, :cond_17

    aget-object v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/instagram/api/j/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    return-object v1
.end method
