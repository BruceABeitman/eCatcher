.class public Landroid/support/v4/app/h;
.super Landroid/app/Activity;
.source "FragmentActivity.java"
.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"
.field private static final HONEYCOMB:I = 0xb
.field static final MSG_REALLY_STOPPED:I = 0x1
.field static final MSG_RESUME_PENDING:I = 0x2
.field private static final TAG:Ljava/lang/String; = "FragmentActivity"
.field  mAllLoaderManagers:Landroid/support/v4/b/n;
.field  mCheckedForLoaderManager:Z
.field final mContainer:Landroid/support/v4/app/m;
.field  mCreated:Z
.field final mFragments:Landroid/support/v4/app/o;
.field final mHandler:Landroid/os/Handler;
.field  mLoaderManager:Landroid/support/v4/app/z;
.field  mLoadersStarted:Z
.field  mOptionsMenuInvalidated:Z
.field  mReallyStopped:Z
.field  mResumed:Z
.field  mRetaining:Z
.field  mStopped:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
new-instance v0, Landroid/support/v4/app/i;
invoke-direct {v0, p0}, Landroid/support/v4/app/i;-><init>(Landroid/support/v4/app/h;)V
iput-object v0, p0, Landroid/support/v4/app/h;->mHandler:Landroid/os/Handler;
new-instance v0, Landroid/support/v4/app/o;
invoke-direct {v0}, Landroid/support/v4/app/o;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
new-instance v0, Landroid/support/v4/app/j;
invoke-direct {v0, p0}, Landroid/support/v4/app/j;-><init>(Landroid/support/v4/app/h;)V
iput-object v0, p0, Landroid/support/v4/app/h;->mContainer:Landroid/support/v4/app/m;
return-void
.end method
.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
.registers 8
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
if-nez p3, :cond_b
const-string v0, "null"
invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_a
return-void
:cond_b
invoke-static {p3}, Landroid/support/v4/app/h;->viewToString(Landroid/view/View;)Ljava/lang/String;
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
invoke-direct {p0, v2, p2, v3}, Landroid/support/v4/app/h;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
add-int/lit8 v0, v0, 0x1
goto :goto_32
.end method
.method private static viewToString(Landroid/view/View;)Ljava/lang/String;
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
:goto_114
:try_end_114
.catch Landroid/content/res/Resources$NotFoundException; {:try_start_f0 .. :try_end_114} :catch_153
:cond_114
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
:sswitch_data_164
.sparse-switch
0x1000000 -> :sswitch_150
0x7f000000 -> :sswitch_14d
.end sparse-switch
:sswitch_data_156
.sparse-switch
0x0 -> :sswitch_11e
0x4 -> :sswitch_123
0x8 -> :sswitch_12a
.end sparse-switch
.end method
.method  doReallyStop(Z)V
.registers 4
const/4 v1, 0x1
iget-boolean v0, p0, Landroid/support/v4/app/h;->mReallyStopped:Z
if-nez v0, :cond_11
iput-boolean v1, p0, Landroid/support/v4/app/h;->mReallyStopped:Z
iput-boolean p1, p0, Landroid/support/v4/app/h;->mRetaining:Z
iget-object v0, p0, Landroid/support/v4/app/h;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
invoke-virtual {p0}, Landroid/support/v4/app/h;->onReallyStop()V
:cond_11
return-void
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
iget-boolean v1, p0, Landroid/support/v4/app/h;->mCreated:Z
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V
const-string v1, "mResumed="
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v1, p0, Landroid/support/v4/app/h;->mResumed:Z
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V
const-string v1, " mStopped="
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v1, p0, Landroid/support/v4/app/h;->mStopped:Z
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V
const-string v1, " mReallyStopped="
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v1, p0, Landroid/support/v4/app/h;->mReallyStopped:Z
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "mLoadersStarted="
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/h;->mLoadersStarted:Z
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
iget-object v0, p0, Landroid/support/v4/app/h;->mLoaderManager:Landroid/support/v4/app/z;
if-eqz v0, :cond_9b
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "Loader Manager "
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/h;->mLoaderManager:Landroid/support/v4/app/z;
invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, ":"
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/app/h;->mLoaderManager:Landroid/support/v4/app/z;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "  "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p3}, Landroid/support/v4/app/z;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V
:cond_9b
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/o;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
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
invoke-virtual {p0}, Landroid/support/v4/app/h;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v1
invoke-direct {p0, v0, p3, v1}, Landroid/support/v4/app/h;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
return-void
.end method
.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Landroid/support/v4/app/h;->getLastNonConfigurationInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/l;
if-eqz v0, :cond_b
iget-object v0, v0, Landroid/support/v4/app/l;->b:Ljava/lang/Object;
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method  getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/z;
.registers 6
iget-object v0, p0, Landroid/support/v4/app/h;->mAllLoaderManagers:Landroid/support/v4/b/n;
if-nez v0, :cond_b
new-instance v0, Landroid/support/v4/b/n;
invoke-direct {v0}, Landroid/support/v4/b/n;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/h;->mAllLoaderManagers:Landroid/support/v4/b/n;
:cond_b
iget-object v0, p0, Landroid/support/v4/app/h;->mAllLoaderManagers:Landroid/support/v4/b/n;
invoke-virtual {v0, p1}, Landroid/support/v4/b/n;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/z;
if-nez v0, :cond_22
if-eqz p3, :cond_21
new-instance v0, Landroid/support/v4/app/z;
invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/z;-><init>(Ljava/lang/String;Landroid/support/v4/app/h;Z)V
iget-object v1, p0, Landroid/support/v4/app/h;->mAllLoaderManagers:Landroid/support/v4/b/n;
invoke-virtual {v1, p1, v0}, Landroid/support/v4/b/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_21
:goto_21
return-object v0
:cond_22
iput-object p0, v0, Landroid/support/v4/app/z;->e:Landroid/support/v4/app/h;
goto :goto_21
.end method
.method public getSupportFragmentManager()Landroid/support/v4/app/n;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
return-object v0
.end method
.method public getSupportLoaderManager()Landroid/support/v4/app/x;
.registers 4
const/4 v2, 0x1
iget-object v0, p0, Landroid/support/v4/app/h;->mLoaderManager:Landroid/support/v4/app/z;
if-eqz v0, :cond_8
iget-object v0, p0, Landroid/support/v4/app/h;->mLoaderManager:Landroid/support/v4/app/z;
:goto_7
return-object v0
:cond_8
iput-boolean v2, p0, Landroid/support/v4/app/h;->mCheckedForLoaderManager:Z
const-string v0, "(root)"
iget-boolean v1, p0, Landroid/support/v4/app/h;->mLoadersStarted:Z
invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/h;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/z;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/h;->mLoaderManager:Landroid/support/v4/app/z;
iget-object v0, p0, Landroid/support/v4/app/h;->mLoaderManager:Landroid/support/v4/app/z;
goto :goto_7
.end method
.method  invalidateSupportFragment(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/h;->mAllLoaderManagers:Landroid/support/v4/b/n;
if-eqz v0, :cond_1a
iget-object v0, p0, Landroid/support/v4/app/h;->mAllLoaderManagers:Landroid/support/v4/b/n;
invoke-virtual {v0, p1}, Landroid/support/v4/b/n;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/z;
if-eqz v0, :cond_1a
iget-boolean v1, v0, Landroid/support/v4/app/z;->g:Z
if-nez v1, :cond_1a
invoke-virtual {v0}, Landroid/support/v4/app/z;->g()V
iget-object v0, p0, Landroid/support/v4/app/h;->mAllLoaderManagers:Landroid/support/v4/b/n;
invoke-virtual {v0, p1}, Landroid/support/v4/b/n;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_1a
return-void
.end method
.method public onActivityResult(IILandroid/content/Intent;)V
.registers 7
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
const/4 v1, 0x0
iput-boolean v1, v0, Landroid/support/v4/app/o;->s:Z
shr-int/lit8 v0, p1, 0x10
if-eqz v0, :cond_63
add-int/lit8 v0, v0, -0x1
iget-object v1, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
iget-object v1, v1, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
if-eqz v1, :cond_1d
if-ltz v0, :cond_1d
iget-object v1, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
iget-object v1, v1, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
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
iget-object v1, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
iget-object v1, v1, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
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
invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V
goto :goto_35
:cond_63
invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V
goto :goto_35
.end method
.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
.registers 2
return-void
.end method
.method public onBackPressed()V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->c()V
invoke-virtual {v0}, Landroid/support/v4/app/o;->d()Z
iget-object v1, v0, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;
iget-object v1, v1, Landroid/support/v4/app/h;->mHandler:Landroid/os/Handler;
const/4 v1, -0x1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/o;->a(II)Z
move-result v0
if-nez v0, :cond_17
invoke-virtual {p0}, Landroid/support/v4/app/h;->finish()V
:cond_17
return-void
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 3
invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->a(Landroid/content/res/Configuration;)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Landroid/support/v4/app/h; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
iget-object v2, p0, Landroid/support/v4/app/h;->mContainer:Landroid/support/v4/app/m;
invoke-virtual {v0, p0, v2, v1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/h;Landroid/support/v4/app/m;Landroid/support/v4/app/Fragment;)V
invoke-virtual {p0}, Landroid/support/v4/app/h;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v0
invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;
move-result-object v0
if-nez v0, :cond_19
invoke-virtual {p0}, Landroid/support/v4/app/h;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V
:cond_19
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Landroid/support/v4/app/h;->getLastNonConfigurationInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/l;
if-eqz v0, :cond_28
iget-object v2, v0, Landroid/support/v4/app/l;->e:Landroid/support/v4/b/n;
iput-object v2, p0, Landroid/support/v4/app/h;->mAllLoaderManagers:Landroid/support/v4/b/n;
:cond_28
if-eqz p1, :cond_39
const-string v2, "android:support:fragments"
invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v2
iget-object v3, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
if-eqz v0, :cond_3f
iget-object v0, v0, Landroid/support/v4/app/l;->d:Ljava/util/ArrayList;
:goto_36
invoke-virtual {v3, v2, v0}, Landroid/support/v4/app/o;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
:cond_39
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->g()V
const-string v1, " - Landroid/support/v4/app/h; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
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
iget-object v1, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {p0}, Landroid/support/v4/app/h;->getMenuInflater()Landroid/view/MenuInflater;
move-result-object v2
invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/o;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
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
const/4 v8, 0x1
const/4 v3, 0x0
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
sget-object v2, Landroid/support/v4/app/k;->a:[I
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
invoke-static {p0, v0}, Landroid/support/v4/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_3a
invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
move-result-object v0
goto :goto_10
:cond_3a
if-eq v2, v6, :cond_42
iget-object v1, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v1, v2}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v1
:cond_42
if-nez v1, :cond_4c
if-eqz v5, :cond_4c
iget-object v1, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v1, v5}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v1
:cond_4c
if-nez v1, :cond_54
iget-object v1, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v1, v3}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v1
:cond_54
sget-boolean v4, Landroid/support/v4/app/o;->a:Z
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
if-nez v1, :cond_c7
invoke-static {p0, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v4
iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->mFromLayout:Z
if-eqz v2, :cond_c5
move v1, v2
:goto_8f
iput v1, v4, Landroid/support/v4/app/Fragment;->mFragmentId:I
iput v3, v4, Landroid/support/v4/app/Fragment;->mContainerId:I
iput-object v5, v4, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->mInLayout:Z
iget-object v1, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
iput-object v1, v4, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/o;
iget-object v1, v4, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {v4, p0, p3, v1}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
iget-object v1, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v1, v4, v8}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;Z)V
move-object v1, v4
:goto_a6
iget-object v3, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-nez v3, :cond_123
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
:cond_c5
move v1, v3
goto :goto_8f
:cond_c7
iget-boolean v4, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z
if-eqz v4, :cond_112
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
:cond_112
iput-boolean v8, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z
iget-boolean v3, v1, Landroid/support/v4/app/Fragment;->mRetaining:Z
if-nez v3, :cond_11d
iget-object v3, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {v1, p0, p3, v3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
:cond_11d
iget-object v3, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v3, v1}, Landroid/support/v4/app/o;->b(Landroid/support/v4/app/Fragment;)V
goto :goto_a6
:cond_123
if-eqz v2, :cond_12a
iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V
:cond_12a
iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_137
iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:cond_137
iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
goto/16 :goto_10
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Landroid/support/v4/app/h; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v4/app/h;->doReallyStop(Z)V
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->l()V
iget-object v0, p0, Landroid/support/v4/app/h;->mLoaderManager:Landroid/support/v4/app/z;
if-eqz v0, :cond_15
iget-object v0, p0, Landroid/support/v4/app/h;->mLoaderManager:Landroid/support/v4/app/z;
invoke-virtual {v0}, Landroid/support/v4/app/z;->g()V
:cond_15
const-string v1, " - Landroid/support/v4/app/h; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
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
invoke-virtual {p0}, Landroid/support/v4/app/h;->onBackPressed()V
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
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->m()V
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
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v0, p2}, Landroid/support/v4/app/o;->a(Landroid/view/MenuItem;)Z
move-result v0
goto :goto_7
:sswitch_14
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v0, p2}, Landroid/support/v4/app/o;->b(Landroid/view/MenuItem;)Z
move-result v0
goto :goto_7
nop
:sswitch_data_1c
.sparse-switch
0x0 -> :sswitch_d
0x6 -> :sswitch_14
.end sparse-switch
.end method
.method public onNewIntent(Landroid/content/Intent;)V
.registers 4
invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
const/4 v1, 0x0
iput-boolean v1, v0, Landroid/support/v4/app/o;->s:Z
return-void
.end method
.method public onPanelClosed(ILandroid/view/Menu;)V
.registers 4
packed-switch p1, :pswitch_data_e
:goto_3
invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V
return-void
:pswitch_7
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v0, p2}, Landroid/support/v4/app/o;->b(Landroid/view/Menu;)V
goto :goto_3
nop
:pswitch_data_e
.packed-switch 0x0
:pswitch_7
.end packed-switch
.end method
.method public onPause()V
.registers 3
const-string v1, " + Landroid/support/v4/app/h; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x2
invoke-super {p0}, Landroid/app/Activity;->onPause()V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/h;->mResumed:Z
iget-object v0, p0, Landroid/support/v4/app/h;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z
move-result v0
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v4/app/h;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
invoke-virtual {p0}, Landroid/support/v4/app/h;->onResumeFragments()V
:cond_17
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->c(I)V
const-string v1, " - Landroid/support/v4/app/h; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPostResume()V
.registers 3
invoke-super {p0}, Landroid/app/Activity;->onPostResume()V
iget-object v0, p0, Landroid/support/v4/app/h;->mHandler:Landroid/os/Handler;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
invoke-virtual {p0}, Landroid/support/v4/app/h;->onResumeFragments()V
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->d()Z
return-void
.end method
.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
.registers 4
const/4 v0, 0x0
invoke-super {p0, v0, p1, p2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
move-result v0
return v0
.end method
.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
.registers 6
if-nez p1, :cond_1d
if-eqz p3, :cond_1d
iget-boolean v0, p0, Landroid/support/v4/app/h;->mOptionsMenuInvalidated:Z
if-eqz v0, :cond_11
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/h;->mOptionsMenuInvalidated:Z
invoke-interface {p3}, Landroid/view/Menu;->clear()V
invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/h;->onCreatePanelMenu(ILandroid/view/Menu;)Z
:cond_11
invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/h;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
move-result v0
iget-object v1, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v1, p3}, Landroid/support/v4/app/o;->a(Landroid/view/Menu;)Z
move-result v1
or-int/2addr v0, v1
:goto_1c
return v0
:cond_1d
invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
move-result v0
goto :goto_1c
.end method
.method  onReallyStop()V
.registers 3
iget-boolean v0, p0, Landroid/support/v4/app/h;->mLoadersStarted:Z
if-eqz v0, :cond_14
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/h;->mLoadersStarted:Z
iget-object v0, p0, Landroid/support/v4/app/h;->mLoaderManager:Landroid/support/v4/app/z;
if-eqz v0, :cond_14
iget-boolean v0, p0, Landroid/support/v4/app/h;->mRetaining:Z
if-nez v0, :cond_1b
iget-object v0, p0, Landroid/support/v4/app/h;->mLoaderManager:Landroid/support/v4/app/z;
invoke-virtual {v0}, Landroid/support/v4/app/z;->c()V
:goto_14
:cond_14
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->c(I)V
return-void
:cond_1b
iget-object v0, p0, Landroid/support/v4/app/h;->mLoaderManager:Landroid/support/v4/app/z;
invoke-virtual {v0}, Landroid/support/v4/app/z;->d()V
goto :goto_14
.end method
.method public onResume()V
.registers 3
const-string v1, " + Landroid/support/v4/app/h; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
iget-object v0, p0, Landroid/support/v4/app/h;->mHandler:Landroid/os/Handler;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/h;->mResumed:Z
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->d()Z
const-string v1, " - Landroid/support/v4/app/h; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResumeFragments()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->j()V
return-void
.end method
.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
.registers 12
const/4 v6, 0x1
const/4 v4, 0x0
const/4 v5, 0x0
iget-boolean v0, p0, Landroid/support/v4/app/h;->mStopped:Z
if-eqz v0, :cond_a
invoke-virtual {p0, v6}, Landroid/support/v4/app/h;->doReallyStop(Z)V
:cond_a
invoke-virtual {p0}, Landroid/support/v4/app/h;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
move-result-object v7
iget-object v8, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
iget-object v0, v8, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
if-eqz v0, :cond_60
move v3, v4
move-object v1, v5
:goto_16
iget-object v0, v8, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v3, v0, :cond_61
iget-object v0, v8, Landroid/support/v4/app/o;->f:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_5a
iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z
if-eqz v2, :cond_5a
if-nez v1, :cond_33
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
:cond_33
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iput-boolean v6, v0, Landroid/support/v4/app/Fragment;->mRetaining:Z
iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
if-eqz v2, :cond_5e
iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
iget v2, v2, Landroid/support/v4/app/Fragment;->mIndex:I
:goto_40
iput v2, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I
sget-boolean v2, Landroid/support/v4/app/o;->a:Z
if-eqz v2, :cond_5a
const-string v2, "FragmentManager"
new-instance v9, Ljava/lang/StringBuilder;
const-string v10, "retainNonConfig: keeping retained "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_5a
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_16
:cond_5e
const/4 v2, -0x1
goto :goto_40
:cond_60
move-object v1, v5
:cond_61
iget-object v0, p0, Landroid/support/v4/app/h;->mAllLoaderManagers:Landroid/support/v4/b/n;
if-eqz v0, :cond_98
iget-object v0, p0, Landroid/support/v4/app/h;->mAllLoaderManagers:Landroid/support/v4/b/n;
invoke-virtual {v0}, Landroid/support/v4/b/n;->size()I
move-result v3
new-array v8, v3, [Landroid/support/v4/app/z;
add-int/lit8 v0, v3, -0x1
move v2, v0
:goto_70
if-ltz v2, :cond_80
iget-object v0, p0, Landroid/support/v4/app/h;->mAllLoaderManagers:Landroid/support/v4/b/n;
invoke-virtual {v0, v2}, Landroid/support/v4/b/n;->b(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/z;
aput-object v0, v8, v2
add-int/lit8 v0, v2, -0x1
move v2, v0
goto :goto_70
:cond_80
move v0, v4
:goto_81
if-ge v4, v3, :cond_99
aget-object v2, v8, v4
iget-boolean v9, v2, Landroid/support/v4/app/z;->g:Z
if-eqz v9, :cond_8d
move v0, v6
:goto_8a
add-int/lit8 v4, v4, 0x1
goto :goto_81
:cond_8d
invoke-virtual {v2}, Landroid/support/v4/app/z;->g()V
iget-object v9, p0, Landroid/support/v4/app/h;->mAllLoaderManagers:Landroid/support/v4/b/n;
iget-object v2, v2, Landroid/support/v4/app/z;->d:Ljava/lang/String;
invoke-virtual {v9, v2}, Landroid/support/v4/b/n;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_8a
:cond_98
move v0, v4
:cond_99
if-nez v1, :cond_a0
if-nez v0, :cond_a0
if-nez v7, :cond_a0
:goto_9f
return-object v5
:cond_a0
new-instance v0, Landroid/support/v4/app/l;
invoke-direct {v0}, Landroid/support/v4/app/l;-><init>()V
iput-object v5, v0, Landroid/support/v4/app/l;->a:Ljava/lang/Object;
iput-object v7, v0, Landroid/support/v4/app/l;->b:Ljava/lang/Object;
iput-object v5, v0, Landroid/support/v4/app/l;->c:Landroid/support/v4/b/n;
iput-object v1, v0, Landroid/support/v4/app/l;->d:Ljava/util/ArrayList;
iget-object v1, p0, Landroid/support/v4/app/h;->mAllLoaderManagers:Landroid/support/v4/b/n;
iput-object v1, v0, Landroid/support/v4/app/l;->e:Landroid/support/v4/b/n;
move-object v5, v0
goto :goto_9f
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Landroid/support/v4/app/h; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->f()Landroid/os/Parcelable;
move-result-object v0
if-eqz v0, :cond_10
const-string v1, "android:support:fragments"
invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_10
const-string v1, " - Landroid/support/v4/app/h; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStart()V
.registers 11
const-string v1, " + Landroid/support/v4/app/h; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
const/4 v3, 0x0
invoke-super {p0}, Landroid/app/Activity;->onStart()V
iput-boolean v3, p0, Landroid/support/v4/app/h;->mStopped:Z
iput-boolean v3, p0, Landroid/support/v4/app/h;->mReallyStopped:Z
iget-object v0, p0, Landroid/support/v4/app/h;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V
iget-boolean v0, p0, Landroid/support/v4/app/h;->mCreated:Z
if-nez v0, :cond_19
iput-boolean v2, p0, Landroid/support/v4/app/h;->mCreated:Z
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->h()V
:cond_19
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
iput-boolean v3, v0, Landroid/support/v4/app/o;->s:Z
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->d()Z
iget-boolean v0, p0, Landroid/support/v4/app/h;->mLoadersStarted:Z
if-nez v0, :cond_33
iput-boolean v2, p0, Landroid/support/v4/app/h;->mLoadersStarted:Z
iget-object v0, p0, Landroid/support/v4/app/h;->mLoaderManager:Landroid/support/v4/app/z;
if-eqz v0, :cond_57
iget-object v0, p0, Landroid/support/v4/app/h;->mLoaderManager:Landroid/support/v4/app/z;
invoke-virtual {v0}, Landroid/support/v4/app/z;->b()V
:goto_31
:cond_31
iput-boolean v2, p0, Landroid/support/v4/app/h;->mCheckedForLoaderManager:Z
:cond_33
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->i()V
iget-object v0, p0, Landroid/support/v4/app/h;->mAllLoaderManagers:Landroid/support/v4/b/n;
if-eqz v0, :cond_f4
iget-object v0, p0, Landroid/support/v4/app/h;->mAllLoaderManagers:Landroid/support/v4/b/n;
invoke-virtual {v0}, Landroid/support/v4/b/n;->size()I
move-result v4
new-array v5, v4, [Landroid/support/v4/app/z;
add-int/lit8 v0, v4, -0x1
move v1, v0
:goto_47
if-ltz v1, :cond_75
iget-object v0, p0, Landroid/support/v4/app/h;->mAllLoaderManagers:Landroid/support/v4/b/n;
invoke-virtual {v0, v1}, Landroid/support/v4/b/n;->b(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/z;
aput-object v0, v5, v1
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_47
:cond_57
iget-boolean v0, p0, Landroid/support/v4/app/h;->mCheckedForLoaderManager:Z
if-nez v0, :cond_31
const-string v0, "(root)"
iget-boolean v1, p0, Landroid/support/v4/app/h;->mLoadersStarted:Z
invoke-virtual {p0, v0, v1, v3}, Landroid/support/v4/app/h;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/z;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/h;->mLoaderManager:Landroid/support/v4/app/z;
iget-object v0, p0, Landroid/support/v4/app/h;->mLoaderManager:Landroid/support/v4/app/z;
if-eqz v0, :cond_31
iget-object v0, p0, Landroid/support/v4/app/h;->mLoaderManager:Landroid/support/v4/app/z;
iget-boolean v0, v0, Landroid/support/v4/app/z;->f:Z
if-nez v0, :cond_31
iget-object v0, p0, Landroid/support/v4/app/h;->mLoaderManager:Landroid/support/v4/app/z;
invoke-virtual {v0}, Landroid/support/v4/app/z;->b()V
goto :goto_31
:cond_75
move v2, v3
:goto_76
if-ge v2, v4, :cond_f4
aget-object v6, v5, v2
iget-boolean v0, v6, Landroid/support/v4/app/z;->g:Z
if-eqz v0, :cond_ed
sget-boolean v0, Landroid/support/v4/app/z;->a:Z
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
iput-boolean v3, v6, Landroid/support/v4/app/z;->g:Z
iget-object v0, v6, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;
invoke-virtual {v0}, Landroid/support/v4/b/o;->c()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_a1
if-ltz v1, :cond_ed
iget-object v0, v6, Landroid/support/v4/app/z;->b:Landroid/support/v4/b/o;
invoke-virtual {v0, v1}, Landroid/support/v4/b/o;->c(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/aa;
iget-boolean v7, v0, Landroid/support/v4/app/aa;->i:Z
if-eqz v7, :cond_d6
sget-boolean v7, Landroid/support/v4/app/z;->a:Z
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
iput-boolean v3, v0, Landroid/support/v4/app/aa;->i:Z
iget-boolean v7, v0, Landroid/support/v4/app/aa;->h:Z
iget-boolean v8, v0, Landroid/support/v4/app/aa;->j:Z
if-eq v7, v8, :cond_d6
iget-boolean v7, v0, Landroid/support/v4/app/aa;->h:Z
if-nez v7, :cond_d6
invoke-virtual {v0}, Landroid/support/v4/app/aa;->a()V
:cond_d6
iget-boolean v7, v0, Landroid/support/v4/app/aa;->h:Z
if-eqz v7, :cond_e9
iget-boolean v7, v0, Landroid/support/v4/app/aa;->e:Z
if-eqz v7, :cond_e9
iget-boolean v7, v0, Landroid/support/v4/app/aa;->k:Z
if-nez v7, :cond_e9
iget-object v7, v0, Landroid/support/v4/app/aa;->d:Landroid/support/v4/content/c;
iget-object v8, v0, Landroid/support/v4/app/aa;->g:Ljava/lang/Object;
invoke-virtual {v0, v7, v8}, Landroid/support/v4/app/aa;->a(Landroid/support/v4/content/c;Ljava/lang/Object;)V
:cond_e9
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_a1
:cond_ed
invoke-virtual {v6}, Landroid/support/v4/app/z;->f()V
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_76
:cond_f4
const-string v1, " - Landroid/support/v4/app/h; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Landroid/support/v4/app/h; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
invoke-super {p0}, Landroid/app/Activity;->onStop()V
iput-boolean v1, p0, Landroid/support/v4/app/h;->mStopped:Z
iget-object v0, p0, Landroid/support/v4/app/h;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
iget-object v0, p0, Landroid/support/v4/app/h;->mFragments:Landroid/support/v4/app/o;
invoke-virtual {v0}, Landroid/support/v4/app/o;->k()V
const-string v1, " - Landroid/support/v4/app/h; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
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
.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
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
iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I
add-int/lit8 v0, v0, 0x1
shl-int/lit8 v0, v0, 0x10
const v1, 0xffff
and-int/2addr v1, p3
add-int/2addr v0, v1
invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_6
.end method
.method public supportInvalidateOptionsMenu()V
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_a
invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V
:goto_9
return-void
:cond_a
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/h;->mOptionsMenuInvalidated:Z
goto :goto_9
.end method