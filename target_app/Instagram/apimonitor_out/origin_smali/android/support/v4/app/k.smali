.class public Landroid/support/v4/app/k;
.super Landroid/app/Activity;
.source "FragmentActivity.java"


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Landroid/support/v4/app/u;

.field c:Landroid/support/v4/app/u;

.field final d:Landroid/support/v4/app/q;

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/ap;",
            ">;"
        }
    .end annotation
.end field

.field n:Landroid/support/v4/app/ap;

.field o:Landroid/support/v4/app/p;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/support/v4/app/l;

    invoke-direct {v0, p0}, Landroid/support/v4/app/l;-><init>(Landroid/support/v4/app/k;)V

    iput-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/os/Handler;

    new-instance v0, Landroid/support/v4/app/u;

    invoke-direct {v0}, Landroid/support/v4/app/u;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/k;->c:Landroid/support/v4/app/u;

    new-instance v0, Landroid/support/v4/app/m;

    invoke-direct {v0, p0}, Landroid/support/v4/app/m;-><init>(Landroid/support/v4/app/k;)V

    iput-object v0, p0, Landroid/support/v4/app/k;->d:Landroid/support/v4/app/q;

    return-void
.end method

.method private a(I)Landroid/support/v4/app/Fragment;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/u;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/view/View;)Ljava/lang/String;
    .registers 8

    const/16 v3, 0x56

    const/16 v1, 0x46

    const/16 v6, 0x2c

    const/16 v5, 0x20

    const/16 v2, 0x2e

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    sparse-switch v0, :sswitch_data_156

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_39
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_131

    move v0, v1

    :goto_40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_134

    const/16 v0, 0x45

    :goto_4b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v0

    if-eqz v0, :cond_137

    move v0, v2

    :goto_55
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_13b

    const/16 v0, 0x48

    :goto_60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_13e

    move v0, v3

    :goto_6a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_141

    const/16 v0, 0x43

    :goto_75
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_144

    const/16 v0, 0x4c

    :goto_80
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_147

    :goto_8c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_14a

    const/16 v0, 0x53

    :goto_97
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_a2

    const/16 v2, 0x50

    :cond_a2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_114

    const-string v0, " #"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_114

    if-eqz v2, :cond_114

    const/high16 v0, -0x100

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_164

    :try_start_f0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    :goto_f4
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_114
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f0 .. :try_end_114} :catch_153

    :cond_114
    :goto_114
    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_11e
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_39

    :sswitch_123
    const/16 v0, 0x49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_39

    :sswitch_12a
    const/16 v0, 0x47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_39

    :cond_131
    move v0, v2

    goto/16 :goto_40

    :cond_134
    move v0, v2

    goto/16 :goto_4b

    :cond_137
    const/16 v0, 0x44

    goto/16 :goto_55

    :cond_13b
    move v0, v2

    goto/16 :goto_60

    :cond_13e
    move v0, v2

    goto/16 :goto_6a

    :cond_141
    move v0, v2

    goto/16 :goto_75

    :cond_144
    move v0, v2

    goto/16 :goto_80

    :cond_147
    move v1, v2

    goto/16 :goto_8c

    :cond_14a
    move v0, v2

    goto/16 :goto_97

    :sswitch_14d
    :try_start_14d
    const-string v0, "app"

    goto :goto_f4

    :sswitch_150
    const-string v0, "android"
    :try_end_152
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14d .. :try_end_152} :catch_153

    goto :goto_f4

    :catch_153
    move-exception v0

    goto :goto_114

    nop

    :sswitch_data_156
    .sparse-switch
        0x0 -> :sswitch_11e
        0x4 -> :sswitch_123
        0x8 -> :sswitch_12a
    .end sparse-switch

    :sswitch_data_164
    .sparse-switch
        0x1000000 -> :sswitch_150
        0x7f000000 -> :sswitch_14d
    .end sparse-switch
.end method

.method private static a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .registers 7

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p2, :cond_b

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    return-void

    :cond_b
    invoke-static {p2}, Landroid/support/v4/app/k;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_32
    if-ge v0, v1, :cond_a

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, p1, v3}, Landroid/support/v4/app/k;->a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_32
.end method

.method private b(Landroid/support/v4/app/Fragment;)I
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/u;->c(I)I

    iget v0, p1, Landroid/support/v4/app/Fragment;->p:I

    return v0
.end method

.method private f()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/app/k;->l:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->l:Z

    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroid/support/v4/app/k;->i:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->c()V

    :cond_14
    :goto_14
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->s()V

    return-void

    :cond_1a
    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->d()V

    goto :goto_14
.end method

.method private g()Landroid/support/v4/app/r;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/p;

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v4/app/p;

    invoke-direct {v0, p0}, Landroid/support/v4/app/p;-><init>(Landroid/support/v4/app/k;)V

    iput-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/p;

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/p;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/String;ZZ)Landroid/support/v4/app/ap;
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ap;

    if-nez v0, :cond_26

    if-eqz p3, :cond_25

    new-instance v0, Landroid/support/v4/app/ap;

    invoke-direct {p0}, Landroid/support/v4/app/k;->g()Landroid/support/v4/app/r;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Landroid/support/v4/app/ap;-><init>(Ljava/lang/String;Landroid/support/v4/app/r;Z)V

    iget-object v1, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    :goto_25
    return-object v0

    :cond_26
    invoke-direct {p0}, Landroid/support/v4/app/k;->g()Landroid/support/v4/app/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ap;->a(Landroid/support/v4/app/r;)V

    goto :goto_25
.end method

.method public final a()Landroid/support/v4/app/s;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/k;->c:Landroid/support/v4/app/u;

    return-object v0
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .registers 2

    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 6

    const/4 v0, -0x1

    const/high16 v1, -0x1

    if-ne p3, v0, :cond_9

    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_8
    return-void

    :cond_9
    and-int v0, p3, v1

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-direct {p0, p1}, Landroid/support/v4/app/k;->b(Landroid/support/v4/app/Fragment;)I

    move-result v0

    and-int/2addr v1, v0

    if-eqz v1, :cond_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for fragment ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8
.end method

.method public final a(Landroid/support/v4/app/s;)V
    .registers 2

    check-cast p1, Landroid/support/v4/app/u;

    iput-object p1, p0, Landroid/support/v4/app/k;->c:Landroid/support/v4/app/u;

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ap;

    if-eqz v0, :cond_1a

    iget-boolean v1, v0, Landroid/support/v4/app/ap;->g:Z

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->h()V

    iget-object v0, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-void
.end method

.method final a(Z)V
    .registers 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v4/app/k;->h:Z

    if-nez v0, :cond_11

    iput-boolean v1, p0, Landroid/support/v4/app/k;->h:Z

    iput-boolean p1, p0, Landroid/support/v4/app/k;->i:Z

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Landroid/support/v4/app/k;->f()V

    :cond_11
    return-void
.end method

.method protected final b()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->p()V

    return-void
.end method

.method public final c()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f

    invoke-static {p0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;)V

    :goto_9
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->x()V

    return-void

    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k;->j:Z

    goto :goto_9
.end method

.method public final d()Landroid/support/v4/app/s;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/k;->e:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/k;->f:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/k;->g:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/k;->h:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/k;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_9b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

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

    :cond_9b
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/u;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "View Hierarchy:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, p3, v1}, Landroid/support/v4/app/k;->a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    return-void
.end method

.method public final e()Landroid/support/v4/app/an;
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    :goto_7
    return-object v0

    :cond_8
    iput-boolean v2, p0, Landroid/support/v4/app/k;->k:Z

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v4/app/k;->l:Z

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/k;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/ap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    goto :goto_7
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->y()Landroid/view/MenuInflater;

    move-result-object v0

    if-eqz v0, :cond_9

    :goto_8
    return-object v0

    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    goto :goto_8
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-static {p3}, Lcom/facebook/e/b/a/a;->a(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->l()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_3a

    if-gez v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity result fragment index out of range: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1c
    return-void

    :cond_1d
    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity result no fragment exists for index: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_32
    const v1, 0xffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/app/Fragment;->a(IILandroid/content/Intent;)V

    goto :goto_1c

    :cond_3a
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1c
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->e()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/support/v4/app/k;->finish()V

    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/u;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-direct {p0}, Landroid/support/v4/app/k;->g()Landroid/support/v4/app/r;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/k;->d:Landroid/support/v4/app/q;

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/r;Landroid/support/v4/app/q;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p0}, Landroid/support/v4/app/k;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Landroid/support/v4/app/k;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".onCreate() with saved state"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/facebook/e/b/a/a;->b(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Landroid/support/v4/app/k;->g()Landroid/support/v4/app/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/r;->f()Z

    move-result v0

    if-nez v0, :cond_65

    invoke-virtual {p0}, Landroid/support/v4/app/k;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/o;

    if-eqz v0, :cond_4f

    iget-object v2, v0, Landroid/support/v4/app/o;->e:Ljava/util/HashMap;

    iput-object v2, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    :cond_4f
    if-eqz p1, :cond_60

    const-string v2, "android:support:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    if-eqz v0, :cond_66

    iget-object v0, v0, Landroid/support/v4/app/o;->d:Ljava/util/ArrayList;

    :goto_5d
    invoke-virtual {v3, v2, v0}, Landroid/support/v4/app/u;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    :cond_60
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->m()V

    :cond_65
    return-void

    :cond_66
    move-object v0, v1

    goto :goto_5d
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 6

    if-nez p1, :cond_1a

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {p0}, Landroid/support/v4/app/k;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/u;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_18

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17

    :cond_1a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_17
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3

    if-nez p1, :cond_b

    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->w()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_a
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 13

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v3, -0x1

    const-string v0, "fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    const-string v0, "class"

    invoke-interface {p3, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/support/v4/app/n;->a:[I

    invoke-virtual {p2, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    if-nez v0, :cond_23

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_23
    invoke-virtual {v4, v8, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-ne v2, v3, :cond_54

    if-nez v6, :cond_54

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_54
    iget-object v4, p0, Landroid/support/v4/app/k;->c:Landroid/support/v4/app/u;

    if-eqz v4, :cond_cc

    iget-object v4, p0, Landroid/support/v4/app/k;->c:Landroid/support/v4/app/u;

    move-object v5, v4

    :goto_5b
    if-eq v2, v3, :cond_61

    invoke-virtual {v5, v2}, Landroid/support/v4/app/u;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    :cond_61
    if-nez v1, :cond_69

    if-eqz v6, :cond_69

    invoke-virtual {v5, v6}, Landroid/support/v4/app/u;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    :cond_69
    sget-boolean v4, Landroid/support/v4/app/u;->a:Z

    if-eqz v4, :cond_8f

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "onCreateView: id=0x"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " fname="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " existing="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8f
    if-nez v1, :cond_d2

    invoke-static {p0, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->y:Z

    if-eqz v2, :cond_d0

    move v1, v2

    :goto_9a
    iput v1, v4, Landroid/support/v4/app/Fragment;->G:I

    iput v3, v4, Landroid/support/v4/app/Fragment;->H:I

    iput-object v6, v4, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;

    iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->z:Z

    iput-object v5, v4, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/u;

    iget-object v1, v4, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->z()V

    invoke-virtual {v5, v4, v8}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;Z)V

    move-object v1, v4

    :goto_ad
    iget-object v3, v1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-nez v3, :cond_12c

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " did not create a view."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_cc
    iget-object v4, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    move-object v5, v4

    goto :goto_5b

    :cond_d0
    move v1, v3

    goto :goto_9a

    :cond_d2
    iget-boolean v4, v1, Landroid/support/v4/app/Fragment;->z:Z

    if-eqz v4, :cond_11d

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Duplicate id 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", tag "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", or parent id 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with another fragment for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11d
    iput-boolean v8, v1, Landroid/support/v4/app/Fragment;->z:Z

    iget-boolean v3, v1, Landroid/support/v4/app/Fragment;->M:Z

    if-nez v3, :cond_128

    iget-object v3, v1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->z()V

    :cond_128
    invoke-virtual {v5, v1}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/Fragment;)V

    goto :goto_ad

    :cond_12c
    if-eqz v2, :cond_133

    iget-object v0, v1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    :cond_133
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_140

    iget-object v0, v1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_140
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    goto/16 :goto_f
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/k;->a(Z)V

    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->u()V

    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    invoke-virtual {v0}, Landroid/support/v4/app/ap;->h()V

    :cond_15
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_13

    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/support/v4/app/k;->onBackPressed()V

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_12
.end method

.method public onLowMemory()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->v()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    sparse-switch p1, :sswitch_data_1c

    const/4 v0, 0x0

    goto :goto_7

    :sswitch_d
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/u;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_7

    :sswitch_14
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/u;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_7

    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x6 -> :sswitch_14
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->l()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    packed-switch p1, :pswitch_data_e

    :goto_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/u;->b(Landroid/view/Menu;)V

    goto :goto_3

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    const/4 v1, 0x2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->f:Z

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/k;->b()V

    :cond_17
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->q()V

    return-void
.end method

.method protected onPostResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/k;->b()V

    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->i()Z

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_26

    if-eqz p3, :cond_26

    iget-boolean v1, p0, Landroid/support/v4/app/k;->j:Z

    if-eqz v1, :cond_11

    iput-boolean v0, p0, Landroid/support/v4/app/k;->j:Z

    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/k;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    :cond_11
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    iget-object v2, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v2, p3}, Landroid/support/v4/app/u;->a(Landroid/view/Menu;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_25

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x1

    :cond_25
    :goto_25
    return v0

    :cond_26
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_25
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k;->f:Z

    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->i()Z

    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 9

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-boolean v1, p0, Landroid/support/v4/app/k;->g:Z

    if-eqz v1, :cond_a

    invoke-virtual {p0, v2}, Landroid/support/v4/app/k;->a(Z)V

    :cond_a
    iget-object v1, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v1}, Landroid/support/v4/app/u;->j()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v1, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v5, v1, [Landroid/support/v4/app/ap;

    iget-object v1, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move v1, v0

    :goto_26
    array-length v6, v5

    if-ge v0, v6, :cond_3f

    aget-object v6, v5, v0

    iget-boolean v7, v6, Landroid/support/v4/app/ap;->g:Z

    if-eqz v7, :cond_33

    move v1, v2

    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_33
    invoke-virtual {v6}, Landroid/support/v4/app/ap;->h()V

    iget-object v7, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    iget-object v6, v6, Landroid/support/v4/app/ap;->d:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    :cond_3e
    move v1, v0

    :cond_3f
    if-nez v4, :cond_45

    if-nez v1, :cond_45

    move-object v0, v3

    :goto_44
    return-object v0

    :cond_45
    new-instance v0, Landroid/support/v4/app/o;

    invoke-direct {v0}, Landroid/support/v4/app/o;-><init>()V

    iput-object v3, v0, Landroid/support/v4/app/o;->a:Ljava/lang/Object;

    iput-object v3, v0, Landroid/support/v4/app/o;->b:Ljava/lang/Object;

    iput-object v3, v0, Landroid/support/v4/app/o;->c:Ljava/util/HashMap;

    iput-object v4, v0, Landroid/support/v4/app/o;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    iput-object v1, v0, Landroid/support/v4/app/o;->e:Ljava/util/HashMap;

    goto :goto_44
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->k()Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/e/b/a/a;->b(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    if-eqz v0, :cond_13

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_13
    return-void
.end method

.method protected onStart()V
    .registers 5

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iput-boolean v0, p0, Landroid/support/v4/app/k;->g:Z

    iput-boolean v0, p0, Landroid/support/v4/app/k;->h:Z

    iget-object v1, p0, Landroid/support/v4/app/k;->a:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v1, p0, Landroid/support/v4/app/k;->e:Z

    if-nez v1, :cond_19

    iput-boolean v3, p0, Landroid/support/v4/app/k;->e:Z

    iget-object v1, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v1}, Landroid/support/v4/app/u;->n()V

    :cond_19
    iget-object v1, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v1}, Landroid/support/v4/app/u;->l()V

    iget-object v1, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v1}, Landroid/support/v4/app/u;->i()Z

    iget-boolean v1, p0, Landroid/support/v4/app/k;->l:Z

    if-nez v1, :cond_34

    iput-boolean v3, p0, Landroid/support/v4/app/k;->l:Z

    iget-object v1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    invoke-virtual {v1}, Landroid/support/v4/app/ap;->b()V

    :cond_32
    :goto_32
    iput-boolean v3, p0, Landroid/support/v4/app/k;->k:Z

    :cond_34
    iget-object v1, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v1}, Landroid/support/v4/app/u;->o()V

    iget-object v1, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    if-eqz v1, :cond_79

    iget-object v1, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/support/v4/app/ap;

    iget-object v2, p0, Landroid/support/v4/app/k;->m:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_4e
    array-length v2, v1

    if-ge v0, v2, :cond_79

    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/support/v4/app/ap;->e()V

    invoke-virtual {v2}, Landroid/support/v4/app/ap;->g()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    :cond_5c
    iget-boolean v1, p0, Landroid/support/v4/app/k;->k:Z

    if-nez v1, :cond_32

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/v4/app/k;->l:Z

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/v4/app/k;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/ap;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    iget-object v1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    iget-boolean v1, v1, Landroid/support/v4/app/ap;->f:Z

    if-nez v1, :cond_32

    iget-object v1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/ap;

    invoke-virtual {v1}, Landroid/support/v4/app/ap;->b()V

    goto :goto_32

    :cond_79
    return-void
.end method

.method protected onStop()V
    .registers 3

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iput-boolean v1, p0, Landroid/support/v4/app/k;->g:Z

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->r()V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 5

    const/4 v0, -0x1

    if-eq p2, v0, :cond_10

    const/high16 v0, -0x1

    and-int/2addr v0, p2

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
