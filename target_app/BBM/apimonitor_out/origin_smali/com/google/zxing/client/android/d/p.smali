.class public final Lcom/google/zxing/client/android/d/p;
.super Lcom/google/zxing/client/android/d/j;
.source "TextResultHandler.java"


# static fields
.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/zxing/client/android/y;->button_web_search:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/google/zxing/client/android/y;->button_share_by_email:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/google/zxing/client/android/y;->button_share_by_sms:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/google/zxing/client/android/y;->button_custom_product_search:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/d/p;->c:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;Lcom/google/zxing/m;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/client/android/d/j;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;Lcom/google/zxing/m;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/zxing/client/android/d/p;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/google/zxing/client/android/d/p;->c:[I

    array-length v0, v0

    :goto_9
    return v0

    :cond_a
    sget-object v0, Lcom/google/zxing/client/android/d/p;->c:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_9
.end method

.method public final a(I)I
    .registers 3

    sget-object v0, Lcom/google/zxing/client/android/d/p;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public final b(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/client/android/d/j;->a:Lcom/google/zxing/client/a/q;

    invoke-virtual {v0}, Lcom/google/zxing/client/a/q;->a()Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_1e

    :goto_9
    return-void

    :pswitch_a
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/d/p;->f(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_e
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/d/p;->a(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_12
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/d/p;->b(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_16
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/d/p;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/d/p;->e(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_16
    .end packed-switch
.end method
