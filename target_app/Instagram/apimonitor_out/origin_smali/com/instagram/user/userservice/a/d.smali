.class public final Lcom/instagram/user/userservice/a/d;
.super Lcom/instagram/user/userservice/a;
.source "AutoCompleteUserServiceHelper.java"


# static fields
.field private static final a:Lcom/instagram/common/u/c/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/instagram/common/u/c/e;->a()Lcom/instagram/common/u/c/e;

    move-result-object v0

    const-string v1, "autocomplete"

    invoke-virtual {v0, v1}, Lcom/instagram/common/u/c/e;->a(Ljava/lang/String;)Lcom/instagram/common/u/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/u/c/e;->c()Lcom/instagram/common/u/c/d;

    move-result-object v0

    sput-object v0, Lcom/instagram/user/userservice/a/d;->a:Lcom/instagram/common/u/c/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/user/userservice/a;-><init>()V

    return-void
.end method

.method static synthetic e()Lcom/instagram/common/u/c/d;
    .registers 1

    sget-object v0, Lcom/instagram/user/userservice/a/d;->a:Lcom/instagram/common/u/c/d;

    return-object v0
.end method

.method private static f()Lcom/instagram/user/userservice/a/a;
    .registers 1

    new-instance v0, Lcom/instagram/user/userservice/a/a;

    invoke-direct {v0}, Lcom/instagram/user/userservice/a/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/instagram/user/c/a;)V
    .registers 3

    invoke-static {p1}, Lcom/instagram/user/userservice/a/h;->a(Lcom/instagram/user/c/a;)V

    invoke-static {}, Lcom/instagram/f/d/a;->a()Lcom/instagram/f/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/f/d/a;->a(Lcom/instagram/user/c/a;)V

    return-void
.end method

.method protected final a(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/instagram/user/userservice/a/d;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    :try_start_18
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/instagram/user/b/b;->a(Lcom/instagram/user/c/a;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0, v0}, Lcom/instagram/user/userservice/a/d;->a(Lcom/instagram/user/c/a;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_26} :catch_27

    goto :goto_c

    :catch_27
    move-exception v0

    goto :goto_c

    :cond_29
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Z)V
    .registers 3

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/instagram/user/userservice/a/d;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_11
    invoke-static {}, Lcom/instagram/user/userservice/a/h;->a()V

    invoke-static {}, Lcom/instagram/f/d/a;->a()Lcom/instagram/f/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/f/d/a;->c()V

    return-void
.end method

.method protected final b()V
    .registers 5

    invoke-virtual {p0}, Lcom/instagram/user/userservice/a/d;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "EXPIRES_DATE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/user/b/b;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/user/userservice/a/d;->a(Lcom/instagram/user/c/a;)V

    goto :goto_10

    :cond_38
    return-void
.end method

.method protected final c()Landroid/content/SharedPreferences;
    .registers 2

    const-string v0, "autoCompleteUserStoreV2"

    invoke-static {v0}, Lcom/instagram/k/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic d()Lcom/instagram/api/k/a/a;
    .registers 2

    invoke-static {}, Lcom/instagram/user/userservice/a/d;->f()Lcom/instagram/user/userservice/a/a;

    move-result-object v0

    return-object v0
.end method
