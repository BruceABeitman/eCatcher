.class public final Lcom/google/zxing/client/a/z;
.super Lcom/google/zxing/client/a/q;
.source "TelParsedResult.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/google/zxing/client/a/r;->g:Lcom/google/zxing/client/a/r;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/a/q;-><init>(Lcom/google/zxing/client/a/r;)V

    iput-object p1, p0, Lcom/google/zxing/client/a/z;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/zxing/client/a/z;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/a/z;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/zxing/client/a/z;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/a/z;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/a/z;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/a/z;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
