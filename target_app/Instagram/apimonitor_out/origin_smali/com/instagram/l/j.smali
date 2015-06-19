.class public final Lcom/instagram/l/j;
.super Ljava/lang/Object;
.source "QuickExperimentManagerFactory.java"


# static fields
.field private static a:Lcom/instagram/common/i/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/i/a/h",
            "<",
            "Lcom/instagram/l/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a()Lcom/instagram/l/i;
    .registers 1

    sget-object v0, Lcom/instagram/l/j;->a:Lcom/instagram/common/i/a/h;

    invoke-interface {v0}, Lcom/instagram/common/i/a/h;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/l/i;

    return-object v0
.end method

.method public static a(Lcom/instagram/common/i/a/h;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/i/a/h",
            "<",
            "Lcom/instagram/l/i;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/instagram/l/j;->a:Lcom/instagram/common/i/a/h;

    return-void
.end method
