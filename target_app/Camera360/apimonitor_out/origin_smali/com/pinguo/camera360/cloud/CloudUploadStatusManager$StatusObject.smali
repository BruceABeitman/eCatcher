.class public Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusObject;
.super Ljava/lang/Object;
.source "CloudUploadStatusManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusObject"
.end annotation


# instance fields
.field public msg:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
