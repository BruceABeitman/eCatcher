.class final Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;
.super Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;
.source "TiltShiftFogAnimator.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field final synthetic b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;


# direct methods
.method private constructor <init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;JFF)V
    .registers 15

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;JFFB)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;JFFB)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;JFF)V

    return-void
.end method


# virtual methods
.method protected final b()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;)Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final doFrame(J)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/g;->a(J)V

    return-void
.end method
