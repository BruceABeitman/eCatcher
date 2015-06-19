.class public Lcom/instagram/cliffjumper/util/Matrix3;
.super Ljava/lang/Object;
.source "Matrix3.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private static final a:[F
.field private final b:[F
.field private final c:Ljava/nio/FloatBuffer;
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x9
new-array v0, v0, [F
fill-array-data v0, :array_12
sput-object v0, Lcom/instagram/cliffjumper/util/Matrix3;->a:[F
new-instance v0, Lcom/instagram/cliffjumper/util/b;
invoke-direct {v0}, Lcom/instagram/cliffjumper/util/b;-><init>()V
sput-object v0, Lcom/instagram/cliffjumper/util/Matrix3;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
nop
:array_12
.array-data 0x4
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
.end array-data
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x9
new-array v0, v0, [F
iput-object v0, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
iget-object v0, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
invoke-static {v0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/util/Matrix3;->c:Ljava/nio/FloatBuffer;
invoke-virtual {p0}, Lcom/instagram/cliffjumper/util/Matrix3;->a()V
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x9
new-array v0, v0, [F
iput-object v0, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
iget-object v0, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
invoke-static {v0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/util/Matrix3;->c:Ljava/nio/FloatBuffer;
iget-object v0, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V
return-void
.end method
.method public final a()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/instagram/cliffjumper/util/Matrix3;->c:Ljava/nio/FloatBuffer;
invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
iget-object v0, p0, Lcom/instagram/cliffjumper/util/Matrix3;->c:Ljava/nio/FloatBuffer;
sget-object v1, Lcom/instagram/cliffjumper/util/Matrix3;->a:[F
invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;
iget-object v0, p0, Lcom/instagram/cliffjumper/util/Matrix3;->c:Ljava/nio/FloatBuffer;
invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
return-void
.end method
.method public final a(F)V
.registers 11
const/4 v8, 0x4
const/4 v7, 0x3
const/4 v6, 0x1
const/4 v5, 0x0
float-to-double v0, p1
invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D
move-result-wide v0
double-to-float v0, v0
float-to-double v1, p1
invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D
move-result-wide v1
double-to-float v1, v1
iget-object v2, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
aget v2, v2, v5
mul-float/2addr v2, v1
iget-object v3, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
aget v3, v3, v7
mul-float/2addr v3, v0
sub-float/2addr v2, v3
iget-object v3, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
aget v3, v3, v5
mul-float/2addr v3, v0
iget-object v4, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
aget v4, v4, v7
mul-float/2addr v4, v1
add-float/2addr v3, v4
iget-object v4, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
aput v2, v4, v5
iget-object v2, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
aput v3, v2, v7
iget-object v2, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
aget v2, v2, v6
mul-float/2addr v2, v1
iget-object v3, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
aget v3, v3, v8
mul-float/2addr v3, v0
sub-float/2addr v2, v3
iget-object v3, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
aget v3, v3, v6
mul-float/2addr v0, v3
iget-object v3, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
aget v3, v3, v8
mul-float/2addr v1, v3
add-float/2addr v0, v1
iget-object v1, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
aput v2, v1, v6
iget-object v1, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
aput v0, v1, v8
return-void
.end method
.method public final a(FF)V
.registers 6
iget-object v0, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
const/4 v1, 0x0
aget v2, v0, v1
mul-float/2addr v2, p1
aput v2, v0, v1
iget-object v0, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
const/4 v1, 0x1
aget v2, v0, v1
mul-float/2addr v2, p1
aput v2, v0, v1
iget-object v0, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
const/4 v1, 0x3
aget v2, v0, v1
mul-float/2addr v2, p2
aput v2, v0, v1
iget-object v0, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
const/4 v1, 0x4
aget v2, v0, v1
mul-float/2addr v2, p2
aput v2, v0, v1
return-void
.end method
.method public final b()Ljava/nio/FloatBuffer;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/util/Matrix3;->c:Ljava/nio/FloatBuffer;
return-object v0
.end method
.method public final b(FF)V
.registers 9
iget-object v0, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
const/4 v1, 0x6
aget v2, v0, v1
iget-object v3, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
const/4 v4, 0x0
aget v3, v3, v4
mul-float/2addr v3, p1
iget-object v4, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
const/4 v5, 0x3
aget v4, v4, v5
mul-float/2addr v4, p2
add-float/2addr v3, v4
add-float/2addr v2, v3
aput v2, v0, v1
iget-object v0, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
const/4 v1, 0x7
aget v2, v0, v1
iget-object v3, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
const/4 v4, 0x1
aget v3, v3, v4
mul-float/2addr v3, p1
iget-object v4, p0, Lcom/instagram/cliffjumper/util/Matrix3;->b:[F
const/4 v5, 0x4
aget v4, v4, v5
mul-float/2addr v4, p2
add-float/2addr v3, v4
add-float/2addr v2, v3
aput v2, v0, v1
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lcom/instagram/cliffjumper/util/Matrix3;->c:Ljava/nio/FloatBuffer;
invoke-virtual {v0}, Ljava/nio/FloatBuffer;->array()[F
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V
return-void
.end method