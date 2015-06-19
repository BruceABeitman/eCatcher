.class public final Lcom/google/android/gms/internal/sv;
.super Ljava/lang/Object;
.field public static final a:[I
.field public static final b:[J
.field public static final c:[F
.field public static final d:[D
.field public static final e:[Z
.field public static final f:[Ljava/lang/String;
.field public static final g:[[B
.field public static final h:[B
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
new-array v0, v1, [I
sput-object v0, Lcom/google/android/gms/internal/sv;->a:[I
new-array v0, v1, [J
sput-object v0, Lcom/google/android/gms/internal/sv;->b:[J
new-array v0, v1, [F
sput-object v0, Lcom/google/android/gms/internal/sv;->c:[F
new-array v0, v1, [D
sput-object v0, Lcom/google/android/gms/internal/sv;->d:[D
new-array v0, v1, [Z
sput-object v0, Lcom/google/android/gms/internal/sv;->e:[Z
new-array v0, v1, [Ljava/lang/String;
sput-object v0, Lcom/google/android/gms/internal/sv;->f:[Ljava/lang/String;
new-array v0, v1, [[B
sput-object v0, Lcom/google/android/gms/internal/sv;->g:[[B
new-array v0, v1, [B
sput-object v0, Lcom/google/android/gms/internal/sv;->h:[B
return-void
.end method
.method static a(I)I
.registers 2
and-int/lit8 v0, p0, 0x7
return v0
.end method
.method static a(II)I
.registers 3
shl-int/lit8 v0, p0, 0x3
or-int/2addr v0, p1
return v0
.end method
.method public static a(Lcom/google/android/gms/internal/sj;I)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/sj;->b(I)Z
move-result v0
return v0
.end method
.method public static b(I)I
.registers 2
ushr-int/lit8 v0, p0, 0x3
return v0
.end method
.method public static final b(Lcom/google/android/gms/internal/sj;I)I
.registers 5
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/internal/sj;->o()I
move-result v1
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/sj;->b(I)Z
:goto_8
invoke-virtual {p0}, Lcom/google/android/gms/internal/sj;->m()I
move-result v2
if-lez v2, :cond_14
invoke-virtual {p0}, Lcom/google/android/gms/internal/sj;->a()I
move-result v2
if-eq v2, p1, :cond_18
:cond_14
invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sj;->e(I)V
return v0
:cond_18
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/sj;->b(I)Z
add-int/lit8 v0, v0, 0x1
goto :goto_8
.end method