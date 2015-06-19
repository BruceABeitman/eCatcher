.class final Lcom/instagram/n/b/f;
.super Ljava/lang/Object;
.source "AutoUpdateInfo.java"
.field  a:I
.field  b:I
.field  c:Ljava/lang/String;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/n/b/f;->c:Ljava/lang/String;
return-object v0
.end method
.method public final b()Ljava/lang/Integer;
.registers 2
iget v0, p0, Lcom/instagram/n/b/f;->b:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method