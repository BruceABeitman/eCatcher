.class public Lcom/spotify/android/paste/widget/SectionHeaderView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field private a:Landroid/widget/TextView;
.field private b:Lcom/spotify/android/paste/widget/internal/a;
.field private c:Landroid/view/View;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/spotify/android/paste/widget/SectionHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Lcom/spotify/android/paste/b;->t:I
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/android/paste/widget/SectionHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 7
const/4 v2, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const-class v0, Lcom/spotify/android/paste/widget/SectionHeaderView;
invoke-static {v0, p0}, Lcom/spotify/android/paste/widget/f;->a(Ljava/lang/Class;Ljava/lang/Object;)V
sget-object v0, Lcom/spotify/android/paste/e;->v:[I
invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v1
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/SectionHeaderView;->setOrientation(I)V
sget v0, Lcom/spotify/android/paste/d;->h:I
invoke-static {p1, v0, p0}, Lcom/spotify/android/paste/widget/SectionHeaderView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
sget v0, Lcom/spotify/android/paste/c;->r:I
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/SectionHeaderView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/android/paste/widget/SectionHeaderView;->a:Landroid/widget/TextView;
iget-object v0, p0, Lcom/spotify/android/paste/widget/SectionHeaderView;->a:Landroid/widget/TextView;
invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V
sget v0, Lcom/spotify/android/paste/c;->e:I
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/SectionHeaderView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/android/paste/widget/SectionHeaderView;->c:Landroid/view/View;
new-instance v1, Lcom/spotify/android/paste/widget/internal/a;
sget v0, Lcom/spotify/android/paste/c;->a:I
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/SectionHeaderView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-direct {v1, v0}, Lcom/spotify/android/paste/widget/internal/a;-><init>(Landroid/view/ViewGroup;)V
iput-object v1, p0, Lcom/spotify/android/paste/widget/SectionHeaderView;->b:Lcom/spotify/android/paste/widget/internal/a;
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/SectionHeaderView;->b:Lcom/spotify/android/paste/widget/internal/a;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/internal/a;->c()V
const-string v0, ""
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/SectionHeaderView;->a(Ljava/lang/String;)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/SectionHeaderView;->a(Z)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/widget/SectionHeaderView;->a:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public final a(Z)V
.registers 4
iget-object v1, p0, Lcom/spotify/android/paste/widget/SectionHeaderView;->c:Landroid/view/View;
if-eqz p1, :cond_9
const/4 v0, 0x0
:goto_5
invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
return-void
:cond_9
const/4 v0, 0x4
goto :goto_5
.end method
.method public final b()Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/SectionHeaderView;->a:Landroid/widget/TextView;
return-object v0
.end method