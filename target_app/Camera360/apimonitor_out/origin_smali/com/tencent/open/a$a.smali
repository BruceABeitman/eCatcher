.class public Lcom/tencent/open/a$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/util/List;Lcom/tencent/open/a$b;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/open/a$b;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v1, 0x0

    array-length v4, v3

    move v2, v0

    :goto_c
    if-ge v2, v4, :cond_26

    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7a

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_7a

    move-object v1, v0

    :cond_26
    if-eqz v1, :cond_74

    :try_start_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_152

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const/4 v3, 0x3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const/4 v3, 0x4

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_66
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    if-ne v1, v2, :cond_128

    if-eqz p3, :cond_74

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/tencent/open/a$b;->a(Ljava/lang/Object;)V
    :try_end_74
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_74} :catch_139
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_74} :catch_141
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_74} :catch_149

    :cond_74
    :goto_74
    if-eqz p3, :cond_79

    invoke-virtual {p3}, Lcom/tencent/open/a$b;->a()V

    :cond_79
    :goto_79
    return-void

    :cond_7a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :pswitch_7e
    const/4 v0, 0x0

    :try_start_7f
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_66

    :pswitch_86
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_66

    :pswitch_96
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_66

    :pswitch_ae
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_66

    :pswitch_ce
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const/4 v3, 0x3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_66

    :pswitch_f7
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const/4 v3, 0x3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const/4 v3, 0x4

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_66

    :cond_128
    if-eqz p3, :cond_79

    invoke-virtual {p0}, Lcom/tencent/open/a$a;->customCallback()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/tencent/open/a$b;->a(Ljava/lang/String;)V
    :try_end_137
    .catch Ljava/lang/IllegalAccessException; {:try_start_7f .. :try_end_137} :catch_139
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7f .. :try_end_137} :catch_141
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_137} :catch_149

    goto/16 :goto_79

    :catch_139
    move-exception v0

    if-eqz p3, :cond_74

    invoke-virtual {p3}, Lcom/tencent/open/a$b;->a()V

    goto/16 :goto_74

    :catch_141
    move-exception v0

    if-eqz p3, :cond_74

    invoke-virtual {p3}, Lcom/tencent/open/a$b;->a()V

    goto/16 :goto_74

    :catch_149
    move-exception v0

    if-eqz p3, :cond_74

    invoke-virtual {p3}, Lcom/tencent/open/a$b;->a()V

    goto/16 :goto_74

    nop

    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_86
        :pswitch_96
        :pswitch_ae
        :pswitch_ce
        :pswitch_f7
    .end packed-switch
.end method

.method public customCallback()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
