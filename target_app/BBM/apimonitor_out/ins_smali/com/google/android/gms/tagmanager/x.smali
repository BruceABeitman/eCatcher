.class  Lcom/google/android/gms/tagmanager/x;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/bi;
.field private rc:I
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x5
iput v0, p0, Lcom/google/android/gms/tagmanager/x;->rc:I
return-void
.end method
.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 5
iget v0, p0, Lcom/google/android/gms/tagmanager/x;->rc:I
const/4 v1, 0x5
if-gt v0, v1, :cond_a
const-string v0, "GoogleTagManager"
invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_a
return-void
.end method
.method public c(Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 5
iget v0, p0, Lcom/google/android/gms/tagmanager/x;->rc:I
const/4 v1, 0x6
if-gt v0, v1, :cond_a
const-string v0, "GoogleTagManager"
invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_a
return-void
.end method
.method public s(Ljava/lang/String;)V
.registers 4
iget v0, p0, Lcom/google/android/gms/tagmanager/x;->rc:I
const/4 v1, 0x3
if-gt v0, v1, :cond_a
const-string v0, "GoogleTagManager"
invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_a
return-void
.end method
.method public setLogLevel(I)V
.registers 2
iput p1, p0, Lcom/google/android/gms/tagmanager/x;->rc:I
return-void
.end method
.method public t(Ljava/lang/String;)V
.registers 4
iget v0, p0, Lcom/google/android/gms/tagmanager/x;->rc:I
const/4 v1, 0x6
if-gt v0, v1, :cond_a
const-string v0, "GoogleTagManager"
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:cond_a
return-void
.end method
.method public u(Ljava/lang/String;)V
.registers 4
iget v0, p0, Lcom/google/android/gms/tagmanager/x;->rc:I
const/4 v1, 0x4
if-gt v0, v1, :cond_a
const-string v0, "GoogleTagManager"
invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_a
return-void
.end method
.method public v(Ljava/lang/String;)V
.registers 4
iget v0, p0, Lcom/google/android/gms/tagmanager/x;->rc:I
const/4 v1, 0x2
if-gt v0, v1, :cond_a
const-string v0, "GoogleTagManager"
invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_a
return-void
.end method
.method public w(Ljava/lang/String;)V
.registers 4
iget v0, p0, Lcom/google/android/gms/tagmanager/x;->rc:I
const/4 v1, 0x5
if-gt v0, v1, :cond_a
const-string v0, "GoogleTagManager"
invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_a
return-void
.end method