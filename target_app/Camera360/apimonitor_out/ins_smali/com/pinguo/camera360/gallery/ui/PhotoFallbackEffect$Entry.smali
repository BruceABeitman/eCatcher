.class public Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;
.super Ljava/lang/Object;
.source "PhotoFallbackEffect.java"
.field public dest:Landroid/graphics/Rect;
.field public index:I
.field public path:Lcom/pinguo/camera360/gallery/data/Path;
.field public source:Landroid/graphics/Rect;
.field public texture:Lcom/pinguo/camera360/gallery/ui/RawTexture;
.method public constructor <init>(Lcom/pinguo/camera360/gallery/data/Path;Landroid/graphics/Rect;Lcom/pinguo/camera360/gallery/ui/RawTexture;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;->path:Lcom/pinguo/camera360/gallery/data/Path;
iput-object p2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;->source:Landroid/graphics/Rect;
iput-object p3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$Entry;->texture:Lcom/pinguo/camera360/gallery/ui/RawTexture;
return-void
.end method