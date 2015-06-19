.class final Lcom/b/a/a/a/a/c;
.super Ljava/lang/ThreadLocal;
.source "UnicodeEscaper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<[C>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method private static a()[C
    .registers 1

    const/16 v0, 0x400

    new-array v0, v0, [C

    return-object v0
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/b/a/a/a/a/c;->a()[C

    move-result-object v0

    return-object v0
.end method
