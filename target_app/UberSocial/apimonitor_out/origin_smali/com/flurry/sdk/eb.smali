.class public Lcom/flurry/sdk/eb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/flurry/sdk/eb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/eb;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)I
    .registers 7

    const v1, 0x7fffffff

    if-eqz p1, :cond_18

    instance-of v0, p1, Lcom/flurry/sdk/ec;

    if-eqz v0, :cond_19

    check-cast p1, Lcom/flurry/sdk/ec;

    invoke-virtual {p1}, Lcom/flurry/sdk/ec;->a()Ljava/lang/Runnable;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fd;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Lcom/flurry/sdk/fd;->i()I

    move-result v0

    :goto_17
    move v1, v0

    :cond_18
    :goto_18
    return v1

    :cond_19
    instance-of v0, p1, Lcom/flurry/sdk/fd;

    if-eqz v0, :cond_24

    check-cast p1, Lcom/flurry/sdk/fd;

    invoke-virtual {p1}, Lcom/flurry/sdk/fd;->i()I

    move-result v1

    goto :goto_18

    :cond_24
    const/4 v0, 0x6

    sget-object v2, Lcom/flurry/sdk/eb;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown runnable class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_46
    move v0, v1

    goto :goto_17
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .registers 5

    invoke-direct {p0, p1}, Lcom/flurry/sdk/eb;->a(Ljava/lang/Runnable;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/flurry/sdk/eb;->a(Ljava/lang/Runnable;)I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, -0x1

    :goto_b
    return v0

    :cond_c
    if-le v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_b

    :cond_10
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/lang/Runnable;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/eb;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result v0

    return v0
.end method
