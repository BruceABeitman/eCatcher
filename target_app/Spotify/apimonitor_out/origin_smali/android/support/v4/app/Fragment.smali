.class public Landroid/support/v4/app/Fragment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static final a:Landroid/support/v4/c/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/c/m",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field A:I

.field B:Landroid/support/v4/app/t;

.field C:Landroid/support/v4/app/FragmentActivity;

.field D:Landroid/support/v4/app/t;

.field E:Landroid/support/v4/app/Fragment;

.field F:I

.field G:I

.field H:Ljava/lang/String;

.field I:Z

.field J:Z

.field K:Z

.field L:Z

.field M:Z

.field N:Z

.field O:Z

.field P:I

.field Q:Landroid/view/ViewGroup;

.field R:Landroid/view/View;

.field S:Landroid/view/View;

.field T:Z

.field U:Z

.field V:Landroid/support/v4/app/aa;

.field W:Z

.field X:Z

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

.field p:Ljava/lang/String;

.field q:Landroid/os/Bundle;

.field r:Landroid/support/v4/app/Fragment;

.field s:I

.field t:I

.field u:Z

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v4/c/m;

    invoke-direct {v0}, Landroid/support/v4/c/m;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/c/m;

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

    iput v1, p0, Landroid/support/v4/app/Fragment;->s:I

    iput-boolean v2, p0, Landroid/support/v4/app/Fragment;->N:Z

    iput-boolean v2, p0, Landroid/support/v4/app/Fragment;->U:Z

    return-void
.end method

.method public static A()V
    .registers 0

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
    sget-object v0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/c/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/c/m;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/c/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    iput-object p2, v0, Landroid/support/v4/app/Fragment;->q:Landroid/os/Bundle;
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_2c} :catch_49
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2c} :catch_65

    :cond_2c
    return-object v0

    :catch_2d
    move-exception v0

    new-instance v1, Landroid/support/v4/app/Fragment$InstantiationException;

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

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_49
    move-exception v0

    new-instance v1, Landroid/support/v4/app/Fragment$InstantiationException;

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

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_65
    move-exception v0

    new-instance v1, Landroid/support/v4/app/Fragment$InstantiationException;

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

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    sget-object v0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/c/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/c/m;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/c/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const-class v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result v0

    :goto_1d
    return v0

    :catch_1e
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static r()V
    .registers 0

    return-void
.end method

.method public static v()Landroid/view/animation/Animation;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method final B()V
    .registers 4

    new-instance v0, Landroid/support/v4/app/t;

    invoke-direct {v0}, Landroid/support/v4/app/t;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Landroid/support/v4/app/Fragment$1;

    invoke-direct {v2, p0}, Landroid/support/v4/app/Fragment$1;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/q;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method final C()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/t;->c(I)V

    :cond_b
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->W:Z

    if-eqz v0, :cond_33

    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->W:Z

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->X:Z

    if-nez v0, :cond_24

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->X:Z

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->p:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->W:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/aa;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;

    :cond_24
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentActivity;->h:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;

    invoke-virtual {v0}, Landroid/support/v4/app/aa;->d()V

    :cond_33
    :goto_33
    return-void

    :cond_34
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;

    invoke-virtual {v0}, Landroid/support/v4/app/aa;->e()V

    goto :goto_33
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(I)Ljava/lang/CharSequence;
    .registers 3

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->k()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final varargs a(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->k()Landroid/content/res/Resources;

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

    iget-object v1, p2, Landroid/support/v4/app/Fragment;->p:Ljava/lang/String;

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

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->p:Ljava/lang/String;

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

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->p:Ljava/lang/String;

    goto :goto_21
.end method

.method public a(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->O:Z

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/support/v4/app/FragmentActivity;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method public final a(Landroid/content/Intent;I)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->O:Z

    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment$SavedState;)V
    .registers 4

    iget v0, p0, Landroid/support/v4/app/Fragment;->o:I

    if-ltz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-eqz p1, :cond_17

    iget-object v0, p1, Landroid/support/v4/app/Fragment$SavedState;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_17

    iget-object v0, p1, Landroid/support/v4/app/Fragment$SavedState;->a:Landroid/os/Bundle;

    :goto_14
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public final a(Landroid/support/v4/app/Fragment;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/Fragment;->t:I

    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final a(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->M:Z

    if-eq v0, p1, :cond_15

    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->M:Z

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->o()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->I:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->x_()V

    :cond_15
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method final b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/t;->s:Z

    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->k()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->O:Z

    return-void
.end method

.method public b(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method public b(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->N:Z

    if-eq v0, p1, :cond_19

    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->N:Z

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->M:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->o()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->I:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->x_()V

    :cond_19
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->O:Z

    return-void
.end method

.method public final c(Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->U:Z

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    iget v0, p0, Landroid/support/v4/app/Fragment;->j:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_10

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/t;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/t;->b(Landroid/support/v4/app/Fragment;)V

    :cond_10
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->U:Z

    if-nez p1, :cond_18

    const/4 v0, 0x1

    :goto_15
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->T:Z

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final c_(Landroid/os/Bundle;)V
    .registers 4

    iget v0, p0, Landroid/support/v4/app/Fragment;->o:I

    if-ltz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->q:Landroid/os/Bundle;

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->O:Z

    return-void
.end method

.method public final h()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->q:Landroid/os/Bundle;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final j()Landroid/support/v4/app/FragmentActivity;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public final k()Landroid/content/res/Resources;
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final l()Landroid/support/v4/app/r;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/t;

    return-object v0
.end method

.method public final m()Landroid/support/v4/app/r;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->B()V

    iget v0, p0, Landroid/support/v4/app/Fragment;->j:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_14

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->n()V

    :cond_11
    :goto_11
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;

    return-object v0

    :cond_14
    iget v0, p0, Landroid/support/v4/app/Fragment;->j:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1f

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->m()V

    goto :goto_11

    :cond_1f
    iget v0, p0, Landroid/support/v4/app/Fragment;->j:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2a

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->l()V

    goto :goto_11

    :cond_2a
    iget v0, p0, Landroid/support/v4/app/Fragment;->j:I

    if-lez v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->k()V

    goto :goto_11
.end method

.method public final n()Landroid/support/v4/app/Fragment;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public final o()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->u:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->O:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onLowMemory()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->O:Z

    return-void
.end method

.method public final p()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->J:Z

    return v0
.end method

.method public final p_()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->H:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->w:Z

    return v0
.end method

.method public final q_()Landroid/support/v4/app/Fragment;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public r_()V
    .registers 5

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->O:Z

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->W:Z

    if-nez v0, :cond_25

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->W:Z

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->X:Z

    if-nez v0, :cond_1c

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->X:Z

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->p:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->W:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/aa;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;

    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;

    invoke-virtual {v0}, Landroid/support/v4/app/aa;->c()V

    :cond_25
    return-void
.end method

.method public final s()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t retain fragements that are nested in other fragments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->K:Z

    return-void
.end method

.method public s_()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->O:Z

    return-void
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

    invoke-static {p0, v0}, Landroid/support/v4/c/c;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    iget v1, p0, Landroid/support/v4/app/Fragment;->o:I

    if-ltz v1, :cond_18

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/Fragment;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_18
    iget v1, p0, Landroid/support/v4/app/Fragment;->F:I

    if-eqz v1, :cond_2a

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/Fragment;->F:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->H:Ljava/lang/String;

    if-eqz v1, :cond_38

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Landroid/support/v4/app/y;
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->X:Z

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->p:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->W:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/aa;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;

    goto :goto_7
.end method

.method public final w()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;

    return-object v0
.end method

.method public x()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->O:Z

    return-void
.end method

.method public y()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->O:Z

    return-void
.end method

.method public z()V
    .registers 5

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->O:Z

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->X:Z

    if-nez v0, :cond_16

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->X:Z

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->p:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->W:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/aa;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;

    :cond_16
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;

    invoke-virtual {v0}, Landroid/support/v4/app/aa;->h()V

    :cond_1f
    return-void
.end method
