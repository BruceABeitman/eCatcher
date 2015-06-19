.class public final Lcom/tencent/mm/sdk/c/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/sdk/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(ILjava/lang/String;)Ljava/lang/Object;
    .registers 4

    packed-switch p0, :pswitch_data_2c

    :try_start_3
    const-string/jumbo v0, "MicroMsg.SDK.PluginProvider.Resolver"

    const-string/jumbo v1, "unknown type"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    const/4 p1, 0x0

    :goto_d
    :pswitch_d
    return-object p1

    :pswitch_e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_d

    :pswitch_13
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    goto :goto_d

    :pswitch_18
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_d

    :pswitch_1d
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    goto :goto_d

    :pswitch_22
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25} :catch_27

    move-result-object p1

    goto :goto_d

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_e
        :pswitch_13
        :pswitch_d
        :pswitch_18
        :pswitch_1d
        :pswitch_22
    .end packed-switch
.end method
