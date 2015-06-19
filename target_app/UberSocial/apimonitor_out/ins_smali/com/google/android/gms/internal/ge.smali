.class final Lcom/google/android/gms/internal/ge;
.super Landroid/graphics/drawable/Drawable;
.field private static final a:Lcom/google/android/gms/internal/ge;
.field private static final b:Lcom/google/android/gms/internal/gf;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/google/android/gms/internal/ge;
invoke-direct {v0}, Lcom/google/android/gms/internal/ge;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ge;->a:Lcom/google/android/gms/internal/ge;
new-instance v0, Lcom/google/android/gms/internal/gf;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gf;-><init>(Lcom/google/android/gms/internal/gd$1;)V
sput-object v0, Lcom/google/android/gms/internal/ge;->b:Lcom/google/android/gms/internal/gf;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
return-void
.end method
.method static synthetic a()Lcom/google/android/gms/internal/ge;
.registers 1
sget-object v0, Lcom/google/android/gms/internal/ge;->a:Lcom/google/android/gms/internal/ge;
return-object v0
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 2
return-void
.end method
.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ge;->b:Lcom/google/android/gms/internal/gf;
return-object v0
.end method
.method public getOpacity()I
.registers 2
const/4 v0, -0x2
return v0
.end method
.method public setAlpha(I)V
.registers 2
return-void
.end method
.method public setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 2
return-void
.end method