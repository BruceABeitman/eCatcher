.class public Lcom/lenovo/anyshare/sdk/internal/df;
.super Ljava/lang/Object;
.source "ToneDecoder.java"

# interfaces
.implements Lcom/lenovo/anyshare/sdk/internal/dd;


# instance fields
.field private a:Lcom/lenovo/anyshare/sdk/internal/dg;

.field private b:Lcom/lenovo/anyshare/sdk/internal/dc;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/lenovo/anyshare/sdk/internal/dg;I)V
    .registers 9

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/lenovo/anyshare/sdk/internal/df;->c:Z

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/df;->a:Lcom/lenovo/anyshare/sdk/internal/dg;

    new-instance v1, Lcom/lenovo/anyshare/sdk/internal/dc;

    invoke-direct {v1, p2, p0}, Lcom/lenovo/anyshare/sdk/internal/dc;-><init>(ILcom/lenovo/anyshare/sdk/internal/dd;)V

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/df;->b:Lcom/lenovo/anyshare/sdk/internal/dc;

    invoke-static {}, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->getInstance()Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->isLoaded()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/anyshare/sdk/internal/df;->c:Z

    const/16 v2, 0x200

    const/16 v3, 0x80

    const/16 v5, 0x2ee0

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->prepare(IIIII)V

    return-void
.end method

.method private a([B)Ljava/lang/String;
    .registers 7

    invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/da;->a([B)Lcom/lenovo/anyshare/sdk/internal/da$a;

    move-result-object v1

    iget-object v2, v1, Lcom/lenovo/anyshare/sdk/internal/da$a;->b:[B

    invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/cz;->a([B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_34

    const-string/jumbo v2, "ToneDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doCharacterDecode(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/lenovo/anyshare/sdk/internal/da$a;->b:[B

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " do character decoder failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_34
    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/df;->b:Lcom/lenovo/anyshare/sdk/internal/dc;

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/dc;->a()V

    return-void
.end method

.method public a(I[B)V
    .registers 6

    sparse-switch p1, :sswitch_data_18

    :cond_3
    :goto_3
    return-void

    :sswitch_4
    invoke-direct {p0, p2}, Lcom/lenovo/anyshare/sdk/internal/df;->a([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/df;->a:Lcom/lenovo/anyshare/sdk/internal/dg;

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Lcom/lenovo/anyshare/sdk/internal/dg;->onResult(ILjava/lang/String;)V

    goto :goto_3

    :sswitch_11
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/df;->a:Lcom/lenovo/anyshare/sdk/internal/dg;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/lenovo/anyshare/sdk/internal/dg;->onResult(ILjava/lang/String;)V

    goto :goto_3

    :sswitch_data_18
    .sparse-switch
        0x6 -> :sswitch_4
        0x8 -> :sswitch_11
        0x10 -> :sswitch_11
        0x20 -> :sswitch_11
    .end sparse-switch
.end method

.method public a([S)V
    .registers 3

    iget-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/df;->c:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/df;->b:Lcom/lenovo/anyshare/sdk/internal/dc;

    invoke-virtual {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/dc;->a([S)V

    goto :goto_4
.end method
