.class final Lcom/spotify/android/paste/widget/d;
.super Landroid/support/v4/view/ah;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/android/paste/widget/HeaderView;
.method private constructor <init>(Lcom/spotify/android/paste/widget/HeaderView;)V
.registers 2
iput-object p1, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-direct {p0}, Landroid/support/v4/view/ah;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/android/paste/widget/HeaderView;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/android/paste/widget/d;-><init>(Lcom/spotify/android/paste/widget/HeaderView;)V
return-void
.end method
.method public final a(Ljava/lang/Object;)I
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->f(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/widget/LinearLayout;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, -0x1
:goto_d
return v0
:cond_e
invoke-super {p0, p1}, Landroid/support/v4/view/ah;->a(Ljava/lang/Object;)I
move-result v0
add-int/lit8 v0, v0, 0x1
goto :goto_d
.end method
.method public final a()Landroid/os/Parcelable;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->e(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/support/v4/view/ah;
move-result-object v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->e(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/support/v4/view/ah;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/view/ah;->a()Landroid/os/Parcelable;
move-result-object v0
:goto_12
return-object v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.registers 5
if-nez p2, :cond_12
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->f(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/widget/LinearLayout;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->f(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/widget/LinearLayout;
move-result-object v0
:goto_11
return-object v0
:cond_12
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->e(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/support/v4/view/ah;
move-result-object v0
add-int/lit8 v1, p2, -0x1
invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/ah;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
move-result-object v0
goto :goto_11
.end method
.method public final a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
.registers 4
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->e(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/support/v4/view/ah;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->e(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/support/v4/view/ah;
move-result-object v0
invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ah;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
:cond_11
return-void
.end method
.method public final a(Landroid/view/ViewGroup;)V
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->e(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/support/v4/view/ah;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->e(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/support/v4/view/ah;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/support/v4/view/ah;->a(Landroid/view/ViewGroup;)V
:cond_11
return-void
.end method
.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.registers 6
if-nez p2, :cond_c
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->f(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/widget/LinearLayout;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:goto_b
return-void
:cond_c
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->e(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/support/v4/view/ah;
move-result-object v0
add-int/lit8 v1, p2, -0x1
invoke-virtual {v0, p1, v1, p3}, Landroid/support/v4/view/ah;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
goto :goto_b
.end method
.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
.registers 4
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->f(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/widget/LinearLayout;
move-result-object v0
if-ne p2, v0, :cond_14
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->f(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/widget/LinearLayout;
move-result-object v0
if-ne p1, v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
:cond_14
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->e(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/support/v4/view/ah;
move-result-object v0
invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Ljava/lang/Object;)Z
move-result v0
goto :goto_11
.end method
.method public final b()I
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->e(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/support/v4/view/ah;
move-result-object v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->e(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/support/v4/view/ah;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/view/ah;->b()I
move-result v0
add-int/lit8 v0, v0, 0x1
:goto_14
return v0
:cond_15
const/4 v0, 0x1
goto :goto_14
.end method
.method public final b(I)Ljava/lang/CharSequence;
.registers 4
if-nez p1, :cond_8
const/4 v0, 0x0
invoke-super {p0, v0}, Landroid/support/v4/view/ah;->b(I)Ljava/lang/CharSequence;
move-result-object v0
:goto_7
return-object v0
:cond_8
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->e(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/support/v4/view/ah;
move-result-object v0
add-int/lit8 v1, p1, -0x1
invoke-virtual {v0, v1}, Landroid/support/v4/view/ah;->b(I)Ljava/lang/CharSequence;
move-result-object v0
goto :goto_7
.end method
.method public final b(Landroid/view/ViewGroup;)V
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->e(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/support/v4/view/ah;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->e(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/support/v4/view/ah;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/support/v4/view/ah;->b(Landroid/view/ViewGroup;)V
:cond_11
return-void
.end method
.method public final b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->e(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/support/v4/view/ah;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->e(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/support/v4/view/ah;
move-result-object v0
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/ah;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
:cond_11
return-void
.end method
.method public final c(I)F
.registers 4
if-nez p1, :cond_8
const/4 v0, 0x0
invoke-super {p0, v0}, Landroid/support/v4/view/ah;->c(I)F
move-result v0
:goto_7
return v0
:cond_8
iget-object v0, p0, Lcom/spotify/android/paste/widget/d;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0}, Lcom/spotify/android/paste/widget/HeaderView;->e(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/support/v4/view/ah;
move-result-object v0
add-int/lit8 v1, p1, -0x1
invoke-virtual {v0, v1}, Landroid/support/v4/view/ah;->c(I)F
move-result v0
goto :goto_7
.end method