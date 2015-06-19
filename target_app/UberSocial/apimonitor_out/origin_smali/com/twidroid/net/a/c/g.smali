.class public Lcom/twidroid/net/a/c/g;
.super Ld/a/a/a;
.source "SourceFile"


# static fields
.field private static final a:J = -0x6d47cac4b0948347L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ld/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/twidroid/net/a/c/c;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
