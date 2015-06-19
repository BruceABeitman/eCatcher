.class public Lcom/pinguo/camera360/camera/view/EditableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "EditableRelativeLayout.java"

# interfaces
.implements Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/EditableView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getDeleteView()Landroid/view/View;
    .registers 2

    const v0, 0x7f0a029b

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/EditableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
