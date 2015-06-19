.class final Lcom/google/android/gms/common/images/f;
.super Ljava/lang/Object;
.implements Landroid/content/ComponentCallbacks2;
.field private final a:Lcom/google/android/gms/common/images/c;
.method public constructor <init>(Lcom/google/android/gms/common/images/c;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/common/images/f;->a:Lcom/google/android/gms/common/images/c;
return-void
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 2
return-void
.end method
.method public onLowMemory()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/images/f;->a:Lcom/google/android/gms/common/images/c;
invoke-virtual {v0}, Lcom/google/android/gms/common/images/c;->a()V
return-void
.end method
.method public onTrimMemory(I)V
.registers 4
const/16 v0, 0x3c
if-lt p1, v0, :cond_a
iget-object v0, p0, Lcom/google/android/gms/common/images/f;->a:Lcom/google/android/gms/common/images/c;
invoke-virtual {v0}, Lcom/google/android/gms/common/images/c;->a()V
:cond_9
:goto_9
return-void
:cond_a
const/16 v0, 0x14
if-lt p1, v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/common/images/f;->a:Lcom/google/android/gms/common/images/c;
iget-object v1, p0, Lcom/google/android/gms/common/images/f;->a:Lcom/google/android/gms/common/images/c;
invoke-virtual {v1}, Lcom/google/android/gms/common/images/c;->b()I
move-result v1
div-int/lit8 v1, v1, 0x2
invoke-virtual {v0, v1}, Lcom/google/android/gms/common/images/c;->a(I)V
goto :goto_9
.end method