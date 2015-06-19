.class public final Lcom/spotify/mobile/android/ui/view/snackbar/b;
.super Lcom/spotify/mobile/android/ui/view/snackbar/a;
.source "SourceFile"
.field private final a:Landroid/support/v4/app/r;
.field private b:Z
.method public constructor <init>(Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;ILandroid/support/v4/app/r;Ljava/lang/String;)V
.registers 6
invoke-direct {p0, p1, p2, p4}, Lcom/spotify/mobile/android/ui/view/snackbar/a;-><init>(Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;ILjava/lang/String;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/b;->b:Z
iput-object p3, p0, Lcom/spotify/mobile/android/ui/view/snackbar/b;->a:Landroid/support/v4/app/r;
return-void
.end method
.method public final a(Landroid/support/v4/app/Fragment;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/b;->a:Landroid/support/v4/app/r;
invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/snackbar/b;->a()I
move-result v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/snackbar/b;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/w;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/w;->b()I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/b;->a:Landroid/support/v4/app/r;
invoke-virtual {v0}, Landroid/support/v4/app/r;->b()Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/b;->b:Z
return-void
.end method
.method public final a(Landroid/view/ViewGroup;)V
.registers 4
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/snackbar/b;->d()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/b;->a:Landroid/support/v4/app/r;
invoke-virtual {v1, v0}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
if-eqz v0, :cond_21
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/b;->a:Landroid/support/v4/app/r;
invoke-virtual {v1}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/support/v4/app/w;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/w;->b()I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/b;->a:Landroid/support/v4/app/r;
invoke-virtual {v0}, Landroid/support/v4/app/r;->b()Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/b;->b:Z
:cond_21
return-void
.end method
.method public final b()Z
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/ui/view/snackbar/a;->b()Z
move-result v0
if-eqz v0, :cond_c
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/b;->b:Z
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public final d()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "spotify:snackbar:"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/snackbar/b;->a()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method