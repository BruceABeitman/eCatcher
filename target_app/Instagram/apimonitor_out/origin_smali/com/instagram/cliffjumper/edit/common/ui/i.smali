.class final Lcom/instagram/cliffjumper/edit/common/ui/i;
.super Lcom/instagram/cliffjumper/edit/common/ui/h;
.source "TileButton.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field a:Landroid/view/Choreographer;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/ui/h;-><init>(Landroid/view/View;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/i;->a:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/i;->a:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method protected final b()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/i;->a:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final doFrame(J)V
    .registers 5

    const-wide/32 v0, 0xf4240

    div-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/i;->a(J)V

    return-void
.end method
