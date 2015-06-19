.class public final Lcom/google/zxing/client/android/g;
.super Ljava/lang/Object;
.source "DecodeFormatManager.java"


# static fields
.field public static final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/g;->e:Ljava/util/regex/Pattern;

    sget-object v0, Lcom/google/zxing/a;->l:Lcom/google/zxing/a;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/g;->c:Ljava/util/Collection;

    sget-object v0, Lcom/google/zxing/a;->f:Lcom/google/zxing/a;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/g;->d:Ljava/util/Collection;

    sget-object v0, Lcom/google/zxing/a;->o:Lcom/google/zxing/a;

    sget-object v1, Lcom/google/zxing/a;->p:Lcom/google/zxing/a;

    sget-object v2, Lcom/google/zxing/a;->h:Lcom/google/zxing/a;

    sget-object v3, Lcom/google/zxing/a;->g:Lcom/google/zxing/a;

    sget-object v4, Lcom/google/zxing/a;->m:Lcom/google/zxing/a;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/g;->a:Ljava/util/Collection;

    sget-object v0, Lcom/google/zxing/a;->c:Lcom/google/zxing/a;

    sget-object v1, Lcom/google/zxing/a;->d:Lcom/google/zxing/a;

    sget-object v2, Lcom/google/zxing/a;->e:Lcom/google/zxing/a;

    sget-object v3, Lcom/google/zxing/a;->i:Lcom/google/zxing/a;

    sget-object v4, Lcom/google/zxing/a;->b:Lcom/google/zxing/a;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/g;->b:Ljava/util/Collection;

    sget-object v1, Lcom/google/zxing/client/android/g;->a:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static a(Landroid/content/Intent;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SCAN_FORMATS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    sget-object v0, Lcom/google/zxing/client/android/g;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_13
    const-string v1, "SCAN_MODE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/zxing/client/android/g;->a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/net/Uri;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/a;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "SCAN_FORMATS"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_26

    sget-object v1, Lcom/google/zxing/client/android/g;->e:Ljava/util/regex/Pattern;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_26
    const-string v1, "SCAN_MODE"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/zxing/client/android/g;->a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/a;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_21

    const-class v0, Lcom/google/zxing/a;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    :try_start_8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/zxing/a;->valueOf(Ljava/lang/String;)Lcom/google/zxing/a;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_1f} :catch_20

    goto :goto_c

    :catch_20
    move-exception v0

    :cond_21
    if-eqz p1, :cond_51

    const-string v0, "PRODUCT_MODE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lcom/google/zxing/client/android/g;->a:Ljava/util/Collection;

    :goto_2d
    return-object v0

    :cond_2e
    move-object v0, v1

    goto :goto_2d

    :cond_30
    const-string v0, "QR_CODE_MODE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/google/zxing/client/android/g;->c:Ljava/util/Collection;

    goto :goto_2d

    :cond_3b
    const-string v0, "DATA_MATRIX_MODE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    sget-object v0, Lcom/google/zxing/client/android/g;->d:Ljava/util/Collection;

    goto :goto_2d

    :cond_46
    const-string v0, "ONE_D_MODE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    sget-object v0, Lcom/google/zxing/client/android/g;->b:Ljava/util/Collection;

    goto :goto_2d

    :cond_51
    const/4 v0, 0x0

    goto :goto_2d
.end method
