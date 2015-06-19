.class public Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;
.super Ljava/lang/Object;
.source "ThumbnailLayoutSpec.java"
.field public footer_height:I
.field public header_bar_height:I
.field public labelHeight:I
.field public labelOverLay:Z
.field public placeholderColor:I
.field public rowsLand:I
.field public rowsPort:I
.field public thumbnailGap:I
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
const/4 v1, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/high16 v0, -0x100
iput v0, p0, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->placeholderColor:I
iput-boolean v2, p0, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->labelOverLay:Z
iput v2, p0, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->labelHeight:I
iput v1, p0, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->rowsLand:I
iput v1, p0, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->rowsPort:I
iput v1, p0, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->thumbnailGap:I
iput v1, p0, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->header_bar_height:I
iput v1, p0, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->footer_height:I
return-void
.end method