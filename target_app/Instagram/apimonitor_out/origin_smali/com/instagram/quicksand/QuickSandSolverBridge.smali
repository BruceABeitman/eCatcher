.class public Lcom/instagram/quicksand/QuickSandSolverBridge;
.super Ljava/lang/Object;
.source "QuickSandSolverBridge.java"


# static fields
.field private static b:Z


# instance fields
.field private a:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/quicksand/QuickSandSolverBridge;->b:Z

    :try_start_3
    const-string v0, "quicksand"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/quicksand/QuickSandSolverBridge;->b:Z

    goto :goto_8
.end method

.method public constructor <init>(II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/instagram/quicksand/QuickSandSolverBridge;->createQuickSandSolver(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/quicksand/QuickSandSolverBridge;->a:J

    return-void
.end method

.method private native createQuickSandSolver(II)J
.end method

.method private native getStopFlagNative(J)Z
.end method

.method private native resetStopFlagNative(J)V
.end method

.method private native setStopFlagNative(J)V
.end method

.method private native solveNative(Ljava/lang/String;IJ)[I
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-wide v0, p0, Lcom/instagram/quicksand/QuickSandSolverBridge;->a:J

    invoke-direct {p0, v0, v1}, Lcom/instagram/quicksand/QuickSandSolverBridge;->setStopFlagNative(J)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)[I
    .registers 5

    iget-wide v0, p0, Lcom/instagram/quicksand/QuickSandSolverBridge;->a:J

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/quicksand/QuickSandSolverBridge;->solveNative(Ljava/lang/String;IJ)[I

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .registers 3

    iget-wide v0, p0, Lcom/instagram/quicksand/QuickSandSolverBridge;->a:J

    invoke-direct {p0, v0, v1}, Lcom/instagram/quicksand/QuickSandSolverBridge;->getStopFlagNative(J)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .registers 3

    iget-wide v0, p0, Lcom/instagram/quicksand/QuickSandSolverBridge;->a:J

    invoke-direct {p0, v0, v1}, Lcom/instagram/quicksand/QuickSandSolverBridge;->resetStopFlagNative(J)V

    return-void
.end method
