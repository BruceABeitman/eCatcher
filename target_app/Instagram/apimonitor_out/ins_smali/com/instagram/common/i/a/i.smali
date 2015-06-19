.class public final Lcom/instagram/common/i/a/i;
.super Ljava/lang/Object;
.source "Throwables.java"
.method public static a(Ljava/lang/Throwable;Ljava/lang/Class;)V
.registers 3
invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d
invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Throwable;
throw v0
:cond_d
return-void
.end method