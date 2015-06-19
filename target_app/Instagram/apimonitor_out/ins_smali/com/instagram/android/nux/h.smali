.class final Lcom/instagram/android/nux/h;
.super Lcom/instagram/api/e/a;
.source "FacebookProfileRequest.java"
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/api/e/a;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public final a()Lcom/instagram/common/a/c/b;
.registers 4
invoke-super {p0}, Lcom/instagram/api/e/a;->a()Lcom/instagram/common/a/c/b;
move-result-object v0
const-string v1, "fields"
const-string v2, "id,name,first_name,last_name,username,email"
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method protected final b()Ljava/lang/String;
.registers 2
const-string v0, "me"
return-object v0
.end method
.method public final d()Lcom/instagram/common/a/a/p;
.registers 2
new-instance v0, Lcom/instagram/android/nux/i;
invoke-direct {v0, p0}, Lcom/instagram/android/nux/i;-><init>(Lcom/instagram/android/nux/h;)V
return-object v0
.end method