.class public final Lcom/instagram/android/fragment/fj;
.super Ljava/lang/Object;
.source "UserListNavigator.java"

# interfaces
.implements Lcom/instagram/n/f/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/support/v4/app/s;ILjava/lang/String;Ljava/lang/String;ZZ)Lcom/instagram/base/a/a/a;
    .registers 10

    const/4 v3, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "UserListFragment.ARGUMENTS_FOLLOW_BUTTONS"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "UserListFragment.ARGUMENTS_TYPE"

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p3, :cond_19

    const-string v1, "UserListFragment.ARGUMENTS_TITLE"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    if-eqz p2, :cond_20

    const-string v1, "UserListFragment.ARGUMENTS_ACCESS_TOKEN"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    if-eqz p4, :cond_2d

    const-string v1, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "UserListFragment.ARGUMENTS_CLICK_THROUGH"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2d
    if-eqz p5, :cond_34

    const-string v1, "UserListFragment.ARGUMENTS_IS_FACEBOOK_LINKING_FLOW"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_34
    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-direct {v1, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/l/c/a;

    invoke-direct {v2}, Lcom/instagram/android/l/c/a;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/s;Landroid/content/Context;Lcom/instagram/feed/d/l;)Lcom/instagram/base/a/a/a;
    .registers 8

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/user/a/a;->a(Lcom/instagram/user/c/a;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "self_likers"

    :goto_c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "UserListFragment.ARGUMENTS_ANALYTICS_MODULE_NAME"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "media/%s/likers/"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/facebook/az;->likers_title:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lcom/instagram/android/fragment/fj;->a(Landroid/support/v4/app/s;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    return-object v0

    :cond_31
    const-string v0, "likers"

    goto :goto_c
.end method

.method public static a(Landroid/support/v4/app/s;Landroid/content/Context;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
    .registers 7

    invoke-static {p2}, Lcom/instagram/user/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "self_followers"

    :goto_8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "UserListFragment.ARGUMENTS_ANALYTICS_MODULE_NAME"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "friendships/%s/followers/"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/facebook/az;->followers_title:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lcom/instagram/android/fragment/fj;->a(Landroid/support/v4/app/s;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    return-object v0

    :cond_29
    const-string v0, "followers"

    goto :goto_8
.end method

.method private static a(Landroid/support/v4/app/s;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
    .registers 6

    const-string v0, "UserListFragment.ARGUMENTS_FETCH_URL"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UserListFragment.ARGUMENTS_TITLE"

    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UserListFragment.ARGUMENTS_FOLLOW_BUTTONS"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-direct {v0, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/l/c/a;

    invoke-direct {v1}, Lcom/instagram/android/l/c/a;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;
    .registers 10

    sget v1, Lcom/instagram/android/l/d/a;->c:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/instagram/android/fragment/fj;->a(Landroid/support/v4/app/s;ILjava/lang/String;Ljava/lang/String;ZZ)Lcom/instagram/base/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/instagram/base/a/a/a;
    .registers 11

    sget v1, Lcom/instagram/android/l/d/a;->a:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/instagram/android/fragment/fj;->a(Landroid/support/v4/app/s;ILjava/lang/String;Ljava/lang/String;ZZ)Lcom/instagram/base/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/s;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;
    .registers 9

    sget v1, Lcom/instagram/android/l/d/a;->b:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/instagram/android/fragment/fj;->a(Landroid/support/v4/app/s;ILjava/lang/String;Ljava/lang/String;ZZ)Lcom/instagram/base/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/support/v4/app/s;Landroid/content/Context;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
    .registers 7

    invoke-static {p2}, Lcom/instagram/user/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "self_following"

    :goto_8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "UserListFragment.ARGUMENTS_ANALYTICS_MODULE_NAME"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "friendships/%s/following/"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/facebook/az;->following_title:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lcom/instagram/android/fragment/fj;->a(Landroid/support/v4/app/s;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    return-object v0

    :cond_29
    const-string v0, "following"

    goto :goto_8
.end method
