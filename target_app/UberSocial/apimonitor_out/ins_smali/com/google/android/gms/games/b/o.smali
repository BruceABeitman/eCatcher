.class public final Lcom/google/android/gms/games/b/o;
.super Ljava/lang/Object;
.field private final a:Landroid/os/Bundle;
.method public constructor <init>(Landroid/os/Bundle;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_a
new-instance p1, Landroid/os/Bundle;
invoke-direct {p1}, Landroid/os/Bundle;-><init>()V
:cond_a
iput-object p1, p0, Lcom/google/android/gms/games/b/o;->a:Landroid/os/Bundle;
return-void
.end method
.method public a()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/o;->a:Landroid/os/Bundle;
return-object v0
.end method