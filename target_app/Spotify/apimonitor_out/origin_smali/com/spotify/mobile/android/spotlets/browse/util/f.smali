.class public final Lcom/spotify/mobile/android/spotlets/browse/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/res/Resources;)[Lcom/spotify/mobile/android/spotlets/browse/model/GenreMapping;
    .registers 5

    const/4 v3, 0x0

    const v0, 0x7f0f01db

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :try_start_8
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    const-class v2, Lcom/spotify/mobile/android/spotlets/browse/model/GenresMapping;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->reader(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/model/GenresMapping;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/browse/model/GenresMapping;->genres:[Lcom/spotify/mobile/android/spotlets/browse/model/GenreMapping;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1b} :catch_1c

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    const-string v1, "GenresMapping parsing failed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v3, [Lcom/spotify/mobile/android/spotlets/browse/model/GenreMapping;

    goto :goto_1b
.end method
