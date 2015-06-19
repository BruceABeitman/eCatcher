.class final Lcom/google/android/gms/tagmanager/ba;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/q;
.field private a:I
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x5
iput v0, p0, Lcom/google/android/gms/tagmanager/ba;->a:I
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
iget v0, p0, Lcom/google/android/gms/tagmanager/ba;->a:I
const/4 v1, 0x6
if-gt v0, v1, :cond_a
const-string v0, "GoogleTagManager"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:cond_a
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 5
iget v0, p0, Lcom/google/android/gms/tagmanager/ba;->a:I
const/4 v1, 0x6
if-gt v0, v1, :cond_a
const-string v0, "GoogleTagManager"
invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_a
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 4
iget v0, p0, Lcom/google/android/gms/tagmanager/ba;->a:I
const/4 v1, 0x5
if-gt v0, v1, :cond_a
const-string v0, "GoogleTagManager"
invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_a
return-void
.end method
.method public final c(Ljava/lang/String;)V
.registers 4
iget v0, p0, Lcom/google/android/gms/tagmanager/ba;->a:I
const/4 v1, 0x4
if-gt v0, v1, :cond_a
const-string v0, "GoogleTagManager"
invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_a
return-void
.end method
.method public final d(Ljava/lang/String;)V
.registers 4
iget v0, p0, Lcom/google/android/gms/tagmanager/ba;->a:I
const/4 v1, 0x2
if-gt v0, v1, :cond_a
const-string v0, "GoogleTagManager"
invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_a
return-void
.end method