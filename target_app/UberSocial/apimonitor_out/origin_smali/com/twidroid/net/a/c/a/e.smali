.class public Lcom/twidroid/net/a/c/a/e;
.super Ld/a/a/a;
.source "SourceFile"


# static fields
.field private static final b:J = -0x6d47cac4b0948347L


# instance fields
.field final synthetic a:Lcom/twidroid/net/a/c/a/d;


# direct methods
.method public constructor <init>(Lcom/twidroid/net/a/c/a/d;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/twidroid/net/a/c/a/e;->a:Lcom/twidroid/net/a/c/a/d;

    invoke-direct {p0, p2, p3}, Ld/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/twidroid/net/a/c/a/d;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
