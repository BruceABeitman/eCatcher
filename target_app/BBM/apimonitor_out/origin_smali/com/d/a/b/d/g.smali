.class public final Lcom/d/a/b/d/g;
.super Ljava/lang/Object;
.source "SlowNetworkImageDownloader.java"

# interfaces
.implements Lcom/d/a/b/d/c;


# instance fields
.field private final a:Lcom/d/a/b/d/c;


# direct methods
.method public constructor <init>(Lcom/d/a/b/d/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/d/a/b/d/g;->a:Lcom/d/a/b/d/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .registers 6

    iget-object v0, p0, Lcom/d/a/b/d/g;->a:Lcom/d/a/b/d/c;

    invoke-interface {v0, p1, p2}, Lcom/d/a/b/d/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1

    sget-object v0, Lcom/d/a/b/d/h;->a:[I

    invoke-static {p1}, Lcom/d/a/b/d/d;->a(Ljava/lang/String;)Lcom/d/a/b/d/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/d/a/b/d/d;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1e

    move-object v0, v1

    :goto_16
    return-object v0

    :pswitch_17
    new-instance v0, Lcom/d/a/b/a/c;

    invoke-direct {v0, v1}, Lcom/d/a/b/a/c;-><init>(Ljava/io/InputStream;)V

    goto :goto_16

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method
