.class public abstract Lcom/instagram/api/k/a/i;
.super Lcom/instagram/common/a/a/b;
.source "IgResponse.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/common/a/a/b;-><init>()V
return-void
.end method
.method abstract a(Ljava/lang/String;)V
.end method
.method public abstract f()Ljava/util/List;
.end method
.method public abstract g()Ljava/lang/String;
.end method
.method public abstract h()Z
.end method
.method public abstract i()Ljava/lang/String;
.end method
.method public abstract j()Ljava/lang/String;
.end method
.method public abstract k()Ljava/lang/String;
.end method
.method public abstract l()Ljava/util/List;
.end method
.method public final n()Z
.registers 3
const-string v0, "ok"
invoke-virtual {p0}, Lcom/instagram/api/k/a/i;->i()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method