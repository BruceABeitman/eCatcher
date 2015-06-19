.class public Lcom/lenovo/anyshare/sdk/internal/da$a;
.super Ljava/lang/Object;
.source "CorrectingDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/da;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:[B


# direct methods
.method protected constructor <init>(I[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/lenovo/anyshare/sdk/internal/da$a;->a:I

    iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/da$a;->b:[B

    return-void
.end method
