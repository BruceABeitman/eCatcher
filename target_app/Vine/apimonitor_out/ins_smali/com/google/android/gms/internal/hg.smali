.class public final Lcom/google/android/gms/internal/hg;
.super Ljava/lang/Object;
.field private final GF:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/internal/hg;->GF:Ljava/lang/String;
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 5
const/4 v0, 0x4
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hg;->ap(I)Z
move-result v0
if-eqz v0, :cond_a
invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_a
return-void
.end method
.method public ap(I)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/hg;->GF:Ljava/lang/String;
invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
return v0
.end method
.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 5
const/4 v0, 0x6
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hg;->ap(I)Z
move-result v0
if-eqz v0, :cond_a
invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_a
return-void
.end method
.method public i(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hg;->ap(I)Z
move-result v0
if-eqz v0, :cond_a
invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_a
return-void
.end method
.method public j(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x5
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hg;->ap(I)Z
move-result v0
if-eqz v0, :cond_a
invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_a
return-void
.end method
.method public k(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x6
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hg;->ap(I)Z
move-result v0
if-eqz v0, :cond_a
invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:cond_a
return-void
.end method