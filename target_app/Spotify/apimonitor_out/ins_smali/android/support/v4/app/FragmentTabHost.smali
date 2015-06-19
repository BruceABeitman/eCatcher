.class public Landroid/support/v4/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "SourceFile"
.implements Landroid/widget/TabHost$OnTabChangeListener;
.field private final a:Ljava/util/ArrayList;
.field private b:Landroid/content/Context;
.field private c:Landroid/support/v4/app/r;
.field private d:I
.field private e:Landroid/widget/TabHost$OnTabChangeListener;
.field private f:Landroid/support/v4/app/v;
.field private g:Z
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 6
const/4 v2, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;
const/4 v0, 0x1
new-array v0, v0, [I
const v1, 0x10100f3
aput v1, v0, v2
invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
iput v1, p0, Landroid/support/v4/app/FragmentTabHost;->d:I
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
return-void
.end method
.method private a(Ljava/lang/String;Landroid/support/v4/app/w;)Landroid/support/v4/app/w;
.registers 7
const/4 v1, 0x0
const/4 v0, 0x0
move v2, v0
:goto_3
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v2, v0, :cond_22
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/v;
invoke-static {v0}, Landroid/support/v4/app/v;->b(Landroid/support/v4/app/v;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_8f
:goto_1d
add-int/lit8 v1, v2, 0x1
move v2, v1
move-object v1, v0
goto :goto_3
:cond_22
if-nez v1, :cond_39
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "No tab known for tag "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_39
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->f:Landroid/support/v4/app/v;
if-eq v0, v1, :cond_86
if-nez p2, :cond_45
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->c:Landroid/support/v4/app/r;
invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;
move-result-object p2
:cond_45
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->f:Landroid/support/v4/app/v;
if-eqz v0, :cond_5a
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->f:Landroid/support/v4/app/v;
invoke-static {v0}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/v;)Landroid/support/v4/app/Fragment;
move-result-object v0
if-eqz v0, :cond_5a
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->f:Landroid/support/v4/app/v;
invoke-static {v0}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/v;)Landroid/support/v4/app/Fragment;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/support/v4/app/w;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
:cond_5a
if-eqz v1, :cond_84
invoke-static {v1}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/v;)Landroid/support/v4/app/Fragment;
move-result-object v0
if-nez v0, :cond_87
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->b:Landroid/content/Context;
invoke-static {v1}, Landroid/support/v4/app/v;->c(Landroid/support/v4/app/v;)Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-static {v1}, Landroid/support/v4/app/v;->d(Landroid/support/v4/app/v;)Landroid/os/Bundle;
move-result-object v3
invoke-static {v0, v2, v3}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
move-result-object v0
invoke-static {v1, v0}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/v;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
iget v0, p0, Landroid/support/v4/app/FragmentTabHost;->d:I
invoke-static {v1}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/v;)Landroid/support/v4/app/Fragment;
move-result-object v2
invoke-static {v1}, Landroid/support/v4/app/v;->b(Landroid/support/v4/app/v;)Ljava/lang/String;
move-result-object v3
invoke-virtual {p2, v0, v2, v3}, Landroid/support/v4/app/w;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;
:cond_84
:goto_84
iput-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->f:Landroid/support/v4/app/v;
:cond_86
return-object p2
:cond_87
invoke-static {v1}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/v;)Landroid/support/v4/app/Fragment;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/support/v4/app/w;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
goto :goto_84
:cond_8f
move-object v0, v1
goto :goto_1d
.end method
.method protected onAttachedToWindow()V
.registers 7
invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V
invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;
move-result-object v3
const/4 v1, 0x0
const/4 v0, 0x0
move v2, v0
:goto_a
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v2, v0, :cond_55
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/v;
iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->c:Landroid/support/v4/app/r;
invoke-static {v0}, Landroid/support/v4/app/v;->b(Landroid/support/v4/app/v;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v4
invoke-static {v0, v4}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/v;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
invoke-static {v0}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/v;)Landroid/support/v4/app/Fragment;
move-result-object v4
if-eqz v4, :cond_41
invoke-static {v0}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/v;)Landroid/support/v4/app/Fragment;
move-result-object v4
iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->J:Z
if-nez v4, :cond_41
invoke-static {v0}, Landroid/support/v4/app/v;->b(Landroid/support/v4/app/v;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_45
iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->f:Landroid/support/v4/app/v;
:goto_41
:cond_41
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_a
:cond_45
if-nez v1, :cond_4d
iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->c:Landroid/support/v4/app/r;
invoke-virtual {v1}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;
move-result-object v1
:cond_4d
invoke-static {v0}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/v;)Landroid/support/v4/app/Fragment;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/support/v4/app/w;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
goto :goto_41
:cond_55
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->g:Z
invoke-direct {p0, v3, v1}, Landroid/support/v4/app/FragmentTabHost;->a(Ljava/lang/String;Landroid/support/v4/app/w;)Landroid/support/v4/app/w;
move-result-object v0
if-eqz v0, :cond_66
invoke-virtual {v0}, Landroid/support/v4/app/w;->b()I
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->c:Landroid/support/v4/app/r;
invoke-virtual {v0}, Landroid/support/v4/app/r;->b()Z
:cond_66
return-void
.end method
.method protected onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->g:Z
return-void
.end method
.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 4
const-string v1, " + Landroid/support/v4/app/FragmentTabHost; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
check-cast p1, Landroid/support/v4/app/FragmentTabHost$SavedState;
invoke-virtual {p1}, Landroid/support/v4/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;
move-result-object v0
invoke-super {p0, v0}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V
iget-object v0, p1, Landroid/support/v4/app/FragmentTabHost$SavedState;->a:Ljava/lang/String;
invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V
const-string v1, " - Landroid/support/v4/app/FragmentTabHost; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onSaveInstanceState()Landroid/os/Parcelable;
.registers 4
const-string v1, " + Landroid/support/v4/app/FragmentTabHost; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v0
new-instance v1, Landroid/support/v4/app/FragmentTabHost$SavedState;
invoke-direct {v1, v0}, Landroid/support/v4/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V
invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;
move-result-object v0
iput-object v0, v1, Landroid/support/v4/app/FragmentTabHost$SavedState;->a:Ljava/lang/String;
move-object v2, v1
const-string v1, " - Landroid/support/v4/app/FragmentTabHost; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v1, v2
return-object v1
.end method
.method public onTabChanged(Ljava/lang/String;)V
.registers 3
iget-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->g:Z
if-eqz v0, :cond_e
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v4/app/FragmentTabHost;->a(Ljava/lang/String;Landroid/support/v4/app/w;)Landroid/support/v4/app/w;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {v0}, Landroid/support/v4/app/w;->b()I
:cond_e
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->e:Landroid/widget/TabHost$OnTabChangeListener;
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->e:Landroid/widget/TabHost$OnTabChangeListener;
invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V
:cond_17
return-void
.end method
.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->e:Landroid/widget/TabHost$OnTabChangeListener;
return-void
.end method
.method public setup()V
.registers 3
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Must call setup() that takes a Context and FragmentManager"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method