.class public Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;
.super Ljava/lang/Object;
.source "ThumbnailLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/views/layout/ThumbnailLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailPos"
.end annotation


# instance fields
.field public isChecked:Z

.field public rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ZLandroid/graphics/Rect;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;->isChecked:Z

    iput-object p2, p0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;->rect:Landroid/graphics/Rect;

    return-void
.end method
