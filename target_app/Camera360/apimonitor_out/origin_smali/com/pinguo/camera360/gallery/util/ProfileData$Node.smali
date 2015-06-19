.class Lcom/pinguo/camera360/gallery/util/ProfileData$Node;
.super Ljava/lang/Object;
.source "ProfileData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/util/ProfileData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field public children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/gallery/util/ProfileData$Node;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public parent:Lcom/pinguo/camera360/gallery/util/ProfileData$Node;

.field public sampleCount:I


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/gallery/util/ProfileData$Node;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;->parent:Lcom/pinguo/camera360/gallery/util/ProfileData$Node;

    iput p2, p0, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;->id:I

    return-void
.end method
