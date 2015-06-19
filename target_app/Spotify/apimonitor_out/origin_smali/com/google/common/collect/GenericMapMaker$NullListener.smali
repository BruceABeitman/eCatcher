.class final enum Lcom/google/common/collect/GenericMapMaker$NullListener;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/collect/GenericMapMaker$NullListener;",
        ">;",
        "Lcom/google/common/collect/l",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/GenericMapMaker$NullListener;

.field private static final synthetic b:[Lcom/google/common/collect/GenericMapMaker$NullListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/collect/GenericMapMaker$NullListener;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/google/common/collect/GenericMapMaker$NullListener;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/collect/GenericMapMaker$NullListener;->a:Lcom/google/common/collect/GenericMapMaker$NullListener;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/collect/GenericMapMaker$NullListener;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/common/collect/GenericMapMaker$NullListener;->a:Lcom/google/common/collect/GenericMapMaker$NullListener;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/collect/GenericMapMaker$NullListener;->b:[Lcom/google/common/collect/GenericMapMaker$NullListener;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
