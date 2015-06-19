.class public final Lcom/flurry/sdk/el;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:Z

.field private static c:I

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/16 v0, 0xfa0

    sput v0, Lcom/flurry/sdk/el;->a:I

    sput-boolean v1, Lcom/flurry/sdk/el;->b:Z

    const/4 v0, 0x5

    sput v0, Lcom/flurry/sdk/el;->c:I

    sput-boolean v1, Lcom/flurry/sdk/el;->d:Z

    return-void
.end method

.method public static a()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/sdk/el;->b:Z

    return-void
.end method

.method public static a(I)V
    .registers 1

    sput p0, Lcom/flurry/sdk/el;->c:I

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/flurry/sdk/el;->c(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/flurry/sdk/el;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/el;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/flurry/sdk/el;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/flurry/sdk/el;->d:Z

    return-void
.end method

.method public static b()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/flurry/sdk/el;->b:Z

    return-void
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/flurry/sdk/el;->b:Z

    if-nez v0, :cond_b

    sget v0, Lcom/flurry/sdk/el;->c:I

    if-gt v0, p0, :cond_b

    invoke-static {p0, p1, p2}, Lcom/flurry/sdk/el;->d(ILjava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/flurry/sdk/el;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/el;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/flurry/sdk/el;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c()I
    .registers 1

    sget v0, Lcom/flurry/sdk/el;->c:I

    return v0
.end method

.method private static c(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/flurry/sdk/el;->d:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1, p2}, Lcom/flurry/sdk/el;->d(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private static c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/flurry/sdk/el;->c(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/el;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static d(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    sget-boolean v0, Lcom/flurry/sdk/el;->d:Z

    if-eqz v0, :cond_21

    :goto_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v1

    :goto_c
    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_20

    sget v1, Lcom/flurry/sdk/el;->a:I

    sub-int v3, v0, v2

    if-le v1, v3, :cond_29

    move v1, v0

    :goto_16
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_2d

    :cond_20
    return-void

    :cond_21
    const-string p1, "FlurryAgent"

    goto :goto_5

    :cond_24
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_c

    :cond_29
    sget v1, Lcom/flurry/sdk/el;->a:I

    add-int/2addr v1, v2

    goto :goto_16

    :cond_2d
    move v2, v1

    goto :goto_d
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/el;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d()Z
    .registers 1

    sget-boolean v0, Lcom/flurry/sdk/el;->d:Z

    return v0
.end method
