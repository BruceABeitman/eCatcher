.class public final Lcom/instagram/common/g/d;
.super Ljava/lang/Object;
.source "IsEmployeeProvider.java"

# interfaces
.implements La/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/a",
        "<",
        "Lcom/facebook/d/g/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b()Lcom/facebook/d/g/b;
    .registers 1

    sget-object v0, Lcom/facebook/d/g/b;->c:Lcom/facebook/d/g/b;

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/instagram/common/g/d;->b()Lcom/facebook/d/g/b;

    move-result-object v0

    return-object v0
.end method
