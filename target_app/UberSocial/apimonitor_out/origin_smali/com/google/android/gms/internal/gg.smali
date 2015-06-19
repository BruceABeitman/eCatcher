.class final Lcom/google/android/gms/internal/gg;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gg;)V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_d

    iget v0, p1, Lcom/google/android/gms/internal/gg;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/gg;->a:I

    iget v0, p1, Lcom/google/android/gms/internal/gg;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/gg;->b:I

    :cond_d
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gg;->a:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gd;-><init>(Lcom/google/android/gms/internal/gg;)V

    return-object v0
.end method
