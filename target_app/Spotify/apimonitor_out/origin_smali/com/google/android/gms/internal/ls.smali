.class public final Lcom/google/android/gms/internal/ls;
.super Lcom/google/android/gms/internal/u;

# interfaces
.implements Lcom/google/android/gms/internal/al;
.implements Lcom/google/android/gms/internal/ap;
.implements Lcom/google/android/gms/internal/ay;
.implements Lcom/google/android/gms/internal/bz;
.implements Lcom/google/android/gms/internal/cg;
.implements Lcom/google/android/gms/internal/db;
.implements Lcom/google/android/gms/internal/ed;
.implements Lcom/google/android/gms/internal/lr;


# instance fields
.field private final a:Lcom/google/android/gms/internal/bf;

.field private final b:Lcom/google/android/gms/internal/lu;

.field private final c:Lcom/google/android/gms/internal/lw;

.field private final d:Lcom/google/android/gms/internal/a;

.field private e:Z

.field private final f:Landroid/content/ComponentCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ak;Ljava/lang/String;Lcom/google/android/gms/internal/bf;Lcom/google/android/gms/internal/dx;)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/u;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ls$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ls$1;-><init>(Lcom/google/android/gms/internal/ls;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ls;->f:Landroid/content/ComponentCallbacks;

    new-instance v0, Lcom/google/android/gms/internal/lu;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/lu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ak;Ljava/lang/String;Lcom/google/android/gms/internal/dx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ls;->a:Lcom/google/android/gms/internal/bf;

    new-instance v0, Lcom/google/android/gms/internal/lw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/lw;-><init>(Lcom/google/android/gms/internal/ls;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ls;->c:Lcom/google/android/gms/internal/lw;

    new-instance v0, Lcom/google/android/gms/internal/a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ls;->d:Lcom/google/android/gms/internal/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Use AdRequest.Builder.addTestDevice(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/eo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\") to get test ads on this device."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->c(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ej;->b(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_59

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->f:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_59
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    return-object v0
.end method

.method private a(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to load ad: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->f:Lcom/google/android/gms/internal/q;

    if-eqz v0, :cond_1f

    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->f:Lcom/google/android/gms/internal/q;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/q;->a(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_20

    :cond_1f
    :goto_1f
    return-void

    :catch_20
    move-exception v0

    const-string v1, "Could not call AdListener.onAdFailedToLoad()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method private a(Landroid/view/View;)V
    .registers 4

    const/4 v1, -0x2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/lt;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Z)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    if-nez v0, :cond_c

    const-string v0, "Ad state was null when trying to ping impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    const-string v0, "Pinging Impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->j:Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->e:Ljava/util/List;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->e:Lcom/google/android/gms/internal/dx;

    iget-object v1, v1, Lcom/google/android/gms/internal/dx;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v2, v2, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v2, v2, Lcom/google/android/gms/internal/dy;->e:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ej;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->o:Lcom/google/android/gms/internal/ax;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->o:Lcom/google/android/gms/internal/ax;

    iget-object v0, v0, Lcom/google/android/gms/internal/ax;->d:Ljava/util/List;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->e:Lcom/google/android/gms/internal/dx;

    iget-object v1, v1, Lcom/google/android/gms/internal/dx;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v2, v2, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v3, v3, Lcom/google/android/gms/internal/lu;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v4, v4, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v4, v4, Lcom/google/android/gms/internal/dy;->o:Lcom/google/android/gms/internal/ax;

    iget-object v5, v4, Lcom/google/android/gms/internal/ax;->d:Ljava/util/List;

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/bd;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/dy;Ljava/lang/String;ZLjava/util/List;)V

    :cond_63
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->l:Lcom/google/android/gms/internal/aw;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->l:Lcom/google/android/gms/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/internal/aw;->e:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->e:Lcom/google/android/gms/internal/dx;

    iget-object v1, v1, Lcom/google/android/gms/internal/dx;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v2, v2, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v3, v3, Lcom/google/android/gms/internal/lu;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v4, v4, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v4, v4, Lcom/google/android/gms/internal/dy;->l:Lcom/google/android/gms/internal/aw;

    iget-object v5, v4, Lcom/google/android/gms/internal/aw;->e:Ljava/util/List;

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/bd;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/dy;Ljava/lang/String;ZLjava/util/List;)V

    goto/16 :goto_b
.end method

.method private b(Lcom/google/android/gms/internal/dy;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p1, Lcom/google/android/gms/internal/dy;->k:Z

    if-eqz v0, :cond_80

    :try_start_6
    iget-object v0, p1, Lcom/google/android/gms/internal/dy;->m:Lcom/google/android/gms/internal/bi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bi;->a()Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_70

    iget-object v3, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v3, v3, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/lt;->getNextView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_23

    iget-object v4, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v4, v4, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/lt;->removeView(Landroid/view/View;)V

    :cond_23
    :try_start_23
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ls;->a(Landroid/view/View;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_78

    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lt;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lt;->showNext()V

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lt;->getNextView()Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/er;

    if-eqz v3, :cond_af

    check-cast v0, Lcom/google/android/gms/internal/er;

    iget-object v3, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v3, v3, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v4, v4, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/er;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ak;)V

    :cond_56
    :goto_56
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->m:Lcom/google/android/gms/internal/bi;

    if-eqz v0, :cond_67

    :try_start_5e
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->m:Lcom/google/android/gms/internal/bi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bi;->c()V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_67} :catch_b9

    :cond_67
    :goto_67
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lt;->setVisibility(I)V

    move v0, v2

    :goto_6f
    return v0

    :catch_70
    move-exception v0

    const-string v2, "Could not get View from mediation adapter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_6f

    :catch_78
    move-exception v0

    const-string v2, "Could not add mediation view to view hierarchy."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_6f

    :cond_80
    iget-object v0, p1, Lcom/google/android/gms/internal/dy;->r:Lcom/google/android/gms/internal/ak;

    if-eqz v0, :cond_26

    iget-object v0, p1, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    iget-object v3, p1, Lcom/google/android/gms/internal/dy;->r:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/er;->a(Lcom/google/android/gms/internal/ak;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lt;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    iget-object v3, p1, Lcom/google/android/gms/internal/dy;->r:Lcom/google/android/gms/internal/ak;

    iget v3, v3, Lcom/google/android/gms/internal/ak;->g:I

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/lt;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    iget-object v3, p1, Lcom/google/android/gms/internal/dy;->r:Lcom/google/android/gms/internal/ak;

    iget v3, v3, Lcom/google/android/gms/internal/ak;->d:I

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/lt;->setMinimumHeight(I)V

    iget-object v0, p1, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ls;->a(Landroid/view/View;)V

    goto/16 :goto_26

    :cond_af
    if-eqz v0, :cond_56

    iget-object v3, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v3, v3, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/lt;->removeView(Landroid/view/View;)V

    goto :goto_56

    :catch_b9
    move-exception v0

    const-string v0, "Could not destroy previous mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    goto :goto_67
.end method

.method private c(Lcom/google/android/gms/internal/ah;)Lcom/google/android/gms/internal/dk;
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v3, v3, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    :try_start_b
    iget-object v3, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v3, v3, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_19} :catch_c1

    move-result-object v6

    :goto_1a
    iget-object v3, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v3, v3, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ak;->e:Z

    if-nez v3, :cond_c7

    iget-object v3, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v3, v3, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/lt;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_c7

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v3, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v3, v3, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/lt;->getLocationOnScreen([I)V

    aget v3, v0, v2

    aget v4, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v7, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v7, v7, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/lt;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v8, v8, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/lt;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v9, v9, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/lt;->isShown()Z

    move-result v9

    if-eqz v9, :cond_c5

    add-int v9, v3, v7

    if-lez v9, :cond_c5

    add-int v9, v4, v8

    if-lez v9, :cond_c5

    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v3, v9, :cond_c5

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v4, v0, :cond_c5

    move v0, v1

    :goto_71
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "x"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "y"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "width"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "height"

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "visible"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_90
    invoke-static {}, Lcom/google/android/gms/internal/eb;->b()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    new-instance v2, Lcom/google/android/gms/internal/dz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v3, v3, Lcom/google/android/gms/internal/lu;->b:Ljava/lang/String;

    invoke-direct {v2, v7, v3}, Lcom/google/android/gms/internal/dz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/lu;->j:Lcom/google/android/gms/internal/dz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->j:Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dz;->a(Lcom/google/android/gms/internal/ah;)V

    invoke-static {p0, v7}, Lcom/google/android/gms/internal/eb;->a(Lcom/google/android/gms/internal/ed;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    new-instance v0, Lcom/google/android/gms/internal/dk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v3, v2, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iget-object v2, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v4, v2, Lcom/google/android/gms/internal/lu;->b:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/eb;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v9, v2, Lcom/google/android/gms/internal/lu;->e:Lcom/google/android/gms/internal/dx;

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/dk;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/ak;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/dx;Landroid/os/Bundle;)V

    return-object v0

    :catch_c1
    move-exception v3

    move-object v6, v0

    goto/16 :goto_1a

    :cond_c5
    move v0, v2

    goto :goto_71

    :cond_c7
    move-object v1, v0

    goto :goto_90
.end method

.method private s()V
    .registers 3

    const-string v0, "Ad finished loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->f:Lcom/google/android/gms/internal/q;

    if-eqz v0, :cond_12

    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->f:Lcom/google/android/gms/internal/q;

    invoke-interface {v0}, Lcom/google/android/gms/internal/q;->c()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string v1, "Could not call AdListener.onAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method private t()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->destroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    :cond_14
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/dynamic/b;
    .registers 2

    const-string v0, "getAdFrame must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ak;)V
    .registers 4

    const-string v0, "setAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iput-object p1, v0, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/er;->a(Lcom/google/android/gms/internal/ak;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lt;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lt;->getNextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lt;->removeView(Landroid/view/View;)V

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    iget v1, p1, Lcom/google/android/gms/internal/ak;->g:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lt;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    iget v1, p1, Lcom/google/android/gms/internal/ak;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lt;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lt;->requestLayout()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ct;)V
    .registers 3

    const-string v0, "setInAppPurchaseListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iput-object p1, v0, Lcom/google/android/gms/internal/lu;->l:Lcom/google/android/gms/internal/ct;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/dy;)V
    .registers 10

    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x3

    const/4 v6, -0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iput-object v7, v0, Lcom/google/android/gms/internal/lu;->g:Lcom/google/android/gms/internal/eh;

    iget v0, p1, Lcom/google/android/gms/internal/dy;->d:I

    if-eq v0, v6, :cond_1b

    iget v0, p1, Lcom/google/android/gms/internal/dy;->d:I

    if-eq v0, v5, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lu;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/eb;->a(Ljava/util/HashSet;)V

    :cond_1b
    iget v0, p1, Lcom/google/android/gms/internal/dy;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    :goto_20
    return-void

    :cond_21
    iget-object v0, p1, Lcom/google/android/gms/internal/dy;->a:Lcom/google/android/gms/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/internal/ah;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_71

    iget-object v0, p1, Lcom/google/android/gms/internal/dy;->a:Lcom/google/android/gms/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/internal/ah;->c:Landroid/os/Bundle;

    const-string v1, "_noRefresh"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_31
    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ak;->e:Z

    if-eqz v1, :cond_73

    iget-object v0, p1, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->a(Landroid/webkit/WebView;)V

    :cond_3e
    :goto_3e
    iget v0, p1, Lcom/google/android/gms/internal/dy;->d:I

    if-ne v0, v5, :cond_67

    iget-object v0, p1, Lcom/google/android/gms/internal/dy;->o:Lcom/google/android/gms/internal/ax;

    if-eqz v0, :cond_67

    iget-object v0, p1, Lcom/google/android/gms/internal/dy;->o:Lcom/google/android/gms/internal/ax;

    iget-object v0, v0, Lcom/google/android/gms/internal/ax;->e:Ljava/util/List;

    if-eqz v0, :cond_67

    const-string v0, "Pinging no fill URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->e:Lcom/google/android/gms/internal/dx;

    iget-object v1, v1, Lcom/google/android/gms/internal/dx;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v3, v2, Lcom/google/android/gms/internal/lu;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/dy;->o:Lcom/google/android/gms/internal/ax;

    iget-object v5, v2, Lcom/google/android/gms/internal/ax;->e:Ljava/util/List;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/bd;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/dy;Ljava/lang/String;ZLjava/util/List;)V

    :cond_67
    iget v0, p1, Lcom/google/android/gms/internal/dy;->d:I

    if-eq v0, v6, :cond_ae

    iget v0, p1, Lcom/google/android/gms/internal/dy;->d:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ls;->a(I)V

    goto :goto_20

    :cond_71
    move v0, v4

    goto :goto_31

    :cond_73
    if-nez v0, :cond_3e

    iget-wide v0, p1, Lcom/google/android/gms/internal/dy;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_85

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->c:Lcom/google/android/gms/internal/lw;

    iget-object v1, p1, Lcom/google/android/gms/internal/dy;->a:Lcom/google/android/gms/internal/ah;

    iget-wide v2, p1, Lcom/google/android/gms/internal/dy;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/internal/ah;J)V

    goto :goto_3e

    :cond_85
    iget-object v0, p1, Lcom/google/android/gms/internal/dy;->o:Lcom/google/android/gms/internal/ax;

    if-eqz v0, :cond_9d

    iget-object v0, p1, Lcom/google/android/gms/internal/dy;->o:Lcom/google/android/gms/internal/ax;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ax;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_9d

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->c:Lcom/google/android/gms/internal/lw;

    iget-object v1, p1, Lcom/google/android/gms/internal/dy;->a:Lcom/google/android/gms/internal/ah;

    iget-object v2, p1, Lcom/google/android/gms/internal/dy;->o:Lcom/google/android/gms/internal/ax;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ax;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/internal/ah;J)V

    goto :goto_3e

    :cond_9d
    iget-boolean v0, p1, Lcom/google/android/gms/internal/dy;->k:Z

    if-nez v0, :cond_3e

    iget v0, p1, Lcom/google/android/gms/internal/dy;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->c:Lcom/google/android/gms/internal/lw;

    iget-object v1, p1, Lcom/google/android/gms/internal/dy;->a:Lcom/google/android/gms/internal/ah;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/internal/ah;)V

    goto :goto_3e

    :cond_ae
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ak;->e:Z

    if-nez v0, :cond_d4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ls;->b(Lcom/google/android/gms/internal/dy;)Z

    move-result v0

    if-nez v0, :cond_c1

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ls;->a(I)V

    goto/16 :goto_20

    :cond_c1
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    if-eqz v0, :cond_d4

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-static {v0}, Lcom/google/android/gms/internal/lt;->a(Lcom/google/android/gms/internal/lt;)Lcom/google/android/gms/internal/el;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/dy;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/el;->a(Ljava/lang/String;)V

    :cond_d4
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->p:Lcom/google/android/gms/internal/az;

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->p:Lcom/google/android/gms/internal/az;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/az;->a(Lcom/google/android/gms/internal/ay;)V

    :cond_eb
    iget-object v0, p1, Lcom/google/android/gms/internal/dy;->p:Lcom/google/android/gms/internal/az;

    if-eqz v0, :cond_f4

    iget-object v0, p1, Lcom/google/android/gms/internal/dy;->p:Lcom/google/android/gms/internal/az;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/az;->a(Lcom/google/android/gms/internal/ay;)V

    :cond_f4
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->d:Lcom/google/android/gms/internal/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/a;->a(Lcom/google/android/gms/internal/dy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iput-object p1, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, p1, Lcom/google/android/gms/internal/dy;->r:Lcom/google/android/gms/internal/ak;

    if-eqz v0, :cond_10b

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, p1, Lcom/google/android/gms/internal/dy;->r:Lcom/google/android/gms/internal/ak;

    iput-object v1, v0, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    :cond_10b
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->j:Lcom/google/android/gms/internal/dz;

    iget-wide v1, p1, Lcom/google/android/gms/internal/dy;->t:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/dz;->a(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->j:Lcom/google/android/gms/internal/dz;

    iget-wide v1, p1, Lcom/google/android/gms/internal/dy;->u:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/dz;->b(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->j:Lcom/google/android/gms/internal/dz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ak;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dz;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->j:Lcom/google/android/gms/internal/dz;

    iget-boolean v1, p1, Lcom/google/android/gms/internal/dy;->k:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dz;->b(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ak;->e:Z

    if-nez v0, :cond_13e

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ls;->a(Z)V

    :cond_13e
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->m:Lcom/google/android/gms/internal/ee;

    if-nez v0, :cond_151

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    new-instance v1, Lcom/google/android/gms/internal/ee;

    iget-object v2, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v2, v2, Lcom/google/android/gms/internal/lu;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ee;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/lu;->m:Lcom/google/android/gms/internal/ee;

    :cond_151
    iget-object v0, p1, Lcom/google/android/gms/internal/dy;->o:Lcom/google/android/gms/internal/ax;

    if-eqz v0, :cond_1b4

    iget-object v0, p1, Lcom/google/android/gms/internal/dy;->o:Lcom/google/android/gms/internal/ax;

    iget v0, v0, Lcom/google/android/gms/internal/ax;->h:I

    iget-object v1, p1, Lcom/google/android/gms/internal/dy;->o:Lcom/google/android/gms/internal/ax;

    iget v4, v1, Lcom/google/android/gms/internal/ax;->i:I

    :goto_15d
    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->m:Lcom/google/android/gms/internal/ee;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/ee;->a(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ak;->e:Z

    if-nez v0, :cond_1a6

    iget-object v0, p1, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    if-eqz v0, :cond_1a6

    iget-object v0, p1, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->f()Lcom/google/android/gms/internal/eu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eu;->a()Z

    move-result v0

    if-nez v0, :cond_180

    iget-object v0, p1, Lcom/google/android/gms/internal/dy;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_1a6

    :cond_180
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->d:Lcom/google/android/gms/internal/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iget-object v2, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v2, v2, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/a;->a(Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/dy;)Lcom/google/android/gms/internal/c;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/er;->f()Lcom/google/android/gms/internal/eu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/eu;->a()Z

    move-result v1

    if-eqz v1, :cond_1a6

    if-eqz v0, :cond_1a6

    new-instance v1, Lcom/google/android/gms/internal/lv;

    iget-object v2, p1, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/lv;-><init>(Lcom/google/android/gms/internal/er;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/ly;)V

    :cond_1a6
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->a()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ls;->s()V

    goto/16 :goto_20

    :cond_1b4
    move v0, v4

    goto :goto_15d
.end method

.method public final a(Lcom/google/android/gms/internal/q;)V
    .registers 3

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iput-object p1, v0, Lcom/google/android/gms/internal/lu;->f:Lcom/google/android/gms/internal/q;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/z;)V
    .registers 3

    const-string v0, "setAppEventListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iput-object p1, v0, Lcom/google/android/gms/internal/lu;->k:Lcom/google/android/gms/internal/z;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->k:Lcom/google/android/gms/internal/z;

    if-eqz v0, :cond_d

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->k:Lcom/google/android/gms/internal/z;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/z;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v0

    const-string v1, "Could not call the AppEventListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->l:Lcom/google/android/gms/internal/ct;

    if-nez v0, :cond_c

    const-string v0, "InAppPurchaseListener is not set"

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->l:Lcom/google/android/gms/internal/ct;

    new-instance v1, Lcom/google/android/gms/internal/co;

    iget-object v2, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v2, v2, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v3, v3, Lcom/google/android/gms/internal/lu;->e:Lcom/google/android/gms/internal/dx;

    iget-object v3, v3, Lcom/google/android/gms/internal/dx;->b:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/co;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ct;->a(Lcom/google/android/gms/internal/cp;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_22} :catch_23

    goto :goto_b

    :catch_23
    move-exception v0

    const-string v0, "Could not start In-App purchase."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public final a(Ljava/util/HashSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/dz;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/lu;->a(Ljava/util/HashSet;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ah;)Z
    .registers 14

    const/4 v10, 0x1

    const/4 v2, 0x0

    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->g:Lcom/google/android/gms/internal/eh;

    if-eqz v0, :cond_13

    const-string v0, "An ad request is already in progress. Aborting."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    :cond_12
    :goto_12
    return v2

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ak;->e:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    if-eqz v0, :cond_27

    const-string v0, "An interstitial is already loading. Aborting."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    goto :goto_12

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.permission.INTERNET"

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ej;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_132

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ak;->e:Z

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    const-string v3, "Missing internet permission in AndroidManifest.xml."

    const-string v4, "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v0, v1, v3, v4}, Lcom/google/android/gms/internal/eo;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ak;Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    move v0, v2

    :goto_57
    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ej;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_79

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ak;->e:Z

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    const-string v3, "Missing AdActivity with android:configChanges in AndroidManifest.xml."

    const-string v4, "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />"

    invoke-static {v0, v1, v3, v4}, Lcom/google/android/gms/internal/eo;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ak;Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    move v0, v2

    :cond_79
    if-nez v0, :cond_8a

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ak;->e:Z

    if-nez v1, :cond_8a

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/lt;->setVisibility(I)V

    :cond_8a
    if-eqz v0, :cond_12

    const-string v0, "Starting ad request."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->c:Lcom/google/android/gms/internal/lw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lw;->a()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/ah;)Lcom/google/android/gms/internal/dk;

    move-result-object v11

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ak;->e:Z

    if-eqz v0, :cond_e0

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iget-object v3, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v4, v3, Lcom/google/android/gms/internal/lu;->d:Lcom/google/android/gms/internal/lh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v5, v3, Lcom/google/android/gms/internal/lu;->e:Lcom/google/android/gms/internal/dx;

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/er;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ak;ZZLcom/google/android/gms/internal/lh;Lcom/google/android/gms/internal/dx;)Lcom/google/android/gms/internal/er;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/er;->f()Lcom/google/android/gms/internal/eu;

    move-result-object v0

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p0

    move-object v4, p0

    move v5, v10

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/eu;->a(Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/cg;ZLcom/google/android/gms/internal/ap;)V

    move-object v4, v7

    :goto_c5
    iget-object v7, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v0, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v3, v0, Lcom/google/android/gms/internal/lu;->d:Lcom/google/android/gms/internal/lh;

    iget-object v5, p0, Lcom/google/android/gms/internal/ls;->a:Lcom/google/android/gms/internal/bf;

    new-instance v0, Lcom/google/android/gms/internal/cs;

    move-object v2, v11

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/cs;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/dk;Lcom/google/android/gms/internal/lh;Lcom/google/android/gms/internal/er;Lcom/google/android/gms/internal/bf;Lcom/google/android/gms/internal/db;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cs;->e()V

    iput-object v0, v7, Lcom/google/android/gms/internal/lu;->g:Lcom/google/android/gms/internal/eh;

    move v2, v10

    goto/16 :goto_12

    :cond_e0
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lt;->getNextView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/er;

    if-eqz v1, :cond_108

    check-cast v0, Lcom/google/android/gms/internal/er;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v3, v3, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/er;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ak;)V

    :cond_f9
    :goto_f9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->f()Lcom/google/android/gms/internal/eu;

    move-result-object v3

    move-object v4, p0

    move-object v5, p0

    move-object v6, p0

    move-object v7, p0

    move v8, v2

    move-object v9, p0

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/eu;->a(Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/cg;ZLcom/google/android/gms/internal/ap;)V

    move-object v4, v0

    goto :goto_c5

    :cond_108
    if-eqz v0, :cond_111

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/lt;->removeView(Landroid/view/View;)V

    :cond_111
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iget-object v3, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v4, v3, Lcom/google/android/gms/internal/lu;->d:Lcom/google/android/gms/internal/lh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v5, v3, Lcom/google/android/gms/internal/lu;->e:Lcom/google/android/gms/internal/dx;

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/er;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ak;ZZLcom/google/android/gms/internal/lh;Lcom/google/android/gms/internal/dx;)Lcom/google/android/gms/internal/er;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iget-object v1, v1, Lcom/google/android/gms/internal/ak;->h:[Lcom/google/android/gms/internal/ak;

    if-nez v1, :cond_f9

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ls;->a(Landroid/view/View;)V

    goto :goto_f9

    :cond_132
    move v0, v10

    goto/16 :goto_57
.end method

.method public final b()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->f:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iput-object v2, v0, Lcom/google/android/gms/internal/lu;->f:Lcom/google/android/gms/internal/q;

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iput-object v2, v0, Lcom/google/android/gms/internal/lu;->k:Lcom/google/android/gms/internal/z;

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->c:Lcom/google/android/gms/internal/lw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lw;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ls;->g()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lt;->removeAllViews()V

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->destroy()V

    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->m:Lcom/google/android/gms/internal/bi;

    if-eqz v0, :cond_6a

    :try_start_61
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->m:Lcom/google/android/gms/internal/bi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bi;->c()V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_6a} :catch_6b

    :cond_6a
    :goto_6a
    return-void

    :catch_6b
    move-exception v0

    const-string v0, "Could not destroy mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    goto :goto_6a
.end method

.method public final b(Lcom/google/android/gms/internal/ah;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lt;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_22

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/google/android/gms/internal/ej;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ls;->e:Z

    if-nez v0, :cond_22

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/ah;)Z

    :goto_21
    return-void

    :cond_22
    const-string v0, "Ad is not visible. Not refreshing ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->c:Lcom/google/android/gms/internal/lw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/internal/ah;)V

    goto :goto_21
.end method

.method public final c()Z
    .registers 2

    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->g:Lcom/google/android/gms/internal/eh;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final d()V
    .registers 2

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->a(Landroid/webkit/WebView;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->m:Lcom/google/android/gms/internal/bi;

    if-eqz v0, :cond_2b

    :try_start_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->m:Lcom/google/android/gms/internal/bi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bi;->d()V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2b} :catch_31

    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->c:Lcom/google/android/gms/internal/lw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lw;->b()V

    return-void

    :catch_31
    move-exception v0

    const-string v0, "Could not pause mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public final e()V
    .registers 2

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->b(Landroid/webkit/WebView;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->m:Lcom/google/android/gms/internal/bi;

    if-eqz v0, :cond_2b

    :try_start_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->m:Lcom/google/android/gms/internal/bi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bi;->e()V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2b} :catch_31

    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->c:Lcom/google/android/gms/internal/lw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lw;->c()V

    return-void

    :catch_31
    move-exception v0

    const-string v0, "Could not resume mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public final f()V
    .registers 9

    const-string v0, "showInterstitial must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ak;->e:Z

    if-nez v0, :cond_13

    const-string v0, "Cannot call showInterstitial on a banner ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    if-nez v0, :cond_1f

    const-string v0, "The interstitial has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    goto :goto_12

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->i()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "The interstitial is already showing."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    goto :goto_12

    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/er;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->f()Lcom/google/android/gms/internal/eu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eu;->a()Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_81

    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->d:Lcom/google/android/gms/internal/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iget-object v2, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v2, v2, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/a;->a(Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/dy;)Lcom/google/android/gms/internal/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v1, v1, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/er;->f()Lcom/google/android/gms/internal/eu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/eu;->a()Z

    move-result v1

    if-eqz v1, :cond_81

    if-eqz v0, :cond_81

    new-instance v1, Lcom/google/android/gms/internal/lv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v2, v2, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v2, v2, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/lv;-><init>(Lcom/google/android/gms/internal/er;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/ly;)V

    :cond_81
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/dy;->k:Z

    if-eqz v0, :cond_9e

    :try_start_89
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->m:Lcom/google/android/gms/internal/bi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bi;->b()V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_92} :catch_93

    goto :goto_12

    :catch_93
    move-exception v0

    const-string v1, "Could not show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ls;->t()V

    goto/16 :goto_12

    :cond_9e
    new-instance v0, Lcom/google/android/gms/internal/ce;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v4, v1, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget v5, v1, Lcom/google/android/gms/internal/dy;->g:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v6, v1, Lcom/google/android/gms/internal/lu;->e:Lcom/google/android/gms/internal/dx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v7, v1, Lcom/google/android/gms/internal/dy;->v:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ce;-><init>(Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/cg;Lcom/google/android/gms/internal/er;ILcom/google/android/gms/internal/dx;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cc;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ce;)V

    goto/16 :goto_12
.end method

.method public final g()V
    .registers 3

    const-string v0, "stopLoading must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->stopLoading()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->g:Lcom/google/android/gms/internal/eh;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->g:Lcom/google/android/gms/internal/eh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eh;->f()V

    :cond_26
    return-void
.end method

.method public final h()V
    .registers 4

    const-string v0, "recordManualImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    if-nez v0, :cond_11

    const-string v0, "Ad state was null when trying to ping manual tracking URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    const-string v0, "Pinging manual tracking URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->f:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->e:Lcom/google/android/gms/internal/dx;

    iget-object v1, v1, Lcom/google/android/gms/internal/dx;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v2, v2, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v2, v2, Lcom/google/android/gms/internal/dy;->f:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ej;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_10
.end method

.method public final i()Lcom/google/android/gms/internal/ak;
    .registers 2

    const-string v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    return-object v0
.end method

.method public final j()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ls;->r()V

    return-void
.end method

.method public final k()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ls;->o()V

    return-void
.end method

.method public final l()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ls;->q()V

    return-void
.end method

.method public final m()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ls;->p()V

    return-void
.end method

.method public final n()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mediation adapter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v1, v1, Lcom/google/android/gms/internal/dy;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " refreshed, but mediation adapters should never refresh."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    :cond_24
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ls;->a(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ls;->s()V

    return-void
.end method

.method public final o()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->d:Lcom/google/android/gms/internal/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/a;->a(Lcom/google/android/gms/internal/dy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ak;->e:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/google/android/gms/internal/ls;->t()V

    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ls;->e:Z

    const-string v0, "Ad closing."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->f:Lcom/google/android/gms/internal/q;

    if-eqz v0, :cond_29

    :try_start_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->f:Lcom/google/android/gms/internal/q;

    invoke-interface {v0}, Lcom/google/android/gms/internal/q;->a()V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_29} :catch_31

    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->j:Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->c()V

    return-void

    :catch_31
    move-exception v0

    const-string v1, "Could not call AdListener.onAdClosed()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29
.end method

.method public final p()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ak;->e:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ls;->a(Z)V

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ls;->e:Z

    const-string v0, "Ad opening."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->f:Lcom/google/android/gms/internal/q;

    if-eqz v0, :cond_21

    :try_start_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->f:Lcom/google/android/gms/internal/q;

    invoke-interface {v0}, Lcom/google/android/gms/internal/q;->d()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_22

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception v0

    const-string v1, "Could not call AdListener.onAdOpened()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21
.end method

.method public final q()V
    .registers 3

    const-string v0, "Ad leaving application."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->f:Lcom/google/android/gms/internal/q;

    if-eqz v0, :cond_12

    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->f:Lcom/google/android/gms/internal/q;

    invoke-interface {v0}, Lcom/google/android/gms/internal/q;->b()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string v1, "Could not call AdListener.onAdLeftApplication()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public final r()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    if-nez v0, :cond_c

    const-string v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    const-string v0, "Pinging click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->j:Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->c:Ljava/util/List;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->e:Lcom/google/android/gms/internal/dx;

    iget-object v1, v1, Lcom/google/android/gms/internal/dx;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v2, v2, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v2, v2, Lcom/google/android/gms/internal/dy;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ej;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->o:Lcom/google/android/gms/internal/ax;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->o:Lcom/google/android/gms/internal/ax;

    iget-object v0, v0, Lcom/google/android/gms/internal/ax;->c:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v1, v1, Lcom/google/android/gms/internal/lu;->e:Lcom/google/android/gms/internal/dx;

    iget-object v1, v1, Lcom/google/android/gms/internal/dx;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v2, v2, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v3, v3, Lcom/google/android/gms/internal/lu;->b:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ls;->b:Lcom/google/android/gms/internal/lu;

    iget-object v5, v5, Lcom/google/android/gms/internal/lu;->i:Lcom/google/android/gms/internal/dy;

    iget-object v5, v5, Lcom/google/android/gms/internal/dy;->o:Lcom/google/android/gms/internal/ax;

    iget-object v5, v5, Lcom/google/android/gms/internal/ax;->c:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/bd;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/dy;Ljava/lang/String;ZLjava/util/List;)V

    goto :goto_b
.end method
