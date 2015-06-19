.class public final Lcom/google/android/youtube/player/internal/ac;
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
.method public static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
.registers 4
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_10
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
return-object p0
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