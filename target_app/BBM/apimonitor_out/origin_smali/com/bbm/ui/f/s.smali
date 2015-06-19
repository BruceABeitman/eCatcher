.class final Lcom/bbm/ui/f/s;
.super Lcom/bbm/j/u;
.source "InviteNotificationItem.java"

# interfaces
.implements Lcom/bbm/ui/f/e;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bbm/d/a;

.field private final c:Lcom/bbm/ui/f/g;

.field private final d:Lcom/bbm/d/fn;

.field private e:Lcom/bbm/d/gp;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/f/g;Lcom/bbm/d/fn;)V
    .registers 4

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/f/s;->a:Landroid/content/Context;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/f/s;->b:Lcom/bbm/d/a;

    iput-object p1, p0, Lcom/bbm/ui/f/s;->c:Lcom/bbm/ui/f/g;

    iput-object p2, p0, Lcom/bbm/ui/f/s;->d:Lcom/bbm/d/fn;

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bbm/ui/f/s;->b:Lcom/bbm/d/a;

    iget-object v2, p0, Lcom/bbm/ui/f/s;->d:Lcom/bbm/d/fn;

    iget-object v2, v2, Lcom/bbm/d/fn;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/f/s;->e:Lcom/bbm/d/gp;

    iget-object v1, p0, Lcom/bbm/ui/f/s;->e:Lcom/bbm/d/gp;

    iget-object v1, v1, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v1, v2, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    iget-object v1, p0, Lcom/bbm/ui/f/s;->b:Lcom/bbm/d/a;

    iget-object v2, p0, Lcom/bbm/ui/f/s;->d:Lcom/bbm/d/fn;

    iget-object v2, v2, Lcom/bbm/d/fn;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->L(Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v1

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v1, v2, :cond_15

    iget-object v0, p0, Lcom/bbm/ui/f/s;->c:Lcom/bbm/ui/f/g;

    iget-object v1, p0, Lcom/bbm/ui/f/s;->d:Lcom/bbm/d/fn;

    iget-object v1, v1, Lcom/bbm/d/fn;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/f/g;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_15
.end method

.method public final b_()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/f/s;->e:Lcom/bbm/d/gp;

    invoke-static {v0}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c_()Landroid/graphics/Bitmap;
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/f/s;->b:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/ui/f/s;->e:Lcom/bbm/d/gp;

    iget-object v1, v1, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/f/s;->e:Lcom/bbm/d/gp;

    iget-object v2, v2, Lcom/bbm/d/gp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fd;

    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    invoke-static {v0}, Lcom/bbm/util/b/h;->a(Lcom/bbm/d/fd;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/bbm/ui/f/s;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/bbm/ui/f/s;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_48
    if-nez v0, :cond_59

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/Alaska;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_59
    return-object v0

    :cond_5a
    move-object v0, v1

    goto :goto_48
.end method

.method public final d()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lcom/bbm/ui/f/s;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/bbm/ui/f/s;->d:Lcom/bbm/d/fn;

    iget-object v0, v0, Lcom/bbm/d/fn;->h:Lcom/bbm/d/fp;

    sget-object v2, Lcom/bbm/d/fp;->b:Lcom/bbm/d/fp;

    if-ne v0, v2, :cond_12

    const v0, 0x7f0e0263

    :goto_d
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    const v0, 0x7f0e04aa

    goto :goto_d
.end method

.method public final f()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public final g()Ljava/lang/Long;
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/f/s;->d:Lcom/bbm/d/fn;

    iget-wide v0, v0, Lcom/bbm/d/fn;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final h()Landroid/app/PendingIntent;
    .registers 6

    iget-object v0, p0, Lcom/bbm/ui/f/s;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bbm/ui/f/s;->d:Lcom/bbm/d/fn;

    iget-object v1, v1, Lcom/bbm/d/fn;->c:Ljava/lang/String;

    if-eqz v1, :cond_3c

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "pending_contact_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/bbm/ui/activities/MainActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "active_section"

    const v4, 0x7f0a007f

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.bbm.ui.activities.action.SECTION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Landroid/support/v4/app/ar;->a(Landroid/content/Context;)Landroid/support/v4/app/ar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ar;->a(Landroid/content/Intent;)Landroid/support/v4/app/ar;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/ar;->a(Landroid/content/Intent;)Landroid/support/v4/app/ar;

    invoke-virtual {v0}, Landroid/support/v4/app/ar;->a()Landroid/app/PendingIntent;

    move-result-object v0

    :goto_3b
    return-object v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method public final i()Lcom/bbm/ui/f/f;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
