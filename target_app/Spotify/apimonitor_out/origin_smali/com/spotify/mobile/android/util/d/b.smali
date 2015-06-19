.class public final Lcom/spotify/mobile/android/util/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Lcom/spotify/android/paste/graphics/SpotifyIcon;

.field private final f:I

.field private final g:Lcom/spotify/mobile/android/util/d/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILcom/spotify/android/paste/graphics/SpotifyIcon;ILcom/spotify/mobile/android/util/d/c;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/util/d/b;->a:Ljava/lang/String;

    iput p2, p0, Lcom/spotify/mobile/android/util/d/b;->b:I

    iput p3, p0, Lcom/spotify/mobile/android/util/d/b;->c:I

    iput p4, p0, Lcom/spotify/mobile/android/util/d/b;->d:I

    iput p6, p0, Lcom/spotify/mobile/android/util/d/b;->f:I

    iput-object p7, p0, Lcom/spotify/mobile/android/util/d/b;->g:Lcom/spotify/mobile/android/util/d/c;

    iput-object p5, p0, Lcom/spotify/mobile/android/util/d/b;->e:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/d/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/d/b;->g:Lcom/spotify/mobile/android/util/d/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/util/d/c;->a()Z

    move-result v0

    return v0
.end method

.method public final c()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "showcase-id"

    iget-object v2, p0, Lcom/spotify/mobile/android/util/d/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "showcase-title"

    iget v2, p0, Lcom/spotify/mobile/android/util/d/b;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "showcase-descr"

    iget v2, p0, Lcom/spotify/mobile/android/util/d/b;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "showcase-icon"

    iget v2, p0, Lcom/spotify/mobile/android/util/d/b;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/util/d/b;->e:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    if-eqz v1, :cond_30

    const-string v1, "showcase-spoticon"

    iget-object v2, p0, Lcom/spotify/mobile/android/util/d/b;->e:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-virtual {v2}, Lcom/spotify/android/paste/graphics/SpotifyIcon;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    const-string v1, "showcase-image"

    iget v2, p0, Lcom/spotify/mobile/android/util/d/b;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
