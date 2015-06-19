.class public Lcom/twidroid/d/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "notification_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/twidroid/d/q;JLandroid/content/SharedPreferences;)I
    .registers 7

    const/16 v2, 0x20

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->ai()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/twidroid/d/q;->ordinal()I

    move-result v0

    :goto_14
    return v0

    :cond_15
    shr-long v0, p1, v2

    shl-long/2addr v0, v2

    sub-long v0, p1, v0

    long-to-int v0, v0

    goto :goto_14
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method public static a(Landroid/content/Context;[I)V
    .registers 6

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    array-length v2, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v2, :cond_14

    aget v3, p1, v1

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_14
    return-void
.end method

.method public static a(Lcom/twidroid/d/q;ILandroid/content/Context;)V
    .registers 5

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "notification"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {p0, v1}, Lcom/twidroid/d/p;->a(Lcom/twidroid/d/q;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private static a(Lcom/twidroid/d/q;Landroid/content/SharedPreferences;)V
    .registers 5

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current_notification_count_for_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twidroid/d/q;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 9

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {}, Lcom/twidroid/d/q;->values()[Lcom/twidroid/d/q;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v4, :cond_2d

    aget-object v5, v3, v1

    invoke-virtual {v5}, Lcom/twidroid/d/q;->ordinal()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5, v6, v7, v2}, Lcom/twidroid/d/p;->a(Lcom/twidroid/d/q;JLandroid/content/SharedPreferences;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5, v6, v7, v2}, Lcom/twidroid/d/p;->a(Lcom/twidroid/d/q;JLandroid/content/SharedPreferences;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {v5, v2}, Lcom/twidroid/d/p;->a(Lcom/twidroid/d/q;Landroid/content/SharedPreferences;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2d
    return-void
.end method
