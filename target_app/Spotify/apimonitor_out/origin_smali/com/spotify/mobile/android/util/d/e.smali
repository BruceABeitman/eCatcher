.class public final Lcom/spotify/mobile/android/util/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/spotify/mobile/android/util/cx;

.field private final c:Landroid/content/Context;

.field private d:Lcom/spotify/mobile/android/util/d/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "displayed_showcases"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/util/d/e;->b:Lcom/spotify/mobile/android/util/cz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/util/d/e;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/d/e;->a:Lcom/spotify/mobile/android/util/cx;

    new-instance v0, Lcom/spotify/mobile/android/util/d/a;

    invoke-direct {v0}, Lcom/spotify/mobile/android/util/d/a;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/d/e;->d:Lcom/spotify/mobile/android/util/d/a;

    return-void
.end method

.method private d()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :try_start_6
    iget-object v1, p0, Lcom/spotify/mobile/android/util/d/e;->a:Lcom/spotify/mobile/android/util/cx;

    sget-object v3, Lcom/spotify/mobile/android/util/d/e;->b:Lcom/spotify/mobile/android/util/cz;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v3, v4}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v3

    move v1, v2

    :goto_14
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_30

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_21} :catch_24

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :catch_24
    move-exception v0

    const-string v1, "Displayed ids of showcases couldn\'t be deserialized"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_30
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/util/d/b;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/spotify/mobile/android/util/d/e;->d()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/d/e;->d:Lcom/spotify/mobile/android/util/d/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/d/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/d/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/d/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/d/b;->b()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_33
    return-object v2
.end method

.method public final a(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/spotify/mobile/android/util/d/b;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/spotify/mobile/android/util/d/e;->d()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/d/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/d/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_26
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2a

    :cond_3a
    iget-object v0, p0, Lcom/spotify/mobile/android/util/d/e;->a:Lcom/spotify/mobile/android/util/cx;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/d/e;->b:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Lorg/json/JSONArray;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    return-void
.end method

.method public final b()V
    .registers 4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/d/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/d/e;->c:Landroid/content/Context;

    const-class v2, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/util/d/e;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_a
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/d/e;->d:Lcom/spotify/mobile/android/util/d/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/d/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/util/d/e;->a(Ljava/util/Collection;)V

    return-void
.end method
