.class final Landroid/support/v4/app/o;
.super Landroid/support/v4/app/n;
.source "FragmentManager.java"
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
.field  o:Landroid/support/v4/app/h;
.field  p:Landroid/support/v4/app/m;
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
sput-boolean v0, Landroid/support/v4/app/o;->a:Z
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xb
if-lt v1, v2, :cond_e
const/4 v0, 0x1
:cond_e
sput-boolean v0, Landroid/support/v4/app/o;->b:Z
new-instance v0, Landroid/view/animation/DecelerateInterpolator;
invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V
sput-object v0, Landroid/support/v4/app/o;->z:Landroid/view/animation/Interpolator;
new-instance v0, Landroid/view/animation/DecelerateInterpolator;
invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V
sput-object v0, Landroid/support/v4/app/o;->A:Landroid/view/animation/Interpolator;
new-instance v0, Landroid/view/animation/AccelerateInterpolator;
invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V
sput-object v0, Landroid/support/v4/app/o;->B:Landroid/view/animation/Interpolator;
new-instance v0, Landroid/view/animation/AccelerateInterpolator;
invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V
sput-object v0, Landroid/support/v4/app/o;->C:Landroid/view/animation/Interpolator;
return-void
.end method
.method constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Landroid/support/v4/app/n;-><init>()V
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/app/o;->n:I
iput-object v1, p0, Landroid/support/v4/app/o;->w:Landroid/os/Bundle;
iput-object v1, p0, Landroid/support/v4/app/o;->x:Landroid/util/SparseArray;
new-instance v0, Landroid/support/v4/app/p;
invoke-direct {v0, p0}, Landroid/support/v4/app/p;-><init>(Landroid/support/v4/app/o;)V
iput-object v0, p0, Landroid/support/v4/app/o;->y:Ljava/lang/Runnable;
return-void
.end method
.method private a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
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
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
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
invoke-direct {p0, v0}, Landroid/support/v4/app/o;->a(Ljava/lang/RuntimeException;)V
:cond_32
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
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
invoke-direct {p0, v2}, Landroid/support/v4/app/o;->a(Ljava/lang/RuntimeException;)V
goto :goto_8
.end method
.method private static a(FF)Landroid/view/animation/Animation;
.registers 5
new-instance v0, Landroid/view/animation/AlphaAnimation;
invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
sget-object v1, Landroid/support/v4/app/o;->A:Landroid/view/animation/Interpolator;
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
sget-object v1, Landroid/support/v4/app/o;->z:Landroid/view/animation/Interpolator;
invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
invoke-virtual {v0, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V
invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
new-instance v0, Landroid/view/animation/AlphaAnimation;
invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
sget-object v1, Landroid/support/v4/app/o;->A:Landroid/view/animation/Interpolator;
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
iget v0, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I
invoke-virtual {p1, p2, p3, v0}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;
move-result-object v0
if-eqz v0, :cond_10
:cond_f
:goto_f
return-object v0
:cond_10
iget v0, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I
if-eqz v0, :cond_1e
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
iget v2, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I
invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
if-nez v0, :cond_f
:cond_1e
if-nez p2, :cond_22
move-object v0, v1
goto :goto_f
:cond_22
const/4 v0, -0x1
sparse-switch p2, :sswitch_data_8a
:goto_26
if-gez v0, :cond_3c
move-object v0, v1
goto :goto_f
:sswitch_2a
if-eqz p3, :cond_2e
const/4 v0, 0x1
goto :goto_26
:cond_2e
const/4 v0, 0x2
goto :goto_26
:sswitch_30
if-eqz p3, :cond_34
const/4 v0, 0x3
goto :goto_26
:cond_34
const/4 v0, 0x4
goto :goto_26
:sswitch_36
if-eqz p3, :cond_3a
const/4 v0, 0x5
goto :goto_26
:cond_3a
const/4 v0, 0x6
goto :goto_26
:cond_3c
packed-switch v0, :pswitch_data_98
if-nez p4, :cond_55
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
invoke-virtual {v0}, Landroid/support/v4/app/h;->getWindow()Landroid/view/Window;
move-result-object v0
if-eqz v0, :cond_55
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
invoke-virtual {v0}, Landroid/support/v4/app/h;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;
move-result-object v0
iget p4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I
:cond_55
if-nez p4, :cond_88
move-object v0, v1
goto :goto_f
:pswitch_59
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
const/high16 v0, 0x3f90
invoke-static {v0, v3, v4, v3}, Landroid/support/v4/app/o;->a(FFFF)Landroid/view/animation/Animation;
move-result-object v0
goto :goto_f
:pswitch_62
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
invoke-static {v3, v5, v3, v4}, Landroid/support/v4/app/o;->a(FFFF)Landroid/view/animation/Animation;
move-result-object v0
goto :goto_f
:pswitch_69
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
invoke-static {v5, v3, v4, v3}, Landroid/support/v4/app/o;->a(FFFF)Landroid/view/animation/Animation;
move-result-object v0
goto :goto_f
:pswitch_70
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
const v0, 0x3f89999a
invoke-static {v3, v0, v3, v4}, Landroid/support/v4/app/o;->a(FFFF)Landroid/view/animation/Animation;
move-result-object v0
goto :goto_f
:pswitch_7a
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
invoke-static {v4, v3}, Landroid/support/v4/app/o;->a(FF)Landroid/view/animation/Animation;
move-result-object v0
goto :goto_f
:pswitch_81
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
invoke-static {v3, v4}, Landroid/support/v4/app/o;->a(FF)Landroid/view/animation/Animation;
move-result-object v0
goto :goto_f
:cond_88
move-object v0, v1
goto :goto_f
:sswitch_data_8a
.sparse-switch
0x1001 -> :sswitch_2a
0x1003 -> :sswitch_36
0x2002 -> :sswitch_30
.end sparse-switch
:pswitch_data_98
.packed-switch 0x1
:pswitch_59
:pswitch_62
:pswitch_69
:pswitch_70
:pswitch_7a
:pswitch_81
.end packed-switch
.end method
.method private a(ILandroid/support/v4/app/a;)V
.registers 7
monitor-enter p0
:try_start_1
iget-object v0, p0, Landroid/support/v4/app/o;->k:Ljava/util/ArrayList;
if-nez v0, :cond_c
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/o;->k:Ljava/util/ArrayList;
:cond_c
iget-object v0, p0, Landroid/support/v4/app/o;->k:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge p1, v0, :cond_3d
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
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
iget-object v0, p0, Landroid/support/v4/app/o;->k:Ljava/util/ArrayList;
invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
:goto_3b
monitor-exit p0
return-void
:goto_3d
:cond_3d
if-ge v0, p1, :cond_74
iget-object v1, p0, Landroid/support/v4/app/o;->k:Ljava/util/ArrayList;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Landroid/support/v4/app/o;->l:Ljava/util/ArrayList;
if-nez v1, :cond_50
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Landroid/support/v4/app/o;->l:Ljava/util/ArrayList;
:cond_50
sget-boolean v1, Landroid/support/v4/app/o;->a:Z
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
iget-object v1, p0, Landroid/support/v4/app/o;->l:Ljava/util/ArrayList;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_3d
:cond_74
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
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
iget-object v0, p0, Landroid/support/v4/app/o;->k:Ljava/util/ArrayList;
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
new-instance v0, Landroid/support/v4/b/e;
const-string v1, "FragmentManager"
invoke-direct {v0, v1}, Landroid/support/v4/b/e;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/io/PrintWriter;
invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
if-eqz v0, :cond_35
:try_start_20
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
const-string v2, "  "
const/4 v3, 0x0
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/String;
invoke-virtual {v0, v2, v3, v1, v4}, Landroid/support/v4/app/h;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
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
invoke-virtual {p0, v0, v2, v1, v3}, Landroid/support/v4/app/o;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
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
.method private c(Landroid/support/v4/app/Fragment;)V
.registers 4
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
if-nez v0, :cond_5
:cond_4
:goto_4
return-void
:cond_5
iget-object v0, p0, Landroid/support/v4/app/o;->x:Landroid/util/SparseArray;
if-nez v0, :cond_27
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/o;->x:Landroid/util/SparseArray;
:goto_10
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
iget-object v1, p0, Landroid/support/v4/app/o;->x:Landroid/util/SparseArray;
invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V
iget-object v0, p0, Landroid/support/v4/app/o;->x:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->size()I
move-result v0
if-lez v0, :cond_4
iget-object v0, p0, Landroid/support/v4/app/o;->x:Landroid/util/SparseArray;
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/app/o;->x:Landroid/util/SparseArray;
goto :goto_4
:cond_27
iget-object v0, p0, Landroid/support/v4/app/o;->x:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
goto :goto_10
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
.method private n()V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
if-nez v0, :cond_5
:cond_4
return-void
:cond_5
const/4 v0, 0x0
move v1, v0
:goto_7
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_4
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1c
invoke-virtual {p0, v0}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;)V
:cond_1c
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_7
.end method
.method public final a(Landroid/support/v4/app/a;)I
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Landroid/support/v4/app/o;->l:Ljava/util/ArrayList;
if-eqz v0, :cond_d
iget-object v0, p0, Landroid/support/v4/app/o;->l:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-gtz v0, :cond_47
:cond_d
iget-object v0, p0, Landroid/support/v4/app/o;->k:Ljava/util/ArrayList;
if-nez v0, :cond_18
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/o;->k:Ljava/util/ArrayList;
:cond_18
iget-object v0, p0, Landroid/support/v4/app/o;->k:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
sget-boolean v1, Landroid/support/v4/app/o;->a:Z
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
iget-object v1, p0, Landroid/support/v4/app/o;->k:Ljava/util/ArrayList;
invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
monitor-exit p0
:goto_46
return v0
:cond_47
iget-object v0, p0, Landroid/support/v4/app/o;->l:Ljava/util/ArrayList;
iget-object v1, p0, Landroid/support/v4/app/o;->l:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
sget-boolean v1, Landroid/support/v4/app/o;->a:Z
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
iget-object v1, p0, Landroid/support/v4/app/o;->k:Ljava/util/ArrayList;
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
.method public final a(I)Landroid/support/v4/app/Fragment;
.registers 5
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_22
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_d
if-ltz v1, :cond_22
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1e
iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I
if-ne v2, p1, :cond_1e
:goto_1d
:cond_1d
return-object v0
:cond_1e
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_d
:cond_22
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
if-eqz v0, :cond_43
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_2f
if-ltz v1, :cond_43
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_3f
iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I
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
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_28
if-eqz p1, :cond_28
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_f
if-ltz v1, :cond_28
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_24
iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
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
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
if-eqz v0, :cond_4f
if-eqz p1, :cond_4f
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_37
if-ltz v1, :cond_4f
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_4b
iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
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
new-instance v0, Landroid/support/v4/app/a;
invoke-direct {v0, p0}, Landroid/support/v4/app/a;-><init>(Landroid/support/v4/app/o;)V
return-object v0
.end method
.method final a(IIIZ)V
.registers 13
const/4 v5, 0x0
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
if-nez v0, :cond_f
if-eqz p1, :cond_f
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No activity"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
if-nez p4, :cond_16
iget v0, p0, Landroid/support/v4/app/o;->n:I
if-ne v0, p1, :cond_16
:cond_15
:goto_15
return-void
:cond_16
iput p1, p0, Landroid/support/v4/app/o;->n:I
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
if-eqz v0, :cond_15
move v6, v5
move v7, v5
:goto_1e
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v6, v0, :cond_48
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/Fragment;
if-eqz v1, :cond_62
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;IIIZ)V
iget-object v0, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
if-eqz v0, :cond_62
iget-object v0, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
invoke-virtual {v0}, Landroid/support/v4/app/z;->a()Z
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
invoke-direct {p0}, Landroid/support/v4/app/o;->n()V
:cond_4d
iget-boolean v0, p0, Landroid/support/v4/app/o;->r:Z
if-eqz v0, :cond_15
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
if-eqz v0, :cond_15
iget v0, p0, Landroid/support/v4/app/o;->n:I
const/4 v1, 0x5
if-ne v0, v1, :cond_15
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
invoke-virtual {v0}, Landroid/support/v4/app/h;->supportInvalidateOptionsMenu()V
iput-boolean v5, p0, Landroid/support/v4/app/o;->r:Z
goto :goto_15
:cond_62
move v1, v7
goto :goto_43
.end method
.method public final a(Landroid/content/res/Configuration;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_1f
const/4 v0, 0x0
move v1, v0
:goto_6
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_1f
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1b
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V
:cond_1b
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_6
:cond_1f
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
sget-boolean v3, Landroid/support/v4/app/o;->a:Z
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
iget v4, v0, Landroid/support/v4/app/Fragment;->mIndex:I
aget-object v3, v3, v4
iput-object v0, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iput-object v7, v0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
iput v2, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->mInLayout:Z
iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->mAdded:Z
iput-object v7, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
iget-object v4, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
if-eqz v4, :cond_5e
iget-object v4, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
iget-object v5, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
invoke-virtual {v5}, Landroid/support/v4/app/h;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
iget-object v3, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
const-string v4, "android:view_state"
invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
move-result-object v3
iput-object v3, v0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
:cond_5e
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_f
:cond_62
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;
array-length v1, v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
iget-object v0, p0, Landroid/support/v4/app/o;->h:Ljava/util/ArrayList;
if-eqz v0, :cond_75
iget-object v0, p0, Landroid/support/v4/app/o;->h:Ljava/util/ArrayList;
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
iget-object v3, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
iget-object v4, p0, Landroid/support/v4/app/o;->q:Landroid/support/v4/app/Fragment;
iget-object v5, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
if-nez v5, :cond_102
iget-object v5, v1, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;
if-eqz v5, :cond_96
iget-object v5, v1, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;
invoke-virtual {v3}, Landroid/support/v4/app/h;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v6
invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
:cond_96
iget-object v5, v1, Landroid/support/v4/app/FragmentState;->a:Ljava/lang/String;
iget-object v6, v1, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;
invoke-static {v3, v5, v6}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
move-result-object v5
iput-object v5, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iget-object v5, v1, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
if-eqz v5, :cond_b3
iget-object v5, v1, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
invoke-virtual {v3}, Landroid/support/v4/app/h;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v6
invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
iget-object v5, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iget-object v6, v1, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
iput-object v6, v5, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
:cond_b3
iget-object v5, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iget v6, v1, Landroid/support/v4/app/FragmentState;->b:I
invoke-virtual {v5, v6, v4}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V
iget-object v4, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iget-boolean v5, v1, Landroid/support/v4/app/FragmentState;->c:Z
iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->mFromLayout:Z
iget-object v4, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->mRestored:Z
iget-object v4, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iget v5, v1, Landroid/support/v4/app/FragmentState;->d:I
iput v5, v4, Landroid/support/v4/app/Fragment;->mFragmentId:I
iget-object v4, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iget v5, v1, Landroid/support/v4/app/FragmentState;->e:I
iput v5, v4, Landroid/support/v4/app/Fragment;->mContainerId:I
iget-object v4, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iget-object v5, v1, Landroid/support/v4/app/FragmentState;->f:Ljava/lang/String;
iput-object v5, v4, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
iget-object v4, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iget-boolean v5, v1, Landroid/support/v4/app/FragmentState;->g:Z
iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->mRetainInstance:Z
iget-object v4, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iget-boolean v5, v1, Landroid/support/v4/app/FragmentState;->h:Z
iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->mDetached:Z
iget-object v4, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
iget-object v3, v3, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
iput-object v3, v4, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/o;
sget-boolean v3, Landroid/support/v4/app/o;->a:Z
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
sget-boolean v4, Landroid/support/v4/app/o;->a:Z
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
iget-object v4, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iput-object v7, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;
:goto_12d
add-int/lit8 v0, v0, 0x1
goto/16 :goto_76
:cond_131
iget-object v1, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Landroid/support/v4/app/o;->h:Ljava/util/ArrayList;
if-nez v1, :cond_141
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Landroid/support/v4/app/o;->h:Ljava/util/ArrayList;
:cond_141
sget-boolean v1, Landroid/support/v4/app/o;->a:Z
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
iget-object v1, p0, Landroid/support/v4/app/o;->h:Ljava/util/ArrayList;
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
iget v1, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I
if-ltz v1, :cond_18c
iget v1, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I
iget-object v4, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
if-ge v1, v4, :cond_190
iget-object v1, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
iget v4, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/Fragment;
iput-object v1, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
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
iget v5, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
iput-object v7, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
goto :goto_18c
:cond_1b3
iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I
if-eqz v0, :cond_22d
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I
array-length v1, v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
move v1, v2
:goto_1c2
iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I
array-length v0, v0
if-ge v1, v0, :cond_22f
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
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
invoke-direct {p0, v3}, Landroid/support/v4/app/o;->a(Ljava/lang/RuntimeException;)V
:cond_1f0
iput-boolean v8, v0, Landroid/support/v4/app/Fragment;->mAdded:Z
sget-boolean v3, Landroid/support/v4/app/o;->a:Z
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
iget-object v3, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_224
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Already added!"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_224
iget-object v3, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_1c2
:cond_22d
iput-object v7, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
:cond_22f
iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;
if-eqz v0, :cond_29b
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;
array-length v1, v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;
move v0, v2
:goto_23e
iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;
array-length v1, v1
if-ge v0, v1, :cond_5
iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;
aget-object v1, v1, v0
invoke-virtual {v1, p0}, Landroid/support/v4/app/BackStackState;->a(Landroid/support/v4/app/o;)Landroid/support/v4/app/a;
move-result-object v1
sget-boolean v3, Landroid/support/v4/app/o;->a:Z
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
iget v5, v1, Landroid/support/v4/app/a;->o:I
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
new-instance v3, Landroid/support/v4/b/e;
const-string v4, "FragmentManager"
invoke-direct {v3, v4}, Landroid/support/v4/b/e;-><init>(Ljava/lang/String;)V
new-instance v4, Ljava/io/PrintWriter;
invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
const-string v3, "  "
invoke-virtual {v1, v3, v4, v2}, Landroid/support/v4/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
:cond_28a
iget-object v3, p0, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget v3, v1, Landroid/support/v4/app/a;->o:I
if-ltz v3, :cond_298
iget v3, v1, Landroid/support/v4/app/a;->o:I
invoke-direct {p0, v3, v1}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/a;)V
:cond_298
add-int/lit8 v0, v0, 0x1
goto :goto_23e
:cond_29b
iput-object v7, p0, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;
goto/16 :goto_5
.end method
.method public final a(Landroid/support/v4/app/Fragment;)V
.registers 8
const/4 v3, 0x0
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z
if-eqz v0, :cond_c
iget-boolean v0, p0, Landroid/support/v4/app/o;->e:Z
if-eqz v0, :cond_d
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/o;->v:Z
:cond_c
:goto_c
return-void
:cond_d
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z
iget v2, p0, Landroid/support/v4/app/o;->n:I
move-object v0, p0
move-object v1, p1
move v4, v3
move v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;IIIZ)V
goto :goto_c
.end method
.method public final a(Landroid/support/v4/app/Fragment;II)V
.registers 10
const/4 v1, 0x1
const/4 v5, 0x0
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
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
iget v3, p1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_26
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z
move-result v0
if-nez v0, :cond_55
move v0, v1
:goto_2d
iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
if-eqz v2, :cond_33
if-eqz v0, :cond_54
:cond_33
iget-object v2, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
if-eqz v2, :cond_3c
iget-object v2, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:cond_3c
iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v2, :cond_46
iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eqz v2, :cond_46
iput-boolean v1, p0, Landroid/support/v4/app/o;->r:Z
:cond_46
iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z
if-eqz v0, :cond_57
move v2, v5
:goto_4d
move-object v0, p0
move-object v1, p1
move v3, p2
move v4, p3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;IIIZ)V
:cond_54
return-void
:cond_55
move v0, v5
goto :goto_2d
:cond_57
move v2, v1
goto :goto_4d
.end method
.method final a(Landroid/support/v4/app/Fragment;IIIZ)V
.registers 15
const/4 v8, 0x4
const/4 v6, 0x3
const/4 v3, 0x0
const/4 v5, 0x1
const/4 v7, 0x0
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
if-eqz v0, :cond_d
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
if-eqz v0, :cond_10
:cond_d
if-le p2, v5, :cond_10
move p2, v5
:cond_10
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z
if-eqz v0, :cond_1a
iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I
if-le p2, v0, :cond_1a
iget p2, p1, Landroid/support/v4/app/Fragment;->mState:I
:cond_1a
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z
if-eqz v0, :cond_25
iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I
if-ge v0, v8, :cond_25
if-le p2, v6, :cond_25
move p2, v6
:cond_25
iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I
if-ge v0, p2, :cond_228
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z
if-eqz v0, :cond_32
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mInLayout:Z
if-nez v0, :cond_32
:goto_31
return-void
:cond_32
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;
if-eqz v0, :cond_40
iput-object v7, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;
iget v2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I
move-object v0, p0
move-object v1, p1
move v4, v3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;IIIZ)V
:cond_40
iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I
packed-switch v0, :pswitch_data_3aa
:goto_45
:cond_45
iput p2, p1, Landroid/support/v4/app/Fragment;->mState:I
goto :goto_31
:pswitch_48
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
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
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
if-eqz v0, :cond_99
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
const-string v1, "android:view_state"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
move-result-object v0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
const-string v1, "android:target_state"
invoke-direct {p0, v0, v1}, Landroid/support/v4/app/o;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_86
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
const-string v1, "android:target_req_state"
invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p1, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I
:cond_86
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
const-string v1, "android:user_visible_hint"
invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z
if-nez v0, :cond_99
iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z
if-le p2, v6, :cond_99
move p2, v6
:cond_99
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
iget-object v0, p0, Landroid/support/v4/app/o;->q:Landroid/support/v4/app/Fragment;
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;
iget-object v0, p0, Landroid/support/v4/app/o;->q:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_d1
iget-object v0, p0, Landroid/support/v4/app/o;->q:Landroid/support/v4/app/Fragment;
iget-object v0, v0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/o;
:goto_a9
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/o;
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mCalled:Z
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z
if-nez v0, :cond_d6
new-instance v0, Landroid/support/v4/app/aq;
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
invoke-direct {v0, v1}, Landroid/support/v4/app/aq;-><init>(Ljava/lang/String;)V
throw v0
:cond_d1
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
iget-object v0, v0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
goto :goto_a9
:cond_d6
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;
if-nez v0, :cond_df
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
invoke-virtual {v0, p1}, Landroid/support/v4/app/h;->onAttachFragment(Landroid/support/v4/app/Fragment;)V
:cond_df
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z
if-nez v0, :cond_e8
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performCreate(Landroid/os/Bundle;)V
:cond_e8
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z
if-eqz v0, :cond_11e
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
move-result-object v0
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {p1, v0, v7, v1}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
move-result-object v0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v0, :cond_221
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-static {v0}, Landroid/support/v4/app/ab;->a(Landroid/view/View;)Landroid/view/ViewGroup;
move-result-object v0
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z
if-eqz v0, :cond_117
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_117
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
:pswitch_11e
:goto_11e
:cond_11e
if-le p2, v5, :cond_1df
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
if-eqz v0, :cond_138
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "moveto ACTIVITY_CREATED: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_138
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z
if-nez v0, :cond_1cf
iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I
if-eqz v0, :cond_3a7
iget-object v0, p0, Landroid/support/v4/app/o;->p:Landroid/support/v4/app/m;
iget v1, p1, Landroid/support/v4/app/Fragment;->mContainerId:I
invoke-interface {v0, v1}, Landroid/support/v4/app/m;->a(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
if-nez v0, :cond_18b
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRestored:Z
if-nez v1, :cond_18b
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "No view found for id 0x"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, p1, Landroid/support/v4/app/Fragment;->mContainerId:I
invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " ("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;
move-result-object v3
iget v4, p1, Landroid/support/v4/app/Fragment;->mContainerId:I
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
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
invoke-direct {p0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/RuntimeException;)V
:cond_18b
:goto_18b
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
move-result-object v1
iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
move-result-object v1
iput-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v1, :cond_225
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
iput-object v1, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-static {v1}, Landroid/support/v4/app/ab;->a(Landroid/view/View;)Landroid/view/ViewGroup;
move-result-object v1
iput-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v0, :cond_1bd
invoke-direct {p0, p1, p3, v5, p4}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
move-result-object v1
if-eqz v1, :cond_1b8
iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_1b8
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
:cond_1bd
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z
if-eqz v0, :cond_1c8
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_1c8
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
:goto_1cf
:cond_1cf
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v0, :cond_1dd
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V
:cond_1dd
iput-object v7, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
:cond_1df
:pswitch_1df
if-le p2, v6, :cond_1fc
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
if-eqz v0, :cond_1f9
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "moveto STARTED: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1f9
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStart()V
:cond_1fc
:pswitch_1fc
if-le p2, v8, :cond_45
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
if-eqz v0, :cond_216
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "moveto RESUMED: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_216
iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mResumed:Z
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performResume()V
iput-object v7, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
iput-object v7, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
goto/16 :goto_45
:cond_221
iput-object v7, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
goto/16 :goto_11e
:cond_225
iput-object v7, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
goto :goto_1cf
:cond_228
iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I
if-le v0, p2, :cond_45
iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I
packed-switch v0, :pswitch_data_3b8
goto/16 :goto_45
:pswitch_233
:goto_233
:cond_233
if-gtz p2, :cond_45
iget-boolean v0, p0, Landroid/support/v4/app/o;->t:Z
if-eqz v0, :cond_244
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;
if-eqz v0, :cond_244
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;
iput-object v7, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
:cond_244
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;
if-eqz v0, :cond_310
iput p2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I
move p2, v5
goto/16 :goto_45
:pswitch_24d
const/4 v0, 0x5
if-ge p2, v0, :cond_26d
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
if-eqz v0, :cond_268
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "movefrom RESUMED: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_268
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performPause()V
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mResumed:Z
:cond_26d
:pswitch_26d
if-ge p2, v8, :cond_28a
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
if-eqz v0, :cond_287
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "movefrom STARTED: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_287
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStop()V
:cond_28a
:pswitch_28a
if-ge p2, v6, :cond_2a7
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
if-eqz v0, :cond_2a4
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "movefrom STOPPED: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_2a4
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performReallyStop()V
:cond_2a7
:pswitch_2a7
const/4 v0, 0x2
if-ge p2, v0, :cond_233
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
if-eqz v0, :cond_2c2
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "movefrom ACTIVITY_CREATED: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_2c2
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v0, :cond_2d5
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
invoke-virtual {v0}, Landroid/support/v4/app/h;->isFinishing()Z
move-result v0
if-nez v0, :cond_2d5
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
if-nez v0, :cond_2d5
invoke-direct {p0, p1}, Landroid/support/v4/app/o;->c(Landroid/support/v4/app/Fragment;)V
:cond_2d5
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroyView()V
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v0, :cond_308
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;
if-eqz v0, :cond_308
iget v0, p0, Landroid/support/v4/app/o;->n:I
if-lez v0, :cond_3a4
iget-boolean v0, p0, Landroid/support/v4/app/o;->t:Z
if-nez v0, :cond_3a4
invoke-direct {p0, p1, p3, v3, p4}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
move-result-object v0
:goto_2ec
if-eqz v0, :cond_301
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
iput-object v1, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;
iput p2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I
new-instance v1, Landroid/support/v4/app/r;
invoke-direct {v1, p0, p1}, Landroid/support/v4/app/r;-><init>(Landroid/support/v4/app/o;Landroid/support/v4/app/Fragment;)V
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_301
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_308
iput-object v7, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;
iput-object v7, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
iput-object v7, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
goto/16 :goto_233
:cond_310
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
if-eqz v0, :cond_328
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "movefrom CREATED: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_328
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z
if-nez v0, :cond_32f
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroy()V
:cond_32f
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mCalled:Z
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onDetach()V
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z
if-nez v0, :cond_353
new-instance v0, Landroid/support/v4/app/aq;
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
invoke-direct {v0, v1}, Landroid/support/v4/app/aq;-><init>(Ljava/lang/String;)V
throw v0
:cond_353
if-nez p5, :cond_45
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z
if-nez v0, :cond_39e
iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I
if-ltz v0, :cond_45
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
if-eqz v0, :cond_375
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Freeing fragment index "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_375
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I
invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Landroid/support/v4/app/o;->h:Ljava/util/ArrayList;
if-nez v0, :cond_387
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/o;->h:Ljava/util/ArrayList;
:cond_387
iget-object v0, p0, Landroid/support/v4/app/o;->h:Ljava/util/ArrayList;
iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/support/v4/app/h;->invalidateSupportFragment(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->initState()V
goto/16 :goto_45
:cond_39e
iput-object v7, p1, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/h;
iput-object v7, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/o;
goto/16 :goto_45
:cond_3a4
move-object v0, v7
goto/16 :goto_2ec
:cond_3a7
move-object v0, v7
goto/16 :goto_18b
:pswitch_data_3b8
.packed-switch 0x1
:pswitch_233
:pswitch_2a7
:pswitch_28a
:pswitch_26d
:pswitch_24d
.end packed-switch
:pswitch_data_3aa
.packed-switch 0x0
:pswitch_48
:pswitch_11e
:pswitch_1df
:pswitch_1df
:pswitch_1fc
.end packed-switch
.end method
.method public final a(Landroid/support/v4/app/Fragment;Z)V
.registers 7
const/4 v3, 0x1
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
if-nez v0, :cond_c
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
:cond_c
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
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
iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I
if-gez v0, :cond_67
iget-object v0, p0, Landroid/support/v4/app/o;->h:Ljava/util/ArrayList;
if-eqz v0, :cond_34
iget-object v0, p0, Landroid/support/v4/app/o;->h:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-gtz v0, :cond_88
:cond_34
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
if-nez v0, :cond_3f
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
:cond_3f
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v1, p0, Landroid/support/v4/app/o;->q:Landroid/support/v4/app/Fragment;
invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_4f
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
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
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
if-nez v0, :cond_c2
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
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
iget-object v0, p0, Landroid/support/v4/app/o;->h:Ljava/util/ArrayList;
iget-object v1, p0, Landroid/support/v4/app/o;->h:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iget-object v1, p0, Landroid/support/v4/app/o;->q:Landroid/support/v4/app/Fragment;
invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I
invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
goto :goto_4f
:cond_a9
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
const/4 v0, 0x0
iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v0, :cond_bd
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eqz v0, :cond_bd
iput-boolean v3, p0, Landroid/support/v4/app/o;->r:Z
:cond_bd
if-eqz p2, :cond_c2
invoke-virtual {p0, p1}, Landroid/support/v4/app/o;->b(Landroid/support/v4/app/Fragment;)V
:cond_c2
return-void
.end method
.method public final a(Landroid/support/v4/app/h;Landroid/support/v4/app/m;Landroid/support/v4/app/Fragment;)V
.registers 6
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Already attached"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iput-object p1, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
iput-object p2, p0, Landroid/support/v4/app/o;->p:Landroid/support/v4/app/m;
iput-object p3, p0, Landroid/support/v4/app/o;->q:Landroid/support/v4/app/Fragment;
return-void
.end method
.method public final a(Ljava/lang/Runnable;Z)V
.registers 5
if-nez p2, :cond_5
invoke-virtual {p0}, Landroid/support/v4/app/o;->c()V
:cond_5
monitor-enter p0
:try_start_6
iget-boolean v0, p0, Landroid/support/v4/app/o;->t:Z
if-nez v0, :cond_e
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
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
iget-object v0, p0, Landroid/support/v4/app/o;->c:Ljava/util/ArrayList;
if-nez v0, :cond_24
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/o;->c:Ljava/util/ArrayList;
:cond_24
iget-object v0, p0, Landroid/support/v4/app/o;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Landroid/support/v4/app/o;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_44
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
iget-object v0, v0, Landroid/support/v4/app/h;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Landroid/support/v4/app/o;->y:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
iget-object v0, v0, Landroid/support/v4/app/h;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Landroid/support/v4/app/o;->y:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_44
monitor-exit p0
:try_end_45
.catchall {:try_start_19 .. :try_end_45} :catchall_16
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
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
if-eqz v0, :cond_5f
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
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
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
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
invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:cond_5b
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_39
:cond_5f
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_99
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v4
if-lez v4, :cond_99
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "Added Fragments:"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move v2, v1
:goto_74
if-ge v2, v4, :cond_99
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
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
iget-object v0, p0, Landroid/support/v4/app/o;->j:Ljava/util/ArrayList;
if-eqz v0, :cond_d3
iget-object v0, p0, Landroid/support/v4/app/o;->j:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v4
if-lez v4, :cond_d3
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "Fragments Created Menus:"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move v2, v1
:goto_ae
if-ge v2, v4, :cond_d3
iget-object v0, p0, Landroid/support/v4/app/o;->j:Ljava/util/ArrayList;
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
iget-object v0, p0, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;
if-eqz v0, :cond_110
iget-object v0, p0, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v4
if-lez v4, :cond_110
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "Back Stack:"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move v2, v1
:goto_e8
if-ge v2, v4, :cond_110
iget-object v0, p0, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/a;
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v5, "  #"
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V
const-string v5, ": "
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/support/v4/app/a;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
invoke-virtual {v0, v3, p3}, Landroid/support/v4/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_e8
:cond_110
monitor-enter p0
:try_start_111
iget-object v0, p0, Landroid/support/v4/app/o;->k:Ljava/util/ArrayList;
if-eqz v0, :cond_147
iget-object v0, p0, Landroid/support/v4/app/o;->k:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v3
if-lez v3, :cond_147
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "Back Stack Indices:"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
move v2, v1
:goto_126
if-ge v2, v3, :cond_147
iget-object v0, p0, Landroid/support/v4/app/o;->k:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/a;
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
iget-object v0, p0, Landroid/support/v4/app/o;->l:Ljava/util/ArrayList;
if-eqz v0, :cond_168
iget-object v0, p0, Landroid/support/v4/app/o;->l:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_168
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mAvailBackStackIndices: "
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/o;->l:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_168
monitor-exit p0
:try_end_169
.catchall {:try_start_111 .. :try_end_169} :catchall_19e
iget-object v0, p0, Landroid/support/v4/app/o;->c:Ljava/util/ArrayList;
if-eqz v0, :cond_1a1
iget-object v0, p0, Landroid/support/v4/app/o;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v2
if-lez v2, :cond_1a1
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "Pending Actions:"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:goto_17d
if-ge v1, v2, :cond_1a1
iget-object v0, p0, Landroid/support/v4/app/o;->c:Ljava/util/ArrayList;
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
iget-object v0, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "  mContainer="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/o;->p:Landroid/support/v4/app/m;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
iget-object v0, p0, Landroid/support/v4/app/o;->q:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1d4
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "  mParent="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/o;->q:Landroid/support/v4/app/Fragment;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:cond_1d4
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "  mCurState="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/o;->n:I
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V
const-string v0, " mStateSaved="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/o;->s:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
const-string v0, " mDestroyed="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/o;->t:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
iget-boolean v0, p0, Landroid/support/v4/app/o;->r:Z
if-eqz v0, :cond_206
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "  mNeedMenuInvalidate="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/o;->r:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
:cond_206
iget-object v0, p0, Landroid/support/v4/app/o;->u:Ljava/lang/String;
if-eqz v0, :cond_217
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "  mNoTransactionsBecause="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/o;->u:Ljava/lang/String;
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_217
iget-object v0, p0, Landroid/support/v4/app/o;->h:Ljava/util/ArrayList;
if-eqz v0, :cond_238
iget-object v0, p0, Landroid/support/v4/app/o;->h:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_238
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "  mAvailIndices: "
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/o;->h:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_238
return-void
.end method
.method final a(II)Z
.registers 11
const/4 v2, 0x1
const/4 v3, 0x0
iget-object v0, p0, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;
if-nez v0, :cond_7
:goto_6
:cond_6
return v3
:cond_7
if-gez p1, :cond_27
and-int/lit8 v0, p2, 0x1
if-nez v0, :cond_27
iget-object v0, p0, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
if-ltz v0, :cond_6
iget-object v1, p0, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/a;
invoke-virtual {v0, v2}, Landroid/support/v4/app/a;->a(Z)V
:cond_22
invoke-virtual {p0}, Landroid/support/v4/app/o;->e()V
move v3, v2
goto :goto_6
:cond_27
const/4 v0, -0x1
if-ltz p1, :cond_61
iget-object v0, p0, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v1, v0, -0x1
:goto_32
if-ltz v1, :cond_45
iget-object v0, p0, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/a;
if-ltz p1, :cond_42
iget v0, v0, Landroid/support/v4/app/a;->o:I
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
iget-object v0, p0, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/a;
if-ltz p1, :cond_60
iget v0, v0, Landroid/support/v4/app/a;->o:I
if-ne p1, v0, :cond_60
add-int/lit8 v1, v1, -0x1
goto :goto_4d
:cond_60
move v0, v1
:cond_61
iget-object v1, p0, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
if-eq v0, v1, :cond_6
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
iget-object v1, p0, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
:goto_78
if-le v1, v0, :cond_86
iget-object v4, p0, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;
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
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
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
check-cast v0, Landroid/support/v4/app/a;
if-ne v4, v6, :cond_bb
move v1, v2
:goto_b4
invoke-virtual {v0, v1}, Landroid/support/v4/app/a;->a(Z)V
add-int/lit8 v0, v4, 0x1
move v4, v0
goto :goto_8d
:cond_bb
move v1, v3
goto :goto_b4
.end method
.method public final a(Landroid/view/Menu;)Z
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
if-eqz v1, :cond_24
move v1, v0
move v2, v0
:goto_7
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_25
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_20
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z
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
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_31
move v3, v4
move v2, v4
:goto_8
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v3, v0, :cond_32
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_2b
invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
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
iget-object v0, p0, Landroid/support/v4/app/o;->j:Ljava/util/ArrayList;
if-eqz v0, :cond_54
:goto_36
iget-object v0, p0, Landroid/support/v4/app/o;->j:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v4, v0, :cond_54
iget-object v0, p0, Landroid/support/v4/app/o;->j:Ljava/util/ArrayList;
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v1, :cond_4e
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_51
:cond_4e
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V
:cond_51
add-int/lit8 v4, v4, 0x1
goto :goto_36
:cond_54
iput-object v1, p0, Landroid/support/v4/app/o;->j:Ljava/util/ArrayList;
return v2
.end method
.method public final a(Landroid/view/MenuItem;)Z
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_1f
move v1, v2
:goto_6
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_1f
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_20
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z
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
new-instance v0, Landroid/support/v4/app/q;
invoke-direct {v0, p0, p1}, Landroid/support/v4/app/q;-><init>(Landroid/support/v4/app/o;I)V
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/Runnable;Z)V
return-void
.end method
.method final b(Landroid/support/v4/app/Fragment;)V
.registers 8
const/4 v3, 0x0
iget v2, p0, Landroid/support/v4/app/o;->n:I
move-object v0, p0
move-object v1, p1
move v4, v3
move v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;IIIZ)V
return-void
.end method
.method public final b(Landroid/support/v4/app/Fragment;II)V
.registers 8
const/4 v3, 0x1
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
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
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z
if-nez v0, :cond_47
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mHidden:Z
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v0, :cond_36
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0, p3}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
move-result-object v0
if-eqz v0, :cond_2f
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_2f
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_36
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
if-eqz v0, :cond_44
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v0, :cond_44
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eqz v0, :cond_44
iput-boolean v3, p0, Landroid/support/v4/app/o;->r:Z
:cond_44
invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V
:cond_47
return-void
.end method
.method public final b(Landroid/view/Menu;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_1f
const/4 v0, 0x0
move v1, v0
:goto_6
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_1f
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1b
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V
:cond_1b
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_6
:cond_1f
return-void
.end method
.method public final b()Z
.registers 2
invoke-virtual {p0}, Landroid/support/v4/app/o;->d()Z
move-result v0
return v0
.end method
.method public final b(Landroid/view/MenuItem;)Z
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_1f
move v1, v2
:goto_6
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_1f
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_20
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z
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
.method final c()V
.registers 4
iget-boolean v0, p0, Landroid/support/v4/app/o;->s:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Can not perform this action after onSaveInstanceState"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Landroid/support/v4/app/o;->u:Ljava/lang/String;
if-eqz v0, :cond_27
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not perform this action inside of "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Landroid/support/v4/app/o;->u:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_27
return-void
.end method
.method final c(I)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0, v0, v0}, Landroid/support/v4/app/o;->a(IIIZ)V
return-void
.end method
.method public final c(Landroid/support/v4/app/Fragment;II)V
.registers 9
const/4 v4, 0x1
const/4 v3, 0x0
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
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
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z
if-eqz v0, :cond_45
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mHidden:Z
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v0, :cond_34
invoke-direct {p0, p1, p2, v4, p3}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
move-result-object v0
if-eqz v0, :cond_2f
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_2f
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
:cond_34
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
if-eqz v0, :cond_42
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v0, :cond_42
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eqz v0, :cond_42
iput-boolean v4, p0, Landroid/support/v4/app/o;->r:Z
:cond_42
invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V
:cond_45
return-void
.end method
.method public final d(Landroid/support/v4/app/Fragment;II)V
.registers 10
const/4 v5, 0x0
const/4 v2, 0x1
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
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
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
if-nez v0, :cond_58
iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
if-eqz v0, :cond_58
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_45
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
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
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:cond_45
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v0, :cond_4f
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eqz v0, :cond_4f
iput-boolean v2, p0, Landroid/support/v4/app/o;->r:Z
:cond_4f
iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
move-object v0, p0
move-object v1, p1
move v3, p2
move v4, p3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;IIIZ)V
:cond_58
return-void
.end method
.method public final d()Z
.registers 7
const/4 v0, 0x1
const/4 v2, 0x0
iget-boolean v1, p0, Landroid/support/v4/app/o;->e:Z
if-eqz v1, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Recursive entry to executePendingTransactions"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v1
iget-object v3, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
iget-object v3, v3, Landroid/support/v4/app/h;->mHandler:Landroid/os/Handler;
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
iget-object v3, p0, Landroid/support/v4/app/o;->c:Ljava/util/ArrayList;
if-eqz v3, :cond_32
iget-object v3, p0, Landroid/support/v4/app/o;->c:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-nez v3, :cond_5a
:cond_32
monitor-exit p0
:try_end_33
.catchall {:try_start_26 .. :try_end_33} :catchall_97
iget-boolean v0, p0, Landroid/support/v4/app/o;->v:Z
if-eqz v0, :cond_a5
move v3, v2
move v4, v2
:goto_39
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v3, v0, :cond_9e
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_56
iget-object v5, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
if-eqz v5, :cond_56
iget-object v0, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/z;
invoke-virtual {v0}, Landroid/support/v4/app/z;->a()Z
move-result v0
or-int/2addr v4, v0
:cond_56
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_39
:try_start_5a
:cond_5a
iget-object v1, p0, Landroid/support/v4/app/o;->c:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v3
iget-object v1, p0, Landroid/support/v4/app/o;->d:[Ljava/lang/Runnable;
if-eqz v1, :cond_69
iget-object v1, p0, Landroid/support/v4/app/o;->d:[Ljava/lang/Runnable;
array-length v1, v1
if-ge v1, v3, :cond_6d
:cond_69
new-array v1, v3, [Ljava/lang/Runnable;
iput-object v1, p0, Landroid/support/v4/app/o;->d:[Ljava/lang/Runnable;
:cond_6d
iget-object v1, p0, Landroid/support/v4/app/o;->c:Ljava/util/ArrayList;
iget-object v4, p0, Landroid/support/v4/app/o;->d:[Ljava/lang/Runnable;
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
iget-object v1, p0, Landroid/support/v4/app/o;->c:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
iget-object v1, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
iget-object v1, v1, Landroid/support/v4/app/h;->mHandler:Landroid/os/Handler;
iget-object v4, p0, Landroid/support/v4/app/o;->y:Ljava/lang/Runnable;
invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
monitor-exit p0
:try_end_83
.catchall {:try_start_5a .. :try_end_83} :catchall_97
iput-boolean v0, p0, Landroid/support/v4/app/o;->e:Z
move v1, v2
:goto_86
if-ge v1, v3, :cond_9a
iget-object v4, p0, Landroid/support/v4/app/o;->d:[Ljava/lang/Runnable;
aget-object v4, v4, v1
invoke-interface {v4}, Ljava/lang/Runnable;->run()V
iget-object v4, p0, Landroid/support/v4/app/o;->d:[Ljava/lang/Runnable;
const/4 v5, 0x0
aput-object v5, v4, v1
add-int/lit8 v1, v1, 0x1
goto :goto_86
:catchall_97
move-exception v0
monitor-exit p0
throw v0
:cond_9a
iput-boolean v2, p0, Landroid/support/v4/app/o;->e:Z
move v1, v0
goto :goto_25
:cond_9e
if-nez v4, :cond_a5
iput-boolean v2, p0, Landroid/support/v4/app/o;->v:Z
invoke-direct {p0}, Landroid/support/v4/app/o;->n()V
:cond_a5
return v1
.end method
.method final e()V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/o;->m:Ljava/util/ArrayList;
if-eqz v0, :cond_15
const/4 v0, 0x0
:goto_5
iget-object v1, p0, Landroid/support/v4/app/o;->m:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-ge v0, v1, :cond_15
iget-object v1, p0, Landroid/support/v4/app/o;->m:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_15
return-void
.end method
.method public final e(Landroid/support/v4/app/Fragment;II)V
.registers 10
const/4 v3, 0x1
const/4 v5, 0x0
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
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
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
if-eqz v0, :cond_7e
iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
if-nez v0, :cond_7e
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
if-nez v0, :cond_2f
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
:cond_2f
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
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
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
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
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v0, :cond_75
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eqz v0, :cond_75
iput-boolean v3, p0, Landroid/support/v4/app/o;->r:Z
:cond_75
iget v2, p0, Landroid/support/v4/app/o;->n:I
move-object v0, p0
move-object v1, p1
move v3, p2
move v4, p3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;IIIZ)V
:cond_7e
return-void
.end method
.method final f()Landroid/os/Parcelable;
.registers 15
const/4 v3, 0x1
const/4 v4, 0x0
const/4 v2, 0x0
invoke-virtual {p0}, Landroid/support/v4/app/o;->d()Z
sget-boolean v0, Landroid/support/v4/app/o;->b:Z
if-eqz v0, :cond_c
iput-boolean v3, p0, Landroid/support/v4/app/o;->s:Z
:cond_c
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
if-eqz v0, :cond_18
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-gtz v0, :cond_19
:cond_18
:goto_18
return-object v2
:cond_19
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v6
new-array v7, v6, [Landroid/support/v4/app/FragmentState;
move v5, v4
move v1, v4
:goto_23
if-ge v5, v6, :cond_14f
iget-object v0, p0, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_232
iget v1, v0, Landroid/support/v4/app/Fragment;->mIndex:I
if-gez v1, :cond_56
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v8, Ljava/lang/StringBuilder;
const-string v9, "Failure saving state: active "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, " has cleared index: "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
iget v9, v0, Landroid/support/v4/app/Fragment;->mIndex:I
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/RuntimeException;)V
:cond_56
new-instance v8, Landroid/support/v4/app/FragmentState;
invoke-direct {v8, v0}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V
aput-object v8, v7, v5
iget v1, v0, Landroid/support/v4/app/Fragment;->mState:I
if-lez v1, :cond_14a
iget-object v1, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
if-nez v1, :cond_14a
iget-object v1, p0, Landroid/support/v4/app/o;->w:Landroid/os/Bundle;
if-nez v1, :cond_70
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
iput-object v1, p0, Landroid/support/v4/app/o;->w:Landroid/os/Bundle;
:cond_70
iget-object v1, p0, Landroid/support/v4/app/o;->w:Landroid/os/Bundle;
invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V
iget-object v1, p0, Landroid/support/v4/app/o;->w:Landroid/os/Bundle;
invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z
move-result v1
if-nez v1, :cond_22f
iget-object v1, p0, Landroid/support/v4/app/o;->w:Landroid/os/Bundle;
iput-object v2, p0, Landroid/support/v4/app/o;->w:Landroid/os/Bundle;
:goto_81
iget-object v9, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v9, :cond_88
invoke-direct {p0, v0}, Landroid/support/v4/app/o;->c(Landroid/support/v4/app/Fragment;)V
:cond_88
iget-object v9, v0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
if-eqz v9, :cond_9a
if-nez v1, :cond_93
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
:cond_93
const-string v9, "android:view_state"
iget-object v10, v0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
:cond_9a
iget-boolean v9, v0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z
if-nez v9, :cond_ac
if-nez v1, :cond_a5
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
:cond_a5
const-string v9, "android:user_visible_hint"
iget-boolean v10, v0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z
invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
:cond_ac
iput-object v1, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
iget-object v1, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
if-eqz v1, :cond_11f
iget-object v1, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
iget v1, v1, Landroid/support/v4/app/Fragment;->mIndex:I
if-gez v1, :cond_db
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v9, Ljava/lang/StringBuilder;
const-string v10, "Failure saving state: "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " has target not in fragment manager: "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
iget-object v10, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-direct {v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/RuntimeException;)V
:cond_db
iget-object v1, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
if-nez v1, :cond_e6
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
iput-object v1, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
:cond_e6
iget-object v1, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
const-string v9, "android:target_state"
iget-object v10, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
iget v11, v10, Landroid/support/v4/app/Fragment;->mIndex:I
if-gez v11, :cond_10d
new-instance v11, Ljava/lang/IllegalStateException;
new-instance v12, Ljava/lang/StringBuilder;
const-string v13, "Fragment "
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v12
const-string v13, " is not currently in the FragmentManager"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v11}, Landroid/support/v4/app/o;->a(Ljava/lang/RuntimeException;)V
:cond_10d
iget v10, v10, Landroid/support/v4/app/Fragment;->mIndex:I
invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
iget v1, v0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I
if-eqz v1, :cond_11f
iget-object v1, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
const-string v9, "android:target_req_state"
iget v10, v0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I
invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:cond_11f
:goto_11f
sget-boolean v1, Landroid/support/v4/app/o;->a:Z
if-eqz v1, :cond_143
const-string v1, "FragmentManager"
new-instance v9, Ljava/lang/StringBuilder;
const-string v10, "Saved state of "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v9, ": "
invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v8, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_143
move v0, v3
:goto_144
add-int/lit8 v1, v5, 0x1
move v5, v1
move v1, v0
goto/16 :goto_23
:cond_14a
iget-object v1, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
iput-object v1, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
goto :goto_11f
:cond_14f
if-nez v1, :cond_15e
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
if-eqz v0, :cond_18
const-string v0, "FragmentManager"
const-string v1, "saveAllState: no fragments!"
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_18
:cond_15e
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_1d4
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v5
if-lez v5, :cond_1d4
new-array v1, v5, [I
move v3, v4
:goto_16d
if-ge v3, v5, :cond_1d5
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iget v0, v0, Landroid/support/v4/app/Fragment;->mIndex:I
aput v0, v1, v3
aget v0, v1, v3
if-gez v0, :cond_1a8
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v6, Ljava/lang/StringBuilder;
const-string v8, "Failure saving state: active "
invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v8, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v8
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v8, " has cleared index: "
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
aget v8, v1, v3
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0}, Landroid/support/v4/app/o;->a(Ljava/lang/RuntimeException;)V
:cond_1a8
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
if-eqz v0, :cond_1d0
const-string v0, "FragmentManager"
new-instance v6, Ljava/lang/StringBuilder;
const-string v8, "saveAllState: adding fragment #"
invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string v8, ": "
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
iget-object v8, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v8
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1d0
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_16d
:cond_1d4
move-object v1, v2
:cond_1d5
iget-object v0, p0, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;
if-eqz v0, :cond_221
iget-object v0, p0, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v5
if-lez v5, :cond_221
new-array v2, v5, [Landroid/support/v4/app/BackStackState;
move v3, v4
:goto_1e4
if-ge v3, v5, :cond_221
new-instance v4, Landroid/support/v4/app/BackStackState;
iget-object v0, p0, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/a;
invoke-direct {v4, v0}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/a;)V
aput-object v4, v2, v3
sget-boolean v0, Landroid/support/v4/app/o;->a:Z
if-eqz v0, :cond_21d
const-string v0, "FragmentManager"
new-instance v4, Ljava/lang/StringBuilder;
const-string v6, "saveAllState: adding back stack #"
invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v6, ": "
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v6, p0, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v6
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_21d
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_1e4
:cond_221
new-instance v0, Landroid/support/v4/app/FragmentManagerState;
invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V
iput-object v7, v0, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;
iput-object v1, v0, Landroid/support/v4/app/FragmentManagerState;->b:[I
iput-object v2, v0, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;
move-object v2, v0
goto/16 :goto_18
:cond_22f
move-object v1, v2
goto/16 :goto_81
:cond_232
move v0, v1
goto/16 :goto_144
.end method
.method public final g()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/o;->s:Z
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v4/app/o;->c(I)V
return-void
.end method
.method public final h()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/o;->s:Z
const/4 v0, 0x2
invoke-virtual {p0, v0}, Landroid/support/v4/app/o;->c(I)V
return-void
.end method
.method public final i()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/o;->s:Z
const/4 v0, 0x4
invoke-virtual {p0, v0}, Landroid/support/v4/app/o;->c(I)V
return-void
.end method
.method public final j()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/o;->s:Z
const/4 v0, 0x5
invoke-virtual {p0, v0}, Landroid/support/v4/app/o;->c(I)V
return-void
.end method
.method public final k()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/o;->s:Z
const/4 v0, 0x3
invoke-virtual {p0, v0}, Landroid/support/v4/app/o;->c(I)V
return-void
.end method
.method public final l()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/o;->t:Z
invoke-virtual {p0}, Landroid/support/v4/app/o;->d()Z
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v4/app/o;->c(I)V
iput-object v1, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
iput-object v1, p0, Landroid/support/v4/app/o;->p:Landroid/support/v4/app/m;
iput-object v1, p0, Landroid/support/v4/app/o;->q:Landroid/support/v4/app/Fragment;
return-void
.end method
.method public final m()V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
if-eqz v0, :cond_1f
const/4 v0, 0x0
move v1, v0
:goto_6
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_1f
iget-object v0, p0, Landroid/support/v4/app/o;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1b
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->performLowMemory()V
:cond_1b
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_6
:cond_1f
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
iget-object v1, p0, Landroid/support/v4/app/o;->q:Landroid/support/v4/app/Fragment;
if-eqz v1, :cond_2f
iget-object v1, p0, Landroid/support/v4/app/o;->q:Landroid/support/v4/app/Fragment;
invoke-static {v1, v0}, Landroid/support/v4/b/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
:goto_25
const-string v1, "}}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_2f
iget-object v1, p0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
invoke-static {v1, v0}, Landroid/support/v4/b/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
goto :goto_25
.end method