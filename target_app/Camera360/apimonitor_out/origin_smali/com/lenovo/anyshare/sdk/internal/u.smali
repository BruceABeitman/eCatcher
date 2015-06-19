.class public final Lcom/lenovo/anyshare/sdk/internal/u;
.super Ljava/lang/Object;
.source "Packets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/anyshare/sdk/internal/u$a;,
        Lcom/lenovo/anyshare/sdk/internal/u$b;
    }
.end annotation


# direct methods
.method public static a([B)Lcom/lenovo/anyshare/sdk/internal/t;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget-byte v3, p0, v4

    if-eq v3, v5, :cond_f

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Invalid network request!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_f
    aget-byte v2, p0, v5

    const/4 v1, 0x0

    packed-switch v2, :pswitch_data_42

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown packet type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_2f
    new-instance v1, Lcom/lenovo/anyshare/sdk/internal/u$b;

    invoke-direct {v1}, Lcom/lenovo/anyshare/sdk/internal/u$b;-><init>()V

    :goto_34
    const/4 v4, 0x2

    invoke-static {p0, v4}, Lcom/lenovo/anyshare/sdk/internal/bg;->a([BI)I

    move-result v0

    iput v0, v1, Lcom/lenovo/anyshare/sdk/internal/t;->c:I

    return-object v1

    :pswitch_3c
    new-instance v1, Lcom/lenovo/anyshare/sdk/internal/u$a;

    invoke-direct {v1}, Lcom/lenovo/anyshare/sdk/internal/u$a;-><init>()V

    goto :goto_34

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_3c
    .end packed-switch
.end method
