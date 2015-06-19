.class public final Lcom/lenovo/anyshare/sdk/internal/q;
.super Ljava/lang/Object;
.source "SocketEndpoint.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/q;->a:Ljava/lang/String;

    iput p2, p0, Lcom/lenovo/anyshare/sdk/internal/q;->b:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "SocketEndpoint [ip=%s, port=%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/q;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/lenovo/anyshare/sdk/internal/q;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
