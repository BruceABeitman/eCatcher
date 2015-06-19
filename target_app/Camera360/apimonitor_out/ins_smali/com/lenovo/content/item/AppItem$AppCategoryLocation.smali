.class public final enum Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
.super Ljava/lang/Enum;
.source "AppItem.java"
.field public static final enum SDCARD:Lcom/lenovo/content/item/AppItem$AppCategoryLocation; = null
.field public static final enum SYSTEM:Lcom/lenovo/content/item/AppItem$AppCategoryLocation; = null
.field public static final TAG:Ljava/lang/String; = "AppCategoryLocation"
.field public static final enum UNKNOWN:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
.field public static final enum ZIP:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
.field private static b:Landroid/util/SparseArray;
.field private static final synthetic c:[Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
.field private a:I
.method static constructor <clinit>()V
.registers 10
const/4 v9, 0x3
const/4 v8, 0x2
const/4 v7, 0x1
const/4 v6, 0x0
new-instance v4, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
const-string/jumbo v5, "UNKNOWN"
invoke-direct {v4, v5, v6, v6}, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;-><init>(Ljava/lang/String;II)V
sput-object v4, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->UNKNOWN:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
new-instance v4, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
const-string/jumbo v5, "SYSTEM"
invoke-direct {v4, v5, v7, v7}, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;-><init>(Ljava/lang/String;II)V
sput-object v4, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->SYSTEM:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
new-instance v4, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
const-string/jumbo v5, "SDCARD"
invoke-direct {v4, v5, v8, v8}, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;-><init>(Ljava/lang/String;II)V
sput-object v4, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->SDCARD:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
new-instance v4, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
const-string/jumbo v5, "ZIP"
invoke-direct {v4, v5, v9, v9}, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;-><init>(Ljava/lang/String;II)V
sput-object v4, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->ZIP:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
const/4 v4, 0x4
new-array v4, v4, [Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
sget-object v5, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->UNKNOWN:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
aput-object v5, v4, v6
sget-object v5, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->SYSTEM:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
aput-object v5, v4, v7
sget-object v5, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->SDCARD:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
aput-object v5, v4, v8
sget-object v5, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->ZIP:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
aput-object v5, v4, v9
sput-object v4, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->c:[Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
new-instance v4, Landroid/util/SparseArray;
invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V
sput-object v4, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->b:Landroid/util/SparseArray;
invoke-static {}, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->values()[Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
move-result-object v0
array-length v3, v0
const/4 v1, 0x0
:goto_4e
if-ge v1, v3, :cond_5c
aget-object v2, v0, v1
sget-object v4, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->b:Landroid/util/SparseArray;
iget v5, v2, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->a:I
invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
add-int/lit8 v1, v1, 0x1
goto :goto_4e
:cond_5c
return-void
.end method
.method private constructor <init>(Ljava/lang/String;II)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->a:I
return-void
.end method
.method public static fromInt(I)Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
.registers 3
sget-object v0, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->b:Landroid/util/SparseArray;
invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
return-object v0
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
.registers 2
const-class v0, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
return-object v0
.end method
.method public static values()[Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
.registers 1
sget-object v0, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->c:[Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
invoke-virtual {v0}, [Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
return-object v0
.end method
.method public toInt()I
.registers 2
iget v0, p0, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->a:I
return v0
.end method