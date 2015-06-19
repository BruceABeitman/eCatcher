.class public Lcom/instagram/creation/video/ui/VideoShutterButton;
.super Landroid/widget/ImageView;
.source "VideoShutterButton.java"

# interfaces
.implements Lcom/instagram/creation/video/a/d;
.implements Lcom/instagram/creation/video/c;


# instance fields
.field private a:I

.field private b:Lcom/instagram/creation/video/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Lcom/instagram/creation/video/a/e;->d:I

    iput v0, p0, Lcom/instagram/creation/video/ui/VideoShutterButton;->a:I

    return-void
.end method

.method private a()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/ui/VideoShutterButton;->b()V

    return-void
.end method

.method private b()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/creation/video/ui/VideoShutterButton;->b:Lcom/instagram/creation/video/a;

    if-nez v0, :cond_a

    invoke-virtual {p0, v1}, Lcom/instagram/creation/video/ui/VideoShutterButton;->setEnabled(Z)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/instagram/creation/video/ui/VideoShutterButton;->b:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->p()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, v1}, Lcom/instagram/creation/video/ui/VideoShutterButton;->setEnabled(Z)V

    goto :goto_9

    :cond_16
    iget-object v0, p0, Lcom/instagram/creation/video/ui/VideoShutterButton;->b:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->m()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0, v1}, Lcom/instagram/creation/video/ui/VideoShutterButton;->setEnabled(Z)V

    goto :goto_9

    :cond_22
    iget v0, p0, Lcom/instagram/creation/video/ui/VideoShutterButton;->a:I

    sget v1, Lcom/instagram/creation/video/a/e;->b:I

    if-eq v0, v1, :cond_2e

    iget v0, p0, Lcom/instagram/creation/video/ui/VideoShutterButton;->a:I

    sget v1, Lcom/instagram/creation/video/a/e;->a:I

    if-ne v0, v1, :cond_32

    :cond_2e
    invoke-virtual {p0, v2}, Lcom/instagram/creation/video/ui/VideoShutterButton;->setEnabled(Z)V

    goto :goto_9

    :cond_32
    iget v0, p0, Lcom/instagram/creation/video/ui/VideoShutterButton;->a:I

    sget v1, Lcom/instagram/creation/video/a/e;->d:I

    if-eq v0, v1, :cond_3e

    iget v0, p0, Lcom/instagram/creation/video/ui/VideoShutterButton;->a:I

    sget v1, Lcom/instagram/creation/video/a/e;->c:I

    if-ne v0, v1, :cond_9

    :cond_3e
    invoke-virtual {p0, v2}, Lcom/instagram/creation/video/ui/VideoShutterButton;->setEnabled(Z)V

    goto :goto_9
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/creation/video/ui/VideoShutterButton;->a()V

    return-void
.end method

.method public final a(Lcom/instagram/creation/video/i/a;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/creation/video/ui/VideoShutterButton;->a()V

    return-void
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lcom/instagram/creation/video/ui/VideoShutterButton;->a:I

    invoke-direct {p0}, Lcom/instagram/creation/video/ui/VideoShutterButton;->a()V

    return-void
.end method

.method public final b(Lcom/instagram/creation/video/i/a;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/creation/video/ui/VideoShutterButton;->a()V

    return-void
.end method

.method public final c()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/ui/VideoShutterButton;->a()V

    return-void
.end method

.method public final c(Lcom/instagram/creation/video/i/a;)V
    .registers 2

    return-void
.end method

.method public setClipStackManager(Lcom/instagram/creation/video/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/ui/VideoShutterButton;->b:Lcom/instagram/creation/video/a;

    return-void
.end method
