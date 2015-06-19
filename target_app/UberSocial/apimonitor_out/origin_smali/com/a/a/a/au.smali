.class final Lcom/a/a/a/au;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/a/a/a/at;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/a/a/a/at;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/a/at;-><init>(B)V

    sput-object v0, Lcom/a/a/a/au;->a:Lcom/a/a/a/at;

    return-void
.end method

.method static synthetic a()Lcom/a/a/a/at;
    .registers 1

    sget-object v0, Lcom/a/a/a/au;->a:Lcom/a/a/a/at;

    return-object v0
.end method
