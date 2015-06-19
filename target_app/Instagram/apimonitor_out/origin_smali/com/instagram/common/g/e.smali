.class final Lcom/instagram/common/g/e;
.super Ljava/lang/Object;
.source "IsInternalBuildProvider.java"

# interfaces
.implements La/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/a",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b()Ljava/lang/Boolean;
    .registers 1

    invoke-static {}, Lcom/instagram/common/o/a;->d()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/instagram/common/g/e;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
