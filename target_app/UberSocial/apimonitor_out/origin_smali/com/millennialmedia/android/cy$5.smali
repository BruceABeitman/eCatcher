.class Lcom/millennialmedia/android/cy$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/db;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/cy;
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/cy;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/cy;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/cy$5;->a:Lcom/millennialmedia/android/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/cy$5;->a:Lcom/millennialmedia/android/cy;

    iget-object v1, p0, Lcom/millennialmedia/android/cy$5;->a:Lcom/millennialmedia/android/cy;

    invoke-virtual {v1}, Lcom/millennialmedia/android/cy;->j()[Lcom/millennialmedia/android/dc;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/cy;[Lcom/millennialmedia/android/dc;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/cy$5;->a:Lcom/millennialmedia/android/cy;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/cy;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(D)V
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/cy$5;->a:Lcom/millennialmedia/android/cy;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/cy;->b(D)V

    return-void
.end method

.method public a(Lcom/millennialmedia/android/dd;)V
    .registers 4

    sget-object v0, Lcom/millennialmedia/android/cy$8;->a:[I

    invoke-virtual {p1}, Lcom/millennialmedia/android/dd;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    :goto_b
    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/millennialmedia/android/cy$5;->a:Lcom/millennialmedia/android/cy;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cy;->e()V

    goto :goto_b

    :pswitch_12
    iget-object v0, p0, Lcom/millennialmedia/android/cy$5;->a:Lcom/millennialmedia/android/cy;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cy;->c()V

    goto :goto_b

    :pswitch_18
    iget-object v0, p0, Lcom/millennialmedia/android/cy$5;->a:Lcom/millennialmedia/android/cy;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cy;->a()V

    goto :goto_b

    :pswitch_1e
    iget-object v0, p0, Lcom/millennialmedia/android/cy$5;->a:Lcom/millennialmedia/android/cy;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cy;->b()V

    goto :goto_b

    :pswitch_24
    iget-object v0, p0, Lcom/millennialmedia/android/cy$5;->a:Lcom/millennialmedia/android/cy;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cy;->d()V

    goto :goto_b

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_1e
        :pswitch_24
    .end packed-switch
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(D)V
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/cy$5;->a:Lcom/millennialmedia/android/cy;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/cy;->a(D)V

    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method
