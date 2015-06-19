.class public final Lcom/spotify/mobile/android/util/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/spotify/android/paste/graphics/SpotifyIcon;

.field private f:I

.field private g:Lcom/spotify/mobile/android/util/d/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/spotify/mobile/android/util/d/d;
    .registers 2

    const v0, 0x7f0201ce

    iput v0, p0, Lcom/spotify/mobile/android/util/d/d;->d:I

    return-object p0
.end method

.method public final a(I)Lcom/spotify/mobile/android/util/d/d;
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/util/d/d;->b:I

    return-object p0
.end method

.method public final a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/util/d/d;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/util/d/d;->e:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    return-object p0
.end method

.method public final a(Lcom/spotify/mobile/android/util/d/c;)Lcom/spotify/mobile/android/util/d/d;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/util/d/d;->g:Lcom/spotify/mobile/android/util/d/c;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/d/d;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/util/d/d;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Lcom/spotify/mobile/android/util/d/b;
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/util/d/d;->a:Ljava/lang/String;

    const-string v3, "Showcase\'s id not set"

    invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/bt;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    iget v0, p0, Lcom/spotify/mobile/android/util/d/d;->b:I

    if-lez v0, :cond_4f

    move v0, v1

    :goto_e
    const-string v3, "Showcase\'s title resource not set"

    invoke-static {v0, v3}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/spotify/mobile/android/util/d/d;->c:I

    if-lez v0, :cond_51

    move v0, v1

    :goto_18
    const-string v3, "Showcase\'s description resource not set"

    invoke-static {v0, v3}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/spotify/mobile/android/util/d/d;->d:I

    if-gtz v0, :cond_25

    iget-object v0, p0, Lcom/spotify/mobile/android/util/d/d;->e:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    if-eqz v0, :cond_53

    :cond_25
    move v0, v1

    :goto_26
    const-string v3, "Showcase\'s icon not set"

    invoke-static {v0, v3}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/spotify/mobile/android/util/d/d;->f:I

    if-lez v0, :cond_55

    :goto_2f
    const-string v0, "Showcase\'s image resource not set"

    invoke-static {v1, v0}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/d/d;->g:Lcom/spotify/mobile/android/util/d/c;

    const-string v1, "Showcase\'s availability checker not set"

    invoke-static {v0, v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/spotify/mobile/android/util/d/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/d/d;->a:Ljava/lang/String;

    iget v2, p0, Lcom/spotify/mobile/android/util/d/d;->b:I

    iget v3, p0, Lcom/spotify/mobile/android/util/d/d;->c:I

    iget v4, p0, Lcom/spotify/mobile/android/util/d/d;->d:I

    iget-object v5, p0, Lcom/spotify/mobile/android/util/d/d;->e:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    iget v6, p0, Lcom/spotify/mobile/android/util/d/d;->f:I

    iget-object v7, p0, Lcom/spotify/mobile/android/util/d/d;->g:Lcom/spotify/mobile/android/util/d/c;

    invoke-direct/range {v0 .. v7}, Lcom/spotify/mobile/android/util/d/b;-><init>(Ljava/lang/String;IIILcom/spotify/android/paste/graphics/SpotifyIcon;ILcom/spotify/mobile/android/util/d/c;)V

    return-object v0

    :cond_4f
    move v0, v2

    goto :goto_e

    :cond_51
    move v0, v2

    goto :goto_18

    :cond_53
    move v0, v2

    goto :goto_26

    :cond_55
    move v1, v2

    goto :goto_2f
.end method

.method public final b(I)Lcom/spotify/mobile/android/util/d/d;
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/util/d/d;->c:I

    return-object p0
.end method

.method public final c(I)Lcom/spotify/mobile/android/util/d/d;
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/util/d/d;->f:I

    return-object p0
.end method
