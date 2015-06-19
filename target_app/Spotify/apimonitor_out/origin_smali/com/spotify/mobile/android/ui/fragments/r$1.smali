.class final Lcom/spotify/mobile/android/ui/fragments/r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/br;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/r;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/r;

.field private b:Z

.field private c:I

.field private d:Z


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/r;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/r$1;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$1;->d:Z

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$1;->b:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$1;->d:Z

    goto :goto_4
.end method

.method public final a(IFI)V
    .registers 6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$1;->d:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$1;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->a(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/adapter/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/k;->d()Lcom/spotify/mobile/android/service/player/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/c;->h()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_2c

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$1;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->b(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/service/player/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/c;->h()Lcom/spotify/mobile/android/service/player/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/player/a/f;->a()V

    :cond_29
    :goto_29
    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/r$1;->d:Z

    :cond_2b
    return-void

    :cond_2c
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$1;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->a(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/adapter/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/k;->d()Lcom/spotify/mobile/android/service/player/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/c;->h()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_29

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$1;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->b(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/service/player/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/c;->h()Lcom/spotify/mobile/android/service/player/a/f;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/player/a/f;->a(Z)V

    goto :goto_29
.end method

.method public final b(I)V
    .registers 5

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$1;->c:I

    if-ne v0, v1, :cond_d

    if-ne p1, v2, :cond_d

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/r$1;->b:Z

    :cond_a
    :goto_a
    iput p1, p0, Lcom/spotify/mobile/android/ui/fragments/r$1;->c:I

    return-void

    :cond_d
    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$1;->c:I

    if-ne v0, v2, :cond_a

    if-nez p1, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$1;->b:Z

    goto :goto_a
.end method
