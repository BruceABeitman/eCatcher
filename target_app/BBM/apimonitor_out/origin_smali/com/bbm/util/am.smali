.class final Lcom/bbm/util/am;
.super Ljava/lang/Object;
.source "ChannelUtil.java"

# interfaces
.implements Lcom/bbm/j/s;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bbm/util/ax;

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bbm/util/ax;Landroid/app/Activity;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/util/am;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bbm/util/am;->b:Lcom/bbm/util/ax;

    iput-object p3, p0, Lcom/bbm/util/am;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/util/am;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v4, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v1, v4, :cond_14

    move v0, v2

    :goto_13
    return v0

    :cond_14
    iget-object v1, p0, Lcom/bbm/util/am;->b:Lcom/bbm/util/ax;

    sget-object v4, Lcom/bbm/util/an;->a:[I

    invoke-virtual {v1}, Lcom/bbm/util/ax;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_66

    const/4 v0, 0x0

    move-object v1, v0

    :goto_23
    iget-object v0, p0, Lcom/bbm/util/am;->c:Landroid/app/Activity;

    const-string v4, "clipboard"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iget-object v4, p0, Lcom/bbm/util/am;->c:Landroid/app/Activity;

    const v5, 0x7f0e01df

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object v0, p0, Lcom/bbm/util/am;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/bbm/util/am;->c:Landroid/app/Activity;

    const v5, 0x7f0e01e0

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;I)V

    move v0, v3

    goto :goto_13

    :pswitch_55
    iget-object v0, v0, Lcom/bbm/d/ec;->I:Ljava/lang/String;

    move-object v1, v0

    goto :goto_23

    :pswitch_59
    iget-object v0, v0, Lcom/bbm/d/ec;->H:Ljava/lang/String;

    move-object v1, v0

    goto :goto_23

    :pswitch_5d
    iget-object v0, v0, Lcom/bbm/d/ec;->P:Ljava/lang/String;

    move-object v1, v0

    goto :goto_23

    :pswitch_61
    iget-object v0, v0, Lcom/bbm/d/ec;->f:Ljava/lang/String;

    move-object v1, v0

    goto :goto_23

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_55
        :pswitch_59
        :pswitch_5d
        :pswitch_61
    .end packed-switch
.end method
