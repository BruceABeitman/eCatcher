.class public final Lcom/spotify/mobile/android/util/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/spotify/mobile/android/util/SpotifyLink;

.field private c:Lcom/spotify/mobile/android/util/af;

.field private d:Lcom/spotify/mobile/android/util/cs;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "album_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/util/ae;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;Lcom/spotify/mobile/android/util/af;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/spotify/mobile/android/util/ae;->b:Lcom/spotify/mobile/android/util/SpotifyLink;

    iput-object p3, p0, Lcom/spotify/mobile/android/util/ae;->c:Lcom/spotify/mobile/android/util/af;

    new-instance v0, Lcom/spotify/mobile/android/util/cs;

    new-instance v1, Lcom/spotify/mobile/android/util/ae$1;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/util/ae$1;-><init>(Lcom/spotify/mobile/android/util/ae;)V

    invoke-direct {v0, p1, v1}, Lcom/spotify/mobile/android/util/cs;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ct;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/ae;->d:Lcom/spotify/mobile/android/util/cs;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/util/ae;)Lcom/spotify/mobile/android/util/af;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ae;->c:Lcom/spotify/mobile/android/util/af;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/util/ae;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ae;->b:Lcom/spotify/mobile/android/util/SpotifyLink;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    :goto_d
    return-object p1

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":play:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_d
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ae;->d:Lcom/spotify/mobile/android/util/cs;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/ae;->b:Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/provider/Metadata$Track;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/util/ae;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cs;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ae;->d:Lcom/spotify/mobile/android/util/cs;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ae;->d:Lcom/spotify/mobile/android/util/cs;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cs;->b()V

    iput-object v1, p0, Lcom/spotify/mobile/android/util/ae;->d:Lcom/spotify/mobile/android/util/cs;

    :cond_c
    iget-object v0, p0, Lcom/spotify/mobile/android/util/ae;->c:Lcom/spotify/mobile/android/util/af;

    invoke-interface {v0}, Lcom/spotify/mobile/android/util/af;->a()V

    iput-object v1, p0, Lcom/spotify/mobile/android/util/ae;->c:Lcom/spotify/mobile/android/util/af;

    return-void
.end method
