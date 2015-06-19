.class public final Lcom/spotify/mobile/android/service/c/a;
.super Lcom/spotify/mobile/android/service/c/d;
.source "SourceFile"


# static fields
.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;


# instance fields
.field private h:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "paused"

    aput-object v1, v0, v3

    const-string v1, "is_prev_enabled"

    aput-object v1, v0, v4

    const-string v1, "is_next_enabled"

    aput-object v1, v0, v5

    const-string v1, "is_radio"

    aput-object v1, v0, v6

    const-string v1, "radio_thumb_state"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "is_ad_playing"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/service/c/a;->f:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "uri"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "album_name"

    aput-object v1, v0, v5

    const-string v1, "artist_name"

    aput-object v1, v0, v6

    const-string v1, "album_image_uri"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "focused_row"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_in_collection"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/service/c/a;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/c/b;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/spotify/mobile/android/service/c/d;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/c/b;Landroid/os/Handler;)V

    new-instance v0, Lcom/spotify/mobile/android/service/c/a$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/c/a$1;-><init>(Lcom/spotify/mobile/android/service/c/a;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/c/a;->h:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Landroid/database/Cursor;Landroid/database/Cursor;)Lcom/spotify/mobile/android/g/a;
    .registers 16

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_c
    invoke-static {}, Lcom/spotify/mobile/android/g/a;->a()Lcom/spotify/mobile/android/g/a;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/spotify/mobile/android/g/a;->a()Lcom/spotify/mobile/android/g/a;

    move-result-object v0

    goto :goto_10

    :cond_21
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_74

    const/4 v6, 0x1

    :goto_2d
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v8

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v9

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v7

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v11

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x6

    invoke-static {p1, v5}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v12

    invoke-static {v0}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-static {}, Lcom/spotify/mobile/android/g/a;->a()Lcom/spotify/mobile/android/g/a;

    move-result-object v0

    goto :goto_10

    :cond_74
    const/4 v6, 0x0

    goto :goto_2d

    :cond_76
    new-instance v0, Lcom/spotify/mobile/android/service/c/c;

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Lcom/spotify/mobile/android/service/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZZZZLjava/lang/String;ZZZ)V

    invoke-static {v0}, Lcom/spotify/mobile/android/g/a;->a(Ljava/lang/Object;)Lcom/spotify/mobile/android/g/a;

    move-result-object v0

    goto :goto_10
.end method

.method static synthetic b()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/service/c/a;->f:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/service/c/a;->g:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/a;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/c/a;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
