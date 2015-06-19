.class public final enum Lcom/instagram/i/d/g;
.super Ljava/lang/Enum;
.source "NewsfeedStory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/i/d/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/i/d/g;

.field public static final enum b:Lcom/instagram/i/d/g;

.field public static final enum c:Lcom/instagram/i/d/g;

.field public static final enum d:Lcom/instagram/i/d/g;

.field public static final enum e:Lcom/instagram/i/d/g;

.field public static final enum f:Lcom/instagram/i/d/g;

.field private static final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/instagram/i/d/g;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic i:[Lcom/instagram/i/d/g;


# instance fields
.field public g:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/instagram/i/d/g;

    const-string v2, "STATIC_HTML"

    invoke-direct {v1, v2, v0, v0}, Lcom/instagram/i/d/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/instagram/i/d/g;->a:Lcom/instagram/i/d/g;

    new-instance v1, Lcom/instagram/i/d/g;

    const-string v2, "USER_SINGLE_MEDIA"

    invoke-direct {v1, v2, v5, v5}, Lcom/instagram/i/d/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/instagram/i/d/g;->b:Lcom/instagram/i/d/g;

    new-instance v1, Lcom/instagram/i/d/g;

    const-string v2, "USER_MULTI_MEDIA"

    invoke-direct {v1, v2, v6, v6}, Lcom/instagram/i/d/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/instagram/i/d/g;->c:Lcom/instagram/i/d/g;

    new-instance v1, Lcom/instagram/i/d/g;

    const-string v2, "USER_FOLLOW"

    invoke-direct {v1, v2, v7, v7}, Lcom/instagram/i/d/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/instagram/i/d/g;->d:Lcom/instagram/i/d/g;

    new-instance v1, Lcom/instagram/i/d/g;

    const-string v2, "USER_SIMPLE"

    invoke-direct {v1, v2, v8, v8}, Lcom/instagram/i/d/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/instagram/i/d/g;->e:Lcom/instagram/i/d/g;

    new-instance v1, Lcom/instagram/i/d/g;

    const-string v2, "GROUPED_FRIEND_REQUEST"

    const/4 v3, 0x5

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/i/d/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/instagram/i/d/g;->f:Lcom/instagram/i/d/g;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/instagram/i/d/g;

    sget-object v2, Lcom/instagram/i/d/g;->a:Lcom/instagram/i/d/g;

    aput-object v2, v1, v0

    sget-object v2, Lcom/instagram/i/d/g;->b:Lcom/instagram/i/d/g;

    aput-object v2, v1, v5

    sget-object v2, Lcom/instagram/i/d/g;->c:Lcom/instagram/i/d/g;

    aput-object v2, v1, v6

    sget-object v2, Lcom/instagram/i/d/g;->d:Lcom/instagram/i/d/g;

    aput-object v2, v1, v7

    sget-object v2, Lcom/instagram/i/d/g;->e:Lcom/instagram/i/d/g;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/instagram/i/d/g;->f:Lcom/instagram/i/d/g;

    aput-object v3, v1, v2

    sput-object v1, Lcom/instagram/i/d/g;->i:[Lcom/instagram/i/d/g;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/instagram/i/d/g;->h:Landroid/util/SparseArray;

    invoke-static {}, Lcom/instagram/i/d/g;->values()[Lcom/instagram/i/d/g;

    move-result-object v1

    array-length v2, v1

    :goto_67
    if-ge v0, v2, :cond_75

    aget-object v3, v1, v0

    sget-object v4, Lcom/instagram/i/d/g;->h:Landroid/util/SparseArray;

    iget v5, v3, Lcom/instagram/i/d/g;->g:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    :cond_75
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

    iput p3, p0, Lcom/instagram/i/d/g;->g:I

    return-void
.end method

.method static synthetic a()Landroid/util/SparseArray;
    .registers 1

    sget-object v0, Lcom/instagram/i/d/g;->h:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/i/d/g;
    .registers 2

    const-class v0, Lcom/instagram/i/d/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/i/d/g;

    return-object v0
.end method

.method public static values()[Lcom/instagram/i/d/g;
    .registers 1

    sget-object v0, Lcom/instagram/i/d/g;->i:[Lcom/instagram/i/d/g;

    invoke-virtual {v0}, [Lcom/instagram/i/d/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/i/d/g;

    return-object v0
.end method
