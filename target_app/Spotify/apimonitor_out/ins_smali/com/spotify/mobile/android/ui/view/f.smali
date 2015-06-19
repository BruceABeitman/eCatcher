.class public final Lcom/spotify/mobile/android/ui/view/f;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field private final a:Lcom/spotify/android/paste/widget/ListItemView;
.field private final b:Lcom/spotify/android/paste/widget/ListItemView;
.field private final c:Landroid/widget/ImageView;
.field private final d:Landroid/widget/TextView;
.field private final e:Lcom/spotify/mobile/android/ui/view/PlayButton;
.method public constructor <init>(Landroid/content/Context;)V
.registers 8
const v5, 0x7f010196
const/4 v4, 0x1
const/4 v3, 0x0
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {p0, v4}, Lcom/spotify/mobile/android/ui/view/f;->setOrientation(I)V
const v0, 0x7f03005c
invoke-static {p1, v0, p0}, Lcom/spotify/mobile/android/ui/view/f;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
const v0, 0x7f0a0282
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/f;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/android/paste/widget/ListItemView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->a:Lcom/spotify/android/paste/widget/ListItemView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->b()Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0, v3}, Lcom/spotify/android/paste/widget/ListItemView;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->b()Landroid/widget/TextView;
move-result-object v0
invoke-static {p1, v0, v5}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V
const v0, 0x7f0a0283
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/f;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->d:Landroid/widget/TextView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->c()Landroid/widget/TextView;
move-result-object v0
const v1, 0x7f01019b
invoke-static {p1, v0, v1}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->c()Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/f;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0b005e
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/f;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v1}, Lcom/spotify/android/paste/widget/ListItemView;->c()Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const v0, 0x7f0a0286
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/f;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/android/paste/widget/ListItemView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->b:Lcom/spotify/android/paste/widget/ListItemView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->b:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0, v3}, Lcom/spotify/android/paste/widget/ListItemView;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->b:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->b()Landroid/widget/TextView;
move-result-object v0
invoke-static {p1, v0, v5}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V
const v1, 0x7f01018f
invoke-static {p1, v1}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;
move-result-object v1
invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
const v0, 0x7f0a0253
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/f;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/PlayButton;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->e:Lcom/spotify/mobile/android/ui/view/PlayButton;
const v0, 0x7f0a0285
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/f;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->c:Landroid/widget/ImageView;
return-void
.end method
.method public final a()Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->b()Landroid/widget/TextView;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->b:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0, p1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
return-void
.end method
.method public final a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.registers 7
const/16 v3, 0x8
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->c()Landroid/widget/TextView;
move-result-object v0
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_1e
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
:goto_12
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->d:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
:goto_1d
return-void
:cond_1e
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_12
:cond_25
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->d:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->d:Landroid/widget/TextView;
invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_1d
.end method
.method public final b()Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;
move-result-object v0
return-object v0
.end method
.method public final b(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->b:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0, p1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V
return-void
.end method
.method public final c()Lcom/spotify/mobile/android/ui/view/PlayButton;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->e:Lcom/spotify/mobile/android/ui/view/PlayButton;
return-object v0
.end method
.method public final d()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->d()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->d:Landroid/widget/TextView;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->b:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->d()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->b:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->e:Lcom/spotify/mobile/android/ui/view/PlayButton;
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/view/PlayButton;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->c:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V
return-void
.end method
.method public final e()Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->c:Landroid/widget/ImageView;
return-object v0
.end method
.method protected final onSizeChanged(IIII)V
.registers 7
if-ne p1, p3, :cond_4
if-eq p2, p4, :cond_13
:cond_4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/f;->c:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/f;->c:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_13
invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V
return-void
.end method