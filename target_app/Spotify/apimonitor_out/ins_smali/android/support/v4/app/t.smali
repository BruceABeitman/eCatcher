.class final Landroid/support/v4/app/t;
.super Landroid/support/v4/app/r;
.source "SourceFile"
.field static final A:Landroid/view/animation/Interpolator;
.field static final B:Landroid/view/animation/Interpolator;
.field static final C:Landroid/view/animation/Interpolator;
.field static a:Z
.field static final b:Z
.field static final z:Landroid/view/animation/Interpolator;
.field  c:Ljava/util/ArrayList;
.field  d:[Ljava/lang/Runnable;
.field  e:Z
.field  f:Ljava/util/ArrayList;
.field  g:Ljava/util/ArrayList;
.field  h:Ljava/util/ArrayList;
.field  i:Ljava/util/ArrayList;
.field  j:Ljava/util/ArrayList;
.field  k:Ljava/util/ArrayList;
.field  l:Ljava/util/ArrayList;
.field  m:Ljava/util/ArrayList;
.field  n:I
.field  o:Landroid/support/v4/app/FragmentActivity;
.field  p:Landroid/support/v4/app/q;
.field  q:Landroid/support/v4/app/Fragment;
.field  r:Z
.field  s:Z
.field  t:Z
.field  u:Ljava/lang/String;
.field  v:Z
.field  w:Landroid/os/Bundle;
.field  x:Landroid/util/SparseArray;
.field  y:Ljava/lang/Runnable;
.method static constructor <clinit>()V
.registers 5
const/4 v0, 0x0
const/high16 v4, 0x4020
const/high16 v3, 0x3fc0
sput-boolean v0, Landroid/support/v4/app/t;->a:Z
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xb
if-lt v1, v2, :cond_e
const/4 v0, 0x1
:cond_e
sput-boolean v0, Landroid/support/v4/app/t;->b:Z
new-instance v0, Landroid/view/animation/DecelerateInterpolator;
invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V
sput-object v0, Landroid/support/v4/app/t;->z:Landroid/view/animation/Interpolator;
new-instance v0, Landroid/view/animation/DecelerateInterpolator;
invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V
sput-object v0, Landroid/support/v4/app/t;->A:Landroid/view/animation/Interpolator;
new-instance v0, Landroid/view/animation/AccelerateInterpolator;
invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V
sput-object v0, Landroid/support/v4/app/t;->B:Landroid/view/animation/Interpolator;
new-instance v0, Landroid/view/animation/AccelerateInterpolator;
invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V
sput-object v0, Landroid/support/v4/app/t;->C:Landroid/view/animation/Interpolator;
return-void
.end method
.method constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Landroid/support/v4/app/r;-><init>()V
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/app/t;->n:I
iput-object v1, p0, Landroid/support/v4/app/t;->w:Landroid/os/Bundle;
iput-object v1, p0, Landroid/support/v4/app/t;->x:Landroid/util/SparseArray;
new-instance v0, Landroid/support/v4/app/t$1;
invoke-direct {v0, p0}, Landroid/support/v4/app/t$1;-><init>(Landroid/support/v4/app/t;)V
iput-object v0, p0, Landroid/support/v4/app/t;->y:Ljava/lang/Runnable;
return-void
.end method
.method private static a(FF)Landroid/view/animation/Animation;
.registers 5
new-instance v0, Landroid/view/animation/AlphaAnimation;
invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
sget-object v1, Landroid/support/v4/app/t;->A:Landroid/view/animation/Interpolator;
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
sget-object v1, Landroid/support/v4/app/t;->z:Landroid/view/animation/Interpolator;
invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
invoke-virtual {v0, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V
invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
new-instance v0, Landroid/view/animation/AlphaAnimation;
invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
sget-object v1, Landroid/support/v4/app/t;->A:Landroid/view/animation/Interpolator;
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
iget v0, p1, Landroid/support/v4/app/Fragment;->P:I
invoke-static {}, Landroid/support/v4/app/Fragment;->v()Landroid/view/animation/Animation;
iget v0, p1, Landroid/support/v4/app/Fragment;->P:I
if-eqz v0, :cond_1b
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
iget v2, p1, Landroid/support/v4/app/Fragment;->P:I
invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
if-eqz v0, :cond_1b
:goto_1a
return-object v0
:cond_1b
if-nez p2, :cond_1f
move-object v0, v1
goto :goto_1a
:cond_1f
const/4 v0, -0x1
sparse-switch p2, :sswitch_data_88
:goto_23
if-gez v0, :cond_39
move-object v0, v1
goto :goto_1a
:sswitch_27
if-eqz p3, :cond_2b
const/4 v0, 0x1
goto :goto_23
:cond_2b
const/4 v0, 0x2
goto :goto_23
:sswitch_2d
if-eqz p3, :cond_31
const/4 v0, 0x3
goto :goto_23
:cond_31
const/4 v0, 0x4
goto :goto_23
:sswitch_33
if-eqz p3, :cond_37
const/4 v0, 0x5
goto :goto_23
:cond_37
const/4 v0, 0x6
goto :goto_23
:cond_39
packed-switch v0, :pswitch_data_96
if-nez p4, :cond_52
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;
move-result-object v0
if-eqz v0, :cond_52
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;
move-result-object v0
iget p4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I
:cond_52
if-nez p4, :cond_85
move-object v0, v1
goto :goto_1a
:pswitch_56
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
const/high16 v0, 0x3f90
invoke-static {v0, v3, v4, v3}, Landroid/support/v4/app/t;->a(FFFF)Landroid/view/animation/Animation;
move-result-object v0
goto :goto_1a
:pswitch_5f
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
invoke-static {v3, v5, v3, v4}, Landroid/support/v4/app/t;->a(FFFF)Landroid/view/animation/Animation;
move-result-object v0
goto :goto_1a
:pswitch_66
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
invoke-static {v5, v3, v4, v3}, Landroid/support/v4/app/t;->a(FFFF)Landroid/view/animation/Animation;
move-result-object v0
goto :goto_1a
:pswitch_6d
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
const v0, 0x3f89999a
invoke-static {v3, v0, v3, v4}, Landroid/support/v4/app/t;->a(FFFF)Landroid/view/animation/Animation;
move-result-object v0
goto :goto_1a
:pswitch_77
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
invoke-static {v4, v3}, Landroid/support/v4/app/t;->a(FF)Landroid/view/animation/Animation;
move-result-object v0
goto :goto_1a
:pswitch_7e
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
invoke-static {v3, v4}, Landroid/support/v4/app/t;->a(FF)Landroid/view/animation/Animation;
move-result-object v0
goto :goto_1a
:cond_85
move-object v0, v1
goto :goto_1a
nop
:sswitch_data_88
.sparse-switch
0x1001 -> :sswitch_27
0x1003 -> :sswitch_33
0x2002 -> :sswitch_2d
.end sparse-switch
:pswitch_data_96
.packed-switch 0x1
:pswitch_56
:pswitch_5f
:pswitch_66
:pswitch_6d
:pswitch_77
:pswitch_7e
.end packed-switch
.end method
.method private a(ILandroid/support/v4/app/l;)V
.registers 7
monitor-enter p0
:try_start_1
iget-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;
if-nez v0, :cond_c
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;
:cond_c
iget-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge p1, v0, :cond_3d
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_36
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Setting back stack index "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " to "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_36
iget-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;
invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
:goto_3b
monitor-exit p0
return-void
:goto_3d
:cond_3d
if-ge v0, p1, :cond_74
iget-object v1, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;
if-nez v1, :cond_50
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;
:cond_50
sget-boolean v1, Landroid/support/v4/app/t;->a:Z
if-eqz v1, :cond_68
const-string v1, "FragmentManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Adding available back stack index "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_68
iget-object v1, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_3d
:cond_74
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_96
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Adding back stack index "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " with "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_96
iget-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;
invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_9b
.catchall {:try_start_1 .. :try_end_9b} :catchall_9c
goto :goto_3b
:catchall_9c
move-exception v0
monitor-exit p0
throw v0
.end method
.method private a(Ljava/lang/RuntimeException;)V
.registers 7
const-string v0, "FragmentManager"
invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "FragmentManager"
const-string v1, "Activity state:"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v0, Landroid/support/v4/c/d;
const-string v1, "FragmentManager"
invoke-direct {v0, v1}, Landroid/support/v4/c/d;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/io/PrintWriter;
invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
if-eqz v0, :cond_35
:try_start_20
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
const-string v2, "  "
const/4 v3, 0x0
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/String;
invoke-virtual {v0, v2, v3, v1, v4}, Landroid/support/v4/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:try_end_2b
.catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2b} :catch_2c
:goto_2b
throw p1
:catch_2c
move-exception v0
const-string v1, "FragmentManager"
const-string v2, "Failed dumping state"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_2b
:cond_35
:try_start_35
const-string v0, "  "
const/4 v2, 0x0
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/String;
invoke-virtual {p0, v0, v2, v1, v3}, Landroid/support/v4/app/t;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:try_end_3e
.catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3e} :catch_3f
goto :goto_2b
:catch_3f
move-exception v0
const-string v1, "FragmentManager"
const-string v2, "Failed dumping state"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_2b
.end method
.method public static d(I)I
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
.method private d(Landroid/support/v4/app/Fragment;)V
.registers 4
iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;
if-nez v0, :cond_5
:cond_4
:goto_4
return-void
:cond_5
iget-object v0, p0, Landroid/support/v4/app/t;->x:Landroid/util/SparseArray;
if-nez v0, :cond_27
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/t;->x:Landroid/util/SparseArray;
:goto_10
iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;
iget-object v1, p0, Landroid/support/v4/app/t;->x:Landroid/util/SparseArray;
invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V
iget-object v0, p0, Landroid/support/v4/app/t;->x:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->size()I
move-result v0
if-lez v0, :cond_4
iget-object v0, p0, Landroid/support/v4/app/t;->x:Landroid/util/SparseArray;
iput-object v0, p1, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/app/t;->x:Landroid/util/SparseArray;
goto :goto_4
:cond_27
iget-object v0, p0, Landroid/support/v4/app/t;->x:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
goto :goto_10
.end method
.method private e(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/app/t;->w:Landroid/os/Bundle;
if-nez v0, :cond_c
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/t;->w:Landroid/os/Bundle;
:cond_c
iget-object v0, p0, Landroid/support/v4/app/t;->w:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V
iget-object v2, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
if-eqz v2, :cond_22
iget-object v2, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
invoke-virtual {v2}, Landroid/support/v4/app/t;->j()Landroid/os/Parcelable;
move-result-object v2
if-eqz v2, :cond_22
const-string v3, "android:support:fragments"
invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_22
iget-object v0, p0, Landroid/support/v4/app/t;->w:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z
move-result v0
if-nez v0, :cond_5a
iget-object v0, p0, Landroid/support/v4/app/t;->w:Landroid/os/Bundle;
iput-object v1, p0, Landroid/support/v4/app/t;->w:Landroid/os/Bundle;
:goto_2e
iget-object v1, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
if-eqz v1, :cond_35
invoke-direct {p0, p1}, Landroid/support/v4/app/t;->d(Landroid/support/v4/app/Fragment;)V
:cond_35
iget-object v1, p1, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;
if-eqz v1, :cond_47
if-nez v0, :cond_40
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
:cond_40
const-string v1, "android:view_state"
iget-object v2, p1, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
:cond_47
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->U:Z
if-nez v1, :cond_59
if-nez v0, :cond_52
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
:cond_52
const-string v1, "android:user_visible_hint"
iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->U:Z
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
:cond_59
return-object v0
:cond_5a
move-object v0, v1
goto :goto_2e
.end method
.method private r()V
.registers 4
iget-boolean v0, p0, Landroid/support/v4/app/t;->s:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Can not perform this action after onSaveInstanceState"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Landroid/support/v4/app/t;->u:Ljava/lang/String;
if-eqz v0, :cond_27
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not perform this action inside of "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Landroid/support/v4/app/t;->u:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_27
return-void
.end method
.method public final a(Landroid/support/v4/app/l;)I
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;
if-eqz v0, :cond_d
iget-object v0, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-gtz v0, :cond_47
:cond_d
iget-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;
if-nez v0, :cond_18
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;
:cond_18
iget-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
sget-boolean v1, Landroid/support/v4/app/t;->a:Z
if-eqz v1, :cond_40
const-string v1, "FragmentManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Setting back stack index "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " to "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_40
iget-object v1, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;
invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
monitor-exit p0
:goto_46
return v0
:cond_47
iget-object v0, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;
iget-object v1, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
sget-boolean v1, Landroid/support/v4/app/t;->a:Z
if-eqz v1, :cond_7d
const-string v1, "FragmentManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Adding back stack index "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " with "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_7d
iget-object v1, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;
invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
monitor-exit p0
:try_end_83
.catchall {:try_start_1 .. :try_end_83} :catchall_84
goto :goto_46
:catchall_84
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
.registers 6
const/4 v0, 0x0
iget v1, p1, Landroid/support/v4/app/Fragment;->o:I
if-gez v1, :cond_22
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Fragment "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " is not currently in the FragmentManager"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v1}, Landroid/support/v4/app/t;->a(Ljava/lang/RuntimeException;)V
:cond_22
iget v1, p1, Landroid/support/v4/app/Fragment;->j:I
if-lez v1, :cond_31
invoke-direct {p0, p1}, Landroid/support/v4/app/t;->e(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
move-result-object v1
if-eqz v1, :cond_31
new-instance v0, Landroid/support/v4/app/Fragment$SavedState;
invoke-direct {v0, v1}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V
:cond_31
return-object v0
.end method
.method public final a(I)Landroid/support/v4/app/Fragment;
.registers 5
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_22
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_d
if-ltz v1, :cond_22
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1e
iget v2, v0, Landroid/support/v4/app/Fragment;->F:I
if-ne v2, p1, :cond_1e
:goto_1d
:cond_1d
return-object v0
:cond_1e
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_d
:cond_22
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
if-eqz v0, :cond_43
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_2f
if-ltz v1, :cond_43
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_3f
iget v2, v0, Landroid/support/v4/app/Fragment;->F:I
if-eq v2, p1, :cond_1d
:cond_3f
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_2f
:cond_43
const/4 v0, 0x0
goto :goto_1d
.end method
.method public final a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.registers 8
const/4 v0, -0x1
invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v1
if-ne v1, v0, :cond_9
const/4 v0, 0x0
:goto_8
:cond_8
return-object v0
:cond_9
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
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
invoke-direct {p0, v0}, Landroid/support/v4/app/t;->a(Ljava/lang/RuntimeException;)V
:cond_32
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
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
invoke-direct {p0, v2}, Landroid/support/v4/app/t;->a(Ljava/lang/RuntimeException;)V
goto :goto_8
.end method
.method public final a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.registers 5
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_28
if-eqz p1, :cond_28
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_f
if-ltz v1, :cond_28
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_24
iget-object v2, v0, Landroid/support/v4/app/Fragment;->H:Ljava/lang/String;
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_24
:goto_23
:cond_23
return-object v0
:cond_24
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_f
:cond_28
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
if-eqz v0, :cond_4f
if-eqz p1, :cond_4f
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_37
if-ltz v1, :cond_4f
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_4b
iget-object v2, v0, Landroid/support/v4/app/Fragment;->H:Ljava/lang/String;
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
.method public final a()Landroid/support/v4/app/w;
.registers 2
new-instance v0, Landroid/support/v4/app/l;
invoke-direct {v0, p0}, Landroid/support/v4/app/l;-><init>(Landroid/support/v4/app/t;)V
return-object v0
.end method
.method final a(IIIZ)V
.registers 13
const/4 v5, 0x0
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
if-nez v0, :cond_f
if-eqz p1, :cond_f
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No activity"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
if-nez p4, :cond_16
iget v0, p0, Landroid/support/v4/app/t;->n:I
if-ne v0, p1, :cond_16
:cond_15
:goto_15
return-void
:cond_16
iput p1, p0, Landroid/support/v4/app/t;->n:I
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
if-eqz v0, :cond_15
move v6, v5
move v7, v5
:goto_1e
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v6, v0, :cond_48
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/Fragment;
if-eqz v1, :cond_62
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;IIIZ)V
iget-object v0, v1, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;
if-eqz v0, :cond_62
iget-object v0, v1, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;
invoke-virtual {v0}, Landroid/support/v4/app/aa;->b()Z
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
invoke-virtual {p0}, Landroid/support/v4/app/t;->g()V
:cond_4d
iget-boolean v0, p0, Landroid/support/v4/app/t;->r:Z
if-eqz v0, :cond_15
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
if-eqz v0, :cond_15
iget v0, p0, Landroid/support/v4/app/t;->n:I
const/4 v1, 0x5
if-ne v0, v1, :cond_15
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->x_()V
iput-boolean v5, p0, Landroid/support/v4/app/t;->r:Z
goto :goto_15
:cond_62
move v1, v7
goto :goto_43
.end method
.method public final a(Landroid/content/res/Configuration;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_28
const/4 v0, 0x0
move v1, v0
:goto_6
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_28
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_24
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V
iget-object v2, v0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
if-eqz v2, :cond_24
iget-object v0, v0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
invoke-virtual {v0, p1}, Landroid/support/v4/app/t;->a(Landroid/content/res/Configuration;)V
:cond_24
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_6
:cond_28
return-void
.end method
.method public final a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
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
invoke-direct {p0, v0}, Landroid/support/v4/app/t;->a(Ljava/lang/RuntimeException;)V
:cond_21
iget v0, p3, Landroid/support/v4/app/Fragment;->o:I
invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-void
.end method
.method final a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
.registers 12
const/4 v8, 0x1
const/4 v7, 0x0
const/4 v2, 0x0
if-nez p1, :cond_6
:goto_5
:cond_5
return-void
:cond_6
check-cast p1, Landroid/support/v4/app/FragmentManagerState;
iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;
if-eqz v0, :cond_5
if-eqz p2, :cond_62
move v1, v2
:goto_f
invoke-virtual {p2}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_62
invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
sget-boolean v3, Landroid/support/v4/app/t;->a:Z
if-eqz v3, :cond_33
const-string v3, "FragmentManager"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "restoreAllState: re-attaching retained "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_33
iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;
iget v4, v0, Landroid/support/v4/app/Fragment;->o:I
aget-object v3, v3, v4
iput-object v0, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iput-object v7, v0, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;
iput v2, v0, Landroid/support/v4/app/Fragment;->A:I
iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->y:Z
iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->u:Z
iput-object v7, v0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;
iget-object v4, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
if-eqz v4, :cond_5e
iget-object v4, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
iget-object v5, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
iget-object v3, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
const-string v4, "android:view_state"
invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
move-result-object v3
iput-object v3, v0, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;
:cond_5e
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_f
:cond_62
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;
array-length v1, v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
iget-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;
if-eqz v0, :cond_75
iget-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
:cond_75
move v0, v2
:goto_76
iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;
array-length v1, v1
if-ge v0, v1, :cond_163
iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;
aget-object v1, v1, v0
if-eqz v1, :cond_131
iget-object v3, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
iget-object v4, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/Fragment;
iget-object v5, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
if-nez v5, :cond_102
iget-object v5, v1, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;
if-eqz v5, :cond_96
iget-object v5, v1, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v6
invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
:cond_96
iget-object v5, v1, Landroid/support/v4/app/FragmentState;->a:Ljava/lang/String;
iget-object v6, v1, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;
invoke-static {v3, v5, v6}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
move-result-object v5
iput-object v5, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iget-object v5, v1, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
if-eqz v5, :cond_b3
iget-object v5, v1, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v6
invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
iget-object v5, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iget-object v6, v1, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
iput-object v6, v5, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;
:cond_b3
iget-object v5, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iget v6, v1, Landroid/support/v4/app/FragmentState;->b:I
invoke-virtual {v5, v6, v4}, Landroid/support/v4/app/Fragment;->a(ILandroid/support/v4/app/Fragment;)V
iget-object v4, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iget-boolean v5, v1, Landroid/support/v4/app/FragmentState;->c:Z
iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->x:Z
iget-object v4, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->z:Z
iget-object v4, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iget v5, v1, Landroid/support/v4/app/FragmentState;->d:I
iput v5, v4, Landroid/support/v4/app/Fragment;->F:I
iget-object v4, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iget v5, v1, Landroid/support/v4/app/FragmentState;->e:I
iput v5, v4, Landroid/support/v4/app/Fragment;->G:I
iget-object v4, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iget-object v5, v1, Landroid/support/v4/app/FragmentState;->f:Ljava/lang/String;
iput-object v5, v4, Landroid/support/v4/app/Fragment;->H:Ljava/lang/String;
iget-object v4, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iget-boolean v5, v1, Landroid/support/v4/app/FragmentState;->g:Z
iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->K:Z
iget-object v4, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iget-boolean v5, v1, Landroid/support/v4/app/FragmentState;->h:Z
iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->J:Z
iget-object v4, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;
iput-object v3, v4, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/t;
sget-boolean v3, Landroid/support/v4/app/t;->a:Z
if-eqz v3, :cond_102
const-string v3, "FragmentManager"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Instantiated fragment "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_102
iget-object v3, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
sget-boolean v4, Landroid/support/v4/app/t;->a:Z
if-eqz v4, :cond_126
const-string v4, "FragmentManager"
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "restoreAllState: active #"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ": "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_126
iget-object v4, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iput-object v7, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
:goto_12d
add-int/lit8 v0, v0, 0x1
goto/16 :goto_76
:cond_131
iget-object v1, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;
if-nez v1, :cond_141
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;
:cond_141
sget-boolean v1, Landroid/support/v4/app/t;->a:Z
if-eqz v1, :cond_159
const-string v1, "FragmentManager"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "restoreAllState: avail #"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_159
iget-object v1, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_12d
:cond_163
if-eqz p2, :cond_1b3
move v3, v2
:goto_166
invoke-virtual {p2}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v3, v0, :cond_1b3
invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iget v1, v0, Landroid/support/v4/app/Fragment;->s:I
if-ltz v1, :cond_18c
iget v1, v0, Landroid/support/v4/app/Fragment;->s:I
iget-object v4, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
if-ge v1, v4, :cond_190
iget-object v1, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
iget v4, v0, Landroid/support/v4/app/Fragment;->s:I
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/Fragment;
iput-object v1, v0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;
:goto_18c
:cond_18c
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_166
:cond_190
const-string v1, "FragmentManager"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Re-attaching retained fragment "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " target no longer exists: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget v5, v0, Landroid/support/v4/app/Fragment;->s:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
iput-object v7, v0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;
goto :goto_18c
:cond_1b3
iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I
if-eqz v0, :cond_22d
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I
array-length v1, v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
move v1, v2
:goto_1c2
iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I
array-length v0, v0
if-ge v1, v0, :cond_22f
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I
aget v3, v3, v1
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-nez v0, :cond_1f0
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
invoke-direct {p0, v3}, Landroid/support/v4/app/t;->a(Ljava/lang/RuntimeException;)V
:cond_1f0
iput-boolean v8, v0, Landroid/support/v4/app/Fragment;->u:Z
sget-boolean v3, Landroid/support/v4/app/t;->a:Z
if-eqz v3, :cond_214
const-string v3, "FragmentManager"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "restoreAllState: added #"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ": "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_214
iget-object v3, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_224
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Already added!"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_224
iget-object v3, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_1c2
:cond_22d
iput-object v7, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
:cond_22f
iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;
if-eqz v0, :cond_29b
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;
array-length v1, v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;
move v0, v2
:goto_23e
iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;
array-length v1, v1
if-ge v0, v1, :cond_5
iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;
aget-object v1, v1, v0
invoke-virtual {v1, p0}, Landroid/support/v4/app/BackStackState;->a(Landroid/support/v4/app/t;)Landroid/support/v4/app/l;
move-result-object v1
sget-boolean v3, Landroid/support/v4/app/t;->a:Z
if-eqz v3, :cond_28a
const-string v3, "FragmentManager"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "restoreAllState: back stack #"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " (index "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget v5, v1, Landroid/support/v4/app/l;->o:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "): "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
new-instance v3, Landroid/support/v4/c/d;
const-string v4, "FragmentManager"
invoke-direct {v3, v4}, Landroid/support/v4/c/d;-><init>(Ljava/lang/String;)V
new-instance v4, Ljava/io/PrintWriter;
invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
const-string v3, "  "
invoke-virtual {v1, v3, v4, v2}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
:cond_28a
iget-object v3, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget v3, v1, Landroid/support/v4/app/l;->o:I
if-ltz v3, :cond_298
iget v3, v1, Landroid/support/v4/app/l;->o:I
invoke-direct {p0, v3, v1}, Landroid/support/v4/app/t;->a(ILandroid/support/v4/app/l;)V
:cond_298
add-int/lit8 v0, v0, 0x1
goto :goto_23e
:cond_29b
iput-object v7, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;
goto/16 :goto_5
.end method
.method public final a(Landroid/support/v4/app/Fragment;II)V
.registers 10
const/4 v1, 0x1
const/4 v5, 0x0
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_26
const-string v0, "FragmentManager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "remove: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " nesting="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, p1, Landroid/support/v4/app/Fragment;->A:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_26
iget v0, p1, Landroid/support/v4/app/Fragment;->A:I
if-lez v0, :cond_56
move v0, v1
:goto_2b
if-nez v0, :cond_58
move v0, v1
:goto_2e
iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->J:Z
if-eqz v2, :cond_34
if-eqz v0, :cond_55
:cond_34
iget-object v2, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
if-eqz v2, :cond_3d
iget-object v2, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:cond_3d
iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->M:Z
if-eqz v2, :cond_47
iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->N:Z
if-eqz v2, :cond_47
iput-boolean v1, p0, Landroid/support/v4/app/t;->r:Z
:cond_47
iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->u:Z
iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->v:Z
if-eqz v0, :cond_5a
move v2, v5
:goto_4e
move-object v0, p0
move-object v1, p1
move v3, p2
move v4, p3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;IIIZ)V
:cond_55
return-void
:cond_56
move v0, v5
goto :goto_2b
:cond_58
move v0, v5
goto :goto_2e
:cond_5a
move v2, v1
goto :goto_4e
.end method
.method final a(Landroid/support/v4/app/Fragment;IIIZ)V
.registers 16
const/4 v9, 0x4
const/4 v6, 0x3
const/4 v5, 0x1
const/4 v7, 0x0
const/4 v3, 0x0
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->u:Z
if-eqz v0, :cond_d
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->J:Z
if-eqz v0, :cond_10
:cond_d
if-le p2, v5, :cond_10
move p2, v5
:cond_10
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->v:Z
if-eqz v0, :cond_1a
iget v0, p1, Landroid/support/v4/app/Fragment;->j:I
if-le p2, v0, :cond_1a
iget p2, p1, Landroid/support/v4/app/Fragment;->j:I
:cond_1a
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->T:Z
if-eqz v0, :cond_25
iget v0, p1, Landroid/support/v4/app/Fragment;->j:I
if-ge v0, v9, :cond_25
if-le p2, v6, :cond_25
move p2, v6
:cond_25
iget v0, p1, Landroid/support/v4/app/Fragment;->j:I
if-ge v0, p2, :cond_344
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->x:Z
if-eqz v0, :cond_32
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->y:Z
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
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;IIIZ)V
:cond_40
iget v0, p1, Landroid/support/v4/app/Fragment;->j:I
packed-switch v0, :pswitch_data_59e
:cond_45
:goto_45
iput p2, p1, Landroid/support/v4/app/Fragment;->j:I
goto :goto_31
:pswitch_48
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_60
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "moveto CREATED: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_60
iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;
if-eqz v0, :cond_99
iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;
const-string v1, "android:view_state"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
move-result-object v0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;
iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;
const-string v1, "android:target_state"
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/t;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;
iget-object v0, p1, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_86
iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;
const-string v1, "android:target_req_state"
invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p1, Landroid/support/v4/app/Fragment;->t:I
:cond_86
iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;
const-string v1, "android:user_visible_hint"
invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->U:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->U:Z
if-nez v0, :cond_99
iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->T:Z
if-le p2, v6, :cond_99
move p2, v6
:cond_99
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
iput-object v0, p1, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;
iget-object v0, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/Fragment;
iput-object v0, p1, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/Fragment;
iget-object v0, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_d1
iget-object v0, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/Fragment;
iget-object v0, v0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
:goto_a9
iput-object v0, p1, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/t;
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->O:Z
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->O:Z
if-nez v0, :cond_d6
new-instance v0, Landroid/support/v4/app/SuperNotCalledException;
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
invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d1
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/t;
goto :goto_a9
:cond_d6
iget-object v0, p1, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/Fragment;
if-nez v0, :cond_dc
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
:cond_dc
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->L:Z
if-nez v0, :cond_129
iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
if-eqz v1, :cond_ea
iget-object v1, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
iput-boolean v3, v1, Landroid/support/v4/app/t;->s:Z
:cond_ea
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->O:Z
invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->O:Z
if-nez v1, :cond_10e
new-instance v0, Landroid/support/v4/app/SuperNotCalledException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " did not call through to super.onCreate()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10e
if-eqz v0, :cond_129
const-string v1, "android:support:fragments"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
if-eqz v0, :cond_129
iget-object v1, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
if-nez v1, :cond_11f
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->B()V
:cond_11f
iget-object v1, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
invoke-virtual {v1, v0, v7}, Landroid/support/v4/app/t;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
invoke-virtual {v0}, Landroid/support/v4/app/t;->k()V
:cond_129
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->L:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->x:Z
if-eqz v0, :cond_15f
iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
move-result-object v0
iget-object v1, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;
invoke-virtual {p1, v0, v7, v1}, Landroid/support/v4/app/Fragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
move-result-object v0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
iget-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
if-eqz v0, :cond_23e
iget-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
iput-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;
iget-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
invoke-static {v0}, Landroid/support/v4/app/ag;->a(Landroid/view/View;)Landroid/view/ViewGroup;
move-result-object v0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->I:Z
if-eqz v0, :cond_158
iget-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_158
iget-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;
invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V
:pswitch_15f
:goto_15f
:cond_15f
if-le p2, v5, :cond_286
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_179
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "moveto ACTIVITY_CREATED: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_179
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->x:Z
if-nez v0, :cond_210
iget v0, p1, Landroid/support/v4/app/Fragment;->G:I
if-eqz v0, :cond_59a
iget-object v0, p0, Landroid/support/v4/app/t;->p:Landroid/support/v4/app/q;
iget v1, p1, Landroid/support/v4/app/Fragment;->G:I
invoke-interface {v0, v1}, Landroid/support/v4/app/q;->a(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
if-nez v0, :cond_1cc
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->z:Z
if-nez v1, :cond_1cc
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v4, "No view found for id 0x"
invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v4, p1, Landroid/support/v4/app/Fragment;->G:I
invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, " ("
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->k()Landroid/content/res/Resources;
move-result-object v4
iget v8, p1, Landroid/support/v4/app/Fragment;->G:I
invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, ") for fragment "
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v1}, Landroid/support/v4/app/t;->a(Ljava/lang/RuntimeException;)V
:goto_1cc
:cond_1cc
iput-object v0, p1, Landroid/support/v4/app/Fragment;->Q:Landroid/view/ViewGroup;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;
invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
move-result-object v1
iget-object v2, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;
invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/Fragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
move-result-object v1
iput-object v1, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
if-eqz v1, :cond_242
iget-object v1, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
iput-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
invoke-static {v1}, Landroid/support/v4/app/ag;->a(Landroid/view/View;)Landroid/view/ViewGroup;
move-result-object v1
iput-object v1, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
if-eqz v0, :cond_1fe
invoke-direct {p0, p1, p3, v5, p4}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
move-result-object v1
if-eqz v1, :cond_1f9
iget-object v2, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_1f9
iget-object v1, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
:cond_1fe
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->I:Z
if-eqz v0, :cond_209
iget-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_209
iget-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;
invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V
:cond_210
:goto_210
iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
if-eqz v1, :cond_21a
iget-object v1, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
iput-boolean v3, v1, Landroid/support/v4/app/t;->s:Z
:cond_21a
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->O:Z
invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->O:Z
if-nez v0, :cond_245
new-instance v0, Landroid/support/v4/app/SuperNotCalledException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " did not call through to super.onActivityCreated()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V
throw v0
:cond_23e
iput-object v7, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;
goto/16 :goto_15f
:cond_242
iput-object v7, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;
goto :goto_210
:cond_245
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
if-eqz v0, :cond_24e
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
invoke-virtual {v0}, Landroid/support/v4/app/t;->l()V
:cond_24e
iget-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
if-eqz v0, :cond_284
iget-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;
iget-object v0, p1, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;
if-eqz v0, :cond_261
iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;
invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V
iput-object v7, p1, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;
:cond_261
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->O:Z
iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->O:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->O:Z
if-nez v0, :cond_284
new-instance v0, Landroid/support/v4/app/SuperNotCalledException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " did not call through to super.onViewStateRestored()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V
throw v0
:cond_284
iput-object v7, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;
:cond_286
:pswitch_286
if-le p2, v6, :cond_2e3
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_2a0
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "moveto STARTED: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_2a0
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
if-eqz v0, :cond_2ad
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
iput-boolean v3, v0, Landroid/support/v4/app/t;->s:Z
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
invoke-virtual {v0}, Landroid/support/v4/app/t;->h()Z
:cond_2ad
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->O:Z
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->r_()V
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->O:Z
if-nez v0, :cond_2d1
new-instance v0, Landroid/support/v4/app/SuperNotCalledException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " did not call through to super.onStart()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2d1
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
if-eqz v0, :cond_2da
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
invoke-virtual {v0}, Landroid/support/v4/app/t;->m()V
:cond_2da
iget-object v0, p1, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;
if-eqz v0, :cond_2e3
iget-object v0, p1, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;
invoke-virtual {v0}, Landroid/support/v4/app/aa;->g()V
:pswitch_2e3
:cond_2e3
if-le p2, v9, :cond_45
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_2fd
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "moveto RESUMED: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_2fd
iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->w:Z
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
if-eqz v0, :cond_30c
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
iput-boolean v3, v0, Landroid/support/v4/app/t;->s:Z
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
invoke-virtual {v0}, Landroid/support/v4/app/t;->h()Z
:cond_30c
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->O:Z
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->x()V
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->O:Z
if-nez v0, :cond_330
new-instance v0, Landroid/support/v4/app/SuperNotCalledException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " did not call through to super.onResume()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V
throw v0
:cond_330
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
if-eqz v0, :cond_33e
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
invoke-virtual {v0}, Landroid/support/v4/app/t;->n()V
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
invoke-virtual {v0}, Landroid/support/v4/app/t;->h()Z
:cond_33e
iput-object v7, p1, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;
iput-object v7, p1, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;
goto/16 :goto_45
:cond_344
iget v0, p1, Landroid/support/v4/app/Fragment;->j:I
if-le v0, p2, :cond_45
iget v0, p1, Landroid/support/v4/app/Fragment;->j:I
packed-switch v0, :pswitch_data_5ac
goto/16 :goto_45
:cond_34f
:pswitch_34f
:goto_34f
if-gtz p2, :cond_45
iget-boolean v0, p0, Landroid/support/v4/app/t;->t:Z
if-eqz v0, :cond_360
iget-object v0, p1, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;
if-eqz v0, :cond_360
iget-object v0, p1, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;
iput-object v7, p1, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
:cond_360
iget-object v0, p1, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;
if-eqz v0, :cond_4b3
iput p2, p1, Landroid/support/v4/app/Fragment;->l:I
move p2, v5
goto/16 :goto_45
:pswitch_369
const/4 v0, 0x5
if-ge p2, v0, :cond_3b3
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_384
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "movefrom RESUMED: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_384
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
if-eqz v0, :cond_38d
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
invoke-virtual {v0, v9}, Landroid/support/v4/app/t;->c(I)V
:cond_38d
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->O:Z
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->y()V
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->O:Z
if-nez v0, :cond_3b1
new-instance v0, Landroid/support/v4/app/SuperNotCalledException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " did not call through to super.onPause()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3b1
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->w:Z
:pswitch_3b3
:cond_3b3
if-ge p2, v9, :cond_3fa
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_3cd
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "movefrom STARTED: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_3cd
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
if-eqz v0, :cond_3d6
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
invoke-virtual {v0}, Landroid/support/v4/app/t;->o()V
:cond_3d6
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->O:Z
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->s_()V
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->O:Z
if-nez v0, :cond_3fa
new-instance v0, Landroid/support/v4/app/SuperNotCalledException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " did not call through to super.onStop()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3fa
:pswitch_3fa
if-ge p2, v6, :cond_417
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_414
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "movefrom STOPPED: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_414
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->C()V
:cond_417
:pswitch_417
const/4 v0, 0x2
if-ge p2, v0, :cond_34f
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_432
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "movefrom ACTIVITY_CREATED: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_432
iget-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
if-eqz v0, :cond_445
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z
move-result v0
if-nez v0, :cond_445
iget-object v0, p1, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;
if-nez v0, :cond_445
invoke-direct {p0, p1}, Landroid/support/v4/app/t;->d(Landroid/support/v4/app/Fragment;)V
:cond_445
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
if-eqz v0, :cond_44e
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
invoke-virtual {v0, v5}, Landroid/support/v4/app/t;->c(I)V
:cond_44e
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->O:Z
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->f()V
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->O:Z
if-nez v0, :cond_472
new-instance v0, Landroid/support/v4/app/SuperNotCalledException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " did not call through to super.onDestroyView()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V
throw v0
:cond_472
iget-object v0, p1, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;
if-eqz v0, :cond_47b
iget-object v0, p1, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;
invoke-virtual {v0}, Landroid/support/v4/app/aa;->f()V
:cond_47b
iget-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
if-eqz v0, :cond_4ab
iget-object v0, p1, Landroid/support/v4/app/Fragment;->Q:Landroid/view/ViewGroup;
if-eqz v0, :cond_4ab
iget v0, p0, Landroid/support/v4/app/t;->n:I
if-lez v0, :cond_597
iget-boolean v0, p0, Landroid/support/v4/app/t;->t:Z
if-nez v0, :cond_597
invoke-direct {p0, p1, p3, v3, p4}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
move-result-object v0
:goto_48f
if-eqz v0, :cond_4a4
iget-object v1, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
iput-object v1, p1, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;
iput p2, p1, Landroid/support/v4/app/Fragment;->l:I
new-instance v1, Landroid/support/v4/app/t$4;
invoke-direct {v1, p0, p1}, Landroid/support/v4/app/t$4;-><init>(Landroid/support/v4/app/t;Landroid/support/v4/app/Fragment;)V
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
iget-object v1, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_4a4
iget-object v0, p1, Landroid/support/v4/app/Fragment;->Q:Landroid/view/ViewGroup;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_4ab
iput-object v7, p1, Landroid/support/v4/app/Fragment;->Q:Landroid/view/ViewGroup;
iput-object v7, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
iput-object v7, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;
goto/16 :goto_34f
:cond_4b3
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_4cb
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "movefrom CREATED: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_4cb
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->L:Z
if-nez v0, :cond_4fc
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
if-eqz v0, :cond_4d8
iget-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
invoke-virtual {v0}, Landroid/support/v4/app/t;->p()V
:cond_4d8
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->O:Z
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->z()V
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->O:Z
if-nez v0, :cond_4fc
new-instance v0, Landroid/support/v4/app/SuperNotCalledException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Fragment "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " did not call through to super.onDestroy()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4fc
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->O:Z
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->b()V
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->O:Z
if-nez v0, :cond_520
new-instance v0, Landroid/support/v4/app/SuperNotCalledException;
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
invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V
throw v0
:cond_520
if-nez p5, :cond_45
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->L:Z
if-nez v0, :cond_591
iget v0, p1, Landroid/support/v4/app/Fragment;->o:I
if-ltz v0, :cond_45
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_542
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Freeing fragment index "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_542
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
iget v1, p1, Landroid/support/v4/app/Fragment;->o:I
invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;
if-nez v0, :cond_554
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;
:cond_554
iget-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;
iget v1, p1, Landroid/support/v4/app/Fragment;->o:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->p:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->a(Ljava/lang/String;)V
const/4 v0, -0x1
iput v0, p1, Landroid/support/v4/app/Fragment;->o:I
iput-object v7, p1, Landroid/support/v4/app/Fragment;->p:Ljava/lang/String;
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->u:Z
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->v:Z
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->w:Z
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->x:Z
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->y:Z
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->z:Z
iput v3, p1, Landroid/support/v4/app/Fragment;->A:I
iput-object v7, p1, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/t;
iput-object v7, p1, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;
iput v3, p1, Landroid/support/v4/app/Fragment;->F:I
iput v3, p1, Landroid/support/v4/app/Fragment;->G:I
iput-object v7, p1, Landroid/support/v4/app/Fragment;->H:Ljava/lang/String;
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->I:Z
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->J:Z
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->L:Z
iput-object v7, p1, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->W:Z
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->X:Z
goto/16 :goto_45
:cond_591
iput-object v7, p1, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;
iput-object v7, p1, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/t;
goto/16 :goto_45
:cond_597
move-object v0, v7
goto/16 :goto_48f
:cond_59a
move-object v0, v7
goto/16 :goto_1cc
nop
:pswitch_data_59e
.packed-switch 0x0
:pswitch_48
:pswitch_15f
:pswitch_286
:pswitch_286
:pswitch_2e3
.end packed-switch
:pswitch_data_5ac
.packed-switch 0x1
:pswitch_34f
:pswitch_417
:pswitch_3fa
:pswitch_3b3
:pswitch_369
.end packed-switch
.end method
.method public final a(Landroid/support/v4/app/Fragment;Z)V
.registers 7
const/4 v3, 0x1
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
if-nez v0, :cond_c
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
:cond_c
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_24
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "add: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_24
iget v0, p1, Landroid/support/v4/app/Fragment;->o:I
if-gez v0, :cond_67
iget-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;
if-eqz v0, :cond_34
iget-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-gtz v0, :cond_88
:cond_34
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
if-nez v0, :cond_3f
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
:cond_3f
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v1, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/Fragment;
invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(ILandroid/support/v4/app/Fragment;)V
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_4f
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_67
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Allocated fragment index "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_67
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->J:Z
if-nez v0, :cond_c2
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a9
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
:cond_88
iget-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;
iget-object v1, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iget-object v1, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/Fragment;
invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(ILandroid/support/v4/app/Fragment;)V
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
iget v1, p1, Landroid/support/v4/app/Fragment;->o:I
invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
goto :goto_4f
:cond_a9
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->u:Z
const/4 v0, 0x0
iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->v:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z
if-eqz v0, :cond_bd
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->N:Z
if-eqz v0, :cond_bd
iput-boolean v3, p0, Landroid/support/v4/app/t;->r:Z
:cond_bd
if-eqz p2, :cond_c2
invoke-virtual {p0, p1}, Landroid/support/v4/app/t;->c(Landroid/support/v4/app/Fragment;)V
:cond_c2
return-void
.end method
.method public final a(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/q;Landroid/support/v4/app/Fragment;)V
.registers 6
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Already attached"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iput-object p1, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
iput-object p2, p0, Landroid/support/v4/app/t;->p:Landroid/support/v4/app/q;
iput-object p3, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/Fragment;
return-void
.end method
.method public final a(Landroid/support/v4/app/s;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/t;->m:Ljava/util/ArrayList;
if-nez v0, :cond_b
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/t;->m:Ljava/util/ArrayList;
:cond_b
iget-object v0, p0, Landroid/support/v4/app/t;->m:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final a(Ljava/lang/Runnable;Z)V
.registers 5
if-nez p2, :cond_5
invoke-direct {p0}, Landroid/support/v4/app/t;->r()V
:cond_5
monitor-enter p0
:try_start_6
iget-boolean v0, p0, Landroid/support/v4/app/t;->t:Z
if-nez v0, :cond_e
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
if-nez v0, :cond_19
:cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Activity has been destroyed"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_16
:try_end_16
.catchall {:try_start_6 .. :try_end_16} :catchall_16
move-exception v0
monitor-exit p0
throw v0
:cond_19
:try_start_19
iget-object v0, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;
if-nez v0, :cond_24
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;
:cond_24
iget-object v0, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_44
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;
iget-object v1, p0, Landroid/support/v4/app/t;->y:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;
iget-object v1, p0, Landroid/support/v4/app/t;->y:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_44
monitor-exit p0
:try_end_45
.catchall {:try_start_19 .. :try_end_45} :catchall_16
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.registers 13
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
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
if-eqz v0, :cond_272
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v4
if-lez v4, :cond_272
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
if-ge v2, v4, :cond_272
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
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
if-eqz v0, :cond_26d
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "mFragmentId=#"
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v5, v0, Landroid/support/v4/app/Fragment;->F:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, " mContainerId=#"
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v5, v0, Landroid/support/v4/app/Fragment;->G:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, " mTag="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v5, v0, Landroid/support/v4/app/Fragment;->H:Ljava/lang/String;
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "mState="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v5, v0, Landroid/support/v4/app/Fragment;->j:I
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V
const-string v5, " mIndex="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v5, v0, Landroid/support/v4/app/Fragment;->o:I
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V
const-string v5, " mWho="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v5, v0, Landroid/support/v4/app/Fragment;->p:Ljava/lang/String;
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, " mBackStackNesting="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v5, v0, Landroid/support/v4/app/Fragment;->A:I
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "mAdded="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->u:Z
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V
const-string v5, " mRemoving="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->v:Z
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V
const-string v5, " mResumed="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->w:Z
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V
const-string v5, " mFromLayout="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->x:Z
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V
const-string v5, " mInLayout="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->y:Z
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "mHidden="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->I:Z
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V
const-string v5, " mDetached="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->J:Z
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V
const-string v5, " mMenuVisible="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->N:Z
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V
const-string v5, " mHasMenu="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->M:Z
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "mRetainInstance="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->K:Z
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V
const-string v5, " mRetaining="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->L:Z
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V
const-string v5, " mUserVisibleHint="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->U:Z
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V
iget-object v5, v0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/t;
if-eqz v5, :cond_13e
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "mFragmentManager="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v5, v0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/t;
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_13e
iget-object v5, v0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;
if-eqz v5, :cond_14f
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "mActivity="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v5, v0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_14f
iget-object v5, v0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/Fragment;
if-eqz v5, :cond_160
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "mParentFragment="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v5, v0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/Fragment;
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_160
iget-object v5, v0, Landroid/support/v4/app/Fragment;->q:Landroid/os/Bundle;
if-eqz v5, :cond_171
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "mArguments="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v5, v0, Landroid/support/v4/app/Fragment;->q:Landroid/os/Bundle;
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_171
iget-object v5, v0, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;
if-eqz v5, :cond_182
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "mSavedFragmentState="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v5, v0, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_182
iget-object v5, v0, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;
if-eqz v5, :cond_193
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "mSavedViewState="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v5, v0, Landroid/support/v4/app/Fragment;->n:Landroid/util/SparseArray;
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_193
iget-object v5, v0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;
if-eqz v5, :cond_1ae
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "mTarget="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v5, v0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
const-string v5, " mTargetRequestCode="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v5, v0, Landroid/support/v4/app/Fragment;->t:I
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V
:cond_1ae
iget v5, v0, Landroid/support/v4/app/Fragment;->P:I
if-eqz v5, :cond_1bf
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "mNextAnim="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v5, v0, Landroid/support/v4/app/Fragment;->P:I
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V
:cond_1bf
iget-object v5, v0, Landroid/support/v4/app/Fragment;->Q:Landroid/view/ViewGroup;
if-eqz v5, :cond_1d0
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "mContainer="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v5, v0, Landroid/support/v4/app/Fragment;->Q:Landroid/view/ViewGroup;
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_1d0
iget-object v5, v0, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
if-eqz v5, :cond_1e1
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "mView="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v5, v0, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_1e1
iget-object v5, v0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;
if-eqz v5, :cond_1f2
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "mInnerView="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v5, v0, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_1f2
iget-object v5, v0, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;
if-eqz v5, :cond_210
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "mAnimatingAway="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v5, v0, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "mStateAfterAnimating="
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v5, v0, Landroid/support/v4/app/Fragment;->l:I
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V
:cond_210
iget-object v5, v0, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;
if-eqz v5, :cond_234
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "Loader Manager:"
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v5, v0, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "  "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6, p2, p3, p4}, Landroid/support/v4/app/aa;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:cond_234
iget-object v5, v0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
if-eqz v5, :cond_26d
invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Child "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v6, v0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ":"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v0, v0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "  "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v5, p2, p3, p4}, Landroid/support/v4/app/t;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:cond_26d
add-int/lit8 v0, v2, 0x1
move v2, v0
goto/16 :goto_39
:cond_272
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_2ac
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v4
if-lez v4, :cond_2ac
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "Added Fragments:"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move v2, v1
:goto_287
if-ge v2, v4, :cond_2ac
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
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
goto :goto_287
:cond_2ac
iget-object v0, p0, Landroid/support/v4/app/t;->j:Ljava/util/ArrayList;
if-eqz v0, :cond_2e6
iget-object v0, p0, Landroid/support/v4/app/t;->j:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v4
if-lez v4, :cond_2e6
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "Fragments Created Menus:"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move v2, v1
:goto_2c1
if-ge v2, v4, :cond_2e6
iget-object v0, p0, Landroid/support/v4/app/t;->j:Ljava/util/ArrayList;
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
goto :goto_2c1
:cond_2e6
iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;
if-eqz v0, :cond_323
iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v4
if-lez v4, :cond_323
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "Back Stack:"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move v2, v1
:goto_2fb
if-ge v2, v4, :cond_323
iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/l;
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "  #"
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V
const-string v5, ": "
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/support/v4/app/l;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
invoke-virtual {v0, v3, p3}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_2fb
:cond_323
monitor-enter p0
:try_start_324
iget-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;
if-eqz v0, :cond_35a
iget-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v3
if-lez v3, :cond_35a
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "Back Stack Indices:"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move v2, v1
:goto_339
if-ge v2, v3, :cond_35a
iget-object v0, p0, Landroid/support/v4/app/t;->k:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/l;
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v4, "  #"
invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V
const-string v4, ": "
invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_339
:cond_35a
iget-object v0, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;
if-eqz v0, :cond_37b
iget-object v0, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_37b
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mAvailBackStackIndices: "
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_37b
monitor-exit p0
:try_end_37c
.catchall {:try_start_324 .. :try_end_37c} :catchall_3b1
iget-object v0, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;
if-eqz v0, :cond_3b4
iget-object v0, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v2
if-lez v2, :cond_3b4
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "Pending Actions:"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:goto_390
if-ge v1, v2, :cond_3b4
iget-object v0, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;
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
goto :goto_390
:catchall_3b1
move-exception v0
monitor-exit p0
throw v0
:cond_3b4
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "FragmentManager misc state:"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "  mActivity="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "  mContainer="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/t;->p:Landroid/support/v4/app/q;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
iget-object v0, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_3e7
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "  mParent="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/Fragment;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_3e7
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "  mCurState="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/t;->n:I
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V
const-string v0, " mStateSaved="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/t;->s:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mDestroyed="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/t;->t:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
iget-boolean v0, p0, Landroid/support/v4/app/t;->r:Z
if-eqz v0, :cond_419
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "  mNeedMenuInvalidate="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/t;->r:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
:cond_419
iget-object v0, p0, Landroid/support/v4/app/t;->u:Ljava/lang/String;
if-eqz v0, :cond_42a
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "  mNoTransactionsBecause="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/t;->u:Ljava/lang/String;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_42a
iget-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;
if-eqz v0, :cond_44b
iget-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_44b
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "  mAvailIndices: "
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/t;->h:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_44b
return-void
.end method
.method final a(II)Z
.registers 11
const/4 v2, 0x1
const/4 v3, 0x0
iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;
if-nez v0, :cond_7
:goto_6
:cond_6
return v3
:cond_7
if-gez p1, :cond_27
and-int/lit8 v0, p2, 0x1
if-nez v0, :cond_27
iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
if-ltz v0, :cond_6
iget-object v1, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/l;
invoke-virtual {v0, v2}, Landroid/support/v4/app/l;->a(Z)V
:cond_22
invoke-virtual {p0}, Landroid/support/v4/app/t;->i()V
move v3, v2
goto :goto_6
:cond_27
const/4 v0, -0x1
if-ltz p1, :cond_61
iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v1, v0, -0x1
:goto_32
if-ltz v1, :cond_45
iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/l;
if-ltz p1, :cond_42
iget v0, v0, Landroid/support/v4/app/l;->o:I
if-eq p1, v0, :cond_45
:cond_42
add-int/lit8 v1, v1, -0x1
goto :goto_32
:cond_45
if-ltz v1, :cond_6
and-int/lit8 v0, p2, 0x1
if-eqz v0, :cond_60
add-int/lit8 v1, v1, -0x1
:goto_4d
if-ltz v1, :cond_60
iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/l;
if-ltz p1, :cond_60
iget v0, v0, Landroid/support/v4/app/l;->o:I
if-ne p1, v0, :cond_60
add-int/lit8 v1, v1, -0x1
goto :goto_4d
:cond_60
move v0, v1
:cond_61
iget-object v1, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
if-eq v0, v1, :cond_6
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
iget-object v1, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
:goto_78
if-le v1, v0, :cond_86
iget-object v4, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;
invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v4
invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, -0x1
goto :goto_78
:cond_86
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v6, v0, -0x1
move v4, v3
:goto_8d
if-gt v4, v6, :cond_22
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_ab
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v7, "Popping back stack state: "
invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v7
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_ab
invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/l;
if-ne v4, v6, :cond_bb
move v1, v2
:goto_b4
invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Z)V
add-int/lit8 v0, v4, 0x1
move v4, v0
goto :goto_8d
:cond_bb
move v1, v3
goto :goto_b4
.end method
.method public final a(Landroid/view/Menu;)Z
.registers 9
const/4 v5, 0x1
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_3c
move v1, v2
move v3, v2
:goto_8
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_3d
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_38
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->I:Z
if-nez v4, :cond_40
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->M:Z
if-eqz v4, :cond_3e
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->N:Z
if-eqz v4, :cond_3e
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/view/Menu;)V
move v4, v5
:goto_2a
iget-object v6, v0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
if-eqz v6, :cond_35
iget-object v0, v0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
invoke-virtual {v0, p1}, Landroid/support/v4/app/t;->a(Landroid/view/Menu;)Z
move-result v0
or-int/2addr v4, v0
:goto_35
:cond_35
if-eqz v4, :cond_38
move v3, v5
:cond_38
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_8
:cond_3c
move v3, v2
:cond_3d
return v3
:cond_3e
move v4, v2
goto :goto_2a
:cond_40
move v4, v2
goto :goto_35
.end method
.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
.registers 11
const/4 v2, 0x1
const/4 v5, 0x0
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_48
move v4, v5
move v3, v5
:goto_9
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v4, v0, :cond_49
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_6e
iget-boolean v6, v0, Landroid/support/v4/app/Fragment;->I:Z
if-nez v6, :cond_72
iget-boolean v6, v0, Landroid/support/v4/app/Fragment;->M:Z
if-eqz v6, :cond_70
iget-boolean v6, v0, Landroid/support/v4/app/Fragment;->N:Z
if-eqz v6, :cond_70
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/Menu;)V
move v6, v2
:goto_2b
iget-object v7, v0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
if-eqz v7, :cond_36
iget-object v7, v0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
invoke-virtual {v7, p1, p2}, Landroid/support/v4/app/t;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
move-result v7
or-int/2addr v6, v7
:goto_36
:cond_36
if-eqz v6, :cond_6e
if-nez v1, :cond_3f
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
:cond_3f
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
move v0, v2
:goto_43
add-int/lit8 v3, v4, 0x1
move v4, v3
move v3, v0
goto :goto_9
:cond_48
move v3, v5
:cond_49
iget-object v0, p0, Landroid/support/v4/app/t;->j:Ljava/util/ArrayList;
if-eqz v0, :cond_6b
:goto_4d
iget-object v0, p0, Landroid/support/v4/app/t;->j:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v5, v0, :cond_6b
iget-object v0, p0, Landroid/support/v4/app/t;->j:Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v1, :cond_65
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_68
:cond_65
invoke-static {}, Landroid/support/v4/app/Fragment;->A()V
:cond_68
add-int/lit8 v5, v5, 0x1
goto :goto_4d
:cond_6b
iput-object v1, p0, Landroid/support/v4/app/t;->j:Ljava/util/ArrayList;
return v3
:cond_6e
move v0, v3
goto :goto_43
:cond_70
move v6, v5
goto :goto_2b
:cond_72
move v6, v5
goto :goto_36
.end method
.method public final a(Landroid/view/MenuItem;)Z
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_33
move v1, v2
:goto_7
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_33
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_36
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->I:Z
if-nez v4, :cond_34
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->M:Z
if-eqz v4, :cond_23
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->N:Z
:cond_23
iget-object v4, v0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
if-eqz v4, :cond_34
iget-object v0, v0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
invoke-virtual {v0, p1}, Landroid/support/v4/app/t;->a(Landroid/view/MenuItem;)Z
move-result v0
if-eqz v0, :cond_34
move v0, v3
:goto_30
if-eqz v0, :cond_36
move v2, v3
:cond_33
return v2
:cond_34
move v0, v2
goto :goto_30
:cond_36
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_7
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
new-instance v0, Landroid/support/v4/app/t$3;
invoke-direct {v0, p0, p1}, Landroid/support/v4/app/t$3;-><init>(Landroid/support/v4/app/t;I)V
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/t;->a(Ljava/lang/Runnable;Z)V
return-void
.end method
.method public final b(Landroid/support/v4/app/Fragment;)V
.registers 8
const/4 v3, 0x0
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->T:Z
if-eqz v0, :cond_c
iget-boolean v0, p0, Landroid/support/v4/app/t;->e:Z
if-eqz v0, :cond_d
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/t;->v:Z
:cond_c
:goto_c
return-void
:cond_d
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->T:Z
iget v2, p0, Landroid/support/v4/app/t;->n:I
move-object v0, p0
move-object v1, p1
move v4, v3
move v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;IIIZ)V
goto :goto_c
.end method
.method public final b(Landroid/support/v4/app/Fragment;II)V
.registers 8
const/4 v3, 0x1
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_19
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "hide: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_19
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->I:Z
if-nez v0, :cond_47
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->I:Z
iget-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
if-eqz v0, :cond_36
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0, p3}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
move-result-object v0
if-eqz v0, :cond_2f
iget-object v1, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_2f
iget-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_36
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->u:Z
if-eqz v0, :cond_44
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z
if-eqz v0, :cond_44
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->N:Z
if-eqz v0, :cond_44
iput-boolean v3, p0, Landroid/support/v4/app/t;->r:Z
:cond_44
invoke-static {}, Landroid/support/v4/app/Fragment;->r()V
:cond_47
return-void
.end method
.method public final b(Landroid/view/Menu;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_2f
const/4 v0, 0x0
move v1, v0
:goto_6
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_2f
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_2b
iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->I:Z
if-nez v2, :cond_2b
iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->M:Z
if-eqz v2, :cond_22
iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->N:Z
:cond_22
iget-object v2, v0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
if-eqz v2, :cond_2b
iget-object v0, v0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
invoke-virtual {v0, p1}, Landroid/support/v4/app/t;->b(Landroid/view/Menu;)V
:cond_2b
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_6
:cond_2f
return-void
.end method
.method public final b()Z
.registers 2
invoke-virtual {p0}, Landroid/support/v4/app/t;->h()Z
move-result v0
return v0
.end method
.method public final b(Landroid/view/MenuItem;)Z
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_27
move v1, v2
:goto_7
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_27
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_38
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->I:Z
if-nez v4, :cond_36
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/MenuItem;)Z
move-result v4
if-eqz v4, :cond_28
move v0, v3
:goto_24
if-eqz v0, :cond_38
move v2, v3
:cond_27
return v2
:cond_28
iget-object v4, v0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
if-eqz v4, :cond_36
iget-object v0, v0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
invoke-virtual {v0, p1}, Landroid/support/v4/app/t;->b(Landroid/view/MenuItem;)Z
move-result v0
if-eqz v0, :cond_36
move v0, v3
goto :goto_24
:cond_36
move v0, v2
goto :goto_24
:cond_38
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_7
.end method
.method public final c()V
.registers 3
new-instance v0, Landroid/support/v4/app/t$2;
invoke-direct {v0, p0}, Landroid/support/v4/app/t$2;-><init>(Landroid/support/v4/app/t;)V
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/t;->a(Ljava/lang/Runnable;Z)V
return-void
.end method
.method final c(I)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0, v0, v0}, Landroid/support/v4/app/t;->a(IIIZ)V
return-void
.end method
.method final c(Landroid/support/v4/app/Fragment;)V
.registers 8
const/4 v3, 0x0
iget v2, p0, Landroid/support/v4/app/t;->n:I
move-object v0, p0
move-object v1, p1
move v4, v3
move v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;IIIZ)V
return-void
.end method
.method public final c(Landroid/support/v4/app/Fragment;II)V
.registers 9
const/4 v4, 0x1
const/4 v3, 0x0
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_1a
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "show: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1a
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->I:Z
if-eqz v0, :cond_45
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->I:Z
iget-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
if-eqz v0, :cond_34
invoke-direct {p0, p1, p2, v4, p3}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
move-result-object v0
if-eqz v0, :cond_2f
iget-object v1, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_2f
iget-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
:cond_34
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->u:Z
if-eqz v0, :cond_42
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z
if-eqz v0, :cond_42
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->N:Z
if-eqz v0, :cond_42
iput-boolean v4, p0, Landroid/support/v4/app/t;->r:Z
:cond_42
invoke-static {}, Landroid/support/v4/app/Fragment;->r()V
:cond_45
return-void
.end method
.method public final d(Landroid/support/v4/app/Fragment;II)V
.registers 10
const/4 v5, 0x0
const/4 v2, 0x1
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_1a
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "detach: "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1a
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->J:Z
if-nez v0, :cond_58
iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->J:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->u:Z
if-eqz v0, :cond_58
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_45
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_40
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "remove from detach: "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_40
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:cond_45
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z
if-eqz v0, :cond_4f
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->N:Z
if-eqz v0, :cond_4f
iput-boolean v2, p0, Landroid/support/v4/app/t;->r:Z
:cond_4f
iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->u:Z
move-object v0, p0
move-object v1, p1
move v3, p2
move v4, p3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;IIIZ)V
:cond_58
return-void
.end method
.method public final d()Z
.registers 3
invoke-direct {p0}, Landroid/support/v4/app/t;->r()V
invoke-virtual {p0}, Landroid/support/v4/app/t;->h()Z
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;
const/4 v0, -0x1
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/t;->a(II)Z
move-result v0
return v0
.end method
.method public final e()I
.registers 2
iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final e(Landroid/support/v4/app/Fragment;II)V
.registers 10
const/4 v3, 0x1
const/4 v5, 0x0
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_1a
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "attach: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1a
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->J:Z
if-eqz v0, :cond_7e
iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->J:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->u:Z
if-nez v0, :cond_7e
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
if-nez v0, :cond_2f
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
:cond_2f
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4c
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
:cond_4c
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_64
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "add from attach: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_64
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->u:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z
if-eqz v0, :cond_75
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->N:Z
if-eqz v0, :cond_75
iput-boolean v3, p0, Landroid/support/v4/app/t;->r:Z
:cond_75
iget v2, p0, Landroid/support/v4/app/t;->n:I
move-object v0, p0
move-object v1, p1
move v3, p2
move v4, p3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;IIIZ)V
:cond_7e
return-void
.end method
.method public final f()Z
.registers 3
invoke-direct {p0}, Landroid/support/v4/app/t;->r()V
invoke-virtual {p0}, Landroid/support/v4/app/t;->h()Z
iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;
const/4 v0, -0x1
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/t;->a(II)Z
move-result v0
return v0
.end method
.method final g()V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
if-nez v0, :cond_5
:cond_4
return-void
:cond_5
const/4 v0, 0x0
move v1, v0
:goto_7
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_4
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1c
invoke-virtual {p0, v0}, Landroid/support/v4/app/t;->b(Landroid/support/v4/app/Fragment;)V
:cond_1c
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_7
.end method
.method public final h()Z
.registers 7
const/4 v0, 0x1
const/4 v2, 0x0
iget-boolean v1, p0, Landroid/support/v4/app/t;->e:Z
if-eqz v1, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Recursive entry to executePendingTransactions"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v1
iget-object v3, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;
invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
move-result-object v3
if-eq v1, v3, :cond_24
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Must be called from main thread of process"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_24
move v1, v2
:goto_25
monitor-enter p0
:try_start_26
iget-object v3, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;
if-eqz v3, :cond_32
iget-object v3, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-nez v3, :cond_5a
:cond_32
monitor-exit p0
:try_end_33
.catchall {:try_start_26 .. :try_end_33} :catchall_97
iget-boolean v0, p0, Landroid/support/v4/app/t;->v:Z
if-eqz v0, :cond_a5
move v3, v2
move v4, v2
:goto_39
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v3, v0, :cond_9e
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_56
iget-object v5, v0, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;
if-eqz v5, :cond_56
iget-object v0, v0, Landroid/support/v4/app/Fragment;->V:Landroid/support/v4/app/aa;
invoke-virtual {v0}, Landroid/support/v4/app/aa;->b()Z
move-result v0
or-int/2addr v4, v0
:cond_56
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_39
:try_start_5a
:cond_5a
iget-object v1, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v3
iget-object v1, p0, Landroid/support/v4/app/t;->d:[Ljava/lang/Runnable;
if-eqz v1, :cond_69
iget-object v1, p0, Landroid/support/v4/app/t;->d:[Ljava/lang/Runnable;
array-length v1, v1
if-ge v1, v3, :cond_6d
:cond_69
new-array v1, v3, [Ljava/lang/Runnable;
iput-object v1, p0, Landroid/support/v4/app/t;->d:[Ljava/lang/Runnable;
:cond_6d
iget-object v1, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;
iget-object v4, p0, Landroid/support/v4/app/t;->d:[Ljava/lang/Runnable;
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
iget-object v1, p0, Landroid/support/v4/app/t;->c:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
iget-object v1, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;
iget-object v4, p0, Landroid/support/v4/app/t;->y:Ljava/lang/Runnable;
invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
monitor-exit p0
:try_end_83
.catchall {:try_start_5a .. :try_end_83} :catchall_97
iput-boolean v0, p0, Landroid/support/v4/app/t;->e:Z
move v1, v2
:goto_86
if-ge v1, v3, :cond_9a
iget-object v4, p0, Landroid/support/v4/app/t;->d:[Ljava/lang/Runnable;
aget-object v4, v4, v1
invoke-interface {v4}, Ljava/lang/Runnable;->run()V
iget-object v4, p0, Landroid/support/v4/app/t;->d:[Ljava/lang/Runnable;
const/4 v5, 0x0
aput-object v5, v4, v1
add-int/lit8 v1, v1, 0x1
goto :goto_86
:catchall_97
move-exception v0
monitor-exit p0
throw v0
:cond_9a
iput-boolean v2, p0, Landroid/support/v4/app/t;->e:Z
move v1, v0
goto :goto_25
:cond_9e
if-nez v4, :cond_a5
iput-boolean v2, p0, Landroid/support/v4/app/t;->v:Z
invoke-virtual {p0}, Landroid/support/v4/app/t;->g()V
:cond_a5
return v1
.end method
.method final i()V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/t;->m:Ljava/util/ArrayList;
if-eqz v0, :cond_1d
const/4 v0, 0x0
move v1, v0
:goto_6
iget-object v0, p0, Landroid/support/v4/app/t;->m:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_1d
iget-object v0, p0, Landroid/support/v4/app/t;->m:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/s;
invoke-interface {v0}, Landroid/support/v4/app/s;->a()V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_6
:cond_1d
return-void
.end method
.method final j()Landroid/os/Parcelable;
.registers 12
const/4 v1, 0x1
const/4 v3, 0x0
const/4 v4, 0x0
invoke-virtual {p0}, Landroid/support/v4/app/t;->h()Z
sget-boolean v0, Landroid/support/v4/app/t;->b:Z
if-eqz v0, :cond_c
iput-boolean v1, p0, Landroid/support/v4/app/t;->s:Z
:cond_c
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
if-eqz v0, :cond_18
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-gtz v0, :cond_19
:cond_18
:goto_18
return-object v3
:cond_19
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v6
new-array v7, v6, [Landroid/support/v4/app/FragmentState;
move v5, v4
move v2, v4
:goto_23
if-ge v5, v6, :cond_e9
iget-object v0, p0, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1c9
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
invoke-direct {p0, v2}, Landroid/support/v4/app/t;->a(Ljava/lang/RuntimeException;)V
:cond_56
new-instance v2, Landroid/support/v4/app/FragmentState;
invoke-direct {v2, v0}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V
aput-object v2, v7, v5
iget v8, v0, Landroid/support/v4/app/Fragment;->j:I
if-lez v8, :cond_e4
iget-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
if-nez v8, :cond_e4
invoke-direct {p0, v0}, Landroid/support/v4/app/t;->e(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
move-result-object v8
iput-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
iget-object v8, v0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;
if-eqz v8, :cond_b9
iget-object v8, v0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;
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
iget-object v10, v0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v8}, Landroid/support/v4/app/t;->a(Ljava/lang/RuntimeException;)V
:cond_98
iget-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
if-nez v8, :cond_a3
new-instance v8, Landroid/os/Bundle;
invoke-direct {v8}, Landroid/os/Bundle;-><init>()V
iput-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
:cond_a3
iget-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
const-string v9, "android:target_state"
iget-object v10, v0, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v8, v9, v10}, Landroid/support/v4/app/t;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
iget v8, v0, Landroid/support/v4/app/Fragment;->t:I
if-eqz v8, :cond_b9
iget-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
const-string v9, "android:target_req_state"
iget v10, v0, Landroid/support/v4/app/Fragment;->t:I
invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:cond_b9
:goto_b9
sget-boolean v8, Landroid/support/v4/app/t;->a:Z
if-eqz v8, :cond_dd
const-string v8, "FragmentManager"
new-instance v9, Ljava/lang/StringBuilder;
const-string v10, "Saved state of "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v9, ": "
invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_dd
move v0, v1
:goto_de
add-int/lit8 v2, v5, 0x1
move v5, v2
move v2, v0
goto/16 :goto_23
:cond_e4
iget-object v8, v0, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;
iput-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
goto :goto_b9
:cond_e9
if-nez v2, :cond_f8
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_18
const-string v0, "FragmentManager"
const-string v1, "saveAllState: no fragments!"
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_18
:cond_f8
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_16e
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v5
if-lez v5, :cond_16e
new-array v1, v5, [I
move v2, v4
:goto_107
if-ge v2, v5, :cond_16f
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iget v0, v0, Landroid/support/v4/app/Fragment;->o:I
aput v0, v1, v2
aget v0, v1, v2
if-gez v0, :cond_142
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v6, Ljava/lang/StringBuilder;
const-string v8, "Failure saving state: active "
invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v8, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
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
invoke-direct {p0, v0}, Landroid/support/v4/app/t;->a(Ljava/lang/RuntimeException;)V
:cond_142
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_16a
const-string v0, "FragmentManager"
new-instance v6, Ljava/lang/StringBuilder;
const-string v8, "saveAllState: adding fragment #"
invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string v8, ": "
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
iget-object v8, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v8
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_16a
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_107
:cond_16e
move-object v1, v3
:cond_16f
iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;
if-eqz v0, :cond_1bb
iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v5
if-lez v5, :cond_1bb
new-array v3, v5, [Landroid/support/v4/app/BackStackState;
move v2, v4
:goto_17e
if-ge v2, v5, :cond_1bb
new-instance v4, Landroid/support/v4/app/BackStackState;
iget-object v0, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/l;
invoke-direct {v4, v0}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/l;)V
aput-object v4, v3, v2
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_1b7
const-string v0, "FragmentManager"
new-instance v4, Ljava/lang/StringBuilder;
const-string v6, "saveAllState: adding back stack #"
invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v6, ": "
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v6, p0, Landroid/support/v4/app/t;->i:Ljava/util/ArrayList;
invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v6
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1b7
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_17e
:cond_1bb
new-instance v0, Landroid/support/v4/app/FragmentManagerState;
invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V
iput-object v7, v0, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;
iput-object v1, v0, Landroid/support/v4/app/FragmentManagerState;->b:[I
iput-object v3, v0, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;
move-object v3, v0
goto/16 :goto_18
:cond_1c9
move v0, v2
goto/16 :goto_de
.end method
.method public final k()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/t;->s:Z
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v4/app/t;->c(I)V
return-void
.end method
.method public final l()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/t;->s:Z
const/4 v0, 0x2
invoke-virtual {p0, v0}, Landroid/support/v4/app/t;->c(I)V
return-void
.end method
.method public final m()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/t;->s:Z
const/4 v0, 0x4
invoke-virtual {p0, v0}, Landroid/support/v4/app/t;->c(I)V
return-void
.end method
.method public final n()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/t;->s:Z
const/4 v0, 0x5
invoke-virtual {p0, v0}, Landroid/support/v4/app/t;->c(I)V
return-void
.end method
.method public final o()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/t;->s:Z
const/4 v0, 0x3
invoke-virtual {p0, v0}, Landroid/support/v4/app/t;->c(I)V
return-void
.end method
.method public final p()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/t;->t:Z
invoke-virtual {p0}, Landroid/support/v4/app/t;->h()Z
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v4/app/t;->c(I)V
iput-object v1, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
iput-object v1, p0, Landroid/support/v4/app/t;->p:Landroid/support/v4/app/q;
iput-object v1, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/Fragment;
return-void
.end method
.method public final q()V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_28
const/4 v0, 0x0
move v1, v0
:goto_6
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_28
iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_24
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onLowMemory()V
iget-object v2, v0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
if-eqz v2, :cond_24
iget-object v0, v0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/t;
invoke-virtual {v0}, Landroid/support/v4/app/t;->q()V
:cond_24
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_6
:cond_28
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
iget-object v1, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/Fragment;
if-eqz v1, :cond_2f
iget-object v1, p0, Landroid/support/v4/app/t;->q:Landroid/support/v4/app/Fragment;
invoke-static {v1, v0}, Landroid/support/v4/c/c;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
:goto_25
const-string v1, "}}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_2f
iget-object v1, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;
invoke-static {v1, v0}, Landroid/support/v4/c/c;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
goto :goto_25
.end method