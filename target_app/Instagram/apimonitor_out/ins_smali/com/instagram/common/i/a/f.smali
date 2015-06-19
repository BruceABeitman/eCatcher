.class public final Lcom/instagram/common/i/a/f;
.super Ljava/lang/Object;
.source "Preconditions.java"
.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 2
if-nez p0, :cond_8
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:cond_8
return-object p0
.end method
.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
if-nez p0, :cond_c
new-instance v0, Ljava/lang/NullPointerException;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-object p0
.end method
.method public static a(Z)V
.registers 2
if-nez p0, :cond_8
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_8
return-void
.end method
.method public static a(ZLjava/lang/Object;)V
.registers 4
if-nez p0, :cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-void
.end method
.method public static b(Z)V
.registers 2
if-nez p0, :cond_8
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_8
return-void
.end method
.method public static b(ZLjava/lang/Object;)V
.registers 4
if-nez p0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-void
.end method