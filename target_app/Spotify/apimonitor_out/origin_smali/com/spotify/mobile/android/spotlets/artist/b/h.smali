.class public final Lcom/spotify/mobile/android/spotlets/artist/b/h;
.super Lcom/spotify/mobile/android/spotlets/artist/b/b;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "spotify:artist:([a-zA-Z0-9]+):(albums|singles|appears_on|compilations)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/b/h;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/b/b;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/b/h;->b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/b/h;->b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/b/h;->b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hm://artist/v1/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/b/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/b/h;->b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/android?format=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
