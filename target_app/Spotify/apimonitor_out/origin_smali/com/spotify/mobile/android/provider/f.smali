.class public final Lcom/spotify/mobile/android/provider/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/spotify/music/internal/provider/SpotifyProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/folder/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Ljava/lang/String;Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;)Landroid/net/Uri;
    .registers 3

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/spotify/mobile/android/provider/f;->a(Ljava/lang/String;Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5

    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$1;->a:[I

    invoke-virtual {p1}, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_78

    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unkown playlist filter type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_1f
    return-object v0

    :pswitch_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/spotify/music/internal/provider/SpotifyProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/folder/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/playlists?filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1f

    :pswitch_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/spotify/music/internal/provider/SpotifyProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/folder/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/playlists/writable?filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1f

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_20
        :pswitch_b
        :pswitch_4c
    .end packed-switch
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;->a:Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;

    invoke-static {p0, v0, p1}, Lcom/spotify/mobile/android/provider/f;->a(Ljava/lang/String;Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final b(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;->a:Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/provider/f;->a(Ljava/lang/String;Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
