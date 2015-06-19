.class final Lcom/a/a/a/cz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/a/a/a/cw;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/a/a/cw;

    invoke-direct {v0}, Lcom/a/a/a/cw;-><init>()V

    sput-object v0, Lcom/a/a/a/cz;->a:Lcom/a/a/a/cw;

    return-void
.end method

.method static synthetic a()Lcom/a/a/a/cw;
    .registers 1

    sget-object v0, Lcom/a/a/a/cz;->a:Lcom/a/a/a/cw;

    return-object v0
.end method
