.class public final Lcom/google/zxing/client/a/o;
.super Lcom/google/zxing/client/a/q;
.source "ISBNParsedResult.java"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/google/zxing/client/a/r;->k:Lcom/google/zxing/client/a/r;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/a/q;-><init>(Lcom/google/zxing/client/a/r;)V

    iput-object p1, p0, Lcom/google/zxing/client/a/o;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/client/a/o;->a:Ljava/lang/String;

    return-object v0
.end method
