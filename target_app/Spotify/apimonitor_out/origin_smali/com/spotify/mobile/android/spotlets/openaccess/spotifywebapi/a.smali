.class public final Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I


# virtual methods
.method public final a()Z
    .registers 3

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/a;->a:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
