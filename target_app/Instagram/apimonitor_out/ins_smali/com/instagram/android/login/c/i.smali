.class public final Lcom/instagram/android/login/c/i;
.super Ljava/lang/Object;
.source "LookupRequest.java"
.field final synthetic a:Lcom/instagram/android/login/c/h;
.field private b:Lcom/instagram/user/c/a;
.field private c:Z
.field private d:Z
.field private e:Z
.method public constructor <init>(Lcom/instagram/android/login/c/h;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/c/i;->a:Lcom/instagram/android/login/c/h;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Lcom/instagram/user/c/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/c/i;->b:Lcom/instagram/user/c/a;
return-object v0
.end method
.method public final a(Lcom/instagram/user/c/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/c/i;->b:Lcom/instagram/user/c/a;
return-void
.end method
.method public final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/android/login/c/i;->c:Z
return-void
.end method
.method public final b(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/android/login/c/i;->d:Z
return-void
.end method
.method public final b()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/login/c/i;->d:Z
return v0
.end method
.method public final c(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/android/login/c/i;->e:Z
return-void
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/login/c/i;->e:Z
return v0
.end method