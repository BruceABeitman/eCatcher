.class final Lcom/spotify/mobile/android/service/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/content/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/v4/content/m",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/support/v4/content/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/k",
            "<TD;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<TD;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILandroid/support/v4/app/z;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/app/z",
            "<TD;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/spotify/mobile/android/service/b/c;->a:I

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/support/v4/app/z;->a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/b/c;->b:Landroid/support/v4/content/k;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/b/c;->e:Landroid/support/v4/app/z;

    return-void
.end method

.method synthetic constructor <init>(ILandroid/support/v4/app/z;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/service/b/c;-><init>(ILandroid/support/v4/app/z;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/b/c;->c:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iput-boolean v2, p0, Lcom/spotify/mobile/android/service/b/c;->c:Z

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/b/c;->d:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/c;->b:Landroid/support/v4/content/k;

    iget v1, p0, Lcom/spotify/mobile/android/service/b/c;->a:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/content/k;->a(ILandroid/support/v4/content/m;)V

    iput-boolean v2, p0, Lcom/spotify/mobile/android/service/b/c;->d:Z

    :cond_15
    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/c;->b:Landroid/support/v4/content/k;

    invoke-virtual {v0}, Landroid/support/v4/content/k;->l()V

    goto :goto_5
.end method

.method public final a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/k",
            "<TD;>;TD;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/c;->e:Landroid/support/v4/app/z;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/b/c;->b:Landroid/support/v4/content/k;

    invoke-interface {v0, v1, p2}, Landroid/support/v4/app/z;->a(Landroid/support/v4/content/k;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/b/c;->d:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/b/c;->d:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/c;->b:Landroid/support/v4/content/k;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/k;->a(Landroid/support/v4/content/m;)V

    :cond_c
    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/c;->b:Landroid/support/v4/content/k;

    invoke-virtual {v0}, Landroid/support/v4/content/k;->p()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/b/c;->e:Landroid/support/v4/app/z;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/b/c;->b:Landroid/support/v4/content/k;

    invoke-interface {v0, v1}, Landroid/support/v4/app/z;->a(Landroid/support/v4/content/k;)V

    return-void
.end method
