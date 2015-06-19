.class public Lcom/pinguo/album/common/SharedPrefCompat;
.super Ljava/lang/Object;
.source "SharedPrefCompat.java"


# static fields
.field private static final SEPERATOR:Ljava/lang/String; = "|"

.field private static sApplyMethod:Ljava/lang/reflect/Method;

.field private static sGetStringSetMethod:Ljava/lang/reflect/Method;

.field private static sPutStringSetMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_2
    new-array v0, v2, [Ljava/lang/Class;

    const-class v2, Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "apply"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/pinguo/album/common/SharedPrefCompat;->sApplyMethod:Ljava/lang/reflect/Method;
    :try_end_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_f} :catch_33

    :goto_f
    const/4 v2, 0x2

    :try_start_10
    new-array v0, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-class v3, Ljava/util/Set;

    aput-object v3, v0, v2

    const-class v2, Landroid/content/SharedPreferences;

    const-string/jumbo v3, "getStringSet"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/pinguo/album/common/SharedPrefCompat;->sGetStringSetMethod:Ljava/lang/reflect/Method;

    const-class v2, Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "putStringSet"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/pinguo/album/common/SharedPrefCompat;->sPutStringSetMethod:Ljava/lang/reflect/Method;
    :try_end_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_32} :catch_37

    :goto_32
    return-void

    :catch_33
    move-exception v1

    sput-object v4, Lcom/pinguo/album/common/SharedPrefCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    goto :goto_f

    :catch_37
    move-exception v1

    sput-object v4, Lcom/pinguo/album/common/SharedPrefCompat;->sGetStringSetMethod:Ljava/lang/reflect/Method;

    sput-object v4, Lcom/pinguo/album/common/SharedPrefCompat;->sPutStringSetMethod:Ljava/lang/reflect/Method;

    goto :goto_32
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/SharedPreferences$Editor;)V
    .registers 4

    sget-object v2, Lcom/pinguo/album/common/SharedPrefCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_e

    :try_start_4
    sget-object v1, Lcom/pinguo/album/common/SharedPrefCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_c} :catch_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v2

    :cond_e
    :goto_e
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_c

    :catch_12
    move-exception v2

    goto :goto_e
.end method

.method private static getSets(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p0, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_10
    move-object v0, p2

    :goto_11
    return-object v0

    :cond_12
    const-string/jumbo v3, "\\|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_11
.end method

.method public static getStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    sget-object v5, Lcom/pinguo/album/common/SharedPrefCompat;->sGetStringSetMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_1e

    :try_start_5
    sget-object v2, Lcom/pinguo/album/common/SharedPrefCompat;->sGetStringSetMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    const/4 v5, 0x1

    aput-object p2, v1, v5

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_17

    :goto_16
    return-object p2

    :cond_17
    move-object v0, v3

    check-cast v0, Ljava/util/Set;

    move-object v4, v0
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_1b} :catch_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_1b} :catch_1d

    move-object p2, v4

    goto :goto_16

    :catch_1d
    move-exception v5

    :cond_1e
    :goto_1e
    invoke-static {p0, p1, p2}, Lcom/pinguo/album/common/SharedPrefCompat;->getSets(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    move-object p2, v4

    goto :goto_16

    :catch_24
    move-exception v5

    goto :goto_1e
.end method

.method private static putSets(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_5

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void

    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v0, :cond_2f

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public static putStringSet(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v2, Lcom/pinguo/album/common/SharedPrefCompat;->sPutStringSetMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_14

    :try_start_4
    sget-object v1, Lcom/pinguo/album/common/SharedPrefCompat;->sPutStringSetMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_12} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v2

    :cond_14
    :goto_14
    invoke-static {p0, p1, p2}, Lcom/pinguo/album/common/SharedPrefCompat;->putSets(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_12

    :catch_18
    move-exception v2

    goto :goto_14
.end method
