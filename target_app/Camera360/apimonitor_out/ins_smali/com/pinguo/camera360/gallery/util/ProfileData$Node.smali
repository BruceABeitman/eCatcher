.class  Lcom/pinguo/camera360/gallery/util/ProfileData$Node;
.super Ljava/lang/Object;
.source "ProfileData.java"
.field public children:Ljava/util/ArrayList;
.field public id:I
.field public parent:Lcom/pinguo/camera360/gallery/util/ProfileData$Node;
.field public sampleCount:I
.method public constructor <init>(Lcom/pinguo/camera360/gallery/util/ProfileData$Node;I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;->parent:Lcom/pinguo/camera360/gallery/util/ProfileData$Node;
iput p2, p0, Lcom/pinguo/camera360/gallery/util/ProfileData$Node;->id:I
return-void
.end method