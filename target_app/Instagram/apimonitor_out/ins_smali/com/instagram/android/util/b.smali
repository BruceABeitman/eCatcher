.class public final Lcom/instagram/android/util/b;
.super Ljava/lang/Object;
.source "DialogNavigator.java"
.field private final a:Landroid/support/v4/app/s;
.field private b:Landroid/support/v4/app/f;
.field private c:Landroid/os/Bundle;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.method public constructor <init>(Landroid/support/v4/app/s;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "dialog"
iput-object v0, p0, Lcom/instagram/android/util/b;->d:Ljava/lang/String;
iput-object p1, p0, Lcom/instagram/android/util/b;->a:Landroid/support/v4/app/s;
return-void
.end method
.method public final a(Landroid/support/v4/app/f;Landroid/os/Bundle;)Lcom/instagram/android/util/b;
.registers 3
iput-object p1, p0, Lcom/instagram/android/util/b;->b:Landroid/support/v4/app/f;
iput-object p2, p0, Lcom/instagram/android/util/b;->c:Landroid/os/Bundle;
return-object p0
.end method
.method public final a()V
.registers 5
iget-object v0, p0, Lcom/instagram/android/util/b;->a:Landroid/support/v4/app/s;
sget v1, Lcom/facebook/av;->layout_container_main:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v0
instance-of v1, v0, Lcom/instagram/common/analytics/e;
if-eqz v1, :cond_1d
invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;
move-result-object v1
check-cast v0, Lcom/instagram/common/analytics/e;
iget-object v2, p0, Lcom/instagram/android/util/b;->a:Landroid/support/v4/app/s;
invoke-virtual {v2}, Landroid/support/v4/app/s;->g()I
move-result v2
iget-object v3, p0, Lcom/instagram/android/util/b;->e:Ljava/lang/String;
invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/b/c/a;->a(Lcom/instagram/common/analytics/e;ILjava/lang/String;)V
:cond_1d
iget-object v0, p0, Lcom/instagram/android/util/b;->c:Landroid/os/Bundle;
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/instagram/android/util/b;->c:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z
move-result v0
if-nez v0, :cond_30
iget-object v0, p0, Lcom/instagram/android/util/b;->b:Landroid/support/v4/app/f;
iget-object v1, p0, Lcom/instagram/android/util/b;->c:Landroid/os/Bundle;
invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->g(Landroid/os/Bundle;)V
:cond_30
iget-object v0, p0, Lcom/instagram/android/util/b;->a:Landroid/support/v4/app/s;
iget-object v1, p0, Lcom/instagram/android/util/b;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
if-eqz v0, :cond_4c
iget-object v1, p0, Lcom/instagram/android/util/b;->a:Landroid/support/v4/app/s;
invoke-virtual {v1}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I
iget-object v0, p0, Lcom/instagram/android/util/b;->a:Landroid/support/v4/app/s;
invoke-virtual {v0}, Landroid/support/v4/app/s;->b()Z
:cond_4c
iget-object v0, p0, Lcom/instagram/android/util/b;->b:Landroid/support/v4/app/f;
iget-object v1, p0, Lcom/instagram/android/util/b;->a:Landroid/support/v4/app/s;
iget-object v2, p0, Lcom/instagram/android/util/b;->d:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/f;->a(Landroid/support/v4/app/s;Ljava/lang/String;)V
return-void
.end method