.class public Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter$HoldView;
.super Ljava/lang/Object;
.source "Camera360FeedbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HoldView"
.end annotation


# instance fields
.field public avatarImg:Landroid/widget/ImageView;

.field public contentText:Landroid/widget/TextView;

.field public dateText:Landroid/widget/TextView;

.field public nameText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
