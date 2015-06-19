.class public Lc/a/a/f;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final a:J = 0x4ab7272ac88f5cc1L


# direct methods
.method public constructor <init>(Lc/a/a/a;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "flavor = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
