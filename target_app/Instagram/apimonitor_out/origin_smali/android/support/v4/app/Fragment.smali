.class public Landroid/support/v4/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field A:Z

.field B:I

.field C:Landroid/support/v4/app/u;

.field D:Landroid/support/v4/app/r;

.field E:Landroid/support/v4/app/u;

.field F:Landroid/support/v4/app/Fragment;

.field G:I

.field H:I

.field I:Ljava/lang/String;

.field J:Z

.field K:Z

.field L:Z

.field M:Z

.field N:Z

.field O:Z

.field P:Z

.field Q:I

.field R:Landroid/view/ViewGroup;

.field S:Landroid/view/View;

.field T:Landroid/view/View;

.field U:Z

.field V:Z

.field W:Landroid/support/v4/app/ap;

.field X:Z

.field Y:Z

.field Z:Landroid/support/v4/app/g;

.field private b:Landroid/view/LayoutInflater;

.field j:I

.field k:Landroid/view/View;

.field l:I

.field m:Landroid/os/Bundle;

.field n:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field o:I

.field p:I

.field q:Ljava/lang/String;

.field r:Landroid/os/Bundle;

.field s:Landroid/support/v4/app/Fragment;

.field t:I

.field u:I

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/Fragment;->j:I

    iput v1, p0, Landroid/support/v4/app/Fragment;->o:I

    iput v1, p0, Landroid/support/v4/app/Fragment;->t:I

    iput-boolean v2, p0, Landroid/support/v4/app/Fragment;->O:Z

    iput-boolean v2, p0, Landroid/support/v4/app/Fragment;->V:Z

    return-void
.end method

.method public static B()V
    .registers 0

    return-void
.end method

.method public static C()Landroid/view/animation/Animation;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static I()V
    .registers 0

    return-void
.end method

.method private X()V
    .registers 4

    new-instance v0, Landroid/support/v4/app/u;

    invoke-direct {v0}, Landroid/support/v4/app/u;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    new-instance v2, Landroid/support/v4/app/h;

    invoke-direct {v2, p0}, Landroid/support/v4/app/h;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/r;Landroid/support/v4/app/q;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private Y()V
    .registers 1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->j_()V

    return-void
.end method

.method private Z()V
    .registers 1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->E()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .registers 7

    :try_start_0
    sget-object v0, Landroid/support/v4/app/Fragment;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/Fragment;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz p2, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iput-object p2, v0, Landroid/support/v4/app/Fragment;->r:Landroid/os/Bundle;
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_2c} :catch_49
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2c} :catch_65

    :cond_2c
    return-object v0

    :catch_2d
    move-exception v0

    new-instance v1, Landroid/support/v4/app/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/i;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_49
    move-exception v0

    new-instance v1, Landroid/support/v4/app/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/i;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_65
    move-exception v0

    new-instance v1, Landroid/support/v4/app/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/i;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private ab()V
    .registers 1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->F()V

    return-void
.end method

.method private ac()V
    .registers 1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->k_()V

    return-void
.end method

.method private ad()V
    .registers 1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->l_()V

    return-void
.end method

.method private ae()V
    .registers 1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->G()V

    return-void
.end method

.method private b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private b()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->J:Z

    return v0
.end method

.method private c(Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method private l(Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method public static w()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final A()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    return-void
.end method

.method public final D()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    return-object v0
.end method

.method public E()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    return-void
.end method

.method public F()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    return-void
.end method

.method public G()V
    .registers 5

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->P:Z

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->Y:Z

    if-nez v0, :cond_16

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->Y:Z

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->q:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->X:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/r;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/ap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    :cond_16
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->h()V

    :cond_1f
    return-void
.end method

.method final H()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->o:I

    iput-object v2, p0, Landroid/support/v4/app/Fragment;->q:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->v:Z

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->w:Z

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->x:Z

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->y:Z

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->z:Z

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->A:Z

    iput v1, p0, Landroid/support/v4/app/Fragment;->B:I

    iput-object v2, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/u;

    iput-object v2, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    iput v1, p0, Landroid/support/v4/app/Fragment;->G:I

    iput v1, p0, Landroid/support/v4/app/Fragment;->H:I

    iput-object v2, p0, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->J:Z

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->K:Z

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->M:Z

    iput-object v2, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->X:Z

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->Y:Z

    return-void
.end method

.method final J()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->l()V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->i()Z

    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->Y()V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_33

    new-instance v0, Landroid/support/v4/app/cu;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/cu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->o()V

    :cond_3c
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->g()V

    :cond_45
    return-void
.end method

.method final K()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->l()V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->i()Z

    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->Z()V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_33

    new-instance v0, Landroid/support/v4/app/cu;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/cu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_41

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->p()V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->i()Z

    :cond_41
    return-void
.end method

.method final L()V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->v()V

    :cond_c
    return-void
.end method

.method final M()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->x()V

    :cond_d
    return-void
.end method

.method final N()Landroid/view/View;
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v1, :cond_11

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->O:Z

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->w()Landroid/view/View;

    move-result-object v0

    :cond_11
    return-object v0
.end method

.method final O()Landroid/view/MenuInflater;
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->O:Z

    if-eqz v0, :cond_d

    :cond_d
    return-object v1
.end method

.method final P()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->q()V

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ab()V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_2e

    new-instance v0, Landroid/support/v4/app/cu;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/cu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    return-void
.end method

.method final Q()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->r()V

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ac()V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_2e

    new-instance v0, Landroid/support/v4/app/cu;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/cu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    return-void
.end method

.method final R()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->s()V

    :cond_a
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->X:Z

    if-eqz v0, :cond_34

    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->X:Z

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->Y:Z

    if-nez v0, :cond_23

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->Y:Z

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->q:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->X:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/r;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/ap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    :cond_23
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->h()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->c()V

    :cond_34
    :goto_34
    return-void

    :cond_35
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->d()V

    goto :goto_34
.end method

.method final S()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->t()V

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ad()V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_2e

    new-instance v0, Landroid/support/v4/app/cu;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/cu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->f()V

    :cond_37
    return-void
.end method

.method final T()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->u()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ae()V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_31

    new-instance v0, Landroid/support/v4/app/cu;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/cu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->l()V

    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/Fragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final varargs a(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->o()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method final a(ILandroid/support/v4/app/Fragment;)V
    .registers 5

    iput p1, p0, Landroid/support/v4/app/Fragment;->o:I

    if-eqz p2, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Landroid/support/v4/app/Fragment;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/Fragment;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->q:Ljava/lang/String;

    :goto_21
    return-void

    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:fragment:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v4/app/Fragment;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->q:Ljava/lang/String;

    goto :goto_21
.end method

.method public a(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to FragmentHost"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/support/v4/app/r;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method public final a(Landroid/content/Intent;I)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to FragmentHost"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/r;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method final a(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/u;->a(Landroid/content/res/Configuration;)V

    :cond_c
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/Fragment;->u:I

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->G:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->H:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->j:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->o:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->q:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->B:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->v:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->w:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mResumed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->x:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->y:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->z:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->J:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->K:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->O:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->N:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->L:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->M:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->V:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/u;

    if-eqz v0, :cond_e6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/u;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_e6
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    if-eqz v0, :cond_f7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_f7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->F:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_108

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->F:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_108
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->r:Landroid/os/Bundle;

    if-eqz v0, :cond_119

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->r:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_119
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    if-eqz v0, :cond_12a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_12a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    if-eqz v0, :cond_13b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_13b
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_156

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->u:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_156
    iget v0, p0, Landroid/support/v4/app/Fragment;->Q:I

    if-eqz v0, :cond_167

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->Q:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_167
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->R:Landroid/view/ViewGroup;

    if-eqz v0, :cond_178

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->R:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_178
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_189

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_189
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->T:Landroid/view/View;

    if-eqz v0, :cond_19a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_19a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    if-eqz v0, :cond_1b8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->l:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_1b8
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_1dc

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/ap;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1dc
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_215

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Child "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/u;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_215
    return-void
.end method

.method final a(Landroid/view/Menu;)Z
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v1, :cond_19

    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->O:Z

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/u;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_19
    return v0
.end method

.method final a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v1, :cond_19

    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->O:Z

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/app/u;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_19
    return v0
.end method

.method final a(Landroid/view/MenuItem;)Z
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->O:Z

    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/u;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_11

    new-instance v0, Landroid/support/v4/app/e;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    invoke-virtual {v1}, Landroid/support/v4/app/r;->e()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/support/v4/app/e;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->b:Landroid/view/LayoutInflater;

    :cond_11
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->b:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public final b(I)Ljava/lang/CharSequence;
    .registers 3

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->o()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method final b(Landroid/view/Menu;)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->O:Z

    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/u;->b(Landroid/view/Menu;)V

    :cond_13
    return-void
.end method

.method public final b(Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->V:Z

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    iget v0, p0, Landroid/support/v4/app/Fragment;->j:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_10

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/u;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;)V

    :cond_10
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->V:Z

    if-nez p1, :cond_18

    const/4 v0, 0x1

    :goto_15
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->U:Z

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_15
.end method

.method final b(Landroid/view/MenuItem;)Z
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/u;->b(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final c(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->o()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c_(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->O:Z

    if-eq v0, p1, :cond_1b

    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->O:Z

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->s()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->b()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->j()V

    :cond_1b
    return-void
.end method

.method public final d(I)I
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/u;->c(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->p:I

    :goto_e
    iget v0, p0, Landroid/support/v4/app/Fragment;->p:I

    return v0

    :cond_11
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->p:I

    goto :goto_e
.end method

.method public d(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    return-void
.end method

.method public final e(I)Landroid/support/v4/app/Fragment;
    .registers 3

    iget v0, p0, Landroid/support/v4/app/Fragment;->p:I

    if-ne v0, p1, :cond_5

    :goto_4
    return-object p0

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/u;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object p0

    goto :goto_4

    :cond_10
    const/4 p0, 0x0

    goto :goto_4
.end method

.method public e(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final f(Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->T:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->h(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_33

    new-instance v0, Landroid/support/v4/app/cu;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/cu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    return-void
.end method

.method public final g(Landroid/os/Bundle;)V
    .registers 4

    iget v0, p0, Landroid/support/v4/app/Fragment;->o:I

    if-ltz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->r:Landroid/os/Bundle;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".setArguments()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/facebook/e/b/a/a;->b(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    return-void
.end method

.method public h(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    return-void
.end method

.method public final hashCode()I
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method final i(Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->l()V

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    invoke-direct {p0, p1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_2e

    new-instance v0, Landroid/support/v4/app/cu;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/cu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-nez v0, :cond_35

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->X()V

    :cond_35
    if-eqz p1, :cond_45

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/u;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    :cond_45
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->m()V

    return-void
.end method

.method public final j()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->r:Landroid/os/Bundle;

    return-object v0
.end method

.method final j(Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->l()V

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    invoke-direct {p0, p1}, Landroid/support/v4/app/Fragment;->l(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_2e

    new-instance v0, Landroid/support/v4/app/cu;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/cu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->n()V

    :cond_37
    return-void
.end method

.method public j_()V
    .registers 5

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->P:Z

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->X:Z

    if-nez v0, :cond_25

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->X:Z

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->Y:Z

    if-nez v0, :cond_1c

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->Y:Z

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->q:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->X:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/r;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/ap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->b()V

    :cond_25
    return-void
.end method

.method public final k()Landroid/support/v4/app/Fragment;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method final k(Landroid/os/Bundle;)V
    .registers 4

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->e(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->k()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onSaveInstanceState()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/facebook/e/b/a/a;->b(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    return-void
.end method

.method public k_()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    return-void
.end method

.method public final l()Landroid/support/v4/app/k;
    .registers 3

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_19

    instance-of v1, v0, Landroid/support/v4/app/k;

    if-nez v1, :cond_19

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Z:Landroid/support/v4/app/g;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Z:Landroid/support/v4/app/g;

    :goto_10
    return-object v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment is not hosted in an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    check-cast v0, Landroid/support/v4/app/k;

    goto :goto_10
.end method

.method public l_()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    return-void
.end method

.method public final m()Landroid/support/v4/app/r;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    return-object v0
.end method

.method public final n()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/content/Context;

    move-result-object v0

    goto :goto_5
.end method

.method public final o()Landroid/content/res/Resources;
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to FragmentHost"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->d()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method final o_()Z
    .registers 2

    iget v0, p0, Landroid/support/v4/app/Fragment;->B:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->m()Landroid/support/v4/app/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/r;->a(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onLowMemory()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    return-void
.end method

.method public final p()Landroid/support/v4/app/s;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/u;

    return-object v0
.end method

.method public p_()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    return-void
.end method

.method public final q()Landroid/support/v4/app/s;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    if-nez v0, :cond_11

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->X()V

    iget v0, p0, Landroid/support/v4/app/Fragment;->j:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_14

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->p()V

    :cond_11
    :goto_11
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    return-object v0

    :cond_14
    iget v0, p0, Landroid/support/v4/app/Fragment;->j:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1f

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->o()V

    goto :goto_11

    :cond_1f
    iget v0, p0, Landroid/support/v4/app/Fragment;->j:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2a

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->n()V

    goto :goto_11

    :cond_2a
    iget v0, p0, Landroid/support/v4/app/Fragment;->j:I

    if-lez v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->m()V

    goto :goto_11
.end method

.method public final r()Landroid/support/v4/app/Fragment;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->F:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public final s()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->v:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final t()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->K:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Landroid/support/v4/c/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    iget v1, p0, Landroid/support/v4/app/Fragment;->o:I

    if-ltz v1, :cond_18

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/Fragment;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_18
    iget v1, p0, Landroid/support/v4/app/Fragment;->G:I

    if-eqz v1, :cond_2a

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/Fragment;->G:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;

    if-eqz v1, :cond_38

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->x:Z

    return v0
.end method

.method public final v()Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->s()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->b()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public final x()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->F:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t retain fragements that are nested in other fragments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->L:Z

    return-void
.end method

.method public final y()Landroid/support/v4/app/an;
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to FragmentHost"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->Y:Z

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->q:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->X:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/r;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/ap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    goto :goto_7
.end method

.method public final z()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->P:Z

    return-void
.end method
