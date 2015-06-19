.class public final Lcom/instagram/b/d/e;
.super Ljava/lang/Object;
.source "PerfMarkerEditor.java"

# interfaces
.implements Lcom/instagram/b/d/a;


# instance fields
.field private a:Lcom/instagram/b/d/d;


# direct methods
.method public constructor <init>(Lcom/instagram/b/d/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/b/d/e;->a:Lcom/instagram/b/d/d;

    return-void
.end method

.method private b(Ljava/lang/String;D)Lcom/instagram/b/d/e;
    .registers 5

    iget-object v0, p0, Lcom/instagram/b/d/e;->a:Lcom/instagram/b/d/d;

    invoke-virtual {v0}, Lcom/instagram/b/d/d;->b()Lcom/instagram/b/d/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/instagram/b/d/b;->a(Ljava/lang/String;D)Lcom/instagram/common/analytics/b;

    return-object p0
.end method

.method private b(Ljava/lang/String;I)Lcom/instagram/b/d/e;
    .registers 4

    iget-object v0, p0, Lcom/instagram/b/d/e;->a:Lcom/instagram/b/d/d;

    invoke-virtual {v0}, Lcom/instagram/b/d/d;->b()Lcom/instagram/b/d/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instagram/b/d/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    return-object p0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;D)Lcom/instagram/b/d/a;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/b/d/e;->b(Ljava/lang/String;D)Lcom/instagram/b/d/e;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/String;I)Lcom/instagram/b/d/a;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/instagram/b/d/e;->b(Ljava/lang/String;I)Lcom/instagram/b/d/e;

    move-result-object v0

    return-object v0
.end method
