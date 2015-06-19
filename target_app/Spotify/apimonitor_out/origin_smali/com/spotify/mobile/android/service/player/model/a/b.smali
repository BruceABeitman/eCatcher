.class public final Lcom/spotify/mobile/android/service/player/model/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "artist_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_image_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_image_large_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album_image_small_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "artist_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "album_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "album_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "is_starred"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_available"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is_album_browsable"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "is_artist_browsable"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "is_radio_available"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "focused_row"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "is_ad"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ad_url"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "is_queueable"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "is_queued"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "is_hidden"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "is_in_collection"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/service/player/model/a/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/database/Cursor;)Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
    .registers 25

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f02d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-static {v0, v2, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v1, 0x9

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v9

    const/16 v1, 0xa

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v10

    const/16 v1, 0xb

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v1

    if-eqz v1, :cond_d1

    if-eqz v5, :cond_d1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d1

    const/4 v11, 0x1

    :goto_59
    const/16 v1, 0xc

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v1

    if-eqz v1, :cond_d3

    if-eqz v8, :cond_d3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d3

    const/4 v12, 0x1

    :goto_6c
    const/16 v1, 0xd

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v13

    const/16 v1, 0x11

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v14

    const/16 v1, 0x12

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v15

    const/16 v1, 0x13

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v16

    const/16 v1, 0x14

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v17

    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    const/16 v1, 0xf

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v21

    const/16 v1, 0x10

    const-string v2, ""

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    new-instance v1, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-direct/range {v1 .. v22}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZLandroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ZLjava/lang/String;)V

    return-object v1

    :cond_d1
    const/4 v11, 0x0

    goto :goto_59

    :cond_d3
    const/4 v12, 0x0

    goto :goto_6c
.end method
