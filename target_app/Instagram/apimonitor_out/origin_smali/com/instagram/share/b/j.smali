.class final Lcom/instagram/share/b/j;
.super Lcom/instagram/common/a/a/s;
.source "GraphMeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/s",
        "<",
        "Lcom/instagram/share/b/k;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/share/b/i;


# direct methods
.method constructor <init>(Lcom/instagram/share/b/i;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/share/b/j;->a:Lcom/instagram/share/b/i;

    invoke-direct {p0}, Lcom/instagram/common/a/a/s;-><init>()V

    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/share/b/k;
    .registers 2

    invoke-static {p0}, Lcom/instagram/share/b/l;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/share/b/k;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lcom/instagram/share/b/j;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/share/b/k;

    move-result-object v0

    return-object v0
.end method
