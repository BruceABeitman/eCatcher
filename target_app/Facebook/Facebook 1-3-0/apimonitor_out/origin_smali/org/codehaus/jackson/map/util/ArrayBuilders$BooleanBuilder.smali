.class public final Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;
.super Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/util/ArrayBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BooleanBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder",
        "<[Z>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/codehaus/jackson/map/util/PrimitiveArrayBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic _constructArray(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;->_constructArray(I)[Z

    move-result-object v0

    return-object v0
.end method

.method public final _constructArray(I)[Z
    .registers 3

    new-array v0, p1, [Z

    return-object v0
.end method
