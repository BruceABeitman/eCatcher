.class final Lcom/bbm/n/h;
.super Lcom/bbm/j/u;
.source "MediaCallManager.java"


# instance fields
.field final synthetic a:Lcom/rim/bbm/BbmMediaCallService$CallData;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bbm/n/b;


# direct methods
.method constructor <init>(Lcom/bbm/n/b;Lcom/rim/bbm/BbmMediaCallService$CallData;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/n/h;->c:Lcom/bbm/n/b;

    iput-object p2, p0, Lcom/bbm/n/h;->a:Lcom/rim/bbm/BbmMediaCallService$CallData;

    iput-object p3, p0, Lcom/bbm/n/h;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 7

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bbm/n/h;->a:Lcom/rim/bbm/BbmMediaCallService$CallData;

    iget v1, v1, Lcom/rim/bbm/BbmMediaCallService$CallData;->failureReason:I

    sparse-switch v1, :sswitch_data_12a

    :cond_a
    iget-object v1, p0, Lcom/bbm/n/h;->a:Lcom/rim/bbm/BbmMediaCallService$CallData;

    iget v1, v1, Lcom/rim/bbm/BbmMediaCallService$CallData;->failureReason:I

    packed-switch v1, :pswitch_data_154

    :pswitch_11
    iget-object v0, p0, Lcom/bbm/n/h;->c:Lcom/bbm/n/b;

    invoke-static {v0}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0163

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/bbm/n/h;->a:Lcom/rim/bbm/BbmMediaCallService$CallData;

    iget v4, v4, Lcom/rim/bbm/BbmMediaCallService$CallData;->failureReason:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2a
    if-eqz v1, :cond_38

    iget-object v0, p0, Lcom/bbm/n/h;->c:Lcom/bbm/n/b;

    invoke-static {v0}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x11

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;IIII)V

    :cond_38
    :goto_38
    return v5

    :sswitch_39
    iget-object v0, p0, Lcom/bbm/n/h;->b:Ljava/lang/String;

    if-nez v0, :cond_45

    const-string v0, "user uri is null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_38

    :cond_45
    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/n/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v1, v2, :cond_57

    move v5, v3

    goto :goto_38

    :cond_57
    iget-object v1, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    if-ne v1, v2, :cond_a

    const-string v0, "user not found"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_38

    :pswitch_65
    iget-object v0, p0, Lcom/bbm/n/h;->c:Lcom/bbm/n/b;

    invoke-static {v0}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0167

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :pswitch_73
    iget-object v0, p0, Lcom/bbm/n/h;->c:Lcom/bbm/n/b;

    invoke-static {v0}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :pswitch_81
    iget-object v0, p0, Lcom/bbm/n/h;->c:Lcom/bbm/n/b;

    invoke-static {v0}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0168

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :pswitch_8f
    iget-object v0, p0, Lcom/bbm/n/h;->c:Lcom/bbm/n/b;

    invoke-static {v0}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0169

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :pswitch_9d
    iget-object v1, p0, Lcom/bbm/n/h;->c:Lcom/bbm/n/b;

    invoke-static {v1}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e016f

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2a

    :pswitch_b4
    iget-object v1, p0, Lcom/bbm/n/h;->c:Lcom/bbm/n/b;

    invoke-static {v1}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0166

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2a

    :pswitch_cb
    iget-object v1, p0, Lcom/bbm/n/h;->c:Lcom/bbm/n/b;

    invoke-static {v1}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0165

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2a

    :pswitch_e2
    iget-object v0, p0, Lcom/bbm/n/h;->c:Lcom/bbm/n/b;

    invoke-static {v0}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0164

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2a

    :pswitch_f1
    iget-object v0, p0, Lcom/bbm/n/h;->c:Lcom/bbm/n/b;

    invoke-static {v0}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e016d

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/bbm/n/h;->a:Lcom/rim/bbm/BbmMediaCallService$CallData;

    iget v4, v4, Lcom/rim/bbm/BbmMediaCallService$CallData;->failureReason:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2a

    :pswitch_10c
    iget-object v0, p0, Lcom/bbm/n/h;->c:Lcom/bbm/n/b;

    invoke-static {v0}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e016c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2a

    :pswitch_11b
    iget-object v0, p0, Lcom/bbm/n/h;->c:Lcom/bbm/n/b;

    invoke-static {v0}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e016b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2a

    :sswitch_data_12a
    .sparse-switch
        0x5 -> :sswitch_39
        0x12 -> :sswitch_39
        0x14 -> :sswitch_39
        0x15 -> :sswitch_39
        0x16 -> :sswitch_39
        0x17 -> :sswitch_39
        0x1a -> :sswitch_39
        0x1c -> :sswitch_39
        0x1f -> :sswitch_39
        0x25 -> :sswitch_39
    .end sparse-switch

    :pswitch_data_154
    .packed-switch 0x0
        :pswitch_f1
        :pswitch_f1
        :pswitch_65
        :pswitch_73
        :pswitch_f1
        :pswitch_b4
        :pswitch_f1
        :pswitch_11
        :pswitch_81
        :pswitch_f1
        :pswitch_11
        :pswitch_e2
        :pswitch_65
        :pswitch_65
        :pswitch_11
        :pswitch_11
        :pswitch_f1
        :pswitch_8f
        :pswitch_b4
        :pswitch_f1
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_cb
        :pswitch_f1
        :pswitch_11
        :pswitch_b4
        :pswitch_f1
        :pswitch_b4
        :pswitch_10c
        :pswitch_f1
        :pswitch_b4
        :pswitch_11
        :pswitch_65
        :pswitch_11b
        :pswitch_65
        :pswitch_11
        :pswitch_9d
    .end packed-switch
.end method
