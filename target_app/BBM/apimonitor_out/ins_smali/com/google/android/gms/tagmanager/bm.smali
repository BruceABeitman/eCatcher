.class  Lcom/google/android/gms/tagmanager/bm;
.super Ljava/lang/Object;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method  iA()I
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
return v0
.end method
.method public ji()Lcom/google/android/gms/tagmanager/bl;
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/bm;->iA()I
move-result v0
const/16 v1, 0x8
if-ge v0, v1, :cond_e
new-instance v0, Lcom/google/android/gms/tagmanager/av;
invoke-direct {v0}, Lcom/google/android/gms/tagmanager/av;-><init>()V
:goto_d
return-object v0
:cond_e
new-instance v0, Lcom/google/android/gms/tagmanager/aw;
invoke-direct {v0}, Lcom/google/android/gms/tagmanager/aw;-><init>()V
goto :goto_d
.end method