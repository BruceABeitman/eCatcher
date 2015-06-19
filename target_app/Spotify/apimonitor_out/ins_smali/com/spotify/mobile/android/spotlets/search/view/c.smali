.class final Lcom/spotify/mobile/android/spotlets/search/view/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/view/b;
.field private b:Lcom/spotify/android/paste/graphics/SpotifyIcon;
.field private c:Ljava/lang/Integer;
.field private d:Ljava/lang/Integer;
.field private e:I
.field private f:Landroid/view/View$OnClickListener;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/view/b;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/view/c;->a:Lcom/spotify/mobile/android/spotlets/search/view/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method final a()Lcom/spotify/android/paste/widget/EmptyView;
.registers 4
new-instance v0, Lcom/spotify/android/paste/widget/EmptyView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/c;->a:Lcom/spotify/mobile/android/spotlets/search/view/b;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/view/b;->a:Landroid/content/Context;
invoke-direct {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/c;->c:Ljava/lang/Integer;
if-eqz v1, :cond_1e
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/c;->a:Lcom/spotify/mobile/android/spotlets/search/view/b;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/view/b;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/view/c;->c:Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V
:cond_1e
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/c;->d:Ljava/lang/Integer;
if-eqz v1, :cond_33
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/c;->a:Lcom/spotify/mobile/android/spotlets/search/view/b;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/view/b;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/view/c;->d:Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->b(Ljava/lang/CharSequence;)V
:cond_33
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/c;->f:Landroid/view/View$OnClickListener;
if-eqz v1, :cond_4c
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/c;->a:Lcom/spotify/mobile/android/spotlets/search/view/b;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/view/b;->a:Landroid/content/Context;
invoke-static {v1, v0}, Lcom/spotify/android/paste/widget/h;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/view/c;->f:Landroid/view/View$OnClickListener;
invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget v2, p0, Lcom/spotify/mobile/android/spotlets/search/view/c;->e:I
invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/view/View;)V
:cond_4c
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/c;->b:Lcom/spotify/android/paste/graphics/SpotifyIcon;
if-eqz v1, :cond_5d
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/c;->a:Lcom/spotify/mobile/android/spotlets/search/view/b;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/view/b;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/view/c;->b:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/stuff/k;->b(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/graphics/drawable/Drawable;)V
:cond_5d
return-object v0
.end method
.method final a(Landroid/view/View$OnClickListener;)Lcom/spotify/mobile/android/spotlets/search/view/c;
.registers 3
const v0, 0x7f0f01a5
iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/c;->e:I
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View$OnClickListener;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/c;->f:Landroid/view/View$OnClickListener;
return-object p0
.end method
.method final a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/spotlets/search/view/c;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/view/c;->b:Lcom/spotify/android/paste/graphics/SpotifyIcon;
return-object p0
.end method
.method final a(Ljava/lang/Integer;)Lcom/spotify/mobile/android/spotlets/search/view/c;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/view/c;->c:Ljava/lang/Integer;
return-object p0
.end method
.method final b(Ljava/lang/Integer;)Lcom/spotify/mobile/android/spotlets/search/view/c;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/view/c;->d:Ljava/lang/Integer;
return-object p0
.end method