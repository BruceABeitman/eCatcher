.class public final Lcom/spotify/mobile/android/util/SpotifyLink;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/content/UriMatcher;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field private final d:Landroid/net/Uri;

.field private e:Ljava/lang/String;

.field private final f:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "ad/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->c:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "album/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->d:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "album/*/play"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->f:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "album/*/play/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->f:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "app/browse"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->n:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "app/browse/new_releases"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->o:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "app/browse/trending_artists"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->q:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "app/browse/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->p:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "app/magic"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ag:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "app/magic/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ag:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "artist/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->h:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "artist/*/albums"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->e:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "artist/*/appears_on"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->g:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "artist/*/biography"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->j:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "artist/*/compilations"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->y:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "artist/*/concert"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->k:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "artist/*/gallery"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->l:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "artist/*/play"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->i:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "artist/*/play/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->i:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "artist/*/playlists"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->m:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "artist/*/related"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ac:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "artist/*/singles"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->af:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "collection"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->r:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "follow"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->I:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "follow/artists"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->J:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "follow/facebook"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->K:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "genre/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->L:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "internal/social-feed"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->a:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "internal/social-feed/reactors"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->b:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "internal/collection/albums"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->t:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "internal/collection/artists"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->v:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "internal/collection/playlists"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->w:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "internal/collection/tracks"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->x:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "internal/cosmos_test"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->B:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "internal/debug"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->C:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "internal/devices"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->D:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "internal/discover"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->E:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "internal/inbox"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->N:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "internal/licenses"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->O:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "internal/notification_webview/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->Z:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "internal/playlists"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->Q:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "internal/preferences"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->z:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "internal/preferences/push_notification"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->A:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "internal/premium_signup"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->S:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "internal/radio"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->aa:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "internal/social_chart"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ah:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "internal/social_chart/listeners"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ai:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "internal/startpage"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->M:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "local/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->al:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "local/*/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->al:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "local/*/*/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->al:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "local/*/*/*/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->al:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "local/*/*/*/*/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->al:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "radio/album/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ab:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "radio/artist/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ab:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "radio/genre/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ab:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "radio/playlist/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ab:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "radio/track/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ab:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "search"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ad:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "search/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ad:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "search/*/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ad:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "share/post"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ae:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "track/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->al:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "user/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->T:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "upsell/premium"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->am:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "user/*/artists"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->U:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "user/*/collection"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->r:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "user/*/collection/album/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->s:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "user/*/collection/artist/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->u:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "user/*/folder/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->G:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "user/*/folder/*/tracks"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->H:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "user/*/followers"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->V:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "user/*/following"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->W:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "user/*/inbox"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->N:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "user/*/invitationcodes"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->X:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "user/*/playlist/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->P:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "user/*/playlist/*/play"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->R:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "user/*/playlist/*/play/*"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->R:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "user/*/playlists"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->Y:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "user/*/publishedstarred"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->aj:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "user/*/rootlist"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->Q:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "user/*/starred"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->aj:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "user/*/top/tracks"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ak:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "user/*/toplist"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ak:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    const-string v1, "*"

    const-string v2, "start_trial_upsell"

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->an:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "user:([^:]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->b:Ljava/util/regex/Pattern;

    const-string v0, "^user:([^#:?]*[#?])+:?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->F:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    iput-object v0, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->f:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x0

    const-string v1, "spotify://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v0, "spotify://"

    :cond_19
    :goto_19
    if-nez v0, :cond_66

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->F:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    iput-object v0, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->f:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    goto :goto_d

    :cond_24
    const-string v1, "spotify:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v0, "spotify:"

    goto :goto_19

    :cond_2f
    const-string v1, "http://open.spotify.com/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v0, "http://open.spotify.com/"

    goto :goto_19

    :cond_3a
    const-string v1, "https://r.spotify.com/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v0, "/app_android/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_63

    add-int/lit8 v1, v0, 0xd

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->e:Ljava/lang/String;

    const-string v2, "([^/?]+).*"

    const-string v3, "$1"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->e:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_63
    const-string v0, "https://r.spotify.com/"

    goto :goto_19

    :cond_66
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_a7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    const-string v4, "#"

    const-string v5, "%23"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "?"

    const-string v5, "%3f"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a7
    const/16 v1, 0x3a

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eqz v0, :cond_cc

    :goto_b7
    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_ce

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->F:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    iput-object v0, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->f:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    goto/16 :goto_d

    :cond_cc
    move-object v0, v1

    goto :goto_b7

    :cond_ce
    invoke-static {v0}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->a(I)Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->f:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    goto/16 :goto_d
.end method

.method public static a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/SpotifyLink;
    .registers 4

    new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "spotify:user:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(II)Ljava/lang/String;
    .registers 8

    const/16 v4, 0x3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "spotify:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3e

    if-lt v1, p1, :cond_1e

    if-le v1, p2, :cond_3a

    :cond_1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_2d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2d
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v4, 0x3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "spotify:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_43

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_29
    if-ne v1, p1, :cond_32

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_43
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_53

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/util/SpotifyLink;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "spotify:track:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 3

    new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/spotify/mobile/android/util/SpotifyLink;->f:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->F:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public final a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->f:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    if-ltz p1, :cond_19

    iget-object v0, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1b

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return-object v0

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_2e} :catch_30

    move-result-object v0

    goto :goto_1a

    :catch_30
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unsupported encoding"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->b:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x1

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink;->a:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_1a

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return-object v0

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_2f
    array-length v2, v0

    if-ge v1, v2, :cond_3f

    aget-object v2, v0, v1

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_3f
    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_42
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_42} :catch_44

    move-result-object v0

    goto :goto_19

    :catch_44
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unsupported encoding"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink$1;->a:[I

    iget-object v1, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->f:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "URI is does not contain an ID"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    iget-object v0, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method public final e()Ljava/lang/String;
    .registers 5

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "spotify:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x3a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/spotify/mobile/android/util/SpotifyLink;

    iget-object v2, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    iget-object v3, p1, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/util/SpotifyLink;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_29
    move v0, v1

    goto :goto_4
.end method

.method public final f()Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://open.spotify.com/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Z
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink$1;->a:[I

    iget-object v1, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->f:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    const/4 v0, 0x0

    :goto_e
    return v0

    :pswitch_f
    const/4 v0, 0x1

    goto :goto_e

    nop

    :pswitch_data_12
    .packed-switch 0xe
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public final j()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x3

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink$1;->a:[I

    iget-object v1, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->f:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :pswitch_10
    invoke-direct {p0, v2}, Lcom/spotify/mobile/android/util/SpotifyLink;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :pswitch_15
    invoke-direct {p0, v2}, Lcom/spotify/mobile/android/util/SpotifyLink;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :pswitch_1a
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :pswitch_data_20
    .packed-switch 0xe
        :pswitch_15
        :pswitch_10
        :pswitch_1a
    .end packed-switch
.end method

.method public final k()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x2

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink$1;->a:[I

    iget-object v1, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->f:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    :pswitch_e
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :pswitch_13
    const-string v0, "play"

    invoke-direct {p0, v2, v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :pswitch_1a
    const-string v0, "play"

    invoke-direct {p0, v2, v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :pswitch_21
    const/4 v0, 0x4

    const-string v1, "play"

    invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_e
        :pswitch_1a
        :pswitch_e
        :pswitch_21
    .end packed-switch
.end method

.method public final l()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x3

    const/4 v2, 0x2

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink$1;->a:[I

    iget-object v1, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->f:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    :pswitch_14
    invoke-direct {p0, v2, v3}, Lcom/spotify/mobile/android/util/SpotifyLink;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :pswitch_19
    invoke-direct {p0, v2, v3}, Lcom/spotify/mobile/android/util/SpotifyLink;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :pswitch_1e
    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    nop

    :pswitch_data_26
    .packed-switch 0xe
        :pswitch_19
        :pswitch_14
        :pswitch_1e
    .end packed-switch
.end method

.method public final m()Landroid/net/Uri;
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink$1;->a:[I

    iget-object v1, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->f:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    const/4 v0, 0x0

    :goto_e
    return-object v0

    :pswitch_f
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_e

    nop

    :pswitch_data_1a
    .packed-switch 0x11
        :pswitch_f
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/SpotifyLink;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
