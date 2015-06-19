.class public final Landroid/support/v4/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/support/v4/b/c;)Landroid/os/Parcelable$Creator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/b/c",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_b

    new-instance v0, Landroid/support/v4/b/d;

    invoke-direct {v0, p0}, Landroid/support/v4/b/d;-><init>(Landroid/support/v4/b/c;)V

    :cond_b
    new-instance v0, Landroid/support/v4/b/b;

    invoke-direct {v0, p0}, Landroid/support/v4/b/b;-><init>(Landroid/support/v4/b/c;)V

    return-object v0
.end method
