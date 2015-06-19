.class public final Lcom/google/android/gms/internal/ev;
.super Ljava/lang/Object;
.method public static A(Ljava/lang/String;)V
.registers 2
const/4 v0, 0x6
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->p(I)Z
move-result v0
if-eqz v0, :cond_c
const-string v0, "Ads"
invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:cond_c
return-void
.end method
.method public static B(Ljava/lang/String;)V
.registers 2
const/4 v0, 0x4
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->p(I)Z
move-result v0
if-eqz v0, :cond_c
const-string v0, "Ads"
invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_c
return-void
.end method
.method public static C(Ljava/lang/String;)V
.registers 2
const/4 v0, 0x2
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->p(I)Z
move-result v0
if-eqz v0, :cond_c
const-string v0, "Ads"
invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_c
return-void
.end method
.method public static D(Ljava/lang/String;)V
.registers 2
const/4 v0, 0x5
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->p(I)Z
move-result v0
if-eqz v0, :cond_c
const-string v0, "Ads"
invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_c
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 3
const/4 v0, 0x3
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->p(I)Z
move-result v0
if-eqz v0, :cond_c
const-string v0, "Ads"
invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_c
return-void
.end method
.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 3
const/4 v0, 0x6
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->p(I)Z
move-result v0
if-eqz v0, :cond_c
const-string v0, "Ads"
invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_c
return-void
.end method
.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 3
const/4 v0, 0x5
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->p(I)Z
move-result v0
if-eqz v0, :cond_c
const-string v0, "Ads"
invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_c
return-void
.end method
.method public static p(I)Z
.registers 2
const/4 v0, 0x5
if-ge p0, v0, :cond_b
const-string v0, "Ads"
invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_e
:cond_b
const/4 v0, 0x2
if-ne p0, v0, :cond_10
:cond_e
const/4 v0, 0x0
:goto_f
return v0
:cond_10
const/4 v0, 0x1
goto :goto_f
.end method
.method public static z(Ljava/lang/String;)V
.registers 2
const/4 v0, 0x3
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->p(I)Z
move-result v0
if-eqz v0, :cond_c
const-string v0, "Ads"
invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_c
return-void
.end method