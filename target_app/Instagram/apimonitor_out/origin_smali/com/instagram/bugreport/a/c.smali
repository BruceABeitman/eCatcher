.class final Lcom/instagram/bugreport/a/c;
.super Lcom/instagram/common/a/a/s;
.source "FlytrapRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/s",
        "<",
        "Lcom/instagram/bugreport/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/bugreport/a/b;


# direct methods
.method constructor <init>(Lcom/instagram/bugreport/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/bugreport/a/c;->a:Lcom/instagram/bugreport/a/b;

    invoke-direct {p0}, Lcom/instagram/common/a/a/s;-><init>()V

    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/bugreport/a/e;
    .registers 2

    invoke-static {p0}, Lcom/instagram/bugreport/a/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/bugreport/a/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lcom/instagram/bugreport/a/c;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/bugreport/a/e;

    move-result-object v0

    return-object v0
.end method
