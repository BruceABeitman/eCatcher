.class public abstract Landroid/support/v4/app/an;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Landroid/support/v4/app/ap;->a:Z

    return-void
.end method


# virtual methods
.method public abstract a(ILandroid/os/Bundle;Landroid/support/v4/app/ao;)Landroid/support/v4/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/ao",
            "<TD;>;)",
            "Landroid/support/v4/a/c",
            "<TD;>;"
        }
    .end annotation
.end method

.method public abstract a(ILandroid/support/v4/app/ao;)Landroid/support/v4/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/support/v4/app/ao",
            "<TD;>;)",
            "Landroid/support/v4/a/c",
            "<TD;>;"
        }
    .end annotation
.end method

.method public abstract a(I)V
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract b(I)Landroid/support/v4/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/support/v4/a/c",
            "<TD;>;"
        }
    .end annotation
.end method
