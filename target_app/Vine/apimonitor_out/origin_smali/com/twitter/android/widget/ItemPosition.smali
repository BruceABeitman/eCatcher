.class public Lcom/twitter/android/widget/ItemPosition;
.super Ljava/lang/Object;
.source "ItemPosition.java"


# instance fields
.field public final itemId:J

.field public final offset:I

.field public final position:I


# direct methods
.method public constructor <init>(IJI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/twitter/android/widget/ItemPosition;->position:I

    iput-wide p2, p0, Lcom/twitter/android/widget/ItemPosition;->itemId:J

    iput p4, p0, Lcom/twitter/android/widget/ItemPosition;->offset:I

    return-void
.end method
