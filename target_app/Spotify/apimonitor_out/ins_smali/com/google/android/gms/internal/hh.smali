.class public final Lcom/google/android/gms/internal/hh;
.super Ljava/lang/Object;
.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
if-nez p0, :cond_a
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "null reference"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
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
.method public static a(Ljava/lang/String;)V
.registers 3
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v0
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
if-eq v0, v1, :cond_10
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
return-void
.end method
.method public static a(Z)V
.registers 2
if-nez p0, :cond_8
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_8
return-void
.end method
.method public static a(ZLjava/lang/Object;)V
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
.method public static b(Ljava/lang/String;)V
.registers 3
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v0
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
if-ne v0, v1, :cond_10
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
return-void
.end method
.method public static b(Z)V
.registers 2
if-nez p0, :cond_8
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_8
return-void
.end method
.method public static b(ZLjava/lang/Object;)V
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