.class final Lcom/instagram/common/q/a;
.super Ljava/lang/Object;
.source "NotificationCategoryController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType::",
        "Lcom/instagram/common/q/c/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v4/app/bx;

.field private final b:Lcom/instagram/common/q/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/q/i",
            "<TDataType;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/instagram/common/analytics/d;

.field private final d:Landroid/content/SharedPreferences;

.field private final e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TDataType;>;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/app/bx;Lcom/instagram/common/q/i;Lcom/instagram/common/analytics/d;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/common/q/a;->a:Landroid/support/v4/app/bx;

    iput-object p2, p0, Lcom/instagram/common/q/a;->b:Lcom/instagram/common/q/i;

    iput-object p3, p0, Lcom/instagram/common/q/a;->c:Lcom/instagram/common/analytics/d;

    iget-object v0, p0, Lcom/instagram/common/q/a;->b:Lcom/instagram/common/q/i;

    invoke-interface {v0}, Lcom/instagram/common/q/i;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/q/a;->d:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/instagram/common/q/a;->b:Lcom/instagram/common/q/i;

    invoke-interface {v0}, Lcom/instagram/common/q/i;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/q/a;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/q/a;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/q/a;->h:Ljava/util/Set;

    iget-object v0, p0, Lcom/instagram/common/q/a;->e:Ljava/lang/String;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "category cannot contain delimiter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/common/q/a;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/instagram/common/q/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lcom/instagram/common/q/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private d()V
    .registers 7

    iget-boolean v0, p0, Lcom/instagram/common/q/a;->f:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/instagram/common/q/a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/instagram/common/q/a;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempted to initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget-object v0, p0, Lcom/instagram/common/q/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2a

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "showing"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v0, p0, Lcom/instagram/common/q/a;->h:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_5e
    iget-object v1, p0, Lcom/instagram/common/q/a;->g:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_72

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/instagram/common/q/a;->g:Ljava/util/Map;

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_7a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_85

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    :cond_85
    iget-object v4, p0, Lcom/instagram/common/q/a;->b:Lcom/instagram/common/q/i;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Lcom/instagram/common/q/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/common/q/a;->f:Z

    return-void
.end method

.method private e()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/common/q/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/instagram/common/q/m;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private f()V
    .registers 3

    iget-boolean v0, p0, Lcom/instagram/common/q/a;->f:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "notification category not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method private g()Z
    .registers 4

    iget-object v0, p0, Lcom/instagram/common/q/a;->d:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/instagram/common/q/m;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final declared-synchronized a()Lcom/instagram/common/q/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/common/q/a",
            "<TDataType;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/instagram/common/q/a;->f:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/instagram/common/q/a;->d()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    :cond_8
    monitor-exit p0

    return-object p0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/instagram/common/q/a;->f()V

    iget-object v0, p0, Lcom/instagram/common/q/a;->a:Landroid/support/v4/app/bx;

    iget-object v1, p0, Lcom/instagram/common/q/a;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/instagram/common/q/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0xfb16

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/bx;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/instagram/common/q/a;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/instagram/common/q/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lcom/instagram/common/q/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method final a(Ljava/lang/String;Lcom/instagram/common/q/c/a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TDataType;)V"
        }
    .end annotation

    const v4, 0xfb16

    invoke-direct {p0}, Lcom/instagram/common/q/a;->f()V

    iget-object v0, p0, Lcom/instagram/common/q/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/instagram/common/q/a;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/instagram/common/q/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Lcom/instagram/common/q/m;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/common/q/a;->b:Lcom/instagram/common/q/i;

    invoke-interface {v3, p2}, Lcom/instagram/common/q/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lcom/instagram/common/q/a;->g()Z

    move-result v1

    if-nez v1, :cond_76

    iget-object v1, p0, Lcom/instagram/common/q/a;->h:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lcom/instagram/common/q/a;->h:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    add-int/lit8 v1, v1, 0x1

    :cond_50
    iget-object v2, p0, Lcom/instagram/common/q/a;->b:Lcom/instagram/common/q/i;

    invoke-interface {v2, v1}, Lcom/instagram/common/q/i;->a(I)Z

    move-result v1

    if-eqz v1, :cond_9c

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/instagram/common/q/a;->h:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/instagram/common/q/a;->a(Ljava/lang/String;)V

    goto :goto_63

    :cond_73
    invoke-direct {p0}, Lcom/instagram/common/q/a;->e()V

    :cond_76
    iget-object v0, p0, Lcom/instagram/common/q/a;->b:Lcom/instagram/common/q/i;

    iget-object v1, p0, Lcom/instagram/common/q/a;->g:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Lcom/instagram/common/q/i;->a(Ljava/util/Map;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/q/a;->a:Landroid/support/v4/app/bx;

    iget-object v2, p0, Lcom/instagram/common/q/a;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/instagram/common/q/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Landroid/support/v4/app/bx;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    new-instance v0, Lcom/instagram/common/q/a/a;

    const-string v1, "notification_displayed"

    invoke-direct {v0, p2, v1}, Lcom/instagram/common/q/a/a;-><init>(Lcom/instagram/common/q/c/a;Ljava/lang/String;)V

    const-string v1, "was_aggregated"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/q/a/a;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    iget-object v1, p0, Lcom/instagram/common/q/a;->c:Lcom/instagram/common/analytics/d;

    invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    :goto_9b
    return-void

    :cond_9c
    iget-object v1, p0, Lcom/instagram/common/q/a;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/instagram/common/q/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/common/q/a;->b:Lcom/instagram/common/q/i;

    invoke-interface {v2, p1, v0}, Lcom/instagram/common/q/i;->a(Ljava/lang/String;Ljava/util/List;)Landroid/app/Notification;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/common/q/a;->h:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    invoke-direct {p0, p1}, Lcom/instagram/common/q/a;->c(Ljava/lang/String;)V

    :cond_b3
    iget-object v2, p0, Lcom/instagram/common/q/a;->a:Landroid/support/v4/app/bx;

    invoke-virtual {v2, v1, v4, v0}, Landroid/support/v4/app/bx;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/instagram/common/q/a;->c:Lcom/instagram/common/analytics/d;

    new-instance v1, Lcom/instagram/common/q/a/a;

    const-string v2, "notification_displayed"

    invoke-direct {v1, p2, v2}, Lcom/instagram/common/q/a/a;-><init>(Lcom/instagram/common/q/c/a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    goto :goto_9b
.end method

.method final b()V
    .registers 4

    invoke-direct {p0}, Lcom/instagram/common/q/a;->f()V

    iget-object v0, p0, Lcom/instagram/common/q/a;->a:Landroid/support/v4/app/bx;

    iget-object v1, p0, Lcom/instagram/common/q/a;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/instagram/common/q/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0xfb16

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/bx;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/instagram/common/q/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/instagram/common/q/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method final b(Ljava/lang/String;)V
    .registers 7

    const v4, 0xfb16

    invoke-direct {p0}, Lcom/instagram/common/q/a;->f()V

    iget-object v0, p0, Lcom/instagram/common/q/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v0, p0, Lcom/instagram/common/q/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_27

    const/4 v1, 0x0

    :goto_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_27

    invoke-static {p1, v1}, Lcom/instagram/common/q/m;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_27
    invoke-direct {p0}, Lcom/instagram/common/q/a;->g()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/instagram/common/q/a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4d

    iget-object v0, p0, Lcom/instagram/common/q/a;->b:Lcom/instagram/common/q/i;

    iget-object v1, p0, Lcom/instagram/common/q/a;->g:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lcom/instagram/common/q/i;->a(Ljava/util/Map;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/q/a;->a:Landroid/support/v4/app/bx;

    iget-object v3, p0, Lcom/instagram/common/q/a;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/instagram/common/q/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4, v0}, Landroid/support/v4/app/bx;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    :goto_49
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_4d
    invoke-virtual {p0}, Lcom/instagram/common/q/a;->b()V

    goto :goto_49

    :cond_51
    iget-object v0, p0, Lcom/instagram/common/q/a;->a:Landroid/support/v4/app/bx;

    iget-object v1, p0, Lcom/instagram/common/q/a;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/instagram/common/q/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/bx;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/instagram/common/q/a;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/instagram/common/q/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_49
.end method

.method final c()V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/common/q/a;->f()V

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/instagram/common/q/a;->h:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/instagram/common/q/a;->a(Ljava/lang/String;)V

    goto :goto_e

    :cond_1e
    invoke-direct {p0}, Lcom/instagram/common/q/a;->g()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/instagram/common/q/a;->b()V

    :cond_27
    iget-object v0, p0, Lcom/instagram/common/q/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/instagram/common/q/a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-static {v1}, Lcom/instagram/common/i/a/b;->a(Ljava/lang/String;)Lcom/instagram/common/i/a/b;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Lcom/instagram/common/i/a/b;->b(Ljava/lang/String;)Lcom/instagram/common/i/a/c;

    move-result-object v1

    const-string v2, "\nmCategoryName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instagram/common/q/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nmAggregateMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/instagram/common/q/a;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nmData: \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instagram/common/q/a;->g:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/instagram/common/i/a/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nmShowing: \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instagram/common/q/a;->h:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nmPreferences: \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instagram/common/q/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/common/i/a/c;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
