.class public Lcom/spotify/mobile/android/ui/actions/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/c/a;


# instance fields
.field private final a:Lcom/spotify/mobile/android/ui/actions/a;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/ui/actions/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/actions/c;->a:Lcom/spotify/mobile/android/ui/actions/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "unaccepted_licenses"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/provider/w;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .registers 7

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "is_seen"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/provider/j;->b:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;J)V
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Z)V
    .registers 7

    const/4 v3, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "offline_state"

    if-eqz p2, :cond_1a

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Z)V
    .registers 6

    new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-direct {v0, p2}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->al:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    if-eq v0, v1, :cond_17

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->d:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    if-eq v0, v1, :cond_17

    const-string v0, "Unsupported link type to add to collection."

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :goto_16
    return-void

    :cond_17
    if-eqz p3, :cond_1e

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/e;->a(Landroid/content/Context;I)V

    goto :goto_16

    :cond_1e
    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/CollectionService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/spotify/mobile/android/provider/t;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/spotify/mobile/android/provider/o;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    const/4 v3, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/e;->a(Landroid/content/Context;I)V

    :goto_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/spotify/mobile/android/provider/o;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_1e
    const-string v2, "is_subscribed"

    if-eqz p2, :cond_2b

    const/4 v0, 0x1

    :goto_23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_12

    :cond_2b
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 6

    const/4 v3, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "radio_thumb_state"

    if-eqz p1, :cond_19

    const-string v0, "up"

    :goto_c
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/spotify/mobile/android/provider/n;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_19
    const-string v0, "down"

    goto :goto_c
.end method

.method public static b(Landroid/content/Context;J)V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/provider/m;->a:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-direct {v0, p2}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->al:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    if-eq v0, v1, :cond_17

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->d:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    if-eq v0, v1, :cond_17

    const-string v0, "Unsupported link type to remove from collection."

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :goto_16
    return-void

    :cond_17
    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/service/CollectionService;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    const/4 v3, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "is_collaborative"

    if-eqz p2, :cond_1e

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/spotify/mobile/android/provider/o;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_1e
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    const/4 v3, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "is_published"

    if-eqz p2, :cond_1e

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/spotify/mobile/android/provider/o;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_1e
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Z)V
    .registers 8

    const/4 v3, 0x0

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->a:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bs:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-string v1, "value"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/actions/c;->a:Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {p1, p2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "offline_mode"

    if-eqz p3, :cond_33

    const/4 v0, 0x1

    :goto_22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/spotify/mobile/android/provider/w;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_33
    const/4 v0, 0x0

    goto :goto_22
.end method
