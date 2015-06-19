.class public Lcom/b/a/a/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/b/a/a/a/a/n;)Lcom/b/a/a/a/a/n;
    .registers 5

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/b/a/a/a/a/n;->c()Lcom/b/a/a/a/a/n;

    move-result-object v0

    iget-object v1, v0, Lcom/b/a/a/a/a/n;->a:Lcom/b/a/a/a/a/p;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/b/a/a/a/a/p;->b(F)Lcom/b/a/a/a/a/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/a/a/a/p;->e()Lcom/b/a/a/a/a/p;

    iget-object v1, p0, Lcom/b/a/a/a/a/n;->b:Lcom/b/a/a/a/a/o;

    invoke-virtual {v1, v0}, Lcom/b/a/a/a/a/o;->a(Lcom/b/a/a/a/a/n;)V

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->a:Lcom/b/a/a/a/a/p;

    new-array v1, v3, [F

    fill-array-data v1, :array_32

    new-array v2, v3, [F

    fill-array-data v2, :array_3c

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/a/a/p;->a([F[F)Lcom/b/a/a/a/a/p;

    move-result-object v0

    const v1, 0x3f4ccccd

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/a/p;->f(F)Lcom/b/a/a/a/a/p;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/a/p;->a(I)Lcom/b/a/a/a/a/p;

    return-object p0

    nop

    :array_32
    .array-data 0x4
        0x0t 0x0t 0x70t 0x42t
        0x0t 0x0t 0xct 0x42t
        0x0t 0x0t 0x20t 0x41t
    .end array-data

    :array_3c
    .array-data 0x4
        0x0t 0x0t 0x2at 0x43t
        0x0t 0x0t 0xct 0x43t
        0x0t 0x0t 0x20t 0x43t
    .end array-data
.end method

.method public static a(Lcom/b/a/a/a/a/n;I)Lcom/b/a/a/a/a/n;
    .registers 4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_42

    const-string v0, "Not Supported Effection"

    if-nez v0, :cond_40

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    move-object v0, v1

    :goto_d
    return-object v0

    :pswitch_e
    invoke-static {p0}, Lcom/b/a/a/a/a/f;->a(Lcom/b/a/a/a/a/n;)Lcom/b/a/a/a/a/n;

    move-result-object v0

    goto :goto_d

    :pswitch_13
    invoke-static {p0}, Lcom/b/a/a/a/a/f;->b(Lcom/b/a/a/a/a/n;)Lcom/b/a/a/a/a/n;

    move-result-object v0

    goto :goto_d

    :pswitch_18
    invoke-static {p0}, Lcom/b/a/a/a/a/f;->c(Lcom/b/a/a/a/a/n;)Lcom/b/a/a/a/a/n;

    move-result-object v0

    goto :goto_d

    :pswitch_1d
    invoke-static {p0}, Lcom/b/a/a/a/a/f;->d(Lcom/b/a/a/a/a/n;)Lcom/b/a/a/a/a/n;

    move-result-object v0

    goto :goto_d

    :pswitch_22
    invoke-static {p0}, Lcom/b/a/a/a/a/f;->e(Lcom/b/a/a/a/a/n;)Lcom/b/a/a/a/a/n;

    move-result-object v0

    goto :goto_d

    :pswitch_27
    invoke-static {p0}, Lcom/b/a/a/a/a/f;->f(Lcom/b/a/a/a/a/n;)Lcom/b/a/a/a/a/n;

    move-result-object v0

    goto :goto_d

    :pswitch_2c
    invoke-static {p0}, Lcom/b/a/a/a/a/f;->g(Lcom/b/a/a/a/a/n;)Lcom/b/a/a/a/a/n;

    move-result-object v0

    goto :goto_d

    :pswitch_31
    invoke-static {p0}, Lcom/b/a/a/a/a/f;->h(Lcom/b/a/a/a/a/n;)Lcom/b/a/a/a/a/n;

    move-result-object v0

    goto :goto_d

    :pswitch_36
    invoke-static {p0}, Lcom/b/a/a/a/a/f;->i(Lcom/b/a/a/a/a/n;)Lcom/b/a/a/a/a/n;

    move-result-object v0

    goto :goto_d

    :pswitch_3b
    invoke-static {p0}, Lcom/b/a/a/a/a/f;->j(Lcom/b/a/a/a/a/n;)Lcom/b/a/a/a/a/n;

    move-result-object v0

    goto :goto_d

    :cond_40
    const/4 v0, 0x0

    goto :goto_9

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_e
        :pswitch_13
        :pswitch_18
        :pswitch_1d
        :pswitch_22
        :pswitch_27
        :pswitch_2c
        :pswitch_31
        :pswitch_36
        :pswitch_3b
    .end packed-switch
.end method

.method public static b(Lcom/b/a/a/a/a/n;)Lcom/b/a/a/a/a/n;
    .registers 4

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->a:Lcom/b/a/a/a/a/p;

    const v1, 0x3e99999a

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/a/p;->b(F)Lcom/b/a/a/a/a/p;

    move-result-object v0

    const/high16 v1, 0x428c

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/a/p;->c(F)Lcom/b/a/a/a/a/p;

    move-result-object v0

    new-array v1, v2, [F

    fill-array-data v1, :array_1e

    new-array v2, v2, [F

    fill-array-data v2, :array_28

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/a/a/p;->a([F[F)Lcom/b/a/a/a/a/p;

    return-object p0

    :array_1e
    .array-data 0x4
        0x0t 0x0t 0x48t 0x42t
        0x0t 0x0t 0xct 0x42t
        0x0t 0x0t 0x20t 0x41t
    .end array-data

    :array_28
    .array-data 0x4
        0x0t 0x0t 0x3et 0x43t
        0x0t 0x0t 0x3et 0x43t
        0x0t 0x0t 0x66t 0x43t
    .end array-data
.end method

.method public static c(Lcom/b/a/a/a/a/n;)Lcom/b/a/a/a/a/n;
    .registers 4

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->a:Lcom/b/a/a/a/a/p;

    new-array v1, v2, [F

    fill-array-data v1, :array_18

    new-array v2, v2, [F

    fill-array-data v2, :array_22

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/a/a/p;->a([F[F)Lcom/b/a/a/a/a/p;

    move-result-object v0

    const v1, 0x3f4ccccd

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/a/p;->f(F)Lcom/b/a/a/a/a/p;

    return-object p0

    :array_18
    .array-data 0x4
        0x0t 0x0t 0x70t 0x42t
        0x0t 0x0t 0xct 0x42t
        0x0t 0x0t 0x20t 0x41t
    .end array-data

    :array_22
    .array-data 0x4
        0x0t 0x0t 0x2at 0x43t
        0x0t 0x0t 0x2at 0x43t
        0x0t 0x0t 0x66t 0x43t
    .end array-data
.end method

.method public static d(Lcom/b/a/a/a/a/n;)Lcom/b/a/a/a/a/n;
    .registers 4

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->a:Lcom/b/a/a/a/a/p;

    invoke-virtual {v0}, Lcom/b/a/a/a/a/p;->b()Lcom/b/a/a/a/a/p;

    move-result-object v0

    new-array v1, v2, [F

    fill-array-data v1, :array_16

    new-array v2, v2, [F

    fill-array-data v2, :array_20

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/a/a/p;->a([F[F)Lcom/b/a/a/a/a/p;

    return-object p0

    nop

    :array_16
    .array-data 0x4
        0x0t 0x0t 0x70t 0x42t
        0x0t 0x0t 0x70t 0x42t
        0x0t 0x0t 0xf0t 0x41t
    .end array-data

    :array_20
    .array-data 0x4
        0x0t 0x0t 0x52t 0x43t
        0x0t 0x0t 0x52t 0x43t
        0x0t 0x0t 0x52t 0x43t
    .end array-data
.end method

.method public static e(Lcom/b/a/a/a/a/n;)Lcom/b/a/a/a/a/n;
    .registers 4

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->a:Lcom/b/a/a/a/a/p;

    new-array v1, v2, [F

    fill-array-data v1, :array_2a

    new-array v2, v2, [F

    fill-array-data v2, :array_34

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/a/a/p;->a([F[F)Lcom/b/a/a/a/a/p;

    move-result-object v0

    const/high16 v1, 0x3f40

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/a/p;->f(F)Lcom/b/a/a/a/a/p;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/a/p;->e(F)Lcom/b/a/a/a/a/p;

    move-result-object v0

    const v1, 0x3f19999a

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/a/p;->b(F)Lcom/b/a/a/a/a/p;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/a/p;->a(I)Lcom/b/a/a/a/a/p;

    return-object p0

    :array_2a
    .array-data 0x4
        0x0t 0x0t 0xf0t 0x41t
        0x0t 0x0t 0x20t 0x42t
        0x0t 0x0t 0xf0t 0x41t
    .end array-data

    :array_34
    .array-data 0x4
        0x0t 0x0t 0xf0t 0x42t
        0x0t 0x0t 0x2at 0x43t
        0x0t 0x0t 0x52t 0x43t
    .end array-data
.end method

.method public static f(Lcom/b/a/a/a/a/n;)Lcom/b/a/a/a/a/n;
    .registers 4

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->a:Lcom/b/a/a/a/a/p;

    const v1, 0x3ecccccd

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/a/p;->b(F)Lcom/b/a/a/a/a/p;

    move-result-object v0

    const/high16 v1, 0x3f40

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/a/p;->f(F)Lcom/b/a/a/a/a/p;

    move-result-object v0

    new-array v1, v2, [F

    fill-array-data v1, :array_1e

    new-array v2, v2, [F

    fill-array-data v2, :array_28

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/a/a/p;->a([F[F)Lcom/b/a/a/a/a/p;

    return-object p0

    :array_1e
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xct 0x42t
        0x0t 0x0t 0x20t 0x41t
    .end array-data

    :array_28
    .array-data 0x4
        0x0t 0x0t 0x16t 0x43t
        0x0t 0x0t 0x20t 0x43t
        0x0t 0x0t 0x66t 0x43t
    .end array-data
.end method

.method public static g(Lcom/b/a/a/a/a/n;)Lcom/b/a/a/a/a/n;
    .registers 7

    const/4 v3, 0x3

    const v5, 0x3f19999a

    invoke-virtual {p0}, Lcom/b/a/a/a/a/n;->c()Lcom/b/a/a/a/a/n;

    move-result-object v0

    iget-object v1, v0, Lcom/b/a/a/a/a/n;->a:Lcom/b/a/a/a/a/p;

    new-array v2, v3, [F

    fill-array-data v2, :array_3a

    new-array v3, v3, [F

    fill-array-data v3, :array_44

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/p;->a([F[F)Lcom/b/a/a/a/a/p;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/b/a/a/a/a/p;->b(F)Lcom/b/a/a/a/a/p;

    iget-object v1, p0, Lcom/b/a/a/a/a/n;->a:Lcom/b/a/a/a/a/p;

    const v2, 0x3dcccccd

    const v3, 0x3f333333

    const v4, 0x3ecccccd

    invoke-virtual {v1, v2, v3, v4}, Lcom/b/a/a/a/a/p;->a(FFF)Lcom/b/a/a/a/a/p;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/b/a/a/a/a/p;->b(F)Lcom/b/a/a/a/a/p;

    move-result-object v1

    const v2, 0x3f4ccccd

    invoke-virtual {v1, v2}, Lcom/b/a/a/a/a/p;->f(F)Lcom/b/a/a/a/a/p;

    iget-object v1, p0, Lcom/b/a/a/a/a/n;->b:Lcom/b/a/a/a/a/o;

    invoke-virtual {v1, v0}, Lcom/b/a/a/a/a/o;->a(Lcom/b/a/a/a/a/n;)V

    return-object p0

    :array_3a
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xct 0x42t
        0x0t 0x0t 0x20t 0x41t
    .end array-data

    :array_44
    .array-data 0x4
        0x0t 0x0t 0x16t 0x43t
        0x0t 0x0t 0x20t 0x43t
        0x0t 0x0t 0x66t 0x43t
    .end array-data
.end method

.method public static h(Lcom/b/a/a/a/a/n;)Lcom/b/a/a/a/a/n;
    .registers 8

    invoke-virtual {p0}, Lcom/b/a/a/a/a/n;->c()Lcom/b/a/a/a/a/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/a/a/a/n;->c()Lcom/b/a/a/a/a/n;

    move-result-object v1

    invoke-virtual {p0}, Lcom/b/a/a/a/a/n;->c()Lcom/b/a/a/a/a/n;

    move-result-object v2

    iget-object v3, v2, Lcom/b/a/a/a/a/n;->a:Lcom/b/a/a/a/a/p;

    const/16 v4, 0xa7

    const/16 v5, 0x76

    const/16 v6, 0xc

    invoke-virtual {v3, v4, v5, v6}, Lcom/b/a/a/a/a/p;->a(III)Lcom/b/a/a/a/a/p;

    iget-object v3, v1, Lcom/b/a/a/a/a/n;->a:Lcom/b/a/a/a/a/p;

    invoke-virtual {v3}, Lcom/b/a/a/a/a/p;->g()Lcom/b/a/a/a/a/p;

    iget-object v3, v0, Lcom/b/a/a/a/a/n;->a:Lcom/b/a/a/a/a/p;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/b/a/a/a/a/p;->b(F)Lcom/b/a/a/a/a/p;

    iget-object v3, p0, Lcom/b/a/a/a/a/n;->b:Lcom/b/a/a/a/a/o;

    invoke-virtual {v3, v0}, Lcom/b/a/a/a/a/o;->c(Lcom/b/a/a/a/a/n;)V

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->b:Lcom/b/a/a/a/a/o;

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/a/o;->g(Lcom/b/a/a/a/a/n;)V

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->b:Lcom/b/a/a/a/a/o;

    invoke-virtual {v0, v2}, Lcom/b/a/a/a/a/o;->g(Lcom/b/a/a/a/a/n;)V

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->a:Lcom/b/a/a/a/a/p;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/a/p;->b(F)Lcom/b/a/a/a/a/p;

    move-result-object v0

    const v1, 0x3f5c28f6

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/a/p;->f(F)Lcom/b/a/a/a/a/p;

    return-object p0
.end method

.method public static i(Lcom/b/a/a/a/a/n;)Lcom/b/a/a/a/a/n;
    .registers 9

    const/4 v7, 0x3

    const v6, 0x3e4ccccd

    invoke-virtual {p0}, Lcom/b/a/a/a/a/n;->c()Lcom/b/a/a/a/a/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/a/a/a/n;->c()Lcom/b/a/a/a/a/n;

    move-result-object v1

    iget-object v2, v1, Lcom/b/a/a/a/a/n;->a:Lcom/b/a/a/a/a/p;

    const/16 v3, 0xe2

    const/16 v4, 0xd9

    const/16 v5, 0x71

    invoke-virtual {v2, v3, v4, v5}, Lcom/b/a/a/a/a/p;->a(III)Lcom/b/a/a/a/a/p;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/b/a/a/a/a/p;->b(F)Lcom/b/a/a/a/a/p;

    iget-object v2, v0, Lcom/b/a/a/a/a/n;->a:Lcom/b/a/a/a/a/p;

    invoke-virtual {v2}, Lcom/b/a/a/a/a/p;->g()Lcom/b/a/a/a/a/p;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/b/a/a/a/a/p;->b(F)Lcom/b/a/a/a/a/p;

    iget-object v2, v0, Lcom/b/a/a/a/a/n;->b:Lcom/b/a/a/a/a/o;

    invoke-virtual {v2, v1}, Lcom/b/a/a/a/a/o;->a(Lcom/b/a/a/a/a/n;)V

    iget-object v1, p0, Lcom/b/a/a/a/a/n;->a:Lcom/b/a/a/a/a/p;

    invoke-virtual {v1, v6}, Lcom/b/a/a/a/a/p;->b(F)Lcom/b/a/a/a/a/p;

    move-result-object v1

    new-array v2, v7, [F

    fill-array-data v2, :array_54

    new-array v3, v7, [F

    fill-array-data v3, :array_5e

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/p;->a([F[F)Lcom/b/a/a/a/a/p;

    iget-object v1, p0, Lcom/b/a/a/a/a/n;->b:Lcom/b/a/a/a/a/o;

    invoke-virtual {v1, v0}, Lcom/b/a/a/a/a/o;->a(Lcom/b/a/a/a/a/n;)V

    iget-object v1, p0, Lcom/b/a/a/a/a/n;->a:Lcom/b/a/a/a/a/p;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/b/a/a/a/a/p;->a(I)Lcom/b/a/a/a/a/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/a/a/a/p;->f()Lcom/b/a/a/a/a/p;

    move-result-object v1

    const v2, 0x3f8ccccd

    invoke-virtual {v1, v2}, Lcom/b/a/a/a/a/p;->f(F)Lcom/b/a/a/a/a/p;

    return-object v0

    :array_54
    .array-data 0x4
        0x0t 0x0t 0xf0t 0x41t
        0x0t 0x0t 0x34t 0x42t
        0x0t 0x0t 0x20t 0x42t
    .end array-data

    :array_5e
    .array-data 0x4
        0x0t 0x0t 0xdct 0x42t
        0x0t 0x0t 0x3et 0x43t
        0x0t 0x0t 0xdct 0x42t
    .end array-data
.end method

.method public static j(Lcom/b/a/a/a/a/n;)Lcom/b/a/a/a/a/n;
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/a/a/n;->a:Lcom/b/a/a/a/a/p;

    invoke-virtual {v0}, Lcom/b/a/a/a/a/p;->d()Lcom/b/a/a/a/a/p;

    move-result-object v0

    const v1, 0x3f19999a

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/a/p;->e(F)Lcom/b/a/a/a/a/p;

    return-object p0
.end method
