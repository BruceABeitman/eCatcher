.class public final Lcom/bbm/ui/activities/aij;
.super Ljava/lang/Object;
.source "TypingNotificationHelper.java"


# instance fields
.field final a:Lcom/bbm/d;

.field final b:Landroid/os/Handler;

.field c:Z

.field final d:Ljava/lang/String;

.field final e:I

.field f:J

.field final g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/aij;->a:Lcom/bbm/d;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/aij;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/aij;->c:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bbm/ui/activities/aij;->f:J

    new-instance v0, Lcom/bbm/ui/activities/aik;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aik;-><init>(Lcom/bbm/ui/activities/aij;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/aij;->g:Ljava/lang/Runnable;

    iput p2, p0, Lcom/bbm/ui/activities/aij;->e:I

    iput-object p1, p0, Lcom/bbm/ui/activities/aij;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-boolean v0, p0, Lcom/bbm/ui/activities/aij;->c:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/activities/aij;->c:Z

    iget-object v2, p0, Lcom/bbm/ui/activities/aij;->b:Landroid/os/Handler;

    iget-object v3, p0, Lcom/bbm/ui/activities/aij;->g:Ljava/lang/Runnable;

    iget v0, p0, Lcom/bbm/ui/activities/aij;->e:I

    if-nez v0, :cond_15

    const-wide/16 v0, 0x1388

    :goto_11
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_14
    return-void

    :cond_15
    const-wide/16 v0, 0x2710

    goto :goto_11
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/aij;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bbm/ui/activities/aij;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/aij;->c:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bbm/ui/activities/aij;->f:J

    return-void
.end method

.method public final c()V
    .registers 3

    iget-boolean v0, p0, Lcom/bbm/ui/activities/aij;->c:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bbm/ui/activities/aij;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bbm/ui/activities/aij;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method
