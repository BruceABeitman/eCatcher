.class public final enum Lcom/lenovo/channel/base/ShareRecord$ShareType;
.super Ljava/lang/Enum;
.source "ShareRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/channel/base/ShareRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShareType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/channel/base/ShareRecord$ShareType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum RECEIVE:Lcom/lenovo/channel/base/ShareRecord$ShareType;

.field public static final enum SEND:Lcom/lenovo/channel/base/ShareRecord$ShareType;

.field private static b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lenovo/channel/base/ShareRecord$ShareType;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic c:[Lcom/lenovo/channel/base/ShareRecord$ShareType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v4, Lcom/lenovo/channel/base/ShareRecord$ShareType;

    const-string/jumbo v5, "SEND"

    invoke-direct {v4, v5, v6, v6}, Lcom/lenovo/channel/base/ShareRecord$ShareType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lenovo/channel/base/ShareRecord$ShareType;->SEND:Lcom/lenovo/channel/base/ShareRecord$ShareType;

    new-instance v4, Lcom/lenovo/channel/base/ShareRecord$ShareType;

    const-string/jumbo v5, "RECEIVE"

    invoke-direct {v4, v5, v7, v7}, Lcom/lenovo/channel/base/ShareRecord$ShareType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/lenovo/channel/base/ShareRecord$ShareType;->RECEIVE:Lcom/lenovo/channel/base/ShareRecord$ShareType;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/lenovo/channel/base/ShareRecord$ShareType;

    sget-object v5, Lcom/lenovo/channel/base/ShareRecord$ShareType;->SEND:Lcom/lenovo/channel/base/ShareRecord$ShareType;

    aput-object v5, v4, v6

    sget-object v5, Lcom/lenovo/channel/base/ShareRecord$ShareType;->RECEIVE:Lcom/lenovo/channel/base/ShareRecord$ShareType;

    aput-object v5, v4, v7

    sput-object v4, Lcom/lenovo/channel/base/ShareRecord$ShareType;->c:[Lcom/lenovo/channel/base/ShareRecord$ShareType;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    sput-object v4, Lcom/lenovo/channel/base/ShareRecord$ShareType;->b:Landroid/util/SparseArray;

    invoke-static {}, Lcom/lenovo/channel/base/ShareRecord$ShareType;->values()[Lcom/lenovo/channel/base/ShareRecord$ShareType;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_30
    if-ge v1, v3, :cond_3e

    aget-object v2, v0, v1

    sget-object v4, Lcom/lenovo/channel/base/ShareRecord$ShareType;->b:Landroid/util/SparseArray;

    iget v5, v2, Lcom/lenovo/channel/base/ShareRecord$ShareType;->a:I

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_3e
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

    iput p3, p0, Lcom/lenovo/channel/base/ShareRecord$ShareType;->a:I

    return-void
.end method

.method public static fromInt(I)Lcom/lenovo/channel/base/ShareRecord$ShareType;
    .registers 3

    sget-object v0, Lcom/lenovo/channel/base/ShareRecord$ShareType;->b:Landroid/util/SparseArray;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/channel/base/ShareRecord$ShareType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$ShareType;
    .registers 2

    const-class v0, Lcom/lenovo/channel/base/ShareRecord$ShareType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/channel/base/ShareRecord$ShareType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/channel/base/ShareRecord$ShareType;
    .registers 1

    sget-object v0, Lcom/lenovo/channel/base/ShareRecord$ShareType;->c:[Lcom/lenovo/channel/base/ShareRecord$ShareType;

    invoke-virtual {v0}, [Lcom/lenovo/channel/base/ShareRecord$ShareType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/channel/base/ShareRecord$ShareType;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .registers 2

    iget v0, p0, Lcom/lenovo/channel/base/ShareRecord$ShareType;->a:I

    return v0
.end method
