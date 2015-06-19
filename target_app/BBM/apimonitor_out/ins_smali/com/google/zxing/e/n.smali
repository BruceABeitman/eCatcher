.class final Lcom/google/zxing/e/n;
.super Ljava/lang/Object;
.source "UPCEANExtension5Support.java"
.field static final a:[I
.field final b:[I
.field final c:Ljava/lang/StringBuilder;
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0xa
new-array v0, v0, [I
fill-array-data v0, :array_a
sput-object v0, Lcom/google/zxing/e/n;->a:[I
return-void
:array_a
.array-data 0x4
0x18t 0x0t 0x0t 0x0t
0x14t 0x0t 0x0t 0x0t
0x12t 0x0t 0x0t 0x0t
0x11t 0x0t 0x0t 0x0t
0xct 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0xat 0x0t 0x0t 0x0t
0x9t 0x0t 0x0t 0x0t
0x5t 0x0t 0x0t 0x0t
.end array-data
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x4
new-array v0, v0, [I
iput-object v0, p0, Lcom/google/zxing/e/n;->b:[I
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iput-object v0, p0, Lcom/google/zxing/e/n;->c:Ljava/lang/StringBuilder;
return-void
.end method