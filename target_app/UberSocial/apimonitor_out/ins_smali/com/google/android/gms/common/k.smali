.class public Lcom/google/android/gms/common/k;
.super Ljava/lang/Exception;
.field private final a:Landroid/content/Intent;
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
.registers 3
invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
iput-object p2, p0, Lcom/google/android/gms/common/k;->a:Landroid/content/Intent;
return-void
.end method
.method public b()Landroid/content/Intent;
.registers 3
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/google/android/gms/common/k;->a:Landroid/content/Intent;
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
return-object v0
.end method