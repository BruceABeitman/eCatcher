.class public final Lcom/instagram/share/d/a;
.super Ljava/lang/Object;
.source "FoursquareAccount.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/share/d/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/instagram/share/d/a;
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/instagram/share/d/a;->f()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "accessToken"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcom/instagram/share/d/a;

    invoke-direct {v0, v1}, Lcom/instagram/share/d/a;-><init>(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static b()V
    .registers 2

    invoke-static {}, Lcom/instagram/share/d/a;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accessToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static e()Ljava/lang/Runnable;
    .registers 1

    new-instance v0, Lcom/instagram/share/d/b;

    invoke-direct {v0}, Lcom/instagram/share/d/b;-><init>()V

    return-object v0
.end method

.method private static f()Landroid/content/SharedPreferences;
    .registers 1

    const-string v0, "foursquare.prefs"

    invoke-static {v0}, Lcom/instagram/k/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c()V
    .registers 4

    invoke-static {}, Lcom/instagram/share/d/a;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accessToken"

    iget-object v2, p0, Lcom/instagram/share/d/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/share/d/a;->a:Ljava/lang/String;

    return-object v0
.end method
