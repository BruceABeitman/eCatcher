.class Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;
.super Ljava/lang/Object;
.source "ShareListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/share/ui/ShareListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemShowStatus"
.end annotation


# instance fields
.field public bgResId:I

.field public isShow:Z

.field public itemId:I

.field public nameResId:I


# direct methods
.method public constructor <init>(IIZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->bgResId:I

    iput p1, p0, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->itemId:I

    iput p2, p0, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->nameResId:I

    iput-boolean p3, p0, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->isShow:Z

    return-void
.end method


# virtual methods
.method public hasBgResId()Z
    .registers 3

    iget v0, p0, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->bgResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setBgResId(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/share/ui/ShareListView$ItemShowStatus;->bgResId:I

    return-void
.end method
