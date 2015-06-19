.class public final Lcom/spotify/mobile/android/spotlets/browse/util/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/spotify/mobile/android/spotlets/browse/model/Genre;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static declared-synchronized a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/spotify/mobile/android/spotlets/browse/model/Genre;
    .registers 4

    const-class v1, Lcom/spotify/mobile/android/spotlets/browse/util/e;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->b(Landroid/content/res/Resources;)V

    sget-object v0, Lcom/spotify/mobile/android/spotlets/browse/util/e;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v1

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/res/Resources;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/browse/model/Genre;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/spotify/mobile/android/spotlets/browse/util/e;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->b(Landroid/content/res/Resources;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/spotify/mobile/android/spotlets/browse/util/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/spotify/mobile/android/spotlets/browse/util/e;->c:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_27

    goto :goto_11

    :catchall_27
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2a
    :try_start_2a
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/browse/model/Genre;",
            ">;)V"
        }
    .end annotation

    const-class v2, Lcom/spotify/mobile/android/spotlets/browse/util/e;

    monitor-enter v2

    if-eqz p0, :cond_92

    const/4 v1, 0x0

    :try_start_6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->b()Ljava/lang/String;

    move-result-object v0

    const-string v4, "new_releases"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_23
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "highlights"

    sget-object v5, Lcom/spotify/mobile/android/spotlets/browse/util/e;->c:Ljava/util/Map;

    const-string v6, "highlights"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_49

    const-string v0, "new_releases"

    sget-object v4, Lcom/spotify/mobile/android/spotlets/browse/util/e;->c:Ljava/util/Map;

    const-string v5, "new_releases"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_6 .. :try_end_60} :catchall_61

    goto :goto_4d

    :catchall_61
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_64
    :try_start_64
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_68
    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->e()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "toplists"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_68

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_8e
    sput-object v3, Lcom/spotify/mobile/android/spotlets/browse/util/e;->d:Ljava/util/List;

    sput-object v1, Lcom/spotify/mobile/android/spotlets/browse/util/e;->c:Ljava/util/Map;
    :try_end_92
    .catchall {:try_start_64 .. :try_end_92} :catchall_61

    :cond_92
    monitor-exit v2

    return-void

    :cond_94
    move v0, v1

    goto :goto_23
.end method

.method public static declared-synchronized a([Lcom/spotify/mobile/android/spotlets/browse/model/GenreMapping;)V
    .registers 7

    const-class v1, Lcom/spotify/mobile/android/spotlets/browse/util/e;

    monitor-enter v1

    if-eqz p0, :cond_1f

    :try_start_5
    new-instance v0, Ljava/util/HashMap;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/util/e;->e:Ljava/util/Map;

    array-length v2, p0

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_1f

    aget-object v3, p0, v0

    sget-object v4, Lcom/spotify/mobile/android/spotlets/browse/util/e;->e:Ljava/util/Map;

    iget-object v5, v3, Lcom/spotify/mobile/android/spotlets/browse/model/GenreMapping;->id:Ljava/lang/String;

    iget-object v3, v3, Lcom/spotify/mobile/android/spotlets/browse/model/GenreMapping;->seed:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_21

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    monitor-exit v1

    return-void

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/spotify/mobile/android/spotlets/browse/model/Genre;
    .registers 5

    const-class v1, Lcom/spotify/mobile/android/spotlets/browse/util/e;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->b(Landroid/content/res/Resources;)V

    sget-object v0, Lcom/spotify/mobile/android/spotlets/browse/util/e;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->e()Z
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_25

    move-result v2

    if-eqz v2, :cond_18

    :cond_16
    :goto_16
    monitor-exit v1

    return-object v0

    :cond_18
    :try_start_18
    sget-object v2, Lcom/spotify/mobile/android/spotlets/browse/util/e;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_25

    goto :goto_16

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b(Landroid/content/res/Resources;)V
    .registers 6

    const-class v1, Lcom/spotify/mobile/android/spotlets/browse/util/e;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/spotify/mobile/android/spotlets/browse/util/e;->c:Ljava/util/Map;

    if-eqz v2, :cond_38

    sget-object v2, Lcom/spotify/mobile/android/spotlets/browse/util/e;->b:Ljava/lang/String;

    if-eqz v2, :cond_38

    sget-object v2, Lcom/spotify/mobile/android/spotlets/browse/util/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51b

    :cond_38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "mood"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "party"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "pop"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "workout"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "rock"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "chill"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "club"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "urban"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "groove"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "decades"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "travel"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "romance"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "jazz"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "popculture"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "events"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "folk"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "classical"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "kids"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "holidays"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sput-object v2, Lcom/spotify/mobile/android/spotlets/browse/util/e;->d:Ljava/util/List;

    sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/util/e;->b:Ljava/lang/String;

    const v0, 0x7f0f006c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/util/e;->a:Ljava/lang/String;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;-><init>(Landroid/content/res/Resources;)V

    const-string v2, "chill"

    const v3, 0x7f0f0079

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "classical"

    const v3, 0x7f0f007c

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "club"

    const v3, 0x7f0f007e

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "decades"

    const v3, 0x7f0f0083

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "events"

    const v3, 0x7f0f0088

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "folk"

    const v3, 0x7f0f008c

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "groove"

    const v3, 0x7f0f0093

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "highlights"

    const v3, 0x7f0f00e6

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "holidays"

    const v3, 0x7f0f0097

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "jazz"

    const v3, 0x7f0f009d

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "kids"

    const v3, 0x7f0f00a0

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "mood"

    const v3, 0x7f0f00a8

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "new_releases"

    const v3, 0x7f0f00ac

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "trending_artists"

    const v3, 0x7f0f00d6

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "party"

    const v3, 0x7f0f00b0

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "popculture"

    const v3, 0x7f0f00b5

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "pop"

    const v3, 0x7f0f00b2

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "rock"

    const v3, 0x7f0f00c1

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "romance"

    const v3, 0x7f0f00c5

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "toplists"

    const v3, 0x7f0f00d1

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "travel"

    const v3, 0x7f0f00d4

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "urban"

    const v3, 0x7f0f00d9

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "workout"

    const v3, 0x7f0f00de

    invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;I)V

    const-string v2, "chill"

    const-string v3, "chill_misc"

    const v4, 0x7f0f007a

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "chill"

    const-string v3, "lounge"

    const v4, 0x7f0f00a5

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "chill"

    const-string v3, "relax"

    const v4, 0x7f0f00be

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "classical"

    const-string v3, "baroque"

    const v4, 0x7f0f0076

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "classical"

    const-string v3, "classical_misc"

    const v4, 0x7f0f007d

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "classical"

    const-string v3, "contemporary"

    const v4, 0x7f0f0080

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "classical"

    const-string v3, "romanticism"

    const v4, 0x7f0f00c7

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "club"

    const-string v3, "club_misc"

    const v4, 0x7f0f007f

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "club"

    const-string v3, "dubstep"

    const v4, 0x7f0f0086

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "club"

    const-string v3, "electro"

    const v4, 0x7f0f0087

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "club"

    const-string v3, "house"

    const v4, 0x7f0f009a

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "club"

    const-string v3, "techno"

    const v4, 0x7f0f00cf

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "club"

    const-string v3, "trance"

    const v4, 0x7f0f00d3

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "decades"

    const-string v3, "00s"

    const v4, 0x7f0f006d

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "decades"

    const-string v3, "50s"

    const v4, 0x7f0f006e

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "decades"

    const-string v3, "60s"

    const v4, 0x7f0f006f

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "decades"

    const-string v3, "70s"

    const v4, 0x7f0f0070

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "decades"

    const-string v3, "80s"

    const v4, 0x7f0f0071

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "decades"

    const-string v3, "90s"

    const v4, 0x7f0f0072

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "events"

    const-string v3, "events_misc"

    const v4, 0x7f0f0089

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "events"

    const-string v3, "festivals"

    const v4, 0x7f0f008a

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "events"

    const-string v3, "live_concerts"

    const v4, 0x7f0f00a4

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "events"

    const-string v3, "sporting_events"

    const v4, 0x7f0f00cb

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "folk"

    const-string v3, "bluegrass"

    const v4, 0x7f0f0077

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "folk"

    const-string v3, "country"

    const v4, 0x7f0f0081

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "folk"

    const-string v3, "folk_folk"

    const v4, 0x7f0f008d

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "folk"

    const-string v3, "folk_misc"

    const v4, 0x7f0f008e

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "folk"

    const-string v3, "world_music"

    const v4, 0x7f0f00e0

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "groove"

    const-string v3, "disco"

    const v4, 0x7f0f0085

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "groove"

    const-string v3, "funk"

    const v4, 0x7f0f0090

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "groove"

    const-string v3, "gospel"

    const v4, 0x7f0f0092

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "groove"

    const-string v3, "groove_misc"

    const v4, 0x7f0f0094

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "groove"

    const-string v3, "latino"

    const v4, 0x7f0f00a3

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "groove"

    const-string v3, "soul"

    const v4, 0x7f0f00ca

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "holidays"

    const-string v3, "christmas"

    const v4, 0x7f0f007b

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "holidays"

    const-string v3, "holidays_misc"

    const v4, 0x7f0f0098

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "holidays"

    const-string v3, "national"

    const v4, 0x7f0f00ab

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "holidays"

    const-string v3, "newyears"

    const v4, 0x7f0f00ad

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "jazz"

    const-string v3, "blues"

    const v4, 0x7f0f0078

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "jazz"

    const-string v3, "jazz_jazz"

    const v4, 0x7f0f009e

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "jazz"

    const-string v3, "jazz_misc"

    const v4, 0x7f0f009f

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "kids"

    const-string v3, "fun"

    const v4, 0x7f0f008f

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "kids"

    const-string v3, "kids_classics"

    const v4, 0x7f0f00a1

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "kids"

    const-string v3, "kids_misc"

    const v4, 0x7f0f00a2

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "kids"

    const-string v3, "stories"

    const v4, 0x7f0f00cc

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "mood"

    const-string v3, "angry"

    const v4, 0x7f0f0075

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "mood"

    const-string v3, "happy"

    const v4, 0x7f0f0095

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "mood"

    const-string v3, "melancholic"

    const v4, 0x7f0f00a6

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "mood"

    const-string v3, "mood_misc"

    const v4, 0x7f0f00a9

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "mood"

    const-string v3, "psyched"

    const v4, 0x7f0f00b9

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "mood"

    const-string v3, "relaxed"

    const v4, 0x7f0f00bf

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "party"

    const-string v3, "after_party"

    const v4, 0x7f0f0073

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "party"

    const-string v3, "dinner"

    const v4, 0x7f0f0084

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "party"

    const-string v3, "floorfillers"

    const v4, 0x7f0f008b

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "party"

    const-string v3, "party_misc"

    const v4, 0x7f0f00b1

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "party"

    const-string v3, "pre_party"

    const v4, 0x7f0f00b8

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "party"

    const-string v3, "theme_party"

    const v4, 0x7f0f00d0

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "pop"

    const-string v3, "indie_pop"

    const v4, 0x7f0f009c

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "pop"

    const-string v3, "one_hit_wonders"

    const v4, 0x7f0f00af

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "pop"

    const-string v3, "pop_misc"

    const v4, 0x7f0f00b3

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "pop"

    const-string v3, "pop_pop"

    const v4, 0x7f0f00b4

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "pop"

    const-string v3, "power_pop"

    const v4, 0x7f0f00b7

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "pop"

    const-string v3, "songwriter"

    const v4, 0x7f0f00c9

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "pop"

    const-string v3, "synth_pop"

    const v4, 0x7f0f00ce

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "popculture"

    const-string v3, "movies"

    const v4, 0x7f0f00aa

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "popculture"

    const-string v3, "popculture_misc"

    const v4, 0x7f0f00b6

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "popculture"

    const-string v3, "radio"

    const v4, 0x7f0f00bc

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "popculture"

    const-string v3, "tv"

    const v4, 0x7f0f00d7

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "popculture"

    const-string v3, "video_games"

    const v4, 0x7f0f00dc

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "rock"

    const-string v3, "alt_rock"

    const v4, 0x7f0f0074

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "rock"

    const-string v3, "hard_rock"

    const v4, 0x7f0f0096

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "rock"

    const-string v3, "metal"

    const v4, 0x7f0f00a7

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "rock"

    const-string v3, "punk"

    const v4, 0x7f0f00ba

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "rock"

    const-string v3, "rock_misc"

    const v4, 0x7f0f00c2

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "rock"

    const-string v3, "rock_n_roll"

    const v4, 0x7f0f00c3

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "rock"

    const-string v3, "rock_rock"

    const v4, 0x7f0f00c4

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "romance"

    const-string v3, "date"

    const v4, 0x7f0f0082

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "romance"

    const-string v3, "romance_misc"

    const v4, 0x7f0f00c6

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "romance"

    const-string v3, "wedding"

    const v4, 0x7f0f00dd

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "toplists"

    const-string v3, "sweden"

    const v4, 0x7f0f00cd

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "toplists"

    const-string v3, "toplists_misc"

    const v4, 0x7f0f00d2

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "toplists"

    const-string v3, "uk"

    const v4, 0x7f0f00d8

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "toplists"

    const-string v3, "usa"

    const v4, 0x7f0f00db

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "travel"

    const-string v3, "geographical"

    const v4, 0x7f0f0091

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "travel"

    const-string v3, "on_the_beach"

    const v4, 0x7f0f00ae

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "travel"

    const-string v3, "road_trip"

    const v4, 0x7f0f00c0

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "travel"

    const-string v3, "travel_misc"

    const v4, 0x7f0f00d5

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "urban"

    const-string v3, "hophop"

    const v4, 0x7f0f0099

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "urban"

    const-string v3, "reggae"

    const v4, 0x7f0f00bd

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "urban"

    const-string v3, "r_n_b"

    const v4, 0x7f0f00bb

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "urban"

    const-string v3, "urban_misc"

    const v4, 0x7f0f00da

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "workout"

    const-string v3, "in_the_gym"

    const v4, 0x7f0f009b

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "workout"

    const-string v3, "running"

    const v4, 0x7f0f00c8

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "workout"

    const-string v3, "workout_misc"

    const v4, 0x7f0f00df

    invoke-virtual {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/util/GenresHashMap;->a(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/util/e;->c:Ljava/util/Map;

    invoke-static {p0}, Lcom/spotify/mobile/android/spotlets/browse/util/f;->a(Landroid/content/res/Resources;)[Lcom/spotify/mobile/android/spotlets/browse/model/GenreMapping;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->a([Lcom/spotify/mobile/android/spotlets/browse/model/GenreMapping;)V
    :try_end_51b
    .catchall {:try_start_3 .. :try_end_51b} :catchall_51d

    :cond_51b
    monitor-exit v1

    return-void

    :catchall_51d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/browse/model/Genre;",
            ">;"
        }
    .end annotation

    const-class v11, Lcom/spotify/mobile/android/spotlets/browse/util/e;

    monitor-enter v11

    :try_start_3
    invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->b(Landroid/content/res/Resources;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->b(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/spotify/mobile/android/spotlets/browse/model/Genre;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_49

    move-result-object v8

    if-nez v8, :cond_14

    move-object v0, v10

    :goto_12
    monitor-exit v11

    return-object v0

    :cond_14
    :try_start_14
    invoke-virtual {v8}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    sget-object v0, Lcom/spotify/mobile/android/spotlets/browse/util/e;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "misc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4d

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catchall {:try_start_14 .. :try_end_48} :catchall_49

    goto :goto_23

    :catchall_49
    move-exception v0

    monitor-exit v11

    throw v0

    :cond_4c
    move-object v0, v9

    :cond_4d
    move-object v9, v0

    goto :goto_23

    :cond_4f
    :try_start_4f
    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/util/e$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/browse/util/e$1;-><init>()V

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v12, 0x0

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    invoke-virtual {v8}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->c()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/spotify/mobile/android/spotlets/browse/util/e;->a:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->i()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v12, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eqz v9, :cond_83

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catchall {:try_start_4f .. :try_end_83} :catchall_49

    :cond_83
    move-object v0, v10

    goto :goto_12
.end method

.method public static declared-synchronized d(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 4

    const-class v1, Lcom/spotify/mobile/android/spotlets/browse/util/e;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->b(Landroid/content/res/Resources;)V

    sget-object v0, Lcom/spotify/mobile/android/spotlets/browse/util/e;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v1

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method
