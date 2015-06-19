.class public abstract Lcom/google/common/base/Optional;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static b(Ljava/lang/Object;)Lcom/google/common/base/Optional;
.registers 3
new-instance v0, Lcom/google/common/base/Present;
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/common/base/Present;-><init>(Ljava/lang/Object;)V
return-object v0
.end method
.method public static c(Ljava/lang/Object;)Lcom/google/common/base/Optional;
.registers 2
if-nez p0, :cond_5
sget-object v0, Lcom/google/common/base/Absent;->a:Lcom/google/common/base/Absent;
:goto_4
return-object v0
:cond_5
new-instance v0, Lcom/google/common/base/Present;
invoke-direct {v0, p0}, Lcom/google/common/base/Present;-><init>(Ljava/lang/Object;)V
goto :goto_4
.end method
.method public static d()Lcom/google/common/base/Optional;
.registers 1
sget-object v0, Lcom/google/common/base/Absent;->a:Lcom/google/common/base/Absent;
return-object v0
.end method
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method
.method public abstract a()Z
.end method
.method public abstract b()Ljava/lang/Object;
.end method
.method public abstract c()Ljava/lang/Object;
.end method
.method public abstract equals(Ljava/lang/Object;)Z
.end method
.method public abstract hashCode()I
.end method