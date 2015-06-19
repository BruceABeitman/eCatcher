.class final Lcom/bbm/ui/f/v;
.super Lcom/bbm/j/u;
.source "MissedCallNotificationItem.java"

# interfaces
.implements Lcom/bbm/ui/f/e;


# instance fields
.field a:Z

.field private final b:Landroid/content/Context;

.field private final c:Lcom/bbm/d/a;

.field private final d:Lcom/bbm/ui/f/g;

.field private final e:Lcom/bbm/d/fg;

.field private f:Lcom/bbm/d/gp;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/f/g;Lcom/bbm/d/fg;)V
    .registers 4

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/f/v;->a:Z

    iput-object p1, p0, Lcom/bbm/ui/f/v;->d:Lcom/bbm/ui/f/g;

    iput-object p2, p0, Lcom/bbm/ui/f/v;->e:Lcom/bbm/d/fg;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/f/v;->c:Lcom/bbm/d/a;

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/f/v;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/f/v;->c:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/ui/f/v;->e:Lcom/bbm/d/fg;

    iget-object v1, v1, Lcom/bbm/d/fg;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/f/v;->f:Lcom/bbm/d/gp;

    iget-object v0, p0, Lcom/bbm/ui/f/v;->f:Lcom/bbm/d/gp;

    iget-object v0, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v0, v1, :cond_16

    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    iget-object v0, p0, Lcom/bbm/ui/f/v;->d:Lcom/bbm/ui/f/g;

    iget-object v1, p0, Lcom/bbm/ui/f/v;->e:Lcom/bbm/d/fg;

    iget-object v1, v1, Lcom/bbm/d/fg;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/am;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/f/g;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_15
.end method

.method public final b_()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/f/v;->c:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/ui/f/v;->e:Lcom/bbm/d/fg;

    iget-object v1, v1, Lcom/bbm/d/fg;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c_()Landroid/graphics/Bitmap;
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/f/v;->c:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/ui/f/v;->f:Lcom/bbm/d/gp;

    iget-object v1, v1, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/f/v;->f:Lcom/bbm/d/gp;

    iget-object v2, v2, Lcom/bbm/d/gp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fd;

    iget-object v0, v0, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/bbm/util/b/h;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lcom/bbm/ui/f/v;->a:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bbm/ui/f/v;->b:Landroid/content/Context;

    const v1, 0x7f0e0546

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/bbm/ui/f/v;->b:Landroid/content/Context;

    const v1, 0x7f0e0547

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public final f()I
    .registers 2

    const v0, 0x7f020321

    return v0
.end method

.method public final g()Ljava/lang/Long;
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/f/v;->e:Lcom/bbm/d/fg;

    iget-wide v0, v0, Lcom/bbm/d/fg;->s:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final h()Landroid/app/PendingIntent;
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/f/v;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/bbm/ui/f/v;->e:Lcom/bbm/d/fg;

    iget-object v1, v1, Lcom/bbm/d/fg;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/am;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/ui/f/r;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/bbm/ui/f/f;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method
