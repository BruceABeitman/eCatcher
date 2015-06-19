.class public final Lcom/spotify/mobile/android/ui/view/snackbar/g;
.super Lcom/spotify/mobile/android/ui/view/snackbar/a;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/view/snackbar/e;
.field private final a:I
.field private b:Landroid/widget/TextView;
.method protected constructor <init>(Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;ILjava/lang/String;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, v0, p3}, Lcom/spotify/mobile/android/ui/view/snackbar/a;-><init>(Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;ILjava/lang/String;)V
iput p2, p0, Lcom/spotify/mobile/android/ui/view/snackbar/g;->a:I
return-void
.end method
.method public final a(I)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/g;->b:Landroid/widget/TextView;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/g;->b:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V
:cond_9
return-void
.end method
.method public final a(Landroid/view/ViewGroup;)V
.registers 5
invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iget v1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/g;->a:I
const/4 v2, 0x0
invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/g;->b:Landroid/widget/TextView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/g;->b:Landroid/widget/TextView;
invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/g;->b:Landroid/widget/TextView;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/g;->b:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_9
return-void
.end method