.class public abstract Lcom/google/b/a/l;
.super Ljava/lang/Object;
.source "Optional.java"
.implements Ljava/io/Serializable;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static b(Ljava/lang/Object;)Lcom/google/b/a/l;
.registers 3
new-instance v0, Lcom/google/b/a/p;
invoke-static {p0}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/b/a/p;-><init>(Ljava/lang/Object;)V
return-object v0
.end method
.method public static c(Ljava/lang/Object;)Lcom/google/b/a/l;
.registers 2
if-nez p0, :cond_5
sget-object v0, Lcom/google/b/a/a;->a:Lcom/google/b/a/a;
:goto_4
return-object v0
:cond_5
new-instance v0, Lcom/google/b/a/p;
invoke-direct {v0, p0}, Lcom/google/b/a/p;-><init>(Ljava/lang/Object;)V
goto :goto_4
.end method
.method public static d()Lcom/google/b/a/l;
.registers 1
sget-object v0, Lcom/google/b/a/a;->a:Lcom/google/b/a/a;
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