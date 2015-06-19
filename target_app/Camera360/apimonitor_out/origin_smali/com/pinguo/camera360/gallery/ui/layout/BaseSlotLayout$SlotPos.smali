.class public Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout$SlotPos;
.super Ljava/lang/Object;
.source "BaseSlotLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlotPos"
.end annotation


# instance fields
.field public isChecked:Z

.field public rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ZLandroid/graphics/Rect;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout$SlotPos;->isChecked:Z

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout$SlotPos;->rect:Landroid/graphics/Rect;

    return-void
.end method
