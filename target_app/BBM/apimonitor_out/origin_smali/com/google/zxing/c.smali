.class public final Lcom/google/zxing/c;
.super Ljava/lang/Object;
.source "BinaryBitmap.java"


# instance fields
.field public final a:Lcom/google/zxing/b;

.field private b:Lcom/google/zxing/b/b;


# direct methods
.method public constructor <init>(Lcom/google/zxing/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/c;->a:Lcom/google/zxing/b;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/zxing/b/b;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/c;->b:Lcom/google/zxing/b/b;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/zxing/c;->a:Lcom/google/zxing/b;

    invoke-virtual {v0}, Lcom/google/zxing/b;->a()Lcom/google/zxing/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/c;->b:Lcom/google/zxing/b/b;

    :cond_c
    iget-object v0, p0, Lcom/google/zxing/c;->b:Lcom/google/zxing/b/b;

    return-object v0
.end method
