.class final Lcom/google/android/gms/internal/gu$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.field  FJ:I
.field  FK:I
.method constructor <init>(Lcom/google/android/gms/internal/gu$b;)V
.registers 3
invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V
if-eqz p1, :cond_d
iget v0, p1, Lcom/google/android/gms/internal/gu$b;->FJ:I
iput v0, p0, Lcom/google/android/gms/internal/gu$b;->FJ:I
iget v0, p1, Lcom/google/android/gms/internal/gu$b;->FK:I
iput v0, p0, Lcom/google/android/gms/internal/gu$b;->FK:I
:cond_d
return-void
.end method
.method public getChangingConfigurations()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/gu$b;->FJ:I
return v0
.end method
.method public newDrawable()Landroid/graphics/drawable/Drawable;
.registers 2
new-instance v0, Lcom/google/android/gms/internal/gu;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gu;-><init>(Lcom/google/android/gms/internal/gu$b;)V
return-object v0
.end method