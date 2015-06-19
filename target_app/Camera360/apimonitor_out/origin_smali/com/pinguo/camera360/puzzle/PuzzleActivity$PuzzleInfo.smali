.class public Lcom/pinguo/camera360/puzzle/PuzzleActivity$PuzzleInfo;
.super Ljava/lang/Object;
.source "PuzzleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/puzzle/PuzzleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PuzzleInfo"
.end annotation


# instance fields
.field public forwardType:I

.field public puzzlingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$PuzzleInfo;->forwardType:I

    return-void
.end method
