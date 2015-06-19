.class public Lcom/megvii/api/PartsDetection$PTHandle;
.super Ljava/lang/Object;
.source "PartsDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/megvii/api/PartsDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PTHandle"
.end annotation


# instance fields
.field ptHandle:I


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/megvii/api/PartsDetection$PTHandle;->ptHandle:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/megvii/api/PartsDetection$PTHandle;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/megvii/api/PartsDetection$PTHandle;-><init>(I)V

    return-void
.end method
