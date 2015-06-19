.class final Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;
.super Ljava/lang/Object;
.source "UScriptRun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/lang/UScriptRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParenStackEntry"
.end annotation


# instance fields
.field pairIndex:I

.field scriptCode:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;->pairIndex:I

    iput p2, p0, Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;->scriptCode:I

    return-void
.end method
