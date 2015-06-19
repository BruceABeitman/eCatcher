.class public Lcom/megvii/api/PartsDetection$PTResult;
.super Ljava/lang/Object;
.source "PartsDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/megvii/api/PartsDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PTResult"
.end annotation


# instance fields
.field ptResult:I


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/megvii/api/PartsDetection$PTResult;->ptResult:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/megvii/api/PartsDetection$PTResult;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/megvii/api/PartsDetection$PTResult;-><init>(I)V

    return-void
.end method
