.class public final Lcom/lenovo/anyshare/sdk/internal/e;
.super Ljava/lang/Object;
.source "MessageChannelFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/anyshare/sdk/internal/e$1;
    }
.end annotation


# direct methods
.method public static a(Lcom/lenovo/anyshare/sdk/internal/m$a;Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/q;)Lcom/lenovo/anyshare/sdk/internal/m;
    .registers 5

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/e$1;->a:[I

    invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/m$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :pswitch_d
    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/p;

    invoke-direct {v0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/p;-><init>(Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/q;)V

    goto :goto_c

    :pswitch_13
    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/l;

    invoke-direct {v0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/l;-><init>(Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/q;)V

    goto :goto_c

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_d
        :pswitch_13
    .end packed-switch
.end method
