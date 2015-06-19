.class public final enum Lcom/lenovo/channel/base/ShareRecord$RecordType;
.super Ljava/lang/Enum;
.source "ShareRecord.java"
.field public static final enum COLLECTION:Lcom/lenovo/channel/base/ShareRecord$RecordType;
.field public static final enum CONVERSATION:Lcom/lenovo/channel/base/ShareRecord$RecordType;
.field public static final enum ITEM:Lcom/lenovo/channel/base/ShareRecord$RecordType;
.field private static b:Landroid/util/SparseArray;
.field private static final synthetic c:[Lcom/lenovo/channel/base/ShareRecord$RecordType;
.field private a:I
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x2
const/4 v7, 0x1
const/4 v6, 0x0
new-instance v4, Lcom/lenovo/channel/base/ShareRecord$RecordType;
const-string/jumbo v5, "ITEM"
invoke-direct {v4, v5, v6, v6}, Lcom/lenovo/channel/base/ShareRecord$RecordType;-><init>(Ljava/lang/String;II)V
sput-object v4, Lcom/lenovo/channel/base/ShareRecord$RecordType;->ITEM:Lcom/lenovo/channel/base/ShareRecord$RecordType;
new-instance v4, Lcom/lenovo/channel/base/ShareRecord$RecordType;
const-string/jumbo v5, "COLLECTION"
invoke-direct {v4, v5, v7, v7}, Lcom/lenovo/channel/base/ShareRecord$RecordType;-><init>(Ljava/lang/String;II)V
sput-object v4, Lcom/lenovo/channel/base/ShareRecord$RecordType;->COLLECTION:Lcom/lenovo/channel/base/ShareRecord$RecordType;
new-instance v4, Lcom/lenovo/channel/base/ShareRecord$RecordType;
const-string/jumbo v5, "CONVERSATION"
invoke-direct {v4, v5, v8, v8}, Lcom/lenovo/channel/base/ShareRecord$RecordType;-><init>(Ljava/lang/String;II)V
sput-object v4, Lcom/lenovo/channel/base/ShareRecord$RecordType;->CONVERSATION:Lcom/lenovo/channel/base/ShareRecord$RecordType;
const/4 v4, 0x3
new-array v4, v4, [Lcom/lenovo/channel/base/ShareRecord$RecordType;
sget-object v5, Lcom/lenovo/channel/base/ShareRecord$RecordType;->ITEM:Lcom/lenovo/channel/base/ShareRecord$RecordType;
aput-object v5, v4, v6
sget-object v5, Lcom/lenovo/channel/base/ShareRecord$RecordType;->COLLECTION:Lcom/lenovo/channel/base/ShareRecord$RecordType;
aput-object v5, v4, v7
sget-object v5, Lcom/lenovo/channel/base/ShareRecord$RecordType;->CONVERSATION:Lcom/lenovo/channel/base/ShareRecord$RecordType;
aput-object v5, v4, v8
sput-object v4, Lcom/lenovo/channel/base/ShareRecord$RecordType;->c:[Lcom/lenovo/channel/base/ShareRecord$RecordType;
new-instance v4, Landroid/util/SparseArray;
invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V
sput-object v4, Lcom/lenovo/channel/base/ShareRecord$RecordType;->b:Landroid/util/SparseArray;
invoke-static {}, Lcom/lenovo/channel/base/ShareRecord$RecordType;->values()[Lcom/lenovo/channel/base/ShareRecord$RecordType;
move-result-object v0
array-length v3, v0
const/4 v1, 0x0
:goto_3f
if-ge v1, v3, :cond_4d
aget-object v2, v0, v1
sget-object v4, Lcom/lenovo/channel/base/ShareRecord$RecordType;->b:Landroid/util/SparseArray;
iget v5, v2, Lcom/lenovo/channel/base/ShareRecord$RecordType;->a:I
invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
add-int/lit8 v1, v1, 0x1
goto :goto_3f
:cond_4d
return-void
.end method
.method private constructor <init>(Ljava/lang/String;II)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lcom/lenovo/channel/base/ShareRecord$RecordType;->a:I
return-void
.end method
.method public static fromInt(I)Lcom/lenovo/channel/base/ShareRecord$RecordType;
.registers 3
sget-object v0, Lcom/lenovo/channel/base/ShareRecord$RecordType;->b:Landroid/util/SparseArray;
invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/channel/base/ShareRecord$RecordType;
return-object v0
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$RecordType;
.registers 2
const-class v0, Lcom/lenovo/channel/base/ShareRecord$RecordType;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/lenovo/channel/base/ShareRecord$RecordType;
return-object v0
.end method
.method public static values()[Lcom/lenovo/channel/base/ShareRecord$RecordType;
.registers 1
sget-object v0, Lcom/lenovo/channel/base/ShareRecord$RecordType;->c:[Lcom/lenovo/channel/base/ShareRecord$RecordType;
invoke-virtual {v0}, [Lcom/lenovo/channel/base/ShareRecord$RecordType;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/lenovo/channel/base/ShareRecord$RecordType;
return-object v0
.end method
.method public toInt()I
.registers 2
iget v0, p0, Lcom/lenovo/channel/base/ShareRecord$RecordType;->a:I
return v0
.end method