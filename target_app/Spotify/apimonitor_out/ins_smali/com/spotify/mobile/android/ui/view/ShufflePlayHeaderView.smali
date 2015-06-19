.class public Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;
.super Lcom/spotify/mobile/android/ui/view/StickyHeaderView;
.source "SourceFile"
.field private a:Landroid/view/View;
.field private b:Landroid/view/View;
.field private c:Landroid/view/View;
.field private d:Landroid/view/View;
.field private e:Landroid/widget/TextView;
.field private f:Landroid/widget/LinearLayout;
.field private g:Lcom/spotify/mobile/android/util/f;
.field private h:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/widget/ListView;Landroid/view/View$OnClickListener;)Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;
.registers 9
const/4 v2, 0x0
move-object v1, v2
move-object v0, p1
:goto_3
invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eqz v0, :cond_53
instance-of v3, v0, Landroid/view/View;
if-eqz v3, :cond_53
check-cast v0, Landroid/view/View;
const v1, 0x7f0a02f5
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
move-object v5, v1
move-object v1, v0
move-object v0, v5
:goto_19
if-nez v0, :cond_1d
if-nez v1, :cond_56
:cond_1d
check-cast v0, Landroid/view/ViewGroup;
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
const v2, 0x7f0300d1
const/4 v3, 0x0
invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;
invoke-virtual {v1, p1, v0}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->a(Landroid/widget/ListView;Landroid/view/ViewGroup;)V
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->d()Landroid/view/ViewGroup;
move-result-object v0
const/16 v2, 0x8
invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V
invoke-static {p0, p1}, Lcom/spotify/mobile/android/ui/stuff/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
move-result-object v0
invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
const/4 v3, -0x2
const/4 v4, -0x1
invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
iput-object v0, v1, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->d:Landroid/view/View;
iget-object v3, v1, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->f:Landroid/widget/LinearLayout;
iget-object v4, v1, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->d:Landroid/view/View;
invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iput-object v0, v1, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->e:Landroid/widget/TextView;
return-object v1
:cond_53
move-object v0, v1
move-object v1, v2
goto :goto_19
:cond_56
move-object v5, v0
move-object v0, v1
move-object v1, v5
goto :goto_3
.end method
.method public static a(Lcom/spotify/mobile/android/util/f;Landroid/view/View;)V
.registers 13
new-instance v0, Landroid/view/animation/ScaleAnimation;
const/high16 v1, 0x3f80
const v2, 0x3f733333
const/high16 v3, 0x3f80
const v4, 0x3f733333
const/4 v5, 0x1
const/high16 v6, 0x3f00
const/4 v7, 0x1
const/high16 v8, 0x3f00
invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V
const-wide/16 v1, 0x64
invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V
new-instance v1, Landroid/view/animation/ScaleAnimation;
const v2, 0x3f733333
const v3, 0x3f866666
const v4, 0x3f733333
const v5, 0x3f866666
const/4 v6, 0x1
const/high16 v7, 0x3f00
const/4 v8, 0x1
const/high16 v9, 0x3f00
invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V
const-wide/16 v2, 0x96
invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V
new-instance v2, Landroid/view/animation/ScaleAnimation;
const v3, 0x3f866666
const/high16 v4, 0x3f80
const v5, 0x3f866666
const/high16 v6, 0x3f80
const/4 v7, 0x1
const/high16 v8, 0x3f00
const/4 v9, 0x1
const/high16 v10, 0x3f00
invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V
const-wide/16 v3, 0x64
invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V
const/4 v3, 0x0
invoke-virtual {p0, p1, v0, v3}, Lcom/spotify/mobile/android/util/f;->a(Landroid/view/View;Landroid/view/animation/Animation;Z)V
const/4 v0, 0x0
invoke-virtual {p0, p1, v1, v0}, Lcom/spotify/mobile/android/util/f;->a(Landroid/view/View;Landroid/view/animation/Animation;Z)V
const/4 v0, 0x0
invoke-virtual {p0, p1, v2, v0}, Lcom/spotify/mobile/android/util/f;->a(Landroid/view/View;Landroid/view/animation/Animation;Z)V
return-void
.end method
.method public final a()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->h:Z
return-void
.end method
.method protected final a(Z)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->b:Landroid/view/View;
if-eqz v0, :cond_d
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->b:Landroid/view/View;
if-eqz p1, :cond_e
const/16 v0, 0x8
:goto_a
invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
:cond_d
return-void
:cond_e
const/4 v0, 0x0
goto :goto_a
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->g:Lcom/spotify/mobile/android/util/f;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->c:Landroid/view/View;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->a(Lcom/spotify/mobile/android/util/f;Landroid/view/View;)V
return-void
.end method
.method public final b(Z)V
.registers 6
const/4 v1, 0x0
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->d()Landroid/view/ViewGroup;
move-result-object v2
if-eqz p1, :cond_1d
iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->h:Z
if-nez v3, :cond_13
if-eqz v0, :cond_1b
:cond_13
const/4 v0, 0x1
:goto_14
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->c(Z)V
invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
:goto_1a
return-void
:cond_1b
move v0, v1
goto :goto_14
:cond_1d
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->c(Z)V
const/16 v0, 0x8
invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V
goto :goto_1a
.end method
.method public final c()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->d:Landroid/view/View;
return-object v0
.end method
.method protected onFinishInflate()V
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->onFinishInflate()V
const v0, 0x7f0a01fc
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->a:Landroid/view/View;
const v0, 0x7f0a031e
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->b:Landroid/view/View;
const v0, 0x7f0a021b
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->c:Landroid/view/View;
new-instance v0, Lcom/spotify/mobile/android/util/f;
invoke-direct {v0}, Lcom/spotify/mobile/android/util/f;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->g:Lcom/spotify/mobile/android/util/f;
const v0, 0x7f0a0398
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->f:Landroid/widget/LinearLayout;
return-void
.end method
.method public setEnabled(Z)V
.registers 3
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->setEnabled(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->a:Landroid/view/View;
invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V
return-void
.end method