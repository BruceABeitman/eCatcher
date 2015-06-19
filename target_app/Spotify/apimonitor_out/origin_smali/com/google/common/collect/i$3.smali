.class final Lcom/google/common/collect/i$3;
.super Lcom/google/common/collect/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/i;->a([Ljava/lang/Object;III)Lcom/google/common/collect/ar;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:I


# direct methods
.method constructor <init>(II[Ljava/lang/Object;I)V
    .registers 5

    iput-object p3, p0, Lcom/google/common/collect/i$3;->a:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/common/collect/i$3;->b:I

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/i$3;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/i$3;->b:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
