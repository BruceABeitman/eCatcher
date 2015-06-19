.class public Landroid/support/v4/app/FragmentActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Landroid/support/v4/app/t;

.field final c:Landroid/support/v4/app/q;

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Landroid/support/v4/c/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/c/m",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/aa;",
            ">;"
        }
    .end annotation
.end field

.field m:Landroid/support/v4/app/aa;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/support/v4/app/FragmentActivity$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    new-instance v0, Landroid/support/v4/app/t;

    invoke-direct {v0}, Landroid/support/v4/app/t;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    new-instance v0, Landroid/support/v4/app/FragmentActivity$2;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$2;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->c:Landroid/support/v4/app/q;

    return-void
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

.method private a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .registers 8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p3, :cond_b

    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    return-void

    :cond_b
    invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    instance-of v0, p3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_32
    if-ge v0, v1, :cond_a

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v2, p2, v3}, Landroid/support/v4/app/FragmentActivity;->a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_32
.end method


# virtual methods
.method final a(Ljava/lang/String;ZZ)Landroid/support/v4/app/aa;
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/c/m;

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v4/c/m;

    invoke-direct {v0}, Landroid/support/v4/c/m;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/c/m;

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/c/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    if-nez v0, :cond_22

    if-eqz p3, :cond_21

    new-instance v0, Landroid/support/v4/app/aa;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/aa;-><init>(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Z)V

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/c/m;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/c/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    :goto_21
    return-object v0

    :cond_22
    iput-object p0, v0, Landroid/support/v4/app/aa;->e:Landroid/support/v4/app/FragmentActivity;

    goto :goto_21
.end method

.method public final a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 6

    const/4 v0, -0x1

    if-ne p3, v0, :cond_7

    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_6
    return-void

    :cond_7
    const/high16 v0, -0x1

    and-int/2addr v0, p3

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget v0, p1, Landroid/support/v4/app/Fragment;->o:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6
.end method

.method final a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/c/m;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/c/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    if-eqz v0, :cond_1a

    iget-boolean v1, v0, Landroid/support/v4/app/aa;->g:Z

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Landroid/support/v4/app/aa;->h()V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/c/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-void
.end method

.method final a(Z)V
    .registers 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->g:Z

    if-nez v0, :cond_28

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->g:Z

    iput-boolean p1, p0, Landroid/support/v4/app/FragmentActivity;->h:Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->m:Landroid/support/v4/app/aa;

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->h:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->m:Landroid/support/v4/app/aa;

    invoke-virtual {v0}, Landroid/support/v4/app/aa;->d()V

    :cond_22
    :goto_22
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/t;->c(I)V

    :cond_28
    return-void

    :cond_29
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->m:Landroid/support/v4/app/aa;

    invoke-virtual {v0}, Landroid/support/v4/app/aa;->e()V

    goto :goto_22
.end method

.method protected a(Landroid/view/View;Landroid/view/Menu;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
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

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->d:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->e:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->f:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->g:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->m:Landroid/support/v4/app/aa;

    if-eqz v0, :cond_9b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->m:Landroid/support/v4/app/aa;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->m:Landroid/support/v4/app/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/aa;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_9b
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/t;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

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

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, p3, v1}, Landroid/support/v4/app/FragmentActivity;->a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    return-void
.end method

.method public final e()Landroid/support/v4/app/y;
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->m:Landroid/support/v4/app/aa;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->m:Landroid/support/v4/app/aa;

    :goto_7
    return-object v0

    :cond_8
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->j:Z

    const-string v0, "(root)"

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->k:Z

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/aa;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->m:Landroid/support/v4/app/aa;

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->m:Landroid/support/v4/app/aa;

    goto :goto_7
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/t;->s:Z

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_63

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    iget-object v1, v1, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_1d

    if-ltz v0, :cond_1d

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    iget-object v1, v1, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_36

    :cond_1d
    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity result fragment index out of range: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return-void

    :cond_36
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    iget-object v1, v1, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_5b

    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity result no fragment exists for index: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :cond_5b
    const v1, 0xffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/app/Fragment;->a(IILandroid/content/Intent;)V

    goto :goto_35

    :cond_63
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_35
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->f()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/t;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->c:Landroid/support/v4/app/q;

    invoke-virtual {v0, p0, v2, v1}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/q;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    :cond_19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/p;

    if-eqz v0, :cond_28

    iget-object v2, v0, Landroid/support/v4/app/p;->e:Landroid/support/v4/c/m;

    iput-object v2, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/c/m;

    :cond_28
    if-eqz p1, :cond_39

    const-string v2, "android:support:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    if-eqz v0, :cond_3f

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Ljava/util/ArrayList;

    :goto_36
    invoke-virtual {v3, v2, v0}, Landroid/support/v4/app/t;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    :cond_39
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->k()V

    return-void

    :cond_3f
    move-object v0, v1

    goto :goto_36
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 6

    if-nez p1, :cond_1a

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/t;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

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

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 13

    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v8, 0x1

    const-string v0, "fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const-string v0, "class"

    invoke-interface {p3, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/support/v4/app/o;->a:[I

    invoke-virtual {p2, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    if-nez v0, :cond_23

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_23
    invoke-virtual {v4, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p0, v0}, Landroid/support/v4/app/Fragment;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_10

    :cond_3a
    if-eq v2, v6, :cond_42

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/t;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    :cond_42
    if-nez v1, :cond_4c

    if-eqz v5, :cond_4c

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v1, v5}, Landroid/support/v4/app/t;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    :cond_4c
    if-nez v1, :cond_54

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/t;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    :cond_54
    sget-boolean v4, Landroid/support/v4/app/t;->a:Z

    if-eqz v4, :cond_84

    const-string v4, "FragmentActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onCreateView: id=0x"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fname="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " existing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    if-nez v1, :cond_c6

    invoke-static {p0, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->x:Z

    if-eqz v2, :cond_c4

    move v1, v2

    :goto_8f
    iput v1, v4, Landroid/support/v4/app/Fragment;->F:I

    iput v3, v4, Landroid/support/v4/app/Fragment;->G:I

    iput-object v5, v4, Landroid/support/v4/app/Fragment;->H:Ljava/lang/String;

    iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->y:Z

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    iput-object v1, v4, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/t;

    iget-object v1, v4, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->O:Z

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v1, v4, v8}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;Z)V

    move-object v1, v4

    :goto_a5
    iget-object v3, v1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;

    if-nez v3, :cond_121

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

    :cond_c4
    move v1, v3

    goto :goto_8f

    :cond_c6
    iget-boolean v4, v1, Landroid/support/v4/app/Fragment;->y:Z

    if-eqz v4, :cond_111

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": Duplicate id 0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", tag "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    :cond_111
    iput-boolean v8, v1, Landroid/support/v4/app/Fragment;->y:Z

    iget-boolean v3, v1, Landroid/support/v4/app/Fragment;->L:Z

    if-nez v3, :cond_11b

    iget-object v3, v1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;

    iput-boolean v8, v1, Landroid/support/v4/app/Fragment;->O:Z

    :cond_11b
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/t;->c(Landroid/support/v4/app/Fragment;)V

    goto :goto_a5

    :cond_121
    if-eqz v2, :cond_128

    iget-object v0, v1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    :cond_128
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_135

    iget-object v0, v1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_135
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;

    goto/16 :goto_10
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->a(Z)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->p()V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->m:Landroid/support/v4/app/aa;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->m:Landroid/support/v4/app/aa;

    invoke-virtual {v0}, Landroid/support/v4/app/aa;->h()V

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

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

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

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->q()V

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
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/t;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_7

    :sswitch_14
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/t;->b(Landroid/view/MenuItem;)Z

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
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/t;->s:Z

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    packed-switch p1, :pswitch_data_e

    :goto_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/t;->b(Landroid/view/Menu;)V

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

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->e:Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->t_()V

    :cond_17
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/t;->c(I)V

    return-void
.end method

.method protected onPostResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->t_()V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->h()Z

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 6

    if-nez p1, :cond_1d

    if-eqz p3, :cond_1d

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->i:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->i:Z

    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    :cond_11
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->a(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v1, p3}, Landroid/support/v4/app/t;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    :goto_1c
    return v0

    :cond_1d
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_1c
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->e:Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->h()Z

    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 11

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->f:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0, v6}, Landroid/support/v4/app/FragmentActivity;->a(Z)V

    :cond_a
    iget-object v7, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    iget-object v0, v7, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_5c

    move v3, v4

    move-object v1, v5

    :goto_12
    iget-object v0, v7, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5d

    iget-object v0, v7, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_56

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v2, :cond_56

    if-nez v1, :cond_2f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v6, v0, Landroid/support/v4/app/Fragment;->L:Z

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_5a

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->o:I

    :goto_3c
    iput v2, v0, Landroid/support/v4/app/Fragment;->s:I

    sget-boolean v2, Landroid/support/v4/app/t;->a:Z

    if-eqz v2, :cond_56

    const-string v2, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "retainNonConfig: keeping retained "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_12

    :cond_5a
    const/4 v2, -0x1

    goto :goto_3c

    :cond_5c
    move-object v1, v5

    :cond_5d
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/c/m;

    if-eqz v0, :cond_94

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/c/m;

    invoke-virtual {v0}, Landroid/support/v4/c/m;->size()I

    move-result v3

    new-array v7, v3, [Landroid/support/v4/app/aa;

    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_6c
    if-ltz v2, :cond_7c

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/c/m;

    invoke-virtual {v0, v2}, Landroid/support/v4/c/m;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    aput-object v0, v7, v2

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_6c

    :cond_7c
    move v0, v4

    :goto_7d
    if-ge v4, v3, :cond_95

    aget-object v2, v7, v4

    iget-boolean v8, v2, Landroid/support/v4/app/aa;->g:Z

    if-eqz v8, :cond_89

    move v0, v6

    :goto_86
    add-int/lit8 v4, v4, 0x1

    goto :goto_7d

    :cond_89
    invoke-virtual {v2}, Landroid/support/v4/app/aa;->h()V

    iget-object v8, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/c/m;

    iget-object v2, v2, Landroid/support/v4/app/aa;->d:Ljava/lang/String;

    invoke-virtual {v8, v2}, Landroid/support/v4/c/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_86

    :cond_94
    move v0, v4

    :cond_95
    if-nez v1, :cond_9a

    if-nez v0, :cond_9a

    :goto_99
    return-object v5

    :cond_9a
    new-instance v0, Landroid/support/v4/app/p;

    invoke-direct {v0}, Landroid/support/v4/app/p;-><init>()V

    iput-object v5, v0, Landroid/support/v4/app/p;->a:Ljava/lang/Object;

    iput-object v5, v0, Landroid/support/v4/app/p;->b:Ljava/lang/Object;

    iput-object v5, v0, Landroid/support/v4/app/p;->c:Landroid/support/v4/c/m;

    iput-object v1, v0, Landroid/support/v4/app/p;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/c/m;

    iput-object v1, v0, Landroid/support/v4/app/p;->e:Landroid/support/v4/c/m;

    move-object v5, v0

    goto :goto_99
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->j()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_10
    return-void
.end method

.method protected onStart()V
    .registers 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->f:Z

    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->g:Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->d:Z

    if-nez v0, :cond_19

    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->d:Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->l()V

    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    iput-boolean v3, v0, Landroid/support/v4/app/t;->s:Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->h()Z

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Z

    if-nez v0, :cond_33

    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->k:Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->m:Landroid/support/v4/app/aa;

    if-eqz v0, :cond_57

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->m:Landroid/support/v4/app/aa;

    invoke-virtual {v0}, Landroid/support/v4/app/aa;->c()V

    :cond_31
    :goto_31
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->j:Z

    :cond_33
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->m()V

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/c/m;

    if-eqz v0, :cond_f4

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/c/m;

    invoke-virtual {v0}, Landroid/support/v4/c/m;->size()I

    move-result v4

    new-array v5, v4, [Landroid/support/v4/app/aa;

    add-int/lit8 v0, v4, -0x1

    move v1, v0

    :goto_47
    if-ltz v1, :cond_75

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->l:Landroid/support/v4/c/m;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/m;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    aput-object v0, v5, v1

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_47

    :cond_57
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->j:Z

    if-nez v0, :cond_31

    const-string v0, "(root)"

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->k:Z

    invoke-virtual {p0, v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/aa;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->m:Landroid/support/v4/app/aa;

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->m:Landroid/support/v4/app/aa;

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->m:Landroid/support/v4/app/aa;

    iget-boolean v0, v0, Landroid/support/v4/app/aa;->f:Z

    if-nez v0, :cond_31

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->m:Landroid/support/v4/app/aa;

    invoke-virtual {v0}, Landroid/support/v4/app/aa;->c()V

    goto :goto_31

    :cond_75
    move v2, v3

    :goto_76
    if-ge v2, v4, :cond_f4

    aget-object v6, v5, v2

    iget-boolean v0, v6, Landroid/support/v4/app/aa;->g:Z

    if-eqz v0, :cond_ed

    sget-boolean v0, Landroid/support/v4/app/aa;->a:Z

    if-eqz v0, :cond_96

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Finished Retaining in "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    iput-boolean v3, v6, Landroid/support/v4/app/aa;->g:Z

    iget-object v0, v6, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;

    invoke-virtual {v0}, Landroid/support/v4/c/n;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_a1
    if-ltz v1, :cond_ed

    iget-object v0, v6, Landroid/support/v4/app/aa;->b:Landroid/support/v4/c/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/n;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ab;

    iget-boolean v7, v0, Landroid/support/v4/app/ab;->i:Z

    if-eqz v7, :cond_d6

    sget-boolean v7, Landroid/support/v4/app/aa;->a:Z

    if-eqz v7, :cond_c7

    const-string v7, "LoaderManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  Finished Retaining: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c7
    iput-boolean v3, v0, Landroid/support/v4/app/ab;->i:Z

    iget-boolean v7, v0, Landroid/support/v4/app/ab;->h:Z

    iget-boolean v8, v0, Landroid/support/v4/app/ab;->j:Z

    if-eq v7, v8, :cond_d6

    iget-boolean v7, v0, Landroid/support/v4/app/ab;->h:Z

    if-nez v7, :cond_d6

    invoke-virtual {v0}, Landroid/support/v4/app/ab;->b()V

    :cond_d6
    iget-boolean v7, v0, Landroid/support/v4/app/ab;->h:Z

    if-eqz v7, :cond_e9

    iget-boolean v7, v0, Landroid/support/v4/app/ab;->e:Z

    if-eqz v7, :cond_e9

    iget-boolean v7, v0, Landroid/support/v4/app/ab;->k:Z

    if-nez v7, :cond_e9

    iget-object v7, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/content/k;

    iget-object v8, v0, Landroid/support/v4/app/ab;->g:Ljava/lang/Object;

    invoke-virtual {v0, v7, v8}, Landroid/support/v4/app/ab;->b(Landroid/support/v4/content/k;Ljava/lang/Object;)V

    :cond_e9
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_a1

    :cond_ed
    invoke-virtual {v6}, Landroid/support/v4/app/aa;->g()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_76

    :cond_f4
    return-void
.end method

.method protected onStop()V
    .registers 3

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->f:Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->o()V

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

.method protected t_()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->n()V

    return-void
.end method

.method public x_()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->i:Z

    goto :goto_9
.end method

.method public final y_()Landroid/support/v4/app/r;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;

    return-object v0
.end method
