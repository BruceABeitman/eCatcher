.class public final Lcom/spotify/mobile/android/spotlets/artist/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/artist/b/a;
    .registers 3

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/b/a;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/b/a;->a:Ljava/util/regex/Pattern;

    invoke-static {p0, v1}, Lcom/spotify/mobile/android/spotlets/artist/b/i;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/b/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/i;->a(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/artist/b/b;
    .registers 4

    sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/b/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0}, Lcom/spotify/mobile/android/spotlets/artist/b/i;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/artist/b/a;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/b/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/b/c;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/b/c;->a:Ljava/util/regex/Pattern;

    invoke-static {p0, v1}, Lcom/spotify/mobile/android/spotlets/artist/b/i;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/b/c;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :cond_29
    sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/b/e;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_41

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/b/e;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/b/e;->a:Ljava/util/regex/Pattern;

    invoke-static {p0, v1}, Lcom/spotify/mobile/android/spotlets/artist/b/i;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/b/e;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :cond_41
    sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/b/d;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_59

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/b/d;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/b/d;->a:Ljava/util/regex/Pattern;

    invoke-static {p0, v1}, Lcom/spotify/mobile/android/spotlets/artist/b/i;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/b/d;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :cond_59
    sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/b/g;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_71

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/b/g;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/b/g;->a:Ljava/util/regex/Pattern;

    invoke-static {p0, v1}, Lcom/spotify/mobile/android/spotlets/artist/b/i;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/b/g;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :cond_71
    sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/b/h;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_a5

    sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/b/h;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/i;->a(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    move-result-object v2

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/b/h;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/b/h;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)V

    goto/16 :goto_10

    :cond_a5
    sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/b/f;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_be

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/b/f;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/b/f;->a:Ljava/util/regex/Pattern;

    invoke-static {p0, v1}, Lcom/spotify/mobile/android/spotlets/artist/b/i;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/b/f;-><init>(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_be
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
