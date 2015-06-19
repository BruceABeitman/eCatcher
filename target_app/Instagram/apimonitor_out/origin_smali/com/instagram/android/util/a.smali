.class public Lcom/instagram/android/util/a;
.super Ljava/lang/Object;
.source "AppStartupUtil.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/android/util/a;

    sput-object v0, Lcom/instagram/android/util/a;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/net/Uri;)Landroid/os/Bundle;
    .registers 10

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    const-string v8, "media"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    const-string v1, "screen"

    invoke-virtual {v6, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    if-eq v0, v3, :cond_37

    const-string v1, "MainTabActivity.INITIAL_TAB"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "MainTabActivity.INITIAL_TAB_ARGUMENTS"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_37
    return-object v5

    :cond_38
    const-string v8, "user"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    const-string v1, "screen"

    invoke-virtual {v6, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "id"

    const-string v2, "username"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_51
    const-string v8, "direct"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_80

    const-string v0, "screen"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "id"

    const-string v2, "id"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ds_has_comment"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "has_comment"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move v0, v1

    goto :goto_2b

    :cond_80
    const-string v8, "direct_request"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8f

    const-string v0, "screen"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_2b

    :cond_8f
    const-string v8, "inbox"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a2

    const-string v0, "screen"

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_2b

    :cond_a2
    const-string v8, "mainfeed"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ac

    move v0, v1

    goto :goto_2b

    :cond_ac
    const-string v1, "explore"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b7

    move v0, v2

    goto/16 :goto_2b

    :cond_b7
    const-string v1, "share"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    const-string v0, "MainTabActivity.EXTRA_LAUNCH_CAMERA"

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move v0, v3

    goto/16 :goto_2b

    :cond_c7
    const-string v1, "news"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v0, "profile"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_da

    move v0, v4

    goto/16 :goto_2b

    :cond_da
    const-string v0, "editprofile"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    const-string v0, "screen"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_2b

    :cond_ea
    const-string v0, "findfriends"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const-string v0, "screen"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_2b

    :cond_fa
    const-string v0, "suggestedaccounts"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    const-string v0, "screen"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_2b

    :cond_10a
    const-string v0, "follow_destination"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11a

    const-string v0, "screen"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_2b

    :cond_11a
    sget-object v0, Lcom/instagram/android/util/a;->a:Ljava/lang/Class;

    move v0, v3

    goto/16 :goto_2b
.end method

.method public static a(Landroid/support/v4/app/s;Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x1

    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "media"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;

    move-result-object v0

    invoke-interface {v0, p0, v1, v4}, Lcom/instagram/n/f/e;->b(Landroid/support/v4/app/s;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;

    move-result-object v0

    :goto_1d
    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    return-void

    :cond_21
    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Lcom/instagram/n/f/e;->b(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    goto :goto_1d

    :cond_32
    const-string v2, "userid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    goto :goto_1d

    :cond_43
    const-string v2, "hashtag"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Lcom/instagram/n/f/e;->d(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    goto :goto_1d

    :cond_54
    const-string v2, "direct"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "InboxFragment.ADD_TO_BACKSTACK"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Lcom/instagram/base/a/a/a;

    invoke-direct {v2, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v3, Lcom/instagram/android/directshare/c/c;

    invoke-direct {v3}, Lcom/instagram/android/directshare/c/c;-><init>()V

    invoke-virtual {v2, v3, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    const-string v0, "ds_has_comment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;

    move-result-object v2

    invoke-interface {v2, p0, v1, v0, v4}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;ZZ)Lcom/instagram/base/a/a/a;

    move-result-object v0

    goto :goto_1d

    :cond_86
    const-string v1, "direct_request"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "InboxFragment.ADD_TO_BACKSTACK"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-direct {v1, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/directshare/c/c;

    invoke-direct {v2}, Lcom/instagram/android/directshare/c/c;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-direct {v0, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/directshare/e/b;

    invoke-direct {v1}, Lcom/instagram/android/directshare/e/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    goto/16 :goto_1d

    :cond_b9
    const-string v1, "inbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-direct {v0, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/directshare/c/c;

    invoke-direct {v1}, Lcom/instagram/android/directshare/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    goto/16 :goto_1d

    :cond_d1
    const-string v1, "editprofile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e9

    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-direct {v0, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/ab;

    invoke-direct {v1}, Lcom/instagram/android/fragment/ab;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    goto/16 :goto_1d

    :cond_e9
    const-string v1, "findfriends"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fb

    invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/instagram/n/f/e;->b(Landroid/support/v4/app/s;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    goto/16 :goto_1d

    :cond_fb
    const-string v1, "suggestedaccounts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_113

    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-direct {v0, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/dr;

    invoke-direct {v1}, Lcom/instagram/android/fragment/dr;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    goto/16 :goto_1d

    :cond_113
    const-string v1, "follow_destination"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-direct {v0, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/cc;

    invoke-direct {v1}, Lcom/instagram/android/fragment/cc;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    goto/16 :goto_1d

    :cond_12b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Received unknown starting bundle type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
