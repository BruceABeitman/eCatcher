.class public final Lcom/instagram/android/login/b/a;
.super Ljava/lang/Object;
.source "MainAppLogoutDelegate.java"

# interfaces
.implements Lcom/instagram/common/u/f/a;


# static fields
.field private static a:Lcom/instagram/android/login/b/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/instagram/android/login/b/a;
    .registers 1

    sget-object v0, Lcom/instagram/android/login/b/a;->a:Lcom/instagram/android/login/b/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/instagram/android/login/b/a;

    invoke-direct {v0}, Lcom/instagram/android/login/b/a;-><init>()V

    sput-object v0, Lcom/instagram/android/login/b/a;->a:Lcom/instagram/android/login/b/a;

    :cond_b
    sget-object v0, Lcom/instagram/android/login/b/a;->a:Lcom/instagram/android/login/b/a;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x1

    invoke-static {}, Lcom/instagram/o/b;->a()V

    invoke-static {}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->a()Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->b()V

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->e()V

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/analytics/d;->c()V

    invoke-static {}, Lcom/instagram/feed/c/a;->a()V

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/b/a;->h()V

    invoke-static {}, Lcom/instagram/h/a/a;->a()V

    invoke-static {}, Lcom/instagram/k/b/a;->b()V

    new-instance v0, Lcom/instagram/user/userservice/b/f;

    invoke-direct {v0}, Lcom/instagram/user/userservice/b/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/user/userservice/b/f;->a(Z)V

    new-instance v0, Lcom/instagram/user/userservice/a/d;

    invoke-direct {v0}, Lcom/instagram/user/userservice/a/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/user/userservice/a/d;->a(Z)V

    invoke-static {}, Lcom/instagram/share/b/a;->j()V

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-static {p1}, Lcom/instagram/android/fragment/ct;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_53
    invoke-static {}, Lcom/instagram/android/directshare/c/r;->a()Lcom/instagram/android/directshare/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/r;->g()V

    invoke-static {}, Lcom/instagram/i/e/a;->a()Lcom/instagram/i/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/i/e/a;->l()V

    invoke-static {}, Lcom/instagram/android/c2dm/c;->a()Lcom/instagram/android/c2dm/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/c2dm/c;->b()V

    return-void
.end method
