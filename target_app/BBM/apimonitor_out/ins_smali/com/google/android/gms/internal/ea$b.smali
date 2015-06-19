.class final Lcom/google/android/gms/internal/ea$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.field  Bj:I
.field  Bk:I
.method constructor <init>(Lcom/google/android/gms/internal/ea$b;)V
.registers 3
invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V
if-eqz p1, :cond_d
iget v0, p1, Lcom/google/android/gms/internal/ea$b;->Bj:I
iput v0, p0, Lcom/google/android/gms/internal/ea$b;->Bj:I
iget v0, p1, Lcom/google/android/gms/internal/ea$b;->Bk:I
iput v0, p0, Lcom/google/android/gms/internal/ea$b;->Bk:I
:cond_d
return-void
.end method
.method public final getChangingConfigurations()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ea$b;->Bj:I
return v0
.end method
.method public final newDrawable()Landroid/graphics/drawable/Drawable;
.registers 2
new-instance v0, Lcom/google/android/gms/internal/ea;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ea;-><init>(Lcom/google/android/gms/internal/ea$b;)V
return-object v0
.end method