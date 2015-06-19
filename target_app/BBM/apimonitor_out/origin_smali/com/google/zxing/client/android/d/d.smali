.class public final Lcom/google/zxing/client/android/d/d;
.super Lcom/google/zxing/client/android/d/j;
.source "GeoResultHandler.java"


# static fields
.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/zxing/client/android/y;->button_show_map:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/google/zxing/client/android/y;->button_get_directions:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/d/d;->c:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/client/android/d/j;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    sget-object v0, Lcom/google/zxing/client/android/d/d;->c:[I

    array-length v0, v0

    return v0
.end method

.method public final a(I)I
    .registers 3

    sget-object v0, Lcom/google/zxing/client/android/d/d;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public final b(I)V
    .registers 11

    const/16 v8, 0x2c

    iget-object v0, p0, Lcom/google/zxing/client/android/d/j;->a:Lcom/google/zxing/client/a/q;

    check-cast v0, Lcom/google/zxing/client/a/m;

    packed-switch p1, :pswitch_data_8e

    :goto_9
    return-void

    :pswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "geo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/google/zxing/client/a/m;->a:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/google/zxing/client/a/m;->b:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/google/zxing/client/a/m;->c:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_31

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/google/zxing/client/a/m;->c:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_31
    iget-object v2, v0, Lcom/google/zxing/client/a/m;->d:Ljava/lang/String;

    if-eqz v2, :cond_3f

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/google/zxing/client/a/m;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/d/j;->b(Landroid/content/Intent;)V

    goto :goto_9

    :pswitch_52
    iget-wide v1, v0, Lcom/google/zxing/client/a/m;->a:D

    iget-wide v3, v0, Lcom/google/zxing/client/a/m;->b:D

    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://maps.google."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/google/zxing/client/android/d/j;->b:Landroid/app/Activity;

    invoke-static {v7}, Lcom/google/zxing/client/android/r;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/maps?f=d&daddr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/d/j;->b(Landroid/content/Intent;)V

    goto/16 :goto_9

    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_a
        :pswitch_52
    .end packed-switch
.end method
