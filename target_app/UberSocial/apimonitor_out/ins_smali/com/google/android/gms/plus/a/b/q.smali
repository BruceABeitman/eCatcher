.class public final Lcom/google/android/gms/plus/a/b/q;
.super Lcom/google/android/gms/common/data/a;
.field private final b:Lcom/google/android/gms/common/data/k;
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 5
invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->f()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_20
invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->f()Landroid/os/Bundle;
move-result-object v0
const-string v1, "com.google.android.gms.plus.IsSafeParcelable"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_20
new-instance v0, Lcom/google/android/gms/common/data/k;
sget-object v1, Lcom/google/android/gms/internal/ir;->CREATOR:Lcom/google/android/gms/internal/rd;
invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/data/k;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V
iput-object v0, p0, Lcom/google/android/gms/plus/a/b/q;->b:Lcom/google/android/gms/common/data/k;
:goto_1f
return-void
:cond_20
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/plus/a/b/q;->b:Lcom/google/android/gms/common/data/k;
goto :goto_1f
.end method
.method public a(I)Lcom/google/android/gms/plus/a/b/a;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/plus/a/b/q;->b:Lcom/google/android/gms/common/data/k;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/google/android/gms/plus/a/b/q;->b:Lcom/google/android/gms/common/data/k;
invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/k;->a(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/plus/a/b/a;
:goto_c
return-object v0
:cond_d
new-instance v0, Lcom/google/android/gms/internal/rp;
iget-object v1, p0, Lcom/google/android/gms/plus/a/b/q;->a:Lcom/google/android/gms/common/data/DataHolder;
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/rp;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
goto :goto_c
.end method
.method public synthetic b(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/a/b/q;->a(I)Lcom/google/android/gms/plus/a/b/a;
move-result-object v0
return-object v0
.end method