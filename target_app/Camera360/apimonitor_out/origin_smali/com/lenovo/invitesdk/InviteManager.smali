.class public final Lcom/lenovo/invitesdk/InviteManager;
.super Ljava/lang/Object;
.source "InviteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/invitesdk/InviteManager$3;,
        Lcom/lenovo/invitesdk/InviteManager$ZeroTrafficListener;
    }
.end annotation


# static fields
.field private static a:Lcom/lenovo/anyshare/sdk/internal/cj;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/content/pm/ActivityInfo;
    .registers 14

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    :try_start_5
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v12, "android.intent.action.SEND"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "*/*"

    invoke-virtual {v4, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v12, 0x0

    invoke-virtual {v7, v4, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_1c

    move-object v0, v11

    :cond_1b
    :goto_1b
    return-object v0

    :cond_1c
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_25
    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_47

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v12, "bluetooth"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_25

    invoke-interface {v2, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :catch_44
    move-exception v3

    move-object v0, v11

    goto :goto_1b

    :cond_47
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v12

    if-nez v12, :cond_4f

    move-object v0, v11

    goto :goto_1b

    :cond_4f
    const-string/jumbo v12, "com.android.bluetooth"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_63

    const-string/jumbo v12, "com.mediatek.bluetooth"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    :cond_63
    if-nez v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_79} :catch_44

    goto :goto_1b
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_24

    :cond_22
    const/4 v3, 0x0

    :goto_23
    return-object v3

    :cond_24
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_23
.end method

.method static synthetic a()Lcom/lenovo/anyshare/sdk/internal/cj;
    .registers 1

    sget-object v0, Lcom/lenovo/invitesdk/InviteManager;->a:Lcom/lenovo/anyshare/sdk/internal/cj;

    return-object v0
.end method

.method public static assureBluetoothEnabled()Z
    .registers 2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    return v1
.end method

.method private static b(Landroid/content/Context;)Landroid/content/Intent;
    .registers 8

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.SEND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "message/rfc822"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "mail"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3b
    return-object v3
.end method

.method public static canShareByBluetooth(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/lenovo/invitesdk/InviteManager;->a(Landroid/content/Context;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static canShareByEmail(Landroid/content/Context;)Z
    .registers 9

    const/4 v6, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.SEND"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "message/rfc822"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1a

    :cond_19
    :goto_19
    return v6

    :cond_1a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v7, "mail"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1e

    const/4 v6, 0x1

    goto :goto_19
.end method

.method public static canShareBySMS()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static canShareBySinaWeibo(Landroid/content/Context;)Z
    .registers 2

    const-string/jumbo v0, "com.sina.weibo"

    invoke-static {p0, v0}, Lcom/lenovo/invitesdk/InviteManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static canShareByWeChat(Landroid/content/Context;)Z
    .registers 2

    const-string/jumbo v0, "com.tencent.mm"

    invoke-static {p0, v0}, Lcom/lenovo/invitesdk/InviteManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static canShareByZeroTraffic()Z
    .registers 1

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cf;->a()Z

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 10

    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/anyshare/sdk/internal/a;->b:Z

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v3, "unknown"

    :cond_10
    const-string/jumbo v5, ""

    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    if-eqz v8, :cond_25

    iget-object v5, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_25} :catch_5b

    :cond_25
    :goto_25
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3f
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/c;

    const-string/jumbo v2, "XCY2XE7BUEIB"

    const v4, 0x3d580a

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/anyshare/sdk/internal/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;

    move-result-object v0

    invoke-virtual {v0, p0, v6}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/util/Collection;)V

    return-void

    :catch_5b
    move-exception v7

    const-string/jumbo v0, "SDK.InviteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not find package info with:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3f
.end method

.method public static shareByBluetooth(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.extra.STREAM"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/lenovo/invitesdk/InviteManager;->a(Landroid/content/Context;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;

    move-result-object v2

    const-string/jumbo v3, "InviteByBluetooth"

    invoke-virtual {v2, p0, v3}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static shareByEmail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static {p0}, Lcom/lenovo/invitesdk/InviteManager;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_10
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1e

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;

    move-result-object v1

    const-string/jumbo v2, "InviteByEMail"

    invoke-virtual {v1, p0, v2}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :catchall_1e
    move-exception v1

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;

    move-result-object v2

    const-string/jumbo v3, "InviteByEMail"

    invoke-virtual {v2, p0, v3}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    throw v1
.end method

.method public static shareBySMS(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SENDTO"

    const-string/jumbo v2, "smsto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v1, "sms_body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "exit_on_sent"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_1c
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_2a

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;

    move-result-object v1

    const-string/jumbo v2, "InviteBySMS"

    invoke-virtual {v1, p0, v2}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :catchall_2a
    move-exception v1

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;

    move-result-object v2

    const-string/jumbo v3, "InviteBySMS"

    invoke-virtual {v2, p0, v3}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    throw v1
.end method

.method public static shareBySinaWeibo(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const-string/jumbo v2, "com.sina.weibo"

    invoke-static {p0, v2}, Lcom/lenovo/invitesdk/InviteManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sina.weibo"

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_26
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_34

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;

    move-result-object v2

    const-string/jumbo v3, "InviteBySinaWeibo"

    invoke-virtual {v2, p0, v3}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :catchall_34
    move-exception v2

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;

    move-result-object v3

    const-string/jumbo v4, "InviteBySinaWeibo"

    invoke-virtual {v3, p0, v4}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    throw v2
.end method

.method public static shareToWeChat(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const-string/jumbo v2, "com.tencent.mm"

    invoke-static {p0, v2}, Lcom/lenovo/invitesdk/InviteManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.tencent.mm"

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_26
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_34

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;

    move-result-object v2

    const-string/jumbo v3, "InviteByWeChat"

    invoke-virtual {v2, p0, v3}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :catchall_34
    move-exception v2

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;

    move-result-object v3

    const-string/jumbo v4, "InviteByWeChat"

    invoke-virtual {v3, p0, v4}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    throw v2
.end method

.method public static startZeroTraffic(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/lenovo/invitesdk/InviteManager$ZeroTrafficListener;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v8, 0xbb7

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "Lenovo "

    const-string/jumbo v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v2, Lcom/lenovo/invitesdk/InviteManager$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/lenovo/invitesdk/InviteManager$1;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/lenovo/invitesdk/InviteManager$ZeroTrafficListener;)V

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/cj;

    const/4 v7, 0x1

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v7}, Lcom/lenovo/anyshare/sdk/internal/cj;-><init>(Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/cb;Lcom/lenovo/tonesdk/IToneSender;Lcom/lenovo/tonesdk/IToneReceiver;Ljava/lang/String;IZ)V

    sput-object v0, Lcom/lenovo/invitesdk/InviteManager;->a:Lcom/lenovo/anyshare/sdk/internal/cj;

    sget-object v0, Lcom/lenovo/invitesdk/InviteManager;->a:Lcom/lenovo/anyshare/sdk/internal/cj;

    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/bz$a;->d:Lcom/lenovo/anyshare/sdk/internal/bz$a;

    invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/bz$a;)V

    new-instance v0, Lcom/lenovo/invitesdk/InviteManager$2;

    invoke-direct {v0, p3}, Lcom/lenovo/invitesdk/InviteManager$2;-><init>(Lcom/lenovo/invitesdk/InviteManager$ZeroTrafficListener;)V

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/be;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;

    move-result-object v0

    const-string/jumbo v1, "InviteByZero"

    invoke-virtual {v0, p0, v1}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static stopZeroTraffic()V
    .registers 2

    sget-object v0, Lcom/lenovo/invitesdk/InviteManager;->a:Lcom/lenovo/anyshare/sdk/internal/cj;

    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/bz$a;->a:Lcom/lenovo/anyshare/sdk/internal/bz$a;

    invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/bz$a;)V

    return-void
.end method

.method public static turnOnBluetoothEnabled(Landroid/app/Activity;I)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
