.class final enum Lcom/lenovo/anyshare/sdk/internal/cm$a;
.super Ljava/lang/Enum;
.source "QuietUpgrade.java"
.field public static final enum a:Lcom/lenovo/anyshare/sdk/internal/cm$a;
.field public static final enum b:Lcom/lenovo/anyshare/sdk/internal/cm$a;
.field public static final enum c:Lcom/lenovo/anyshare/sdk/internal/cm$a;
.field private static e:Landroid/util/SparseArray;
.field private static final synthetic f:[Lcom/lenovo/anyshare/sdk/internal/cm$a;
.field private d:I
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x2
const/4 v7, 0x1
const/4 v6, 0x0
new-instance v4, Lcom/lenovo/anyshare/sdk/internal/cm$a;
const-string/jumbo v5, "OFF"
invoke-direct {v4, v5, v6, v6}, Lcom/lenovo/anyshare/sdk/internal/cm$a;-><init>(Ljava/lang/String;II)V
sput-object v4, Lcom/lenovo/anyshare/sdk/internal/cm$a;->a:Lcom/lenovo/anyshare/sdk/internal/cm$a;
new-instance v4, Lcom/lenovo/anyshare/sdk/internal/cm$a;
const-string/jumbo v5, "WIFI"
invoke-direct {v4, v5, v7, v7}, Lcom/lenovo/anyshare/sdk/internal/cm$a;-><init>(Ljava/lang/String;II)V
sput-object v4, Lcom/lenovo/anyshare/sdk/internal/cm$a;->b:Lcom/lenovo/anyshare/sdk/internal/cm$a;
new-instance v4, Lcom/lenovo/anyshare/sdk/internal/cm$a;
const-string/jumbo v5, "ALL"
invoke-direct {v4, v5, v8, v8}, Lcom/lenovo/anyshare/sdk/internal/cm$a;-><init>(Ljava/lang/String;II)V
sput-object v4, Lcom/lenovo/anyshare/sdk/internal/cm$a;->c:Lcom/lenovo/anyshare/sdk/internal/cm$a;
const/4 v4, 0x3
new-array v4, v4, [Lcom/lenovo/anyshare/sdk/internal/cm$a;
sget-object v5, Lcom/lenovo/anyshare/sdk/internal/cm$a;->a:Lcom/lenovo/anyshare/sdk/internal/cm$a;
aput-object v5, v4, v6
sget-object v5, Lcom/lenovo/anyshare/sdk/internal/cm$a;->b:Lcom/lenovo/anyshare/sdk/internal/cm$a;
aput-object v5, v4, v7
sget-object v5, Lcom/lenovo/anyshare/sdk/internal/cm$a;->c:Lcom/lenovo/anyshare/sdk/internal/cm$a;
aput-object v5, v4, v8
sput-object v4, Lcom/lenovo/anyshare/sdk/internal/cm$a;->f:[Lcom/lenovo/anyshare/sdk/internal/cm$a;
new-instance v4, Landroid/util/SparseArray;
invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V
sput-object v4, Lcom/lenovo/anyshare/sdk/internal/cm$a;->e:Landroid/util/SparseArray;
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cm$a;->values()[Lcom/lenovo/anyshare/sdk/internal/cm$a;
move-result-object v0
array-length v3, v0
const/4 v1, 0x0
:goto_3f
if-ge v1, v3, :cond_4d
aget-object v2, v0, v1
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/cm$a;->e:Landroid/util/SparseArray;
iget v5, v2, Lcom/lenovo/anyshare/sdk/internal/cm$a;->d:I
invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
add-int/lit8 v1, v1, 0x1
goto :goto_3f
:cond_4d
return-void
.end method
.method private constructor <init>(Ljava/lang/String;II)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lcom/lenovo/anyshare/sdk/internal/cm$a;->d:I
return-void
.end method
.method public static a(I)Lcom/lenovo/anyshare/sdk/internal/cm$a;
.registers 3
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cm$a;->e:Landroid/util/SparseArray;
invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/anyshare/sdk/internal/cm$a;
return-object v0
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/cm$a;
.registers 2
const-class v0, Lcom/lenovo/anyshare/sdk/internal/cm$a;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/lenovo/anyshare/sdk/internal/cm$a;
return-object v0
.end method
.method public static values()[Lcom/lenovo/anyshare/sdk/internal/cm$a;
.registers 1
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cm$a;->f:[Lcom/lenovo/anyshare/sdk/internal/cm$a;
invoke-virtual {v0}, [Lcom/lenovo/anyshare/sdk/internal/cm$a;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/lenovo/anyshare/sdk/internal/cm$a;
return-object v0
.end method