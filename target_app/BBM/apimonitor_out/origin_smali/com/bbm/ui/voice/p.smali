.class final Lcom/bbm/ui/voice/p;
.super Lcom/bbm/j/k;
.source "VolumeControlLifeCycleListener.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/voice/o;


# direct methods
.method constructor <init>(Lcom/bbm/ui/voice/o;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/voice/p;->a:Lcom/bbm/ui/voice/o;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/voice/p;->a:Lcom/bbm/ui/voice/o;

    iget v0, v0, Lcom/bbm/ui/voice/o;->a:I

    iget-object v1, p0, Lcom/bbm/ui/voice/p;->a:Lcom/bbm/ui/voice/o;

    iget-object v1, v1, Lcom/bbm/ui/voice/o;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/n/b;->h()I

    move-result v1

    const/4 v2, 0x2

    if-eq v2, v1, :cond_19

    const/4 v2, 0x3

    if-eq v2, v1, :cond_19

    const/4 v2, 0x4

    if-ne v2, v1, :cond_1a

    :cond_19
    const/4 v0, 0x0

    :cond_1a
    iget-object v1, p0, Lcom/bbm/ui/voice/p;->a:Lcom/bbm/ui/voice/o;

    iget-object v1, v1, Lcom/bbm/ui/voice/o;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v1

    if-eq v0, v1, :cond_2b

    iget-object v1, p0, Lcom/bbm/ui/voice/p;->a:Lcom/bbm/ui/voice/o;

    iget-object v1, v1, Lcom/bbm/ui/voice/o;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    :cond_2b
    return-void
.end method
