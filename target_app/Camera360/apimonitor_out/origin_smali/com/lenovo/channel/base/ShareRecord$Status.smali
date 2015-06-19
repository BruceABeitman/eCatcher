.class public final enum Lcom/lenovo/channel/base/ShareRecord$Status;
.super Ljava/lang/Enum;
.source "ShareRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/channel/base/ShareRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/channel/base/ShareRecord$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMPLETED:Lcom/lenovo/channel/base/ShareRecord$Status;

.field public static final enum ERROR:Lcom/lenovo/channel/base/ShareRecord$Status;

.field public static final enum PROCESSING:Lcom/lenovo/channel/base/ShareRecord$Status;

.field public static final enum WAITING:Lcom/lenovo/channel/base/ShareRecord$Status;

.field private static b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lenovo/channel/base/ShareRecord$Status;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic c:[Lcom/lenovo/channel/base/ShareRecord$Status;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v4, Lcom/lenovo/channel/base/ShareRecord$Status;

    const-string/jumbo v5, "WAITING"

    invoke-direct {v4, v5, v6, v6}, Lcom/lenovo/channel/base/ShareRecord$Status;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lenovo/channel/base/ShareRecord$Status;->WAITING:Lcom/lenovo/channel/base/ShareRecord$Status;

    new-instance v4, Lcom/lenovo/channel/base/ShareRecord$Status;

    const-string/jumbo v5, "PROCESSING"

    invoke-direct {v4, v5, v7, v7}, Lcom/lenovo/channel/base/ShareRecord$Status;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lenovo/channel/base/ShareRecord$Status;->PROCESSING:Lcom/lenovo/channel/base/ShareRecord$Status;

    new-instance v4, Lcom/lenovo/channel/base/ShareRecord$Status;

    const-string/jumbo v5, "COMPLETED"

    invoke-direct {v4, v5, v8, v8}, Lcom/lenovo/channel/base/ShareRecord$Status;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lenovo/channel/base/ShareRecord$Status;->COMPLETED:Lcom/lenovo/channel/base/ShareRecord$Status;

    new-instance v4, Lcom/lenovo/channel/base/ShareRecord$Status;

    const-string/jumbo v5, "ERROR"

    invoke-direct {v4, v5, v9, v9}, Lcom/lenovo/channel/base/ShareRecord$Status;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lenovo/channel/base/ShareRecord$Status;->ERROR:Lcom/lenovo/channel/base/ShareRecord$Status;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/lenovo/channel/base/ShareRecord$Status;

    sget-object v5, Lcom/lenovo/channel/base/ShareRecord$Status;->WAITING:Lcom/lenovo/channel/base/ShareRecord$Status;

    aput-object v5, v4, v6

    sget-object v5, Lcom/lenovo/channel/base/ShareRecord$Status;->PROCESSING:Lcom/lenovo/channel/base/ShareRecord$Status;

    aput-object v5, v4, v7

    sget-object v5, Lcom/lenovo/channel/base/ShareRecord$Status;->COMPLETED:Lcom/lenovo/channel/base/ShareRecord$Status;

    aput-object v5, v4, v8

    sget-object v5, Lcom/lenovo/channel/base/ShareRecord$Status;->ERROR:Lcom/lenovo/channel/base/ShareRecord$Status;

    aput-object v5, v4, v9

    sput-object v4, Lcom/lenovo/channel/base/ShareRecord$Status;->c:[Lcom/lenovo/channel/base/ShareRecord$Status;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    sput-object v4, Lcom/lenovo/channel/base/ShareRecord$Status;->b:Landroid/util/SparseArray;

    invoke-static {}, Lcom/lenovo/channel/base/ShareRecord$Status;->values()[Lcom/lenovo/channel/base/ShareRecord$Status;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_4e
    if-ge v1, v3, :cond_5c

    aget-object v2, v0, v1

    sget-object v4, Lcom/lenovo/channel/base/ShareRecord$Status;->b:Landroid/util/SparseArray;

    iget v5, v2, Lcom/lenovo/channel/base/ShareRecord$Status;->a:I

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    :cond_5c
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/lenovo/channel/base/ShareRecord$Status;->a:I

    return-void
.end method

.method public static fromInt(I)Lcom/lenovo/channel/base/ShareRecord$Status;
    .registers 3

    sget-object v0, Lcom/lenovo/channel/base/ShareRecord$Status;->b:Landroid/util/SparseArray;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/channel/base/ShareRecord$Status;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$Status;
    .registers 2

    const-class v0, Lcom/lenovo/channel/base/ShareRecord$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/channel/base/ShareRecord$Status;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/channel/base/ShareRecord$Status;
    .registers 1

    sget-object v0, Lcom/lenovo/channel/base/ShareRecord$Status;->c:[Lcom/lenovo/channel/base/ShareRecord$Status;

    invoke-virtual {v0}, [Lcom/lenovo/channel/base/ShareRecord$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/channel/base/ShareRecord$Status;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .registers 2

    iget v0, p0, Lcom/lenovo/channel/base/ShareRecord$Status;->a:I

    return v0
.end method
