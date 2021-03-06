.class public Landroid/support/v4/app/FragmentActivity;
.super Landroid/app/Activity;
.source "FragmentActivity.java"
.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"
.field private static final HONEYCOMB:I = 0xb
.field static final MSG_REALLY_STOPPED:I = 0x1
.field static final MSG_RESUME_PENDING:I = 0x2
.field private static final TAG:Ljava/lang/String; = "FragmentActivity"
.field  mAllLoaderManagers:Ljava/util/HashMap;
.field  mCheckedForLoaderManager:Z
.field final mContainer:Landroid/support/v4/app/FragmentContainer;
.field  mCreated:Z
.field final mFragments:Landroid/support/v4/app/FragmentManagerImpl;
.field final mHandler:Landroid/os/Handler;
.field  mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
.field  mLoadersStarted:Z
.field  mOptionsMenuInvalidated:Z
.field  mReallyStopped:Z
.field  mResumed:Z
.field  mRetaining:Z
.field  mStopped:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
new-instance v0, Landroid/support/v4/app/FragmentActivity$1;
invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V
iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;
new-instance v0, Landroid/support/v4/app/FragmentManagerImpl;
invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
new-instance v0, Landroid/support/v4/app/FragmentActivity$2;
invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$2;-><init>(Landroid/support/v4/app/FragmentActivity;)V
iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mContainer:Landroid/support/v4/app/FragmentContainer;
return-void
.end method
.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
.registers 9
invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
if-nez p3, :cond_c
const-string/jumbo v3, "null"
invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:cond_b
return-void
:cond_c
invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->viewToString(Landroid/view/View;)Ljava/lang/String;
move-result-object v3
invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
instance-of v3, p3, Landroid/view/ViewGroup;
if-eqz v3, :cond_b
move-object v1, p3
check-cast v1, Landroid/view/ViewGroup;
invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I
move-result v0
if-lez v0, :cond_b
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "  "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p1
const/4 v2, 0x0
:goto_35
if-ge v2, v0, :cond_b
invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-direct {p0, p1, p2, v3}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
add-int/lit8 v2, v2, 0x1
goto :goto_35
.end method
.method private static viewToString(Landroid/view/View;)Ljava/lang/String;
.registers 13
const/16 v9, 0x56
const/16 v7, 0x46
const/16 v11, 0x2c
const/16 v10, 0x20
const/16 v8, 0x2e
new-instance v2, Ljava/lang/StringBuilder;
const/16 v6, 0x80
invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v6, 0x7b
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->getVisibility()I
move-result v6
sparse-switch v6, :sswitch_data_15c
invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_39
invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z
move-result v6
if-eqz v6, :cond_136
move v6, v7
:goto_40
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z
move-result v6
if-eqz v6, :cond_139
const/16 v6, 0x45
:goto_4b
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z
move-result v6
if-eqz v6, :cond_13c
move v6, v8
:goto_55
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z
move-result v6
if-eqz v6, :cond_140
const/16 v6, 0x48
:goto_60
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z
move-result v6
if-eqz v6, :cond_143
move v6, v9
:goto_6a
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->isClickable()Z
move-result v6
if-eqz v6, :cond_146
const/16 v6, 0x43
:goto_75
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z
move-result v6
if-eqz v6, :cond_149
const/16 v6, 0x4c
:goto_80
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->isFocused()Z
move-result v6
if-eqz v6, :cond_14c
:goto_8c
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->isSelected()Z
move-result v6
if-eqz v6, :cond_14f
const/16 v6, 0x53
:goto_97
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->isPressed()Z
move-result v6
if-eqz v6, :cond_a2
const/16 v8, 0x50
:cond_a2
invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->getLeft()I
move-result v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->getTop()I
move-result v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const/16 v6, 0x2d
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->getRight()I
move-result v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->getBottom()I
move-result v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->getId()I
move-result v1
const/4 v6, -0x1
if-eq v1, v6, :cond_118
const-string/jumbo v6, " #"
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;
move-result-object v4
if-eqz v1, :cond_118
if-eqz v4, :cond_118
const/high16 v6, -0x100
and-int/2addr v6, v1
sparse-switch v6, :sswitch_data_16a
:try_start_f1
invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;
move-result-object v3
:goto_f5
invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
move-result-object v0
const-string/jumbo v6, " "
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v6, ":"
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v6, "/"
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_118
.catch Landroid/content/res/Resources$NotFoundException; {:try_start_f1 .. :try_end_118} :catch_15a
:goto_118
:cond_118
const-string/jumbo v6, "}"
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
return-object v6
:sswitch_123
invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto/16 :goto_39
:sswitch_128
const/16 v6, 0x49
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto/16 :goto_39
:sswitch_12f
const/16 v6, 0x47
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto/16 :goto_39
:cond_136
move v6, v8
goto/16 :goto_40
:cond_139
move v6, v8
goto/16 :goto_4b
:cond_13c
const/16 v6, 0x44
goto/16 :goto_55
:cond_140
move v6, v8
goto/16 :goto_60
:cond_143
move v6, v8
goto/16 :goto_6a
:cond_146
move v6, v8
goto/16 :goto_75
:cond_149
move v6, v8
goto/16 :goto_80
:cond_14c
move v7, v8
goto/16 :goto_8c
:cond_14f
move v6, v8
goto/16 :goto_97
:try_start_152
:sswitch_152
const-string/jumbo v3, "app"
goto :goto_f5
:sswitch_156
const-string/jumbo v3, "android"
:try_end_159
.catch Landroid/content/res/Resources$NotFoundException; {:try_start_152 .. :try_end_159} :catch_15a
goto :goto_f5
:catch_15a
move-exception v6
goto :goto_118
:sswitch_data_15c
.sparse-switch
0x0 -> :sswitch_123
0x4 -> :sswitch_128
0x8 -> :sswitch_12f
.end sparse-switch
:sswitch_data_16a
.sparse-switch
0x1000000 -> :sswitch_156
0x7f000000 -> :sswitch_152
.end sparse-switch
.end method
.method  doReallyStop(Z)V
.registers 4
const/4 v1, 0x1
iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z
if-nez v0, :cond_11
iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z
iput-boolean p1, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onReallyStop()V
:cond_11
return-void
.end method
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.registers 9
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xb
if-lt v1, v2, :cond_6
:cond_6
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v1, "Local FragmentActivity "
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v1, " State:"
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "  "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v1, "mCreated="
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V
const-string/jumbo v1, "mResumed="
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V
const-string/jumbo v1, " mStopped="
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V
const-string/jumbo v1, " mReallyStopped="
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V
invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v1, "mLoadersStarted="
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V
iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
if-eqz v1, :cond_aa
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v1, "Loader Manager "
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v1, ":"
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "  "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:cond_aa
iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string/jumbo v1, "View Hierarchy:"
invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "  "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;
move-result-object v2
invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v2
invoke-direct {p0, v1, p3, v2}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
return-void
.end method
.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
.registers 3
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
if-eqz v0, :cond_b
iget-object v1, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;
:goto_a
return-object v1
:cond_b
const/4 v1, 0x0
goto :goto_a
.end method
.method  getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
.registers 6
iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;
if-nez v1, :cond_b
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iput-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;
:cond_b
iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;
invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;
if-nez v0, :cond_22
if-eqz p3, :cond_21
new-instance v0, Landroid/support/v4/app/LoaderManagerImpl;
invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Z)V
iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;
invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_21
:goto_21
return-object v0
:cond_22
invoke-virtual {v0, p0}, Landroid/support/v4/app/LoaderManagerImpl;->updateActivity(Landroid/support/v4/app/FragmentActivity;)V
goto :goto_21
.end method
.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
return-object v0
.end method
.method public getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
.registers 4
const/4 v2, 0x1
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
if-eqz v0, :cond_8
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
:goto_7
return-object v0
:cond_8
iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mCheckedForLoaderManager:Z
const/4 v0, 0x0
iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z
invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
goto :goto_7
.end method
.method  invalidateSupportFragment(Ljava/lang/String;)V
.registers 4
iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;
if-eqz v1, :cond_1a
iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;
invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;
if-eqz v0, :cond_1a
iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z
if-nez v1, :cond_1a
invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V
iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;
invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_1a
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 9
iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V
shr-int/lit8 v1, p1, 0x10
if-eqz v1, :cond_6f
add-int/lit8 v1, v1, -0x1
iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-eqz v2, :cond_1d
if-ltz v1, :cond_1d
iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-lt v1, v2, :cond_3c
:cond_1d
const-string/jumbo v2, "FragmentActivity"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "Activity result fragment index out of range: 0x"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:goto_3b
return-void
:cond_3c
iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-nez v0, :cond_67
const-string/jumbo v2, "FragmentActivity"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "Activity result no fragment exists for index: 0x"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_3b
:cond_67
const v2, 0xffff
and-int/2addr v2, p1
invoke-virtual {v0, v2, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V
goto :goto_3b
:cond_6f
invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V
goto :goto_3b
.end method
.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
.registers 2
return-void
.end method
.method public onBackPressed()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackImmediate()Z
move-result v0
if-nez v0, :cond_b
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V
:cond_b
return-void
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 3
invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Landroid/support/v4/app/FragmentActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->mContainer:Landroid/support/v4/app/FragmentContainer;
invoke-virtual {v3, p0, v4, v2}, Landroid/support/v4/app/FragmentManagerImpl;->attachActivity(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v3
invoke-virtual {v3}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;
move-result-object v3
if-nez v3, :cond_19
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v3
invoke-virtual {v3, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V
:cond_19
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
if-eqz v0, :cond_28
iget-object v3, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Ljava/util/HashMap;
iput-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;
:cond_28
if-eqz p1, :cond_3a
const-string/jumbo v3, "android:support:fragments"
invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v1
iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
if-eqz v0, :cond_37
iget-object v2, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Ljava/util/ArrayList;
:cond_37
invoke-virtual {v3, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
:cond_3a
iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V
const-string v1, " - Landroid/support/v4/app/FragmentActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
.registers 6
if-nez p1, :cond_1a
invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z
move-result v0
iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;
move-result-object v2
invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
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
.registers 15
const/4 v3, 0x0
const/4 v1, 0x0
const/4 v10, 0x1
const/4 v8, -0x1
const-string/jumbo v7, "fragment"
invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-nez v7, :cond_12
invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
move-result-object v7
:goto_11
return-object v7
:cond_12
const-string/jumbo v7, "class"
invoke-interface {p3, v3, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
sget-object v7, Landroid/support/v4/app/FragmentActivity$FragmentTag;->Fragment:[I
invoke-virtual {p2, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
if-nez v2, :cond_25
invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v2
:cond_25
invoke-virtual {v0, v10, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v4
const/4 v7, 0x2
invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
const/4 v5, 0x0
if-eqz v5, :cond_38
invoke-virtual {v5}, Landroid/view/View;->getId()I
move-result v1
:cond_38
if-ne v1, v8, :cond_60
if-ne v4, v8, :cond_60
if-nez v6, :cond_60
new-instance v7, Ljava/lang/IllegalArgumentException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, ": Must specify unique android:id, android:tag, or have a parent with an id for "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v7
:cond_60
if-eq v4, v8, :cond_68
iget-object v7, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v7, v4}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;
move-result-object v3
:cond_68
if-nez v3, :cond_72
if-eqz v6, :cond_72
iget-object v7, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v3
:cond_72
if-nez v3, :cond_7c
if-eq v1, v8, :cond_7c
iget-object v7, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v7, v1}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;
move-result-object v3
:cond_7c
sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v7, :cond_b4
const-string/jumbo v7, "FragmentActivity"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v9, "onCreateView: id=0x"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, " fname="
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, " existing="
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_b4
if-nez v3, :cond_fc
invoke-static {p0, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v3
iput-boolean v10, v3, Landroid/support/v4/app/Fragment;->mFromLayout:Z
if-eqz v4, :cond_fa
move v7, v4
:goto_bf
iput v7, v3, Landroid/support/v4/app/Fragment;->mFragmentId:I
iput v1, v3, Landroid/support/v4/app/Fragment;->mContainerId:I
iput-object v6, v3, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
iput-boolean v10, v3, Landroid/support/v4/app/Fragment;->mInLayout:Z
iget-object v7, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
iput-object v7, v3, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v7, v3, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {v3, p0, p3, v7}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
iget-object v7, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v7, v3, v10}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V
:goto_d5
iget-object v7, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-nez v7, :cond_15d
new-instance v7, Ljava/lang/IllegalStateException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v9, "Fragment "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, " did not create a view."
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v7
:cond_fa
move v7, v1
goto :goto_bf
:cond_fc
iget-boolean v7, v3, Landroid/support/v4/app/Fragment;->mInLayout:Z
if-eqz v7, :cond_14b
new-instance v7, Ljava/lang/IllegalArgumentException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, ": Duplicate id 0x"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, ", tag "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, ", or parent id 0x"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, " with another fragment for "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v7
:cond_14b
iput-boolean v10, v3, Landroid/support/v4/app/Fragment;->mInLayout:Z
iget-boolean v7, v3, Landroid/support/v4/app/Fragment;->mRetaining:Z
if-nez v7, :cond_156
iget-object v7, v3, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {v3, p0, p3, v7}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
:cond_156
iget-object v7, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v7, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V
goto/16 :goto_d5
:cond_15d
if-eqz v4, :cond_164
iget-object v7, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v7, v4}, Landroid/view/View;->setId(I)V
:cond_164
iget-object v7, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v7
if-nez v7, :cond_171
iget-object v7, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:cond_171
iget-object v7, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
goto/16 :goto_11
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Landroid/support/v4/app/FragmentActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
if-eqz v0, :cond_15
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V
:cond_15
const-string v1, " - Landroid/support/v4/app/FragmentActivity; onDestroy"
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
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchLowMemory()V
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
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
goto :goto_7
:sswitch_14
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z
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
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V
return-void
.end method
.method public onPanelClosed(ILandroid/view/Menu;)V
.registers 4
packed-switch p1, :pswitch_data_e
:goto_3
invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V
return-void
:pswitch_7
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V
goto :goto_3
nop
:pswitch_data_e
.packed-switch 0x0
:pswitch_7
.end packed-switch
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Landroid/support/v4/app/FragmentActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x2
invoke-super {p0}, Landroid/app/Activity;->onPause()V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z
move-result v0
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V
:cond_17
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPause()V
const-string v1, " - Landroid/support/v4/app/FragmentActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPostResume()V
.registers 3
invoke-super {p0}, Landroid/app/Activity;->onPostResume()V
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z
return-void
.end method
.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
.registers 7
const/4 v1, 0x0
if-nez p1, :cond_26
if-eqz p3, :cond_26
iget-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z
if-eqz v2, :cond_11
iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z
invoke-interface {p3}, Landroid/view/Menu;->clear()V
invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z
:cond_11
invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
move-result v0
iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
move-result v2
or-int/2addr v0, v2
if-eqz v0, :cond_25
invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z
move-result v2
if-eqz v2, :cond_25
const/4 v1, 0x1
:goto_25
:cond_25
return v1
:cond_26
invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
move-result v1
goto :goto_25
.end method
.method  onReallyStop()V
.registers 2
iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z
if-eqz v0, :cond_14
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
if-eqz v0, :cond_14
iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z
if-nez v0, :cond_1a
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V
:goto_14
:cond_14
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchReallyStop()V
return-void
:cond_1a
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V
goto :goto_14
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Landroid/support/v4/app/FragmentActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z
const-string v1, " - Landroid/support/v4/app/FragmentActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResumeFragments()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V
return-void
.end method
.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
.registers 11
const/4 v7, 0x0
iget-boolean v8, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z
if-eqz v8, :cond_9
const/4 v8, 0x1
invoke-virtual {p0, v8}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V
:cond_9
invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
move-result-object v0
iget-object v8, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v8}, Landroid/support/v4/app/FragmentManagerImpl;->retainNonConfig()Ljava/util/ArrayList;
move-result-object v1
const/4 v6, 0x0
iget-object v8, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;
if-eqz v8, :cond_44
iget-object v8, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;
invoke-virtual {v8}, Ljava/util/HashMap;->size()I
move-result v8
new-array v4, v8, [Landroid/support/v4/app/LoaderManagerImpl;
iget-object v8, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;
invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v8
invoke-interface {v8, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
if-eqz v4, :cond_44
const/4 v2, 0x0
:goto_2c
array-length v8, v4
if-ge v2, v8, :cond_44
aget-object v3, v4, v2
iget-boolean v8, v3, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z
if-eqz v8, :cond_39
const/4 v6, 0x1
:goto_36
add-int/lit8 v2, v2, 0x1
goto :goto_2c
:cond_39
invoke-virtual {v3}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V
iget-object v8, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;
iget-object v9, v3, Landroid/support/v4/app/LoaderManagerImpl;->mWho:Ljava/lang/String;
invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_36
:cond_44
if-nez v1, :cond_4c
if-nez v6, :cond_4c
if-nez v0, :cond_4c
move-object v5, v7
:goto_4b
return-object v5
:cond_4c
new-instance v5, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
invoke-direct {v5}, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;-><init>()V
iput-object v7, v5, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->activity:Ljava/lang/Object;
iput-object v0, v5, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;
iput-object v7, v5, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->children:Ljava/util/HashMap;
iput-object v1, v5, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Ljava/util/ArrayList;
iget-object v7, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;
iput-object v7, v5, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Ljava/util/HashMap;
goto :goto_4b
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Landroid/support/v4/app/FragmentActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;
move-result-object v0
if-eqz v0, :cond_11
const-string/jumbo v1, "android:support:fragments"
invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_11
const-string v1, " - Landroid/support/v4/app/FragmentActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStart()V
.registers 8
const-string v1, " + Landroid/support/v4/app/FragmentActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x0
const/4 v5, 0x1
invoke-super {p0}, Landroid/app/Activity;->onStart()V
iput-boolean v6, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z
iput-boolean v6, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z
iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V
iget-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z
if-nez v3, :cond_19
iput-boolean v5, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z
iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V
:cond_19
iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V
iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z
iget-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z
if-nez v3, :cond_34
iput-boolean v5, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z
iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
if-eqz v3, :cond_5f
iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
invoke-virtual {v3}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V
:goto_32
:cond_32
iput-boolean v5, p0, Landroid/support/v4/app/FragmentActivity;->mCheckedForLoaderManager:Z
:cond_34
iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V
iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;
if-eqz v3, :cond_7c
iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;
invoke-virtual {v3}, Ljava/util/HashMap;->size()I
move-result v3
new-array v2, v3, [Landroid/support/v4/app/LoaderManagerImpl;
iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Ljava/util/HashMap;
invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v3
invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
if-eqz v2, :cond_7c
const/4 v0, 0x0
:goto_51
array-length v3, v2
if-ge v0, v3, :cond_7c
aget-object v1, v2, v0
invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->finishRetain()V
invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doReportStart()V
add-int/lit8 v0, v0, 0x1
goto :goto_51
:cond_5f
iget-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mCheckedForLoaderManager:Z
if-nez v3, :cond_32
const/4 v3, 0x0
iget-boolean v4, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z
invoke-virtual {p0, v3, v4, v6}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
move-result-object v3
iput-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
if-eqz v3, :cond_32
iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
iget-boolean v3, v3, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z
if-nez v3, :cond_32
iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
invoke-virtual {v3}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V
goto :goto_32
:cond_7c
const-string v1, " - Landroid/support/v4/app/FragmentActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStop()V
.registers 3
const-string v1, " + Landroid/support/v4/app/FragmentActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
invoke-super {p0}, Landroid/app/Activity;->onStop()V
iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStop()V
const-string v1, " - Landroid/support/v4/app/FragmentActivity; onStop"
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
if-eq p2, v0, :cond_11
const/high16 v0, -0x1
and-int/2addr v0, p2
if-eqz v0, :cond_11
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "Can only use lower 16 bits for requestCode"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
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
if-eqz v0, :cond_15
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "Can only use lower 16 bits for requestCode"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_15
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
invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->invalidateOptionsMenu(Landroid/app/Activity;)V
:goto_9
return-void
:cond_a
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z
goto :goto_9
.end method