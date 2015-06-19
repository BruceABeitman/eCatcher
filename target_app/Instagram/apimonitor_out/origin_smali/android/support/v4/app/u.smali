.class final Landroid/support/v4/app/u;
.super Landroid/support/v4/app/s;
.source "FragmentManager.java"


# static fields
.field static final A:Landroid/view/animation/Interpolator;

.field static final B:Landroid/view/animation/Interpolator;

.field static final C:Landroid/view/animation/Interpolator;

.field static a:Z

.field static final b:Z

.field static final z:Landroid/view/animation/Interpolator;


# instance fields
.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field d:[Ljava/lang/Runnable;

.field e:Z

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/b;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/b;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/t;",
            ">;"
        }
    .end annotation
.end field

.field n:I

.field o:Landroid/support/v4/app/r;

.field p:Landroid/support/v4/app/q;

.field q:Landroid/support/v4/app/Fragment;

.field r:Z

.field s:Z

.field t:Z

.field u:Ljava/lang/String;

.field v:Z

.field w:Landroid/os/Bundle;

.field x:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field y:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x0

    const/high16 v4, 0x4020

    const/high16 v3, 0x3fc0

    sput-boolean v0, Landroid/support/v4/app/u;->a:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    sput-boolean v0, Landroid/support/v4/app/u;->b:Z

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/u;->z:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/u;->A:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/u;->B:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/u;->C:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/s;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/u;->n:I

    iput-object v1, p0, Landroid/support/v4/app/u;->w:Landroid/os/Bundle;

    iput-object v1, p0, Landroid/support/v4/app/u;->x:Landroid/util/SparseArray;

    new-instance v0, Landroid/support/v4/app/v;

    invoke-direct {v0, p0}, Landroid/support/v4/app/v;-><init>(Landroid/support/v4/app/u;)V

    iput-object v0, p0, Landroid/support/v4/app/u;->y:Ljava/lang/Runnable;

    return-void
.end method

.method private A()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/u;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/u;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    iget-object v0, p0, Landroid/support/v4/app/u;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/t;

    invoke-interface {v0}, Landroid/support/v4/app/t;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_1d
    return-void
.end method

.method private static a(IZ)I
    .registers 3

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_18

    :goto_4
    return v0

    :sswitch_5
    if-eqz p1, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x2

    goto :goto_4

    :sswitch_b
    if-eqz p1, :cond_f

    const/4 v0, 0x3

    goto :goto_4

    :cond_f
    const/4 v0, 0x4

    goto :goto_4

    :sswitch_11
    if-eqz p1, :cond_15

    const/4 v0, 0x5

    goto :goto_4

    :cond_15
    const/4 v0, 0x6

    goto :goto_4

    nop

    :sswitch_data_18
    .sparse-switch
        0x1001 -> :sswitch_5
        0x1003 -> :sswitch_11
        0x2002 -> :sswitch_b
    .end sparse-switch
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 8

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x0

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_32

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragement no longer exists for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/u;->a(Ljava/lang/RuntimeException;)V

    :cond_32
    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_8

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fragement no longer exists for key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/u;->a(Ljava/lang/RuntimeException;)V

    goto :goto_8
.end method

.method private static a(FF)Landroid/view/animation/Animation;
    .registers 5

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v1, Landroid/support/v4/app/u;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method private static a(FFFF)Landroid/view/animation/Animation;
    .registers 16

    const-wide/16 v10, 0xdc

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p0

    move v2, p1

    move v3, p0

    move v4, p1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object v1, Landroid/support/v4/app/u;->z:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v1, Landroid/support/v4/app/u;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v9
.end method

.method private a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .registers 11

    const v5, 0x3f79999a

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    iget v0, p1, Landroid/support/v4/app/Fragment;->Q:I

    invoke-static {}, Landroid/support/v4/app/Fragment;->C()Landroid/view/animation/Animation;

    iget v0, p1, Landroid/support/v4/app/Fragment;->Q:I

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/content/Context;

    move-result-object v0

    iget v2, p1, Landroid/support/v4/app/Fragment;->Q:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1f

    :goto_1e
    return-object v0

    :cond_1f
    if-nez p2, :cond_23

    move-object v0, v1

    goto :goto_1e

    :cond_23
    invoke-static {p2, p3}, Landroid/support/v4/app/u;->a(IZ)I

    move-result v0

    if-gez v0, :cond_2b

    move-object v0, v1

    goto :goto_1e

    :cond_2b
    packed-switch v0, :pswitch_data_8c

    if-nez p4, :cond_44

    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->c()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->c()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget p4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_44
    if-nez p4, :cond_89

    move-object v0, v1

    goto :goto_1e

    :pswitch_48
    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/content/Context;

    const/high16 v0, 0x3f90

    invoke-static {v0, v3, v4, v3}, Landroid/support/v4/app/u;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1e

    :pswitch_54
    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/content/Context;

    invoke-static {v3, v5, v3, v4}, Landroid/support/v4/app/u;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1e

    :pswitch_5e
    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/content/Context;

    invoke-static {v5, v3, v4, v3}, Landroid/support/v4/app/u;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1e

    :pswitch_68
    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/content/Context;

    const v0, 0x3f89999a

    invoke-static {v3, v0, v3, v4}, Landroid/support/v4/app/u;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1e

    :pswitch_75
    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/support/v4/app/u;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1e

    :pswitch_7f
    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/content/Context;

    invoke-static {v3, v4}, Landroid/support/v4/app/u;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1e

    :cond_89
    move-object v0, v1

    goto :goto_1e

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_48
        :pswitch_54
        :pswitch_5e
        :pswitch_68
        :pswitch_75
        :pswitch_7f
    .end packed-switch
.end method

.method private a(ILandroid/support/v4/app/b;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/u;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u;->k:Ljava/util/ArrayList;

    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/u;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_33

    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting back stack index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2c
    iget-object v0, p0, Landroid/support/v4/app/u;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_31
    monitor-exit p0

    return-void

    :cond_33
    :goto_33
    if-ge v0, p1, :cond_56

    iget-object v1, p0, Landroid/support/v4/app/u;->k:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/v4/app/u;->l:Ljava/util/ArrayList;

    if-nez v1, :cond_46

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/u;->l:Ljava/util/ArrayList;

    :cond_46
    sget-boolean v1, Landroid/support/v4/app/u;->a:Z

    if-eqz v1, :cond_4a

    :cond_4a
    iget-object v1, p0, Landroid/support/v4/app/u;->l:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_56
    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_6e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding back stack index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6e
    iget-object v0, p0, Landroid/support/v4/app/u;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catchall {:try_start_1 .. :try_end_73} :catchall_74

    goto :goto_31

    :catchall_74
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .registers 7

    iget v0, p3, Landroid/support/v4/app/Fragment;->o:I

    if-gez v0, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/u;->a(Ljava/lang/RuntimeException;)V

    :cond_21
    iget v0, p3, Landroid/support/v4/app/Fragment;->o:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .registers 6

    const-string v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FragmentManager"

    const-string v1, "Activity state:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/support/v4/c/b;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/c/b;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    if-eqz v0, :cond_34

    :try_start_20
    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    const-string v2, "  "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/r;->a(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_2b

    :goto_2a
    throw p1

    :catch_2b
    move-exception v0

    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    :cond_34
    :try_start_34
    const-string v0, "  "

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/support/v4/app/u;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_3e

    goto :goto_2a

    :catch_3e
    move-exception v0

    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a
.end method

.method private static c(Landroid/support/v4/app/Fragment;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->o()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/Fragment;->H:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const-string v0, "not-found"

    goto :goto_a
.end method

.method private d(Landroid/support/v4/app/Fragment;)V
    .registers 4

    iget v0, p1, Landroid/support/v4/app/Fragment;->o:I

    if-ltz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/u;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3b

    :cond_11
    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_1c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/u;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(ILandroid/support/v4/app/Fragment;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2c
    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Allocated fragment index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_3b
    iget-object v0, p0, Landroid/support/v4/app/u;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/u;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(ILandroid/support/v4/app/Fragment;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->o:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c
.end method

.method private e(Landroid/support/v4/app/Fragment;)V
    .registers 5

    iget v0, p1, Landroid/support/v4/app/Fragment;->o:I

    if-gez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Freeing fragment index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_13
    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->o:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p1, Landroid/support/v4/app/Fragment;->p:I

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_29

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u;->h:Ljava/util/ArrayList;

    :cond_29
    iget-object v0, p0, Landroid/support/v4/app/u;->h:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->H()V

    goto :goto_4
.end method

.method public static f(I)I
    .registers 2

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_e

    :goto_4
    return v0

    :sswitch_5
    const/16 v0, 0x2002

    goto :goto_4

    :sswitch_8
    const/16 v0, 0x1001

    goto :goto_4

    :sswitch_b
    const/16 v0, 0x1003

    goto :goto_4

    :sswitch_data_e
    .sparse-switch
        0x1001 -> :sswitch_5
        0x1003 -> :sswitch_b
        0x2002 -> :sswitch_8
    .end sparse-switch
.end method

.method private f(Landroid/support/v4/app/Fragment;)V
    .registers 4

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->T:Landroid/view/View;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/u;->x:Landroid/util/SparseArray;

    if-nez v0, :cond_27

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u;->x:Landroid/util/SparseArray;

    :goto_10
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->T:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/u;->x:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->x:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/u;->x:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/u;->x:Landroid/util/SparseArray;

    goto :goto_4

    :cond_27
    iget-object v0, p0, Landroid/support/v4/app/u;->x:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_10
.end method

.method private g(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/u;->w:Landroid/os/Bundle;

    if-nez v0, :cond_c

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u;->w:Landroid/os/Bundle;

    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/u;->w:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->k(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->w:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Landroid/support/v4/app/u;->w:Landroid/os/Bundle;

    iput-object v1, p0, Landroid/support/v4/app/u;->w:Landroid/os/Bundle;

    :goto_1d
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v1, :cond_24

    invoke-direct {p0, p1}, Landroid/support/v4/app/u;->f(Landroid/support/v4/app/Fragment;)V

    :cond_24
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    if-eqz v1, :cond_36

    if-nez v0, :cond_2f

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_2f
    const-string v1, "android:view_state"

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_36
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->V:Z

    if-nez v1, :cond_48

    if-nez v0, :cond_41

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_41
    const-string v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->V:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_48
    return-object v0

    :cond_49
    move-object v0, v1

    goto :goto_1d
.end method

.method private g(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/support/v4/app/u;->a(IIIZ)V

    return-void
.end method

.method private z()V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/u;->s:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/u;->u:Ljava/lang/String;

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not perform this action inside of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/u;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/b;)I
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/u;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v4/app/u;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3d

    :cond_d
    iget-object v0, p0, Landroid/support/v4/app/u;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_18

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u;->k:Ljava/util/ArrayList;

    :cond_18
    iget-object v0, p0, Landroid/support/v4/app/u;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-boolean v1, Landroid/support/v4/app/u;->a:Z

    if-eqz v1, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_36
    iget-object v1, p0, Landroid/support/v4/app/u;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    :goto_3c
    return v0

    :cond_3d
    iget-object v0, p0, Landroid/support/v4/app/u;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/u;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-boolean v1, Landroid/support/v4/app/u;->a:Z

    if-eqz v1, :cond_69

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_69
    iget-object v1, p0, Landroid/support/v4/app/u;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_1 .. :try_end_6f} :catchall_70

    goto :goto_3c

    :catchall_70
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)Landroid/support/v4/app/Fragment;
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_d
    if-ltz v1, :cond_22

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1e

    iget v2, v0, Landroid/support/v4/app/Fragment;->G:I

    if-ne v2, p1, :cond_1e

    :cond_1d
    :goto_1d
    return-object v0

    :cond_1e
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_d

    :cond_22
    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_43

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2f
    if-ltz v1, :cond_43

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3f

    iget v2, v0, Landroid/support/v4/app/Fragment;->G:I

    if-eq v2, p1, :cond_1d

    :cond_3f
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2f

    :cond_43
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public final a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_f
    if-ltz v1, :cond_28

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_24

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_23
    :goto_23
    return-object v0

    :cond_24
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_f

    :cond_28
    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4f

    if-eqz p1, :cond_4f

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_37
    if-ltz v1, :cond_4f

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_4b

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    :cond_4b
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_37

    :cond_4f
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public final a()Landroid/support/v4/app/ag;
    .registers 2

    new-instance v0, Landroid/support/v4/app/b;

    invoke-direct {v0, p0}, Landroid/support/v4/app/b;-><init>(Landroid/support/v4/app/u;)V

    return-object v0
.end method

.method final a(IIIZ)V
    .registers 13

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    if-nez v0, :cond_f

    if-eqz p1, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-nez p4, :cond_16

    iget v0, p0, Landroid/support/v4/app/u;->n:I

    if-ne v0, p1, :cond_16

    :cond_15
    :goto_15
    return-void

    :cond_16
    iput p1, p0, Landroid/support/v4/app/u;->n:I

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    move v6, v5

    move v7, v5

    :goto_1e
    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_48

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_62

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    iget-object v0, v1, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_62

    iget-object v0, v1, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->a()Z

    move-result v0

    or-int/2addr v7, v0

    move v1, v7

    :goto_43
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_1e

    :cond_48
    if-nez v7, :cond_4d

    invoke-virtual {p0}, Landroid/support/v4/app/u;->h()V

    :cond_4d
    iget-boolean v0, p0, Landroid/support/v4/app/u;->r:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    if-eqz v0, :cond_15

    iget v0, p0, Landroid/support/v4/app/u;->n:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->j()V

    iput-boolean v5, p0, Landroid/support/v4/app/u;->r:Z

    goto :goto_15

    :cond_62
    move v1, v7

    goto :goto_43
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/content/res/Configuration;)V

    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_1f
    return-void
.end method

.method final a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_5b

    move v1, v2

    :goto_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5b

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    sget-boolean v3, Landroid/support/v4/app/u;->a:Z

    if-eqz v3, :cond_28

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "restoreAllState: re-attaching retained "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_28
    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    iget v4, v0, Landroid/support/v4/app/Fragment;->o:I

    aget-object v3, v3, v4

    iput-object v0, v3, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;

    iput-object v6, v0, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    iput v2, v0, Landroid/support/v4/app/Fragment;->B:I

    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->z:Z

    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->v:Z

    iput-object v6, v0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    if-eqz v4, :cond_57

    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v5}, Landroid/support/v4/app/r;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    const-string v4, "android:view_state"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    :cond_57
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_5b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_6e
    move v0, v2

    :goto_6f
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    if-ge v0, v1, :cond_c2

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    aget-object v1, v1, v0

    if-eqz v1, :cond_a4

    iget-object v3, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    iget-object v4, p0, Landroid/support/v4/app/u;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/FragmentState;->a(Landroid/support/v4/app/r;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    sget-boolean v4, Landroid/support/v4/app/u;->a:Z

    if-eqz v4, :cond_9a

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "restoreAllState: active #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9a
    iget-object v4, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v6, v1, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;

    :goto_a1
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    :cond_a4
    iget-object v1, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/v4/app/u;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_b4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/u;->h:Ljava/util/ArrayList;

    :cond_b4
    sget-boolean v1, Landroid/support/v4/app/u;->a:Z

    if-eqz v1, :cond_b8

    :cond_b8
    iget-object v1, p0, Landroid/support/v4/app/u;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    :cond_c2
    if-eqz p2, :cond_108

    move v3, v2

    :goto_c5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_108

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v1, v0, Landroid/support/v4/app/Fragment;->t:I

    if-ltz v1, :cond_eb

    iget v1, v0, Landroid/support/v4/app/Fragment;->t:I

    iget-object v4, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_ef

    iget-object v1, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    iget v4, v0, Landroid/support/v4/app/Fragment;->t:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    :cond_eb
    :goto_eb
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_c5

    :cond_ef
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Re-attaching retained fragment "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " target no longer exists: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Landroid/support/v4/app/Fragment;->t:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iput-object v6, v0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    goto :goto_eb

    :cond_108
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    if-eqz v0, :cond_179

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    move v1, v2

    :goto_117
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_17b

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_145

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No instantiated fragment for index #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroid/support/v4/app/u;->a(Ljava/lang/RuntimeException;)V

    :cond_145
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->v:Z

    sget-boolean v3, Landroid/support/v4/app/u;->a:Z

    if-eqz v3, :cond_160

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "restoreAllState: added #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_160
    iget-object v3, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_170

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already added!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_170
    iget-object v3, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_117

    :cond_179
    iput-object v6, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    :cond_17b
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    if-eqz v0, :cond_1dd

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    move v0, v2

    :goto_18a
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/support/v4/app/BackStackState;->a(Landroid/support/v4/app/u;)Landroid/support/v4/app/b;

    move-result-object v1

    sget-boolean v3, Landroid/support/v4/app/u;->a:Z

    if-eqz v3, :cond_1cc

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "restoreAllState: back stack #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/support/v4/app/b;->o:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Landroid/support/v4/c/b;

    const-string v4, "FragmentManager"

    invoke-direct {v3, v4}, Landroid/support/v4/c/b;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v3, "  "

    invoke-virtual {v1, v3, v4, v2}, Landroid/support/v4/app/b;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    :cond_1cc
    iget-object v3, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v1, Landroid/support/v4/app/b;->o:I

    if-ltz v3, :cond_1da

    iget v3, v1, Landroid/support/v4/app/b;->o:I

    invoke-direct {p0, v3, v1}, Landroid/support/v4/app/u;->a(ILandroid/support/v4/app/b;)V

    :cond_1da
    add-int/lit8 v0, v0, 0x1

    goto :goto_18a

    :cond_1dd
    iput-object v6, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    goto/16 :goto_4
.end method

.method public final a(Landroid/support/v4/app/Fragment;)V
    .registers 8

    const/4 v3, 0x0

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->U:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/support/v4/app/u;->e:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/u;->v:Z

    :cond_c
    :goto_c
    return-void

    :cond_d
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->U:Z

    iget v2, p0, Landroid/support/v4/app/u;->n:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_c
.end method

.method public final a(Landroid/support/v4/app/Fragment;II)V
    .registers 10

    const/4 v1, 0x1

    const/4 v5, 0x0

    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "remove: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " nesting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/support/v4/app/Fragment;->B:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1c
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->o_()Z

    move-result v0

    if-nez v0, :cond_4b

    move v0, v1

    :goto_23
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v2, :cond_29

    if-eqz v0, :cond_4a

    :cond_29
    iget-object v2, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_32

    iget-object v2, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_32
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v2, :cond_3c

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->O:Z

    if-eqz v2, :cond_3c

    iput-boolean v1, p0, Landroid/support/v4/app/u;->r:Z

    :cond_3c
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->v:Z

    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->w:Z

    if-eqz v0, :cond_4d

    move v2, v5

    :goto_43
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_4a
    return-void

    :cond_4b
    move v0, v5

    goto :goto_23

    :cond_4d
    move v2, v1

    goto :goto_43
.end method

.method final a(Landroid/support/v4/app/Fragment;IIIZ)V
    .registers 15

    const/4 v8, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->v:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v0, :cond_10

    :cond_d
    if-le p2, v5, :cond_10

    move p2, v5

    :cond_10
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->w:Z

    if-eqz v0, :cond_1a

    iget v0, p1, Landroid/support/v4/app/Fragment;->j:I

    if-le p2, v0, :cond_1a

    iget p2, p1, Landroid/support/v4/app/Fragment;->j:I

    :cond_1a
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->U:Z

    if-eqz v0, :cond_25

    iget v0, p1, Landroid/support/v4/app/Fragment;->j:I

    if-ge v0, v8, :cond_25

    if-le p2, v6, :cond_25

    move p2, v6

    :cond_25
    iget v0, p1, Landroid/support/v4/app/Fragment;->j:I

    if-ge v0, p2, :cond_249

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->y:Z

    if-eqz v0, :cond_32

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->z:Z

    if-nez v0, :cond_32

    :goto_31
    return-void

    :cond_32
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    if-eqz v0, :cond_40

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    iget v2, p1, Landroid/support/v4/app/Fragment;->l:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_40
    iget v0, p1, Landroid/support/v4/app/Fragment;->j:I

    packed-switch v0, :pswitch_data_358

    :cond_45
    :goto_45
    iput p2, p1, Landroid/support/v4/app/Fragment;->j:I

    goto :goto_31

    :pswitch_48
    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_56

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_56
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    if-eqz v0, :cond_9e

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v1}, Landroid/support/v4/app/r;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/u;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_8b

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/app/Fragment;->u:I

    :cond_8b
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->V:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->V:Z

    if-nez v0, :cond_9e

    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->U:Z

    if-le p2, v6, :cond_9e

    move p2, v6

    :cond_9e
    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    iget-object v0, p0, Landroid/support/v4/app/u;->q:Landroid/support/v4/app/Fragment;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->F:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Landroid/support/v4/app/u;->q:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_da

    iget-object v0, p0, Landroid/support/v4/app/u;->q:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/u;

    :goto_ae
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/u;

    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->P:Z

    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;)V

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_e1

    new-instance v0, Landroid/support/v4/app/cu;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/cu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_da
    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->g()Landroid/support/v4/app/u;

    move-result-object v0

    goto :goto_ae

    :cond_e1
    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_114

    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->P:Z

    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/content/Context;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->A()V

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_114

    new-instance v0, Landroid/support/v4/app/cu;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/cu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_114
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->F:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_23b

    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/r;->a(Landroid/support/v4/app/Fragment;)V

    :goto_11d
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z

    if-nez v0, :cond_126

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->i(Landroid/os/Bundle;)V

    :cond_126
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->M:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->y:Z

    if-eqz v0, :cond_15c

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v7, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_242

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->T:Landroid/view/View;

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/ar;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->J:Z

    if-eqz v0, :cond_155

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_155
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    :cond_15c
    :goto_15c
    :pswitch_15c
    if-le p2, v5, :cond_20d

    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_16c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto ACTIVITY_CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_16c
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->y:Z

    if-nez v0, :cond_1fd

    iget v0, p1, Landroid/support/v4/app/Fragment;->H:I

    if-eqz v0, :cond_355

    iget-object v0, p0, Landroid/support/v4/app/u;->p:Landroid/support/v4/app/q;

    iget v1, p1, Landroid/support/v4/app/Fragment;->H:I

    invoke-interface {v0, v1}, Landroid/support/v4/app/q;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1b9

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->A:Z

    if-nez v1, :cond_1b9

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No view found for id 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/support/v4/app/Fragment;->H:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/support/v4/app/u;->c(Landroid/support/v4/app/Fragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/u;->a(Ljava/lang/RuntimeException;)V

    :cond_1b9
    :goto_1b9
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v1, :cond_246

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->T:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/app/ar;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_1eb

    invoke-direct {p0, p1, p3, v5, p4}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_1e6

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1e6
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1eb
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->J:Z

    if-eqz v0, :cond_1f6

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1f6
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    :cond_1fd
    :goto_1fd
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->j(Landroid/os/Bundle;)V

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_20b

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->f(Landroid/os/Bundle;)V

    :cond_20b
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    :cond_20d
    :pswitch_20d
    if-le p2, v6, :cond_220

    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_21d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto STARTED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_21d
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->J()V

    :cond_220
    :pswitch_220
    if-le p2, v8, :cond_45

    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_230

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto RESUMED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_230
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->x:Z

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->K()V

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    goto/16 :goto_45

    :cond_23b
    iget-object v0, p0, Landroid/support/v4/app/u;->q:Landroid/support/v4/app/Fragment;

    invoke-static {}, Landroid/support/v4/app/Fragment;->B()V

    goto/16 :goto_11d

    :cond_242
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->T:Landroid/view/View;

    goto/16 :goto_15c

    :cond_246
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->T:Landroid/view/View;

    goto :goto_1fd

    :cond_249
    iget v0, p1, Landroid/support/v4/app/Fragment;->j:I

    if-le v0, p2, :cond_45

    iget v0, p1, Landroid/support/v4/app/Fragment;->j:I

    packed-switch v0, :pswitch_data_366

    goto/16 :goto_45

    :cond_254
    :goto_254
    :pswitch_254
    if-gtz p2, :cond_45

    iget-boolean v0, p0, Landroid/support/v4/app/u;->t:Z

    if-eqz v0, :cond_265

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    if-eqz v0, :cond_265

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_265
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    if-eqz v0, :cond_309

    iput p2, p1, Landroid/support/v4/app/Fragment;->l:I

    move p2, v5

    goto/16 :goto_45

    :pswitch_26e
    const/4 v0, 0x5

    if-ge p2, v0, :cond_284

    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_27f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom RESUMED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_27f
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->P()V

    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->x:Z

    :cond_284
    :pswitch_284
    if-ge p2, v8, :cond_297

    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_294

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom STARTED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_294
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->Q()V

    :cond_297
    :pswitch_297
    if-ge p2, v6, :cond_2aa

    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_2a7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom STOPPED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2a7
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->R()V

    :cond_2aa
    :pswitch_2aa
    const/4 v0, 0x2

    if-ge p2, v0, :cond_254

    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_2bb

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom ACTIVITY_CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2bb
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_2ce

    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->f()Z

    move-result v0

    if-nez v0, :cond_2ce

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;

    if-nez v0, :cond_2ce

    invoke-direct {p0, p1}, Landroid/support/v4/app/u;->f(Landroid/support/v4/app/Fragment;)V

    :cond_2ce
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->S()V

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_301

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/ViewGroup;

    if-eqz v0, :cond_301

    iget v0, p0, Landroid/support/v4/app/u;->n:I

    if-lez v0, :cond_353

    iget-boolean v0, p0, Landroid/support/v4/app/u;->t:Z

    if-nez v0, :cond_353

    invoke-direct {p0, p1, p3, v3, p4}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_2e5
    if-eqz v0, :cond_2fa

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    iput p2, p1, Landroid/support/v4/app/Fragment;->l:I

    new-instance v1, Landroid/support/v4/app/z;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/app/z;-><init>(Landroid/support/v4/app/u;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2fa
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_301
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/ViewGroup;

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->T:Landroid/view/View;

    goto/16 :goto_254

    :cond_309
    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_317

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_317
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z

    if-nez v0, :cond_31e

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->T()V

    :cond_31e
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->P:Z

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->p_()V

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_342

    new-instance v0, Landroid/support/v4/app/cu;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/cu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_342
    if-nez p5, :cond_45

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z

    if-nez v0, :cond_34d

    invoke-direct {p0, p1}, Landroid/support/v4/app/u;->e(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_45

    :cond_34d
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/r;

    iput-object v7, p1, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/u;

    goto/16 :goto_45

    :cond_353
    move-object v0, v7

    goto :goto_2e5

    :cond_355
    move-object v0, v7

    goto/16 :goto_1b9

    :pswitch_data_358
    .packed-switch 0x0
        :pswitch_48
        :pswitch_15c
        :pswitch_20d
        :pswitch_20d
        :pswitch_220
    .end packed-switch

    :pswitch_data_366
    .packed-switch 0x1
        :pswitch_254
        :pswitch_2aa
        :pswitch_297
        :pswitch_284
        :pswitch_26e
    .end packed-switch
.end method

.method public final a(Landroid/support/v4/app/Fragment;Z)V
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    :cond_c
    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1a
    invoke-direct {p0, p1}, Landroid/support/v4/app/u;->d(Landroid/support/v4/app/Fragment;)V

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-nez v0, :cond_57

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->v:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->w:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v0, :cond_52

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->O:Z

    if-eqz v0, :cond_52

    iput-boolean v2, p0, Landroid/support/v4/app/u;->r:Z

    :cond_52
    if-eqz p2, :cond_57

    invoke-virtual {p0, p1}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/Fragment;)V

    :cond_57
    return-void
.end method

.method public final a(Landroid/support/v4/app/r;Landroid/support/v4/app/q;Landroid/support/v4/app/Fragment;)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput-object p1, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    iput-object p2, p0, Landroid/support/v4/app/u;->p:Landroid/support/v4/app/q;

    iput-object p3, p0, Landroid/support/v4/app/u;->q:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method public final a(Landroid/support/v4/app/t;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/u;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u;->m:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/u;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/Runnable;Z)V
    .registers 5

    if-nez p2, :cond_5

    invoke-direct {p0}, Landroid/support/v4/app/u;->z()V

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentHost has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_15
    :try_start_15
    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_20

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    :cond_20
    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_44

    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/u;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/u;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_15 .. :try_end_45} :catchall_12

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5f

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_39
    if-ge v2, v4, :cond_5f

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v0, :cond_5b

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/Fragment;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_5b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_39

    :cond_5f
    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_99

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_99

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_74
    if-ge v2, v4, :cond_99

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_74

    :cond_99
    iget-object v0, p0, Landroid/support/v4/app/u;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_d3

    iget-object v0, p0, Landroid/support/v4/app/u;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_d3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_ae
    if-ge v2, v4, :cond_d3

    iget-object v0, p0, Landroid/support/v4/app/u;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_ae

    :cond_d3
    iget-object v0, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_110

    iget-object v0, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_110

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_e8
    if-ge v2, v4, :cond_110

    iget-object v0, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/b;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/b;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v3, p3}, Landroid/support/v4/app/b;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e8

    :cond_110
    monitor-enter p0

    :try_start_111
    iget-object v0, p0, Landroid/support/v4/app/u;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_147

    iget-object v0, p0, Landroid/support/v4/app/u;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_147

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_126
    if-ge v2, v3, :cond_147

    iget-object v0, p0, Landroid/support/v4/app/u;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/b;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_126

    :cond_147
    iget-object v0, p0, Landroid/support/v4/app/u;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_168

    iget-object v0, p0, Landroid/support/v4/app/u;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_168

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_168
    monitor-exit p0
    :try_end_169
    .catchall {:try_start_111 .. :try_end_169} :catchall_19e

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1a1

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1a1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_17d
    if-ge v1, v2, :cond_1a1

    iget-object v0, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17d

    :catchall_19e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1a1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->p:Landroid/support/v4/app/q;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->q:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1d4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mParent="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1d4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/u;->n:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/u;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/u;->t:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v0, p0, Landroid/support/v4/app/u;->r:Z

    if-eqz v0, :cond_206

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/u;->r:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_206
    iget-object v0, p0, Landroid/support/v4/app/u;->u:Ljava/lang/String;

    if-eqz v0, :cond_217

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNoTransactionsBecause="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->u:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_217
    iget-object v0, p0, Landroid/support/v4/app/u;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_238

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_238

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mAvailIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_238
    return-void
.end method

.method public final a(Landroid/view/Menu;)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_24

    move v1, v0

    move v2, v0

    :goto_7
    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v2, 0x1

    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_24
    move v2, v0

    :cond_25
    return v2
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 9

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_31

    move v3, v4

    move v2, v4

    :goto_8
    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_32

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2b

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    if-eqz v5, :cond_2b

    const/4 v2, 0x1

    if-nez v1, :cond_28

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_28
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    move v0, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_8

    :cond_31
    move v2, v4

    :cond_32
    iget-object v0, p0, Landroid/support/v4/app/u;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_54

    :goto_36
    iget-object v0, p0, Landroid/support/v4/app/u;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_54

    iget-object v0, p0, Landroid/support/v4/app/u;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_4e

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    :cond_4e
    invoke-static {}, Landroid/support/v4/app/Fragment;->I()V

    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_54
    iput-object v1, p0, Landroid/support/v4/app/u;->j:Ljava/util/ArrayList;

    return v2
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    move v1, v2

    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v2, 0x1

    :cond_1f
    return v2

    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method

.method final a(Ljava/lang/String;II)Z
    .registers 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return v3

    :cond_7
    if-nez p1, :cond_29

    if-gez p2, :cond_29

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    iget-object v1, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/b;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/b;->a(Z)V

    :cond_24
    invoke-direct {p0}, Landroid/support/v4/app/u;->A()V

    move v3, v2

    goto :goto_6

    :cond_29
    const/4 v0, -0x1

    if-nez p1, :cond_2e

    if-ltz p2, :cond_7d

    :cond_2e
    iget-object v0, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_36
    if-ltz v1, :cond_55

    iget-object v0, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/b;

    if-eqz p1, :cond_4c

    invoke-virtual {v0}, Landroid/support/v4/app/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    :cond_4c
    if-ltz p2, :cond_52

    iget v0, v0, Landroid/support/v4/app/b;->o:I

    if-eq p2, v0, :cond_55

    :cond_52
    add-int/lit8 v1, v1, -0x1

    goto :goto_36

    :cond_55
    if-ltz v1, :cond_6

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_7c

    add-int/lit8 v1, v1, -0x1

    :goto_5d
    if-ltz v1, :cond_7c

    iget-object v0, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/b;

    if-eqz p1, :cond_73

    invoke-virtual {v0}, Landroid/support/v4/app/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_79

    :cond_73
    if-ltz p2, :cond_7c

    iget v0, v0, Landroid/support/v4/app/b;->o:I

    if-ne p2, v0, :cond_7c

    :cond_79
    add-int/lit8 v1, v1, -0x1

    goto :goto_5d

    :cond_7c
    move v0, v1

    :cond_7d
    iget-object v1, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_94
    if-le v1, v0, :cond_a2

    iget-object v4, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_94

    :cond_a2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    move v4, v3

    :goto_a9
    if-gt v4, v6, :cond_24

    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_bd

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Popping back stack state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_bd
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/b;

    if-ne v4, v6, :cond_cd

    move v1, v2

    :goto_c6
    invoke-virtual {v0, v1}, Landroid/support/v4/app/b;->a(Z)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_a9

    :cond_cd
    move v1, v3

    goto :goto_c6
.end method

.method public final b(I)V
    .registers 5

    if-gez p1, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Landroid/support/v4/app/y;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/support/v4/app/y;-><init>(Landroid/support/v4/app/u;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/u;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method final b(Landroid/support/v4/app/Fragment;)V
    .registers 8

    const/4 v3, 0x0

    iget v2, p0, Landroid/support/v4/app/u;->n:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    return-void
.end method

.method public final b(Landroid/support/v4/app/Fragment;II)V
    .registers 7

    const/4 v2, 0x1

    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hide: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v0, :cond_3d

    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->J:Z

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_25
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->v:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->O:Z

    if-eqz v0, :cond_3a

    iput-boolean v2, p0, Landroid/support/v4/app/u;->r:Z

    :cond_3a
    invoke-static {}, Landroid/support/v4/app/Fragment;->w()V

    :cond_3d
    return-void
.end method

.method final b(Landroid/support/v4/app/b;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/support/v4/app/u;->A()V

    return-void
.end method

.method public final b(Landroid/support/v4/app/t;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/u;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/app/u;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public final b(Landroid/view/Menu;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/view/Menu;)V

    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_1f
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/support/v4/app/x;-><init>(Landroid/support/v4/app/u;Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/u;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final b()Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/app/u;->i()Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/MenuItem;)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    move v1, v2

    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v2, 0x1

    :cond_1f
    return v2

    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method

.method public final c(I)I
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    :cond_4
    return p1

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->d(I)I

    move-result p1

    goto :goto_b
.end method

.method public final c(Landroid/support/v4/app/Fragment;II)V
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "show: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_10
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->J:Z

    if-eqz v0, :cond_3b

    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->J:Z

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_2a

    invoke-direct {p0, p1, p2, v3, p3}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_25
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2a
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->v:Z

    if-eqz v0, :cond_38

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v0, :cond_38

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->O:Z

    if-eqz v0, :cond_38

    iput-boolean v3, p0, Landroid/support/v4/app/u;->r:Z

    :cond_38
    invoke-static {}, Landroid/support/v4/app/Fragment;->w()V

    :cond_3b
    return-void
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/app/u;->s:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/app/u;->u:Ljava/lang/String;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final c(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Landroid/support/v4/app/u;->z()V

    invoke-virtual {p0}, Landroid/support/v4/app/u;->b()Z

    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->b()Landroid/os/Handler;

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/app/u;->a(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public final d(I)Landroid/support/v4/app/Fragment;
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    move-object v0, v1

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_d

    iget v3, v0, Landroid/support/v4/app/Fragment;->p:I

    if-lt v3, p1, :cond_d

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->e(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_6

    :cond_24
    move-object v0, v1

    goto :goto_6
.end method

.method public final d()V
    .registers 3

    new-instance v0, Landroid/support/v4/app/w;

    invoke-direct {v0, p0}, Landroid/support/v4/app/w;-><init>(Landroid/support/v4/app/u;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/u;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final d(Landroid/support/v4/app/Fragment;II)V
    .registers 10

    const/4 v5, 0x0

    const/4 v2, 0x1

    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "detach: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_10
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-nez v0, :cond_44

    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->K:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->v:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_31

    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remove from detach: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2c
    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_31
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v0, :cond_3b

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->O:Z

    if-eqz v0, :cond_3b

    iput-boolean v2, p0, Landroid/support/v4/app/u;->r:Z

    :cond_3b
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->v:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_44
    return-void
.end method

.method public final e(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/u;->k:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/app/u;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u;->l:Ljava/util/ArrayList;

    :cond_12
    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_16

    :cond_16
    iget-object v0, p0, Landroid/support/v4/app/u;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e(Landroid/support/v4/app/Fragment;II)V
    .registers 10

    const/4 v2, 0x1

    const/4 v5, 0x0

    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attach: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_10
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v0, :cond_6a

    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->K:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->v:Z

    if-nez v0, :cond_6a

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_25

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    :cond_25
    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_50

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add from attach: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->v:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v0, :cond_61

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->O:Z

    if-eqz v0, :cond_61

    iput-boolean v2, p0, Landroid/support/v4/app/u;->r:Z

    :cond_61
    iget v2, p0, Landroid/support/v4/app/u;->n:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_6a
    return-void
.end method

.method public final e()Z
    .registers 4

    invoke-direct {p0}, Landroid/support/v4/app/u;->z()V

    invoke-virtual {p0}, Landroid/support/v4/app/u;->b()Z

    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->b()Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/u;->a(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .registers 4

    invoke-direct {p0}, Landroid/support/v4/app/u;->z()V

    invoke-virtual {p0}, Landroid/support/v4/app/u;->b()Z

    iget-object v0, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->b()Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/u;->a(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public final g()I
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method final h()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1c

    invoke-virtual {p0, v0}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;)V

    :cond_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7
.end method

.method public final i()Z
    .registers 7

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/support/v4/app/u;->e:Z

    if-eqz v1, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recursive entry to executePendingTransactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v3}, Landroid/support/v4/app/r;->b()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v1, v3, :cond_26

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    move v1, v2

    :goto_27
    monitor-enter p0

    :try_start_28
    iget-object v3, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5c

    :cond_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_9b

    iget-boolean v0, p0, Landroid/support/v4/app/u;->v:Z

    if-eqz v0, :cond_c9

    move v3, v2

    move v4, v2

    :goto_3b
    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_c2

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_58

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    if-eqz v5, :cond_58

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->a()Z

    move-result v0

    or-int/2addr v4, v0

    :cond_58
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3b

    :cond_5c
    :try_start_5c
    iget-object v1, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v1, p0, Landroid/support/v4/app/u;->d:[Ljava/lang/Runnable;

    if-eqz v1, :cond_6b

    iget-object v1, p0, Landroid/support/v4/app/u;->d:[Ljava/lang/Runnable;

    array-length v1, v1

    if-ge v1, v3, :cond_6f

    :cond_6b
    new-array v1, v3, [Ljava/lang/Runnable;

    iput-object v1, p0, Landroid/support/v4/app/u;->d:[Ljava/lang/Runnable;

    :cond_6f
    iget-object v1, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/u;->d:[Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v1}, Landroid/support/v4/app/r;->b()Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v4/app/u;->y:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit p0
    :try_end_87
    .catchall {:try_start_5c .. :try_end_87} :catchall_9b

    iput-boolean v0, p0, Landroid/support/v4/app/u;->e:Z

    move v1, v2

    :goto_8a
    if-ge v1, v3, :cond_bd

    :try_start_8c
    iget-object v4, p0, Landroid/support/v4/app/u;->d:[Ljava/lang/Runnable;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_93} :catch_9e

    iget-object v4, p0, Landroid/support/v4/app/u;->d:[Ljava/lang/Runnable;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    :catchall_9b
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_9e
    move-exception v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/support/v4/app/aa;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/app/aa;-><init>(Landroid/support/v4/app/u;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_b7

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_b7
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_bd
    iput-boolean v2, p0, Landroid/support/v4/app/u;->e:Z

    move v1, v0

    goto/16 :goto_27

    :cond_c2
    if-nez v4, :cond_c9

    iput-boolean v2, p0, Landroid/support/v4/app/u;->v:Z

    invoke-virtual {p0}, Landroid/support/v4/app/u;->h()V

    :cond_c9
    return v1
.end method

.method final j()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_48

    const/4 v0, 0x0

    move v3, v0

    :goto_7
    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_48

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_42

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->L:Z

    if-eqz v2, :cond_42

    if-nez v1, :cond_24

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->M:Z

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_46

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->o:I

    :goto_32
    iput v2, v0, Landroid/support/v4/app/Fragment;->t:I

    sget-boolean v2, Landroid/support/v4/app/u;->a:Z

    if-eqz v2, :cond_42

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "retainNonConfig: keeping retained "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_42
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    :cond_46
    const/4 v2, -0x1

    goto :goto_32

    :cond_48
    return-object v1
.end method

.method final k()Landroid/os/Parcelable;
    .registers 12

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/v4/app/u;->i()Z

    sget-boolean v0, Landroid/support/v4/app/u;->b:Z

    if-eqz v0, :cond_c

    iput-boolean v1, p0, Landroid/support/v4/app/u;->s:Z

    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_19

    :cond_18
    :goto_18
    return-object v3

    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v7, v6, [Landroid/support/v4/app/FragmentState;

    move v5, v4

    move v2, v4

    :goto_23
    if-ge v5, v6, :cond_df

    iget-object v0, p0, Landroid/support/v4/app/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1a2

    iget v2, v0, Landroid/support/v4/app/Fragment;->o:I

    if-gez v2, :cond_56

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failure saving state: active "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has cleared index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/support/v4/app/Fragment;->o:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/u;->a(Ljava/lang/RuntimeException;)V

    :cond_56
    new-instance v2, Landroid/support/v4/app/FragmentState;

    invoke-direct {v2, v0}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    aput-object v2, v7, v5

    iget v8, v0, Landroid/support/v4/app/Fragment;->j:I

    if-lez v8, :cond_da

    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    if-nez v8, :cond_da

    invoke-direct {p0, v0}, Landroid/support/v4/app/u;->g(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    iget-object v8, v0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    if-eqz v8, :cond_b9

    iget-object v8, v0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    iget v8, v8, Landroid/support/v4/app/Fragment;->o:I

    if-gez v8, :cond_98

    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failure saving state: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroid/support/v4/app/u;->a(Ljava/lang/RuntimeException;)V

    :cond_98
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    if-nez v8, :cond_a3

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    :cond_a3
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    iget-object v10, v0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, v8, v9, v10}, Landroid/support/v4/app/u;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    iget v8, v0, Landroid/support/v4/app/Fragment;->u:I

    if-eqz v8, :cond_b9

    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    const-string v9, "android:target_req_state"

    iget v10, v0, Landroid/support/v4/app/Fragment;->u:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_b9
    :goto_b9
    sget-boolean v8, Landroid/support/v4/app/u;->a:Z

    if-eqz v8, :cond_d3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Saved state of "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ": "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_d3
    move v0, v1

    :goto_d4
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v0

    goto/16 :goto_23

    :cond_da
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    goto :goto_b9

    :cond_df
    if-nez v2, :cond_e5

    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    goto/16 :goto_18

    :cond_e5
    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_151

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_151

    new-array v1, v5, [I

    move v2, v4

    :goto_f4
    if-ge v2, v5, :cond_152

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->o:I

    aput v0, v1, v2

    aget v0, v1, v2

    if-gez v0, :cond_12f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Failure saving state: active "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " has cleared index: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v1, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/u;->a(Ljava/lang/RuntimeException;)V

    :cond_12f
    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_14d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "saveAllState: adding fragment #"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f4

    :cond_151
    move-object v1, v3

    :cond_152
    iget-object v0, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_194

    iget-object v0, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_194

    new-array v3, v5, [Landroid/support/v4/app/BackStackState;

    move v2, v4

    :goto_161
    if-ge v2, v5, :cond_194

    new-instance v4, Landroid/support/v4/app/BackStackState;

    iget-object v0, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/b;

    invoke-direct {v4, v0}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/b;)V

    aput-object v4, v3, v2

    sget-boolean v0, Landroid/support/v4/app/u;->a:Z

    if-eqz v0, :cond_190

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "saveAllState: adding back stack #"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v4/app/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_190
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_161

    :cond_194
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    iput-object v7, v0, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    iput-object v1, v0, Landroid/support/v4/app/FragmentManagerState;->b:[I

    iput-object v3, v0, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    move-object v3, v0

    goto/16 :goto_18

    :cond_1a2
    move v0, v2

    goto/16 :goto_d4
.end method

.method public final l()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/u;->s:Z

    return-void
.end method

.method public final m()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/u;->s:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/u;->g(I)V

    return-void
.end method

.method public final n()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/u;->s:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/u;->g(I)V

    return-void
.end method

.method public final o()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/u;->s:Z

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/u;->g(I)V

    return-void
.end method

.method public final p()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/u;->s:Z

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/support/v4/app/u;->g(I)V

    return-void
.end method

.method public final q()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/u;->g(I)V

    return-void
.end method

.method public final r()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/u;->s:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/v4/app/u;->g(I)V

    return-void
.end method

.method public final s()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/u;->g(I)V

    return-void
.end method

.method public final t()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/u;->g(I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/u;->q:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/support/v4/app/u;->q:Landroid/support/v4/app/Fragment;

    invoke-static {v1, v0}, Landroid/support/v4/c/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    :goto_25
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2f
    iget-object v1, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-static {v1, v0}, Landroid/support/v4/c/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_25
.end method

.method public final u()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/u;->t:Z

    invoke-virtual {p0}, Landroid/support/v4/app/u;->i()Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/u;->g(I)V

    iput-object v1, p0, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    iput-object v1, p0, Landroid/support/v4/app/u;->p:Landroid/support/v4/app/q;

    iput-object v1, p0, Landroid/support/v4/app/u;->q:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method public final v()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->L()V

    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_1f
    return-void
.end method

.method public final w()Landroid/view/View;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->N()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1f

    :goto_1e
    return-object v0

    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_23
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public final x()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->M()V

    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_1f
    return-void
.end method

.method public final y()Landroid/view/MenuInflater;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    iget-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->O()Landroid/view/MenuInflater;

    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method
