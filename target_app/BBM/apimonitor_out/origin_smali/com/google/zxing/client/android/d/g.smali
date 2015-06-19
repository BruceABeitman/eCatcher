.class public final Lcom/google/zxing/client/android/d/g;
.super Lcom/google/zxing/client/android/d/j;
.source "ProductResultHandler.java"


# static fields
.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/zxing/client/android/y;->button_product_search:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/google/zxing/client/android/y;->button_web_search:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/google/zxing/client/android/y;->button_custom_product_search:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/d/g;->c:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;Lcom/google/zxing/m;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/client/android/d/j;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;Lcom/google/zxing/m;)V

    new-instance v0, Lcom/google/zxing/client/android/d/h;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/d/h;-><init>(Lcom/google/zxing/client/android/d/g;)V

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/d/g;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/zxing/client/android/d/g;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/google/zxing/client/android/d/g;->c:[I

    array-length v0, v0

    :goto_9
    return v0

    :cond_a
    sget-object v0, Lcom/google/zxing/client/android/d/g;->c:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_9
.end method

.method public final a(I)I
    .registers 3

    sget-object v0, Lcom/google/zxing/client/android/d/g;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public final b(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/client/android/d/j;->a:Lcom/google/zxing/client/a/q;

    check-cast v0, Lcom/google/zxing/client/a/s;

    packed-switch p1, :pswitch_data_1e

    :goto_7
    return-void

    :pswitch_8
    iget-object v0, v0, Lcom/google/zxing/client/a/s;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/d/g;->c(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_e
    iget-object v0, v0, Lcom/google/zxing/client/a/s;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/d/g;->f(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_14
    iget-object v0, v0, Lcom/google/zxing/client/a/s;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/d/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/d/g;->e(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_e
        :pswitch_14
    .end packed-switch
.end method
