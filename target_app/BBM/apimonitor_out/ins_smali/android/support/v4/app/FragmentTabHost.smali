.class public Landroid/support/v4/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"
.implements Landroid/widget/TabHost$OnTabChangeListener;
.field private final a:Ljava/util/ArrayList;
.field private b:Landroid/widget/FrameLayout;
.field private c:Landroid/content/Context;
.field private d:Landroid/support/v4/app/n;
.field private e:I
.field private f:Landroid/widget/TabHost$OnTabChangeListener;
.field private g:Landroid/support/v4/app/v;
.field private h:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0, p1, v1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;
invoke-direct {p0, p1, v1}, Landroid/support/v4/app/FragmentTabHost;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;
invoke-direct {p0, p1, p2}, Landroid/support/v4/app/FragmentTabHost;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
if-ge v2, v0, :cond_20
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/v;
iget-object v3, v0, Landroid/support/v4/app/v;->a:Ljava/lang/String;
invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_7c
:goto_1b
add-int/lit8 v1, v2, 0x1
move v2, v1
move-object v1, v0
goto :goto_3
:cond_20
if-nez v1, :cond_37
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
:cond_37
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->g:Landroid/support/v4/app/v;
if-eq v0, v1, :cond_75
if-nez p2, :cond_43
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->d:Landroid/support/v4/app/n;
invoke-virtual {v0}, Landroid/support/v4/app/n;->a()Landroid/support/v4/app/w;
move-result-object p2
:cond_43
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->g:Landroid/support/v4/app/v;
if-eqz v0, :cond_54
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->g:Landroid/support/v4/app/v;
iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_54
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->g:Landroid/support/v4/app/v;
iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/Fragment;
invoke-virtual {p2, v0}, Landroid/support/v4/app/w;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
:cond_54
if-eqz v1, :cond_73
iget-object v0, v1, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/Fragment;
if-nez v0, :cond_76
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->c:Landroid/content/Context;
iget-object v2, v1, Landroid/support/v4/app/v;->b:Ljava/lang/Class;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
iget-object v3, v1, Landroid/support/v4/app/v;->c:Landroid/os/Bundle;
invoke-static {v0, v2, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
move-result-object v0
iput-object v0, v1, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/Fragment;
iget v0, p0, Landroid/support/v4/app/FragmentTabHost;->e:I
iget-object v2, v1, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/Fragment;
iget-object v3, v1, Landroid/support/v4/app/v;->a:Ljava/lang/String;
invoke-virtual {p2, v0, v2, v3}, Landroid/support/v4/app/w;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;
:goto_73
:cond_73
iput-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->g:Landroid/support/v4/app/v;
:cond_75
return-object p2
:cond_76
iget-object v0, v1, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/Fragment;
invoke-virtual {p2, v0}, Landroid/support/v4/app/w;->d(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
goto :goto_73
:cond_7c
move-object v0, v1
goto :goto_1b
.end method
.method private a()V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->b:Landroid/widget/FrameLayout;
if-nez v0, :cond_29
iget v0, p0, Landroid/support/v4/app/FragmentTabHost;->e:I
invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTabHost;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->b:Landroid/widget/FrameLayout;
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->b:Landroid/widget/FrameLayout;
if-nez v0, :cond_29
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "No tab content FrameLayout found for id "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Landroid/support/v4/app/FragmentTabHost;->e:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_29
return-void
.end method
.method private a(Landroid/content/Context;)V
.registers 9
const v2, 0x1020013
const/4 v6, 0x0
const/4 v5, 0x0
const/4 v4, -0x1
invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentTabHost;->findViewById(I)Landroid/view/View;
move-result-object v0
if-nez v0, :cond_5c
new-instance v0, Landroid/widget/LinearLayout;
invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V
new-instance v1, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v1, Landroid/widget/TabWidget;
invoke-direct {v1, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->setId(I)V
invoke-virtual {v1, v5}, Landroid/widget/TabWidget;->setOrientation(I)V
new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
const/4 v3, -0x2
invoke-direct {v2, v4, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v1, Landroid/widget/FrameLayout;
invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
const v2, 0x1020011
invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V
new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v2, v5, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v1, Landroid/widget/FrameLayout;
invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->b:Landroid/widget/FrameLayout;
iget-object v2, p0, Landroid/support/v4/app/FragmentTabHost;->b:Landroid/widget/FrameLayout;
iget v3, p0, Landroid/support/v4/app/FragmentTabHost;->e:I
invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V
new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
const/high16 v3, 0x3f80
invoke-direct {v2, v4, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:cond_5c
return-void
.end method
.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 6
const/4 v2, 0x0
const/4 v0, 0x1
new-array v0, v0, [I
const v1, 0x10100f3
aput v1, v0, v2
invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
iput v1, p0, Landroid/support/v4/app/FragmentTabHost;->e:I
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
return-void
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
if-ge v2, v0, :cond_4c
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/v;
iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->d:Landroid/support/v4/app/n;
iget-object v5, v0, Landroid/support/v4/app/v;->a:Ljava/lang/String;
invoke-virtual {v4, v5}, Landroid/support/v4/app/n;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v4
iput-object v4, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/Fragment;
iget-object v4, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/Fragment;
if-eqz v4, :cond_3a
iget-object v4, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/Fragment;
invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->isDetached()Z
move-result v4
if-nez v4, :cond_3a
iget-object v4, v0, Landroid/support/v4/app/v;->a:Ljava/lang/String;
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_3e
iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->g:Landroid/support/v4/app/v;
:goto_3a
:cond_3a
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_a
:cond_3e
if-nez v1, :cond_46
iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->d:Landroid/support/v4/app/n;
invoke-virtual {v1}, Landroid/support/v4/app/n;->a()Landroid/support/v4/app/w;
move-result-object v1
:cond_46
iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/Fragment;
invoke-virtual {v1, v0}, Landroid/support/v4/app/w;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
goto :goto_3a
:cond_4c
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->h:Z
invoke-direct {p0, v3, v1}, Landroid/support/v4/app/FragmentTabHost;->a(Ljava/lang/String;Landroid/support/v4/app/w;)Landroid/support/v4/app/w;
move-result-object v0
if-eqz v0, :cond_5d
invoke-virtual {v0}, Landroid/support/v4/app/w;->a()I
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->d:Landroid/support/v4/app/n;
invoke-virtual {v0}, Landroid/support/v4/app/n;->b()Z
:cond_5d
return-void
.end method
.method protected onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->h:Z
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
iget-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->h:Z
if-eqz v0, :cond_e
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v4/app/FragmentTabHost;->a(Ljava/lang/String;Landroid/support/v4/app/w;)Landroid/support/v4/app/w;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {v0}, Landroid/support/v4/app/w;->a()I
:cond_e
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->f:Landroid/widget/TabHost$OnTabChangeListener;
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->f:Landroid/widget/TabHost$OnTabChangeListener;
invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V
:cond_17
return-void
.end method
.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->f:Landroid/widget/TabHost$OnTabChangeListener;
return-void
.end method
.method public setup()V
.registers 3
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Must call setup() that takes a Context and FragmentManager"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setup(Landroid/content/Context;Landroid/support/v4/app/n;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentTabHost;->a(Landroid/content/Context;)V
invoke-super {p0}, Landroid/widget/TabHost;->setup()V
iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->c:Landroid/content/Context;
iput-object p2, p0, Landroid/support/v4/app/FragmentTabHost;->d:Landroid/support/v4/app/n;
invoke-direct {p0}, Landroid/support/v4/app/FragmentTabHost;->a()V
return-void
.end method
.method public setup(Landroid/content/Context;Landroid/support/v4/app/n;I)V
.registers 6
invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentTabHost;->a(Landroid/content/Context;)V
invoke-super {p0}, Landroid/widget/TabHost;->setup()V
iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->c:Landroid/content/Context;
iput-object p2, p0, Landroid/support/v4/app/FragmentTabHost;->d:Landroid/support/v4/app/n;
iput p3, p0, Landroid/support/v4/app/FragmentTabHost;->e:I
invoke-direct {p0}, Landroid/support/v4/app/FragmentTabHost;->a()V
iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->b:Landroid/widget/FrameLayout;
invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setId(I)V
invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getId()I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_21
const v0, 0x1020012
invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTabHost;->setId(I)V
:cond_21
return-void
.end method