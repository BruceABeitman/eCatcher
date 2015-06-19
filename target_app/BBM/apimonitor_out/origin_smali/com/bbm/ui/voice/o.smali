.class public final Lcom/bbm/ui/voice/o;
.super Lcom/bbm/ui/activities/ajz;
.source "VolumeControlLifeCycleListener.java"


# instance fields
.field a:I

.field b:Landroid/app/Activity;

.field private final c:Lcom/bbm/j/k;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/ajz;-><init>()V

    new-instance v0, Lcom/bbm/ui/voice/p;

    invoke-direct {v0, p0}, Lcom/bbm/ui/voice/p;-><init>(Lcom/bbm/ui/voice/o;)V

    iput-object v0, p0, Lcom/bbm/ui/voice/o;->c:Lcom/bbm/j/k;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/voice/o;->c:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    return-void
.end method

.method public final a(Lcom/bbm/ui/activities/ajy;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/voice/o;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/bbm/ui/activities/ajy;->getVolumeControlStream()I

    move-result v0

    iput v0, p0, Lcom/bbm/ui/voice/o;->a:I

    return-void
.end method

.method public final b(Lcom/bbm/ui/activities/ajy;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/voice/o;->c:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method
