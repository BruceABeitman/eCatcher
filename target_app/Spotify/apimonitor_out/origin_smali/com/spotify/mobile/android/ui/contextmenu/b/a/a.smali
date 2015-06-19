.class public final Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/spotify/android/paste/graphics/SpotifyIcon;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->c:Ljava/lang/String;

    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->H:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->d:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->e:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/android/paste/graphics/SpotifyIcon;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->d:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    iput-boolean p5, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method public final d()Lcom/spotify/android/paste/graphics/SpotifyIcon;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->d:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    return-object v0
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->e:Z

    return v0
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
    check-cast p1, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;

    iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->e:Z

    iget-boolean v3, p1, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->e:Z

    if-eq v2, v3, :cond_1d

    move v0, v1

    goto :goto_4

    :cond_1d
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    move v0, v1

    goto :goto_4

    :cond_29
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->d:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    iget-object v3, p1, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->d:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    if-eq v2, v3, :cond_31

    move v0, v1

    goto :goto_4

    :cond_31
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    move v0, v1

    goto :goto_4

    :cond_3d
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->d:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-virtual {v1}, Lcom/spotify/android/paste/graphics/SpotifyIcon;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->e:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_28
    add-int/2addr v0, v1

    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContextMenuHeader{mTitle=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubtitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeaderImageUri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPlaceholderIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->d:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsIconRounded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
