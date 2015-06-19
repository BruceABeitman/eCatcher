.class final Lcom/instagram/common/l/b/d;
.super Ljava/lang/Object;
.source "DelayedBackgroundDetector.java"


# static fields
.field public static final a:Lcom/instagram/common/l/b/b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/instagram/common/l/b/b;

    invoke-static {}, Lcom/instagram/common/t/a;->a()Lcom/instagram/common/t/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/l/b/b;-><init>(Lcom/instagram/common/t/a;B)V

    sput-object v0, Lcom/instagram/common/l/b/d;->a:Lcom/instagram/common/l/b/b;

    return-void
.end method
