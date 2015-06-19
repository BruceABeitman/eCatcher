.class final Lcom/google/android/gms/internal/ea$a;
.super Landroid/graphics/drawable/Drawable;
.field private static final Bh:Lcom/google/android/gms/internal/ea$a;
.field private static final Bi:Lcom/google/android/gms/internal/ea$a$a;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/google/android/gms/internal/ea$a;
invoke-direct {v0}, Lcom/google/android/gms/internal/ea$a;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ea$a;->Bh:Lcom/google/android/gms/internal/ea$a;
new-instance v0, Lcom/google/android/gms/internal/ea$a$a;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ea$a$a;-><init>(Lcom/google/android/gms/internal/ea$1;)V
sput-object v0, Lcom/google/android/gms/internal/ea$a;->Bi:Lcom/google/android/gms/internal/ea$a$a;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
return-void
.end method
.method static synthetic dP()Lcom/google/android/gms/internal/ea$a;
.registers 1
sget-object v0, Lcom/google/android/gms/internal/ea$a;->Bh:Lcom/google/android/gms/internal/ea$a;
return-object v0
.end method
.method public final draw(Landroid/graphics/Canvas;)V
.registers 2
return-void
.end method
.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ea$a;->Bi:Lcom/google/android/gms/internal/ea$a$a;
return-object v0
.end method
.method public final getOpacity()I
.registers 2
const/4 v0, -0x2
return v0
.end method
.method public final setAlpha(I)V
.registers 2
return-void
.end method
.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 2
return-void
.end method